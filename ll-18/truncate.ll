; ModuleID = 'src/truncate.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

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
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.70, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 111 }, %struct.option { ptr @.str.72, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !74
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !475
@.str.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !467
@.str.1.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !469
@.str.2.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !471
@.str.3.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !473
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !477
@stderr = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !483
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !518
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !485
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !508
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !510
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !512
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !514
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !516
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !520
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !522
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !524
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !529
@.str.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !535
@.str.1.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !537
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !539
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !570
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !573
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !575
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !580
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !582
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !584
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !586
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !588
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !590
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !592
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 8, !dbg !594
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !607
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !621
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !659
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !666
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !623
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !668
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !611
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !628
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !630
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !632
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !634
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !636
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !674
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !677
@.str.2.103 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !679
@.str.3.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !681
@.str.4.105 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !683
@.str.5.106 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !685
@.str.6.107 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !690
@.str.7.108 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !695
@.str.8.109 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !697
@.str.9.110 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !702
@.str.10.111 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !707
@.str.11.112 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !709
@.str.12.113 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !714
@.str.13.114 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !716
@.str.14.115 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !721
@.str.15.116 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !726
@.str.16.117 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !731
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.122 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !736
@.str.18.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !738
@.str.19.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !740
@.str.20.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !742
@.str.21.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !744
@.str.22.127 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !746
@.str.23.128 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !748
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !750
@exit_failure = dso_local global i32 1, align 4, !dbg !758
@.str.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !764
@.str.1.139 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !767
@.str.2.140 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !769
@.str.142 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !771
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !774
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !777
@.str.162 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !792
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !795

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !893 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !897, metadata !DIExpression()), !dbg !898
  %2 = icmp eq i32 %0, 0, !dbg !899
  br i1 %2, label %8, label %3, !dbg !901

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !902, !tbaa !904
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !902
  %6 = load ptr, ptr @program_name, align 8, !dbg !902, !tbaa !904
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !902
  br label %44, !dbg !902

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !908
  %10 = load ptr, ptr @program_name, align 8, !dbg !908, !tbaa !904
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !908
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !910
  %13 = load ptr, ptr @stdout, align 8, !dbg !910, !tbaa !904
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !910
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #38, !dbg !911
  %16 = load ptr, ptr @stdout, align 8, !dbg !911, !tbaa !904
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !911
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !914
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !914
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !915
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !915
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !916
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !916
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !917
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !917
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !918
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !918
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !919
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !919
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #38, !dbg !920
  %25 = load ptr, ptr @stdout, align 8, !dbg !920, !tbaa !904
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !920
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !923
  %28 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !904
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !923
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata !943, metadata !937, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr poison, metadata !936, metadata !DIExpression()), !dbg !941
  tail call void @emit_bug_reporting_address() #38, !dbg !944
  %30 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !945
  call void @llvm.dbg.value(metadata ptr %30, metadata !939, metadata !DIExpression()), !dbg !941
  %31 = icmp eq ptr %30, null, !dbg !946
  br i1 %31, label %39, label %32, !dbg !948

32:                                               ; preds = %8
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #39, !dbg !949
  %34 = icmp eq i32 %33, 0, !dbg !949
  br i1 %34, label %39, label %35, !dbg !950

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !951
  %37 = load ptr, ptr @stdout, align 8, !dbg !951, !tbaa !904
  %38 = tail call i32 @fputs_unlocked(ptr noundef %36, ptr noundef %37), !dbg !951
  br label %39, !dbg !953

39:                                               ; preds = %8, %32, %35
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !936, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !941
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !954
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #38, !dbg !954
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #38, !dbg !955
  %43 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #38, !dbg !955
  br label %44

44:                                               ; preds = %39, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !956
  unreachable, !dbg !956
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !957 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !961 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !967 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !970 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !227 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !973
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !232, metadata !DIExpression()), !dbg !973
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !974, !tbaa !975
  %3 = icmp eq i32 %2, -1, !dbg !977
  br i1 %3, label %4, label %16, !dbg !978

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #38, !dbg !979
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !233, metadata !DIExpression()), !dbg !980
  %6 = icmp eq ptr %5, null, !dbg !981
  br i1 %6, label %14, label %7, !dbg !982

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !983, !tbaa !984
  %9 = icmp eq i8 %8, 0, !dbg !983
  br i1 %9, label %14, label %10, !dbg !985

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !986, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !992, metadata !DIExpression()), !dbg !993
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #39, !dbg !995
  %12 = icmp eq i32 %11, 0, !dbg !996
  %13 = zext i1 %12 to i32, !dbg !985
  br label %14, !dbg !985

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !997, !tbaa !975
  br label %16, !dbg !998

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !999
  %18 = icmp eq i32 %17, 0, !dbg !999
  br i1 %18, label %22, label %19, !dbg !1001

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1002, !tbaa !904
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1002
  br label %121, !dbg !1004

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !236, metadata !DIExpression()), !dbg !973
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #39, !dbg !1005
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1006
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !973
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1007
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !238, metadata !DIExpression()), !dbg !973
  %26 = icmp eq ptr %25, null, !dbg !1008
  br i1 %26, label %53, label %27, !dbg !1009

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1010
  br i1 %28, label %53, label %29, !dbg !1011

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !239, metadata !DIExpression()), !dbg !1012
  tail call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()), !dbg !1012
  %30 = icmp ult ptr %24, %25, !dbg !1013
  br i1 %30, label %31, label %53, !dbg !1014

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !973
  %33 = load ptr, ptr %32, align 8, !tbaa !904
  br label %34, !dbg !1014

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !239, metadata !DIExpression()), !dbg !1012
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !243, metadata !DIExpression()), !dbg !1012
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1015
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !239, metadata !DIExpression()), !dbg !1012
  %38 = load i8, ptr %35, align 1, !dbg !1015, !tbaa !984
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1015
  %41 = load i16, ptr %40, align 2, !dbg !1015, !tbaa !1016
  %42 = freeze i16 %41, !dbg !1018
  %43 = lshr i16 %42, 13, !dbg !1018
  %44 = and i16 %43, 1, !dbg !1018
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1019
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !243, metadata !DIExpression()), !dbg !1012
  %47 = icmp ult ptr %37, %25, !dbg !1013
  %48 = icmp ult i64 %46, 2, !dbg !1020
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1020
  br i1 %49, label %34, label %50, !dbg !1014, !llvm.loop !1021

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1019
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1023
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1025
  br label %53, !dbg !1025

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !973
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !236, metadata !DIExpression()), !dbg !973
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !238, metadata !DIExpression()), !dbg !973
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.37) #39, !dbg !1026
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !244, metadata !DIExpression()), !dbg !973
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1027
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !245, metadata !DIExpression()), !dbg !973
  br label %58, !dbg !1028

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !973
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !236, metadata !DIExpression()), !dbg !973
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !245, metadata !DIExpression()), !dbg !973
  %61 = load i8, ptr %59, align 1, !dbg !1029, !tbaa !984
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1030

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1031
  %64 = load i8, ptr %63, align 1, !dbg !1034, !tbaa !984
  %65 = icmp ne i8 %64, 45, !dbg !1035
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1036
  br label %67, !dbg !1036

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !236, metadata !DIExpression()), !dbg !973
  %69 = tail call ptr @__ctype_b_loc() #41, !dbg !1037
  %70 = load ptr, ptr %69, align 8, !dbg !1037, !tbaa !904
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1037
  %73 = load i16, ptr %72, align 2, !dbg !1037, !tbaa !1016
  %74 = and i16 %73, 8192, !dbg !1037
  %75 = icmp eq i16 %74, 0, !dbg !1037
  br i1 %75, label %89, label %76, !dbg !1039

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1040
  br i1 %77, label %91, label %78, !dbg !1043

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1044
  %80 = load i8, ptr %79, align 1, !dbg !1044, !tbaa !984
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1044
  %83 = load i16, ptr %82, align 2, !dbg !1044, !tbaa !1016
  %84 = and i16 %83, 8192, !dbg !1044
  %85 = icmp eq i16 %84, 0, !dbg !1044
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1045
  br i1 %88, label %89, label %91, !dbg !1045

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1046
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !245, metadata !DIExpression()), !dbg !973
  br label %58, !dbg !1028, !llvm.loop !1047

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !973
  %92 = ptrtoint ptr %24 to i64, !dbg !1049
  %93 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !904
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata !943, metadata !992, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !973
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #39, !dbg !1070
  %96 = icmp eq i32 %95, 0, !dbg !1070
  br i1 %96, label %100, label %97, !dbg !1072

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #39, !dbg !1073
  %99 = icmp eq i32 %98, 0, !dbg !1073
  br i1 %99, label %100, label %103, !dbg !1074

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1075
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #38, !dbg !1075
  br label %106, !dbg !1077

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1078
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #38, !dbg !1078
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !904
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %107), !dbg !1080
  %109 = load ptr, ptr @stdout, align 8, !dbg !1081, !tbaa !904
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %109), !dbg !1081
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1082
  %112 = sub i64 %111, %92, !dbg !1082
  %113 = load ptr, ptr @stdout, align 8, !dbg !1082, !tbaa !904
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1082
  %115 = load ptr, ptr @stdout, align 8, !dbg !1083, !tbaa !904
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %115), !dbg !1083
  %117 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !904
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %117), !dbg !1084
  %119 = load ptr, ptr @stdout, align 8, !dbg !1085, !tbaa !904
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1085
  br label %121, !dbg !1086

121:                                              ; preds = %106, %19
  ret void, !dbg !1086
}

; Function Attrs: nounwind
declare !dbg !1087 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1091 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1095 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1097 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1100 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1103 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1106 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1109 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1115 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1116 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1122 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !1188
  %4 = alloca %struct.stat, align 8, !DIAssignID !1189
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1135, metadata !DIExpression(), metadata !1189, metadata ptr %4, metadata !DIExpression()), !dbg !1190
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1127, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1128, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1129, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1131, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1132, metadata !DIExpression()), !dbg !1191
  %5 = load ptr, ptr %1, align 8, !dbg !1192, !tbaa !904
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1193
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1194
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1195
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1196
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1197
  br label %10, !dbg !1198

10:                                               ; preds = %77, %2
  %11 = phi i32 [ %78, %77 ], [ 0, %2 ]
  %12 = phi i64 [ %80, %77 ], [ undef, %2 ]
  %13 = phi i1 [ true, %77 ], [ false, %2 ]
  br label %14, !dbg !1198

14:                                               ; preds = %30, %10
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1129, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1130, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1132, metadata !DIExpression()), !dbg !1191
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1199
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1134, metadata !DIExpression()), !dbg !1191
  switch i32 %15, label %92 [
    i32 -1, label %93
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -2, label %87
    i32 -3, label %88
  ], !dbg !1198

16:                                               ; preds = %14
  %17 = tail call ptr @__ctype_b_loc() #41, !dbg !1191
  %18 = load ptr, ptr %17, align 8, !dbg !1200, !tbaa !904
  %19 = load ptr, ptr @optarg, align 8, !dbg !1200, !tbaa !904
  %20 = load i8, ptr %19, align 1, !dbg !1200, !tbaa !984
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21, !dbg !1200
  %23 = load i16, ptr %22, align 2, !dbg !1200, !tbaa !1016
  %24 = and i16 %23, 8192, !dbg !1200
  %25 = icmp eq i16 %24, 0, !dbg !1203
  br i1 %25, label %41, label %.preheader1, !dbg !1203

.preheader1:                                      ; preds = %16
  br label %31, !dbg !1203

26:                                               ; preds = %14
  store i1 true, ptr @no_create, align 1, !dbg !1204
  br label %30, !dbg !1205

27:                                               ; preds = %14
  store i1 true, ptr @block_mode, align 1, !dbg !1206
  br label %30, !dbg !1207

28:                                               ; preds = %14
  %29 = load ptr, ptr @optarg, align 8, !dbg !1208, !tbaa !904
  store ptr %29, ptr @ref_file, align 8, !dbg !1209, !tbaa !904
  br label %30, !dbg !1210

30:                                               ; preds = %28, %27, %26
  br label %14, !dbg !1191, !llvm.loop !1211

31:                                               ; preds = %.preheader1, %31
  %32 = phi ptr [ %33, %31 ], [ %19, %.preheader1 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1213
  store ptr %33, ptr @optarg, align 8, !dbg !1213, !tbaa !904
  %34 = load ptr, ptr %17, align 8, !dbg !1200, !tbaa !904
  %35 = load i8, ptr %33, align 1, !dbg !1200, !tbaa !984
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i16, ptr %34, i64 %36, !dbg !1200
  %38 = load i16, ptr %37, align 2, !dbg !1200, !tbaa !1016
  %39 = and i16 %38, 8192, !dbg !1200
  %40 = icmp eq i16 %39, 0, !dbg !1203
  br i1 %40, label %.loopexit2, label %31, !dbg !1203, !llvm.loop !1214

.loopexit2:                                       ; preds = %31
  %.lcssa4 = phi ptr [ %33, %31 ], !dbg !1213
  %.lcssa3 = phi i8 [ %35, %31 ], !dbg !1200
  br label %41, !dbg !1215

41:                                               ; preds = %.loopexit2, %16
  %42 = phi ptr [ %19, %16 ], [ %.lcssa4, %.loopexit2 ], !dbg !1200
  %43 = phi i8 [ %20, %16 ], [ %.lcssa3, %.loopexit2 ], !dbg !1200
  switch i8 %43, label %50 [
    i8 60, label %47
    i8 62, label %44
    i8 47, label %45
    i8 37, label %46
  ], !dbg !1215

44:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1132, metadata !DIExpression()), !dbg !1191
  br label %47, !dbg !1216

45:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 4, metadata !1132, metadata !DIExpression()), !dbg !1191
  br label %47, !dbg !1218

46:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1132, metadata !DIExpression()), !dbg !1191
  br label %47, !dbg !1219

47:                                               ; preds = %41, %44, %45, %46
  %48 = phi i32 [ 5, %46 ], [ 4, %45 ], [ 2, %44 ], [ 3, %41 ]
  %49 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !1220
  store ptr %49, ptr @optarg, align 8, !dbg !1220, !tbaa !904
  br label %50, !dbg !1221

50:                                               ; preds = %47, %41
  %51 = phi ptr [ %42, %41 ], [ %49, %47 ], !dbg !1221
  %52 = phi i32 [ %11, %41 ], [ %48, %47 ], !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1132, metadata !DIExpression()), !dbg !1191
  %53 = load ptr, ptr %17, align 8, !dbg !1221, !tbaa !904
  %54 = load i8, ptr %51, align 1, !dbg !1221, !tbaa !984
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i16, ptr %53, i64 %55, !dbg !1221
  %57 = load i16, ptr %56, align 2, !dbg !1221, !tbaa !1016
  %58 = and i16 %57, 8192, !dbg !1221
  %59 = icmp eq i16 %58, 0, !dbg !1222
  br i1 %59, label %70, label %.preheader, !dbg !1222

.preheader:                                       ; preds = %50
  br label %60, !dbg !1222

60:                                               ; preds = %.preheader, %60
  %61 = phi ptr [ %62, %60 ], [ %51, %.preheader ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1223
  store ptr %62, ptr @optarg, align 8, !dbg !1223, !tbaa !904
  %63 = load ptr, ptr %17, align 8, !dbg !1221, !tbaa !904
  %64 = load i8, ptr %62, align 1, !dbg !1221, !tbaa !984
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i16, ptr %63, i64 %65, !dbg !1221
  %67 = load i16, ptr %66, align 2, !dbg !1221, !tbaa !1016
  %68 = and i16 %67, 8192, !dbg !1221
  %69 = icmp eq i16 %68, 0, !dbg !1222
  br i1 %69, label %.loopexit, label %60, !dbg !1222, !llvm.loop !1224

.loopexit:                                        ; preds = %60
  %.lcssa6 = phi ptr [ %62, %60 ], !dbg !1223
  %.lcssa5 = phi i8 [ %64, %60 ], !dbg !1221
  br label %70, !dbg !1225

70:                                               ; preds = %.loopexit, %50
  %71 = phi ptr [ %51, %50 ], [ %.lcssa6, %.loopexit ], !dbg !1221
  %72 = phi i8 [ %54, %50 ], [ %.lcssa5, %.loopexit ], !dbg !1221
  switch i8 %72, label %77 [
    i8 43, label %73
    i8 45, label %73
  ], !dbg !1225

73:                                               ; preds = %70, %70
  %74 = icmp eq i32 %52, 0, !dbg !1227
  br i1 %74, label %77, label %75, !dbg !1230

75:                                               ; preds = %73
  %76 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1231
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %76) #38, !dbg !1231
  tail call void @usage(i32 noundef 1) #42, !dbg !1233
  unreachable, !dbg !1233

77:                                               ; preds = %73, %70
  %78 = phi i32 [ %52, %70 ], [ 1, %73 ], !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1132, metadata !DIExpression()), !dbg !1191
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1234
  %80 = tail call i64 @xdectoimax(ptr noundef nonnull %71, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.16, ptr noundef %79, i32 noundef 0) #38, !dbg !1235
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !1130, metadata !DIExpression()), !dbg !1191
  %81 = and i32 %78, -2, !dbg !1236
  %82 = icmp eq i32 %81, 4, !dbg !1236
  %83 = icmp eq i64 %80, 0
  %84 = select i1 %82, i1 %83, i1 false, !dbg !1236
  br i1 %84, label %85, label %10, !dbg !1236, !llvm.loop !1211

85:                                               ; preds = %77
  %86 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1238
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %86) #38, !dbg !1238
  unreachable, !dbg !1238

87:                                               ; preds = %14
  tail call void @usage(i32 noundef 0) #42, !dbg !1239
  unreachable, !dbg !1239

88:                                               ; preds = %14
  %89 = load ptr, ptr @stdout, align 8, !dbg !1240, !tbaa !904
  %90 = load ptr, ptr @Version, align 8, !dbg !1240, !tbaa !904
  %91 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #38, !dbg !1240
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %89, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, ptr noundef %90, ptr noundef %91, ptr noundef null) #38, !dbg !1240
  tail call void @exit(i32 noundef 0) #40, !dbg !1240
  unreachable, !dbg !1240

92:                                               ; preds = %14
  tail call void @usage(i32 noundef 1) #42, !dbg !1241
  unreachable, !dbg !1241

93:                                               ; preds = %14
  %.lcssa20 = phi i32 [ %11, %14 ]
  %.lcssa14 = phi i64 [ %12, %14 ]
  %.lcssa8 = phi i1 [ %13, %14 ]
  %94 = load i32, ptr @optind, align 4, !dbg !1242, !tbaa !975
  %95 = sext i32 %94 to i64, !dbg !1243
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95, !dbg !1243
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1128, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %94), metadata !1127, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1191
  %97 = load ptr, ptr @ref_file, align 8, !dbg !1244, !tbaa !904
  %98 = icmp ne ptr %97, null, !dbg !1244
  %99 = or i1 %98, %.lcssa8, !dbg !1246
  br i1 %99, label %104, label %100, !dbg !1246

100:                                              ; preds = %93
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !1247
  %102 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #38, !dbg !1247
  %103 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #38, !dbg !1247
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101, ptr noundef %102, ptr noundef %103) #38, !dbg !1247
  tail call void @usage(i32 noundef 1) #42, !dbg !1249
  unreachable, !dbg !1249

104:                                              ; preds = %93
  %105 = icmp eq i32 %.lcssa20, 0
  %106 = and i1 %98, %.lcssa8, !dbg !1250
  %107 = select i1 %106, i1 %105, i1 false, !dbg !1250
  br i1 %107, label %108, label %112, !dbg !1250

108:                                              ; preds = %104
  %109 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #38, !dbg !1252
  %110 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #38, !dbg !1252
  %111 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #38, !dbg !1252
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %109, ptr noundef %110, ptr noundef %111) #38, !dbg !1252
  tail call void @usage(i32 noundef 1) #42, !dbg !1254
  unreachable, !dbg !1254

112:                                              ; preds = %104
  %113 = load i1, ptr @block_mode, align 1, !dbg !1255
  %114 = xor i1 %113, true, !dbg !1257
  %115 = or i1 %.lcssa8, %114, !dbg !1257
  br i1 %115, label %120, label %116, !dbg !1257

116:                                              ; preds = %112
  %117 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !1258
  %118 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.27) #38, !dbg !1258
  %119 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.23) #38, !dbg !1258
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %117, ptr noundef %118, ptr noundef %119) #38, !dbg !1258
  tail call void @usage(i32 noundef 1) #42, !dbg !1260
  unreachable, !dbg !1260

120:                                              ; preds = %112
  %121 = icmp slt i32 %94, %0, !dbg !1261
  br i1 %121, label %124, label %122, !dbg !1263

122:                                              ; preds = %120
  %123 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #38, !dbg !1264
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %123) #38, !dbg !1264
  tail call void @usage(i32 noundef 1) #42, !dbg !1266
  unreachable, !dbg !1266

124:                                              ; preds = %120
  br i1 %98, label %125, label %164, !dbg !1267

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #38, !dbg !1268
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1173, metadata !DIExpression()), !dbg !1190
  %126 = call i32 @stat(ptr noundef nonnull %97, ptr noundef nonnull %4) #38, !dbg !1269
  %127 = icmp eq i32 %126, 0, !dbg !1271
  br i1 %127, label %134, label %128, !dbg !1272

128:                                              ; preds = %125
  %129 = tail call ptr @__errno_location() #41, !dbg !1273
  %130 = load i32, ptr %129, align 4, !dbg !1273, !tbaa !975
  %131 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #38, !dbg !1273
  %132 = load ptr, ptr @ref_file, align 8, !dbg !1273, !tbaa !904
  %133 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %132) #38, !dbg !1273
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %130, ptr noundef %131, ptr noundef %133) #38, !dbg !1273
  unreachable, !dbg !1273

134:                                              ; preds = %125
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1274, metadata !DIExpression()), !dbg !1281
  %135 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 2, !dbg !1283
  %136 = load i32, ptr %135, align 8, !dbg !1283, !tbaa !1284
  %137 = and i32 %136, 53248, !dbg !1288
  %138 = icmp eq i32 %137, 32768, !dbg !1288
  br i1 %138, label %150, label %139, !dbg !1289

139:                                              ; preds = %134
  %140 = load ptr, ptr @ref_file, align 8, !dbg !1290, !tbaa !904
  %141 = tail call i32 (ptr, i32, ...) @open(ptr noundef %140, i32 noundef 0) #38, !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !1174, metadata !DIExpression()), !dbg !1292
  %142 = icmp sgt i32 %141, -1, !dbg !1293
  br i1 %142, label %143, label %154, !dbg !1294

143:                                              ; preds = %139
  %144 = tail call i64 @lseek(i32 noundef %141, i64 noundef 0, i32 noundef 2) #38, !dbg !1295
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1177, metadata !DIExpression()), !dbg !1296
  %145 = tail call ptr @__errno_location() #41, !dbg !1297
  %146 = load i32, ptr %145, align 4, !dbg !1297, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !1180, metadata !DIExpression()), !dbg !1296
  %147 = tail call i32 @close(i32 noundef %141) #38, !dbg !1298
  %148 = icmp sgt i64 %144, -1, !dbg !1299
  br i1 %148, label %160, label %149, !dbg !1301

149:                                              ; preds = %143
  store i32 %146, ptr %145, align 4, !dbg !1302, !tbaa !975
  br label %154

150:                                              ; preds = %134
  %151 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8, !dbg !1304
  %152 = load i64, ptr %151, align 8, !dbg !1304, !tbaa !1305
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1173, metadata !DIExpression()), !dbg !1190
  %153 = icmp slt i64 %152, 0, !dbg !1306
  br i1 %153, label %154, label %160, !dbg !1308

154:                                              ; preds = %149, %139, %150
  %155 = tail call ptr @__errno_location() #41, !dbg !1309
  %156 = load i32, ptr %155, align 4, !dbg !1309, !tbaa !975
  %157 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #38, !dbg !1309
  %158 = load ptr, ptr @ref_file, align 8, !dbg !1309, !tbaa !904
  %159 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %158) #38, !dbg !1309
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %156, ptr noundef %157, ptr noundef %159) #38, !dbg !1309
  unreachable, !dbg !1309

160:                                              ; preds = %143, %150
  %161 = phi i64 [ %152, %150 ], [ %144, %143 ]
  %162 = select i1 %.lcssa8, i64 %161, i64 -1
  %163 = select i1 %.lcssa8, i64 %.lcssa14, i64 %161
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !1130, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !1131, metadata !DIExpression()), !dbg !1191
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #38, !dbg !1310
  br label %164, !dbg !1311

164:                                              ; preds = %160, %124
  %165 = phi i64 [ %162, %160 ], [ -1, %124 ], !dbg !1191
  %166 = phi i64 [ %163, %160 ], [ %.lcssa14, %124 ]
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !1130, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1131, metadata !DIExpression()), !dbg !1191
  %167 = load i1, ptr @no_create, align 1, !dbg !1312
  %168 = select i1 %167, i32 2049, i32 2113, !dbg !1313
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !1181, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1128, metadata !DIExpression()), !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1182, metadata !DIExpression()), !dbg !1191
  %169 = load ptr, ptr %96, align 8, !dbg !1314, !tbaa !904
  tail call void @llvm.dbg.value(metadata ptr %169, metadata !1183, metadata !DIExpression()), !dbg !1315
  %170 = icmp eq ptr %169, null, !dbg !1316
  br i1 %170, label %181, label %171, !dbg !1316

171:                                              ; preds = %164
  %172 = icmp ne i32 %.lcssa20, 0
  %173 = icmp slt i64 %165, 0
  %174 = and i1 %172, %173
  %175 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 9
  %176 = icmp sgt i64 %165, -1
  %177 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 2
  %178 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  br label %183, !dbg !1316

179:                                              ; preds = %285
  %.lcssa = phi i1 [ %286, %285 ]
  %180 = zext i1 %.lcssa to i32, !dbg !1317
  br label %181, !dbg !1317

181:                                              ; preds = %179, %164
  %182 = phi i32 [ 0, %164 ], [ %180, %179 ]
  ret i32 %182, !dbg !1318

183:                                              ; preds = %171, %285
  %184 = phi ptr [ %169, %171 ], [ %288, %285 ]
  %185 = phi ptr [ %96, %171 ], [ %287, %285 ]
  %186 = phi i1 [ false, %171 ], [ %286, %285 ]
  tail call void @llvm.dbg.value(metadata ptr %185, metadata !1128, metadata !DIExpression()), !dbg !1191
  %187 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %184, i32 noundef %168, i32 noundef 438) #38, !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !1185, metadata !DIExpression()), !dbg !1320
  %188 = icmp slt i32 %187, 0, !dbg !1321
  br i1 %188, label %189, label %195, !dbg !1323

189:                                              ; preds = %183
  %190 = load i1, ptr @no_create, align 1, !dbg !1324
  %191 = tail call ptr @__errno_location() #41, !dbg !1327
  br i1 %190, label %192, label %279, !dbg !1328

192:                                              ; preds = %189
  %193 = load i32, ptr %191, align 4, !dbg !1329, !tbaa !975
  %194 = icmp eq i32 %193, 2, !dbg !1330
  br i1 %194, label %285, label %279, !dbg !1331

195:                                              ; preds = %183
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1332, metadata !DIExpression(), metadata !1188, metadata ptr %3, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %187, metadata !1337, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %184, metadata !1338, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %166, metadata !1339, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %165, metadata !1340, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %.lcssa20, metadata !1341, metadata !DIExpression()), !dbg !1357
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #38, !dbg !1360
  %196 = load i1, ptr @block_mode, align 1, !dbg !1361
  %197 = select i1 %196, i1 true, i1 %174, !dbg !1363
  br i1 %197, label %198, label %219, !dbg !1363

198:                                              ; preds = %195
  %199 = call i32 @fstat(i32 noundef %187, ptr noundef nonnull %3) #38, !dbg !1364
  %200 = icmp eq i32 %199, 0, !dbg !1365
  br i1 %200, label %206, label %201, !dbg !1366

201:                                              ; preds = %198
  %202 = tail call ptr @__errno_location() #41, !dbg !1367
  %203 = load i32, ptr %202, align 4, !dbg !1367, !tbaa !975
  %204 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #38, !dbg !1367
  %205 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1367
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %203, ptr noundef %204, ptr noundef %205) #38, !dbg !1367
  br label %272, !dbg !1369

206:                                              ; preds = %198
  %207 = load i1, ptr @block_mode, align 1, !dbg !1370
  br i1 %207, label %208, label %219, !dbg !1371

208:                                              ; preds = %206
  %209 = load i32, ptr %175, align 8, !dbg !1372
  %210 = icmp sgt i32 %209, 0, !dbg !1372
  %211 = select i1 %210, i32 %209, i32 512, !dbg !1372
  %212 = sext i32 %211 to i64, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %212, metadata !1343, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %166, metadata !1346, metadata !DIExpression()), !dbg !1373
  %213 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %166, i64 %212), !dbg !1374
  %214 = extractvalue { i64, i1 } %213, 1, !dbg !1374
  %215 = extractvalue { i64, i1 } %213, 0, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %215, metadata !1339, metadata !DIExpression()), !dbg !1357
  br i1 %214, label %216, label %219, !dbg !1376

216:                                              ; preds = %208
  %217 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #38, !dbg !1377
  %218 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1377
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %217, i64 noundef %166, i64 noundef %212, ptr noundef %218) #38, !dbg !1377
  br label %272

219:                                              ; preds = %195, %208, %206
  %220 = phi i64 [ %166, %206 ], [ %215, %208 ], [ %166, %195 ]
  call void @llvm.dbg.value(metadata i64 %220, metadata !1339, metadata !DIExpression()), !dbg !1357
  br i1 %105, label %262, label %221, !dbg !1379

221:                                              ; preds = %219
  br i1 %176, label %240, label %222, !dbg !1380

222:                                              ; preds = %221
  call void @llvm.dbg.value(metadata ptr %3, metadata !1274, metadata !DIExpression()), !dbg !1381
  %223 = load i32, ptr %177, align 8, !dbg !1386, !tbaa !1284
  %224 = and i32 %223, 53248, !dbg !1387
  %225 = icmp eq i32 %224, 32768, !dbg !1387
  br i1 %225, label %226, label %232, !dbg !1388

226:                                              ; preds = %222
  %227 = load i64, ptr %178, align 8, !dbg !1389, !tbaa !1305
  call void @llvm.dbg.value(metadata i64 %227, metadata !1347, metadata !DIExpression()), !dbg !1391
  %228 = icmp slt i64 %227, 0, !dbg !1392
  br i1 %228, label %229, label %240, !dbg !1394

229:                                              ; preds = %226
  %230 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #38, !dbg !1395
  %231 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1395
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %230, ptr noundef %231) #38, !dbg !1395
  br label %272, !dbg !1397

232:                                              ; preds = %222
  %233 = tail call i64 @lseek(i32 noundef %187, i64 noundef 0, i32 noundef 2) #38, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %233, metadata !1347, metadata !DIExpression()), !dbg !1391
  %234 = icmp slt i64 %233, 0, !dbg !1400
  br i1 %234, label %235, label %240, !dbg !1402

235:                                              ; preds = %232
  %236 = tail call ptr @__errno_location() #41, !dbg !1403
  %237 = load i32, ptr %236, align 4, !dbg !1403, !tbaa !975
  %238 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #38, !dbg !1403
  %239 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1403
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %237, ptr noundef %238, ptr noundef %239) #38, !dbg !1403
  br label %272, !dbg !1405

240:                                              ; preds = %232, %226, %221
  %241 = phi i64 [ %227, %226 ], [ %233, %232 ], [ %165, %221 ], !dbg !1406
  call void @llvm.dbg.value(metadata i64 %241, metadata !1347, metadata !DIExpression()), !dbg !1391
  switch i32 %.lcssa20, label %254 [
    i32 2, label %242
    i32 3, label %244
    i32 4, label %246
    i32 5, label %249
  ], !dbg !1407

242:                                              ; preds = %240
  %243 = tail call i64 @llvm.smax.i64(i64 %241, i64 %220), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %243, metadata !1342, metadata !DIExpression()), !dbg !1357
  br label %262, !dbg !1409

244:                                              ; preds = %240
  %245 = tail call i64 @llvm.smin.i64(i64 %241, i64 %220), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %245, metadata !1342, metadata !DIExpression()), !dbg !1357
  br label %262, !dbg !1411

246:                                              ; preds = %240
  %247 = srem i64 %241, %220, !dbg !1412
  %248 = sub nsw i64 %241, %247, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %248, metadata !1342, metadata !DIExpression()), !dbg !1357
  br label %262, !dbg !1414

249:                                              ; preds = %240
  %250 = srem i64 %241, %220, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %250, metadata !1350, metadata !DIExpression()), !dbg !1416
  %251 = icmp eq i64 %250, 0, !dbg !1417
  %252 = sub nsw i64 %220, %250, !dbg !1418
  %253 = select i1 %251, i64 0, i64 %252, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %253, metadata !1339, metadata !DIExpression()), !dbg !1357
  br label %254, !dbg !1419

254:                                              ; preds = %249, %240
  %255 = phi i64 [ %253, %249 ], [ %220, %240 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 %255, metadata !1339, metadata !DIExpression()), !dbg !1357
  %256 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %241, i64 %255), !dbg !1420
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !1420
  %258 = extractvalue { i64, i1 } %256, 0, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %258, metadata !1342, metadata !DIExpression()), !dbg !1357
  br i1 %257, label %259, label %262, !dbg !1422

259:                                              ; preds = %254
  %260 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #38, !dbg !1423
  %261 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1423
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %260, ptr noundef %261) #38, !dbg !1423
  br label %272, !dbg !1425

262:                                              ; preds = %254, %246, %244, %242, %219
  %263 = phi i64 [ %220, %219 ], [ %258, %254 ], [ %248, %246 ], [ %245, %244 ], [ %243, %242 ], !dbg !1426
  call void @llvm.dbg.value(metadata i64 %263, metadata !1342, metadata !DIExpression()), !dbg !1357
  %264 = tail call i64 @llvm.smax.i64(i64 %263, i64 0), !dbg !1427
  call void @llvm.dbg.value(metadata i64 %264, metadata !1342, metadata !DIExpression()), !dbg !1357
  %265 = tail call i32 @ftruncate(i32 noundef %187, i64 noundef %264) #38, !dbg !1428
  %266 = icmp eq i32 %265, 0, !dbg !1430
  br i1 %266, label %272, label %267, !dbg !1431

267:                                              ; preds = %262
  %268 = tail call ptr @__errno_location() #41, !dbg !1432
  %269 = load i32, ptr %268, align 4, !dbg !1432, !tbaa !975
  %270 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #38, !dbg !1432
  %271 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1432
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %269, ptr noundef %270, ptr noundef %271, i64 noundef %264) #38, !dbg !1432
  br label %272, !dbg !1434

272:                                              ; preds = %201, %216, %229, %235, %259, %262, %267
  %273 = phi i1 [ true, %201 ], [ true, %267 ], [ true, %216 ], [ false, %262 ], [ true, %259 ], [ true, %235 ], [ true, %229 ], !dbg !1357
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #38, !dbg !1435
  %274 = or i1 %186, %273, !dbg !1436
  tail call void @llvm.dbg.value(metadata i1 %274, metadata !1182, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1191
  %275 = tail call i32 @close(i32 noundef %187) #38, !dbg !1437
  %276 = icmp eq i32 %275, 0, !dbg !1439
  br i1 %276, label %285, label %277, !dbg !1440

277:                                              ; preds = %272
  %278 = tail call ptr @__errno_location() #41, !dbg !1441
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1191
  br label %279, !dbg !1443

279:                                              ; preds = %192, %189, %277
  %280 = phi ptr [ %278, %277 ], [ %191, %192 ], [ %191, %189 ]
  %281 = phi ptr [ @.str.32, %277 ], [ @.str.31, %192 ], [ @.str.31, %189 ]
  %282 = load i32, ptr %280, align 4, !dbg !1444, !tbaa !975
  %283 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %281, i32 noundef 5) #38, !dbg !1444
  %284 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1444
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %282, ptr noundef %283, ptr noundef %284) #38, !dbg !1444
  br label %285, !dbg !1445

285:                                              ; preds = %279, %272, %192
  %286 = phi i1 [ %186, %192 ], [ %274, %272 ], [ true, %279 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1182, metadata !DIExpression()), !dbg !1191
  %287 = getelementptr inbounds ptr, ptr %185, i64 1, !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %287, metadata !1128, metadata !DIExpression()), !dbg !1191
  %288 = load ptr, ptr %287, align 8, !dbg !1314, !tbaa !904
  tail call void @llvm.dbg.value(metadata ptr %288, metadata !1183, metadata !DIExpression()), !dbg !1315
  %289 = icmp eq ptr %288, null, !dbg !1316
  br i1 %289, label %179, label %183, !dbg !1316, !llvm.loop !1446
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1448 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1451 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1452 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1455 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1461 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1467 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1471 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1475 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1479 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1482 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !1485 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1488 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1490, metadata !DIExpression()), !dbg !1491
  store ptr %0, ptr @file_name, align 8, !dbg !1492, !tbaa !904
  ret void, !dbg !1493
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1494 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1498, metadata !DIExpression()), !dbg !1499
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1500, !tbaa !1501
  ret void, !dbg !1503
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1504 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1509, !tbaa !904
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1510
  %3 = icmp eq i32 %2, 0, !dbg !1511
  br i1 %3, label %22, label %4, !dbg !1512

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1513, !tbaa !1501, !range !1514, !noundef !943
  %6 = icmp eq i8 %5, 0, !dbg !1513
  br i1 %6, label %11, label %7, !dbg !1515

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1516
  %9 = load i32, ptr %8, align 4, !dbg !1516, !tbaa !975
  %10 = icmp eq i32 %9, 32, !dbg !1517
  br i1 %10, label %22, label %11, !dbg !1518

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #38, !dbg !1519
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1506, metadata !DIExpression()), !dbg !1520
  %13 = load ptr, ptr @file_name, align 8, !dbg !1521, !tbaa !904
  %14 = icmp eq ptr %13, null, !dbg !1521
  %15 = tail call ptr @__errno_location() #41, !dbg !1523
  %16 = load i32, ptr %15, align 4, !dbg !1523, !tbaa !975
  br i1 %14, label %19, label %17, !dbg !1524

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1525
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #38, !dbg !1525
  br label %20, !dbg !1525

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #38, !dbg !1526
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1527, !tbaa !975
  tail call void @_exit(i32 noundef %21) #40, !dbg !1528
  unreachable, !dbg !1528

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1529, !tbaa !904
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1531
  %25 = icmp eq i32 %24, 0, !dbg !1532
  br i1 %25, label %28, label %26, !dbg !1533

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1534, !tbaa !975
  tail call void @_exit(i32 noundef %27) #40, !dbg !1535
  unreachable, !dbg !1535

28:                                               ; preds = %22
  ret void, !dbg !1536
}

; Function Attrs: noreturn
declare !dbg !1537 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1538 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1542, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1543, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1544, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1545, metadata !DIExpression(DW_OP_deref)), !dbg !1546
  tail call fastcc void @flush_stdout(), !dbg !1547
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1548, !tbaa !904
  %7 = icmp eq ptr %6, null, !dbg !1548
  br i1 %7, label %9, label %8, !dbg !1550

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1551
  br label %13, !dbg !1551

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1552, !tbaa !904
  %11 = tail call ptr @getprogname() #39, !dbg !1552
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %11) #38, !dbg !1552
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1554, !tbaa.struct !1555
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1554
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1554
  ret void, !dbg !1556
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1557 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 1, metadata !1561, metadata !DIExpression()), !dbg !1564
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1567
  %2 = icmp slt i32 %1, 0, !dbg !1568
  br i1 %2, label %6, label %3, !dbg !1569

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1570, !tbaa !904
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1570
  br label %6, !dbg !1570

6:                                                ; preds = %3, %0
  ret void, !dbg !1571
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1572 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1578
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1574, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1575, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1576, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1577, metadata !DIExpression(DW_OP_deref)), !dbg !1579
  %7 = load ptr, ptr @stderr, align 8, !dbg !1580, !tbaa !904
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1581, !noalias !1625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1629
  call void @llvm.dbg.value(metadata ptr %7, metadata !1621, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %2, metadata !1622, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr poison, metadata !1623, metadata !DIExpression(DW_OP_deref)), !dbg !1630
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1581, !noalias !1625
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1631, !tbaa !975
  %10 = add i32 %9, 1, !dbg !1631
  store i32 %10, ptr @error_message_count, align 4, !dbg !1631, !tbaa !975
  %11 = icmp eq i32 %1, 0, !dbg !1632
  br i1 %11, label %21, label %12, !dbg !1634

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1635, metadata !DIExpression(), metadata !1578, metadata ptr %5, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i32 %1, metadata !1638, metadata !DIExpression()), !dbg !1643
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1645
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1646
  call void @llvm.dbg.value(metadata ptr %13, metadata !1639, metadata !DIExpression()), !dbg !1643
  %14 = icmp eq ptr %13, null, !dbg !1647
  br i1 %14, label %15, label %17, !dbg !1649

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #38, !dbg !1650
  call void @llvm.dbg.value(metadata ptr %16, metadata !1639, metadata !DIExpression()), !dbg !1643
  br label %17, !dbg !1651

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1643
  call void @llvm.dbg.value(metadata ptr %18, metadata !1639, metadata !DIExpression()), !dbg !1643
  %19 = load ptr, ptr @stderr, align 8, !dbg !1652, !tbaa !904
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %18) #38, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1653
  br label %21, !dbg !1654

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1655, !tbaa !904
  call void @llvm.dbg.value(metadata i32 10, metadata !1656, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata ptr %22, metadata !1662, metadata !DIExpression()), !dbg !1663
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1665
  %24 = load ptr, ptr %23, align 8, !dbg !1665, !tbaa !1666
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1665
  %26 = load ptr, ptr %25, align 8, !dbg !1665, !tbaa !1668
  %27 = icmp ult ptr %24, %26, !dbg !1665
  br i1 %27, label %30, label %28, !dbg !1665, !prof !1669

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1665
  br label %32, !dbg !1665

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1665
  store ptr %31, ptr %23, align 8, !dbg !1665, !tbaa !1666
  store i8 10, ptr %24, align 1, !dbg !1665, !tbaa !984
  br label %32, !dbg !1665

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1670, !tbaa !904
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1670
  %35 = icmp eq i32 %0, 0, !dbg !1671
  br i1 %35, label %37, label %36, !dbg !1673

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1674
  unreachable, !dbg !1674

37:                                               ; preds = %32
  ret void, !dbg !1675
}

declare !dbg !1676 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1679 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1682 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1685 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1688 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1691 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1698, metadata !DIExpression(), metadata !1699, metadata ptr %4, metadata !DIExpression()), !dbg !1700
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1695, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1696, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1697, metadata !DIExpression()), !dbg !1700
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1701
  call void @llvm.va_start(ptr nonnull %4), !dbg !1702
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1703, !tbaa.struct !1555
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !1703
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1703
  call void @llvm.va_end(ptr nonnull %4), !dbg !1704
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1705
  ret void, !dbg !1705
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !487 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !502, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !503, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !504, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !505, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !506, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !507, metadata !DIExpression(DW_OP_deref)), !dbg !1706
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1707, !tbaa !975
  %9 = icmp eq i32 %8, 0, !dbg !1707
  br i1 %9, label %24, label %10, !dbg !1709

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1710, !tbaa !975
  %12 = icmp eq i32 %11, %3, !dbg !1713
  br i1 %12, label %13, label %23, !dbg !1714

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1715, !tbaa !904
  %15 = icmp eq ptr %14, %2, !dbg !1716
  br i1 %15, label %37, label %16, !dbg !1717

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1718
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1719
  br i1 %19, label %20, label %23, !dbg !1719

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1720
  %22 = icmp eq i32 %21, 0, !dbg !1721
  br i1 %22, label %37, label %23, !dbg !1722

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1723, !tbaa !904
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1724, !tbaa !975
  br label %24, !dbg !1725

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1726
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1727, !tbaa !904
  %26 = icmp eq ptr %25, null, !dbg !1727
  br i1 %26, label %28, label %27, !dbg !1729

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1730
  br label %32, !dbg !1730

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1731, !tbaa !904
  %30 = tail call ptr @getprogname() #39, !dbg !1731
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %30) #38, !dbg !1731
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1733, !tbaa !904
  %34 = icmp eq ptr %2, null, !dbg !1733
  %35 = select i1 %34, ptr @.str.3.52, ptr @.str.2.53, !dbg !1733
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1733
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1734, !tbaa.struct !1555
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1734
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1734
  br label %37, !dbg !1735

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1735
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1736 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1746
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1745, metadata !DIExpression(), metadata !1746, metadata ptr %6, metadata !DIExpression()), !dbg !1747
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1740, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1741, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1742, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1743, metadata !DIExpression()), !dbg !1747
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1748
  call void @llvm.va_start(ptr nonnull %6), !dbg !1749
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1750, !tbaa.struct !1555
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !1750
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1750
  call void @llvm.va_end(ptr nonnull %6), !dbg !1751
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1752
  ret void, !dbg !1752
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1753 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1756, !tbaa !904
  ret ptr %1, !dbg !1757
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1758 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1760, metadata !DIExpression()), !dbg !1763
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1764
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1761, metadata !DIExpression()), !dbg !1763
  %3 = icmp eq ptr %2, null, !dbg !1765
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1765
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1765
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1762, metadata !DIExpression()), !dbg !1763
  %6 = ptrtoint ptr %5 to i64, !dbg !1766
  %7 = ptrtoint ptr %0 to i64, !dbg !1766
  %8 = sub i64 %6, %7, !dbg !1766
  %9 = icmp sgt i64 %8, 6, !dbg !1768
  br i1 %9, label %10, label %19, !dbg !1769

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %11, metadata !1771, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 7, metadata !1777, metadata !DIExpression()), !dbg !1778
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.62, i64 7), !dbg !1780
  %13 = icmp eq i32 %12, 0, !dbg !1781
  br i1 %13, label %14, label %19, !dbg !1782

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1760, metadata !DIExpression()), !dbg !1763
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.63, i64 noundef 3) #39, !dbg !1783
  %16 = icmp eq i32 %15, 0, !dbg !1786
  %17 = select i1 %16, i64 3, i64 0, !dbg !1787
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1787
  br label %19, !dbg !1787

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1762, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1760, metadata !DIExpression()), !dbg !1763
  store ptr %20, ptr @program_name, align 8, !dbg !1788, !tbaa !904
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1789, !tbaa !904
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1790, !tbaa !904
  ret void, !dbg !1791
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1792 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !541 {
  %3 = alloca i32, align 4, !DIAssignID !1793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !551, metadata !DIExpression(), metadata !1793, metadata ptr %3, metadata !DIExpression()), !dbg !1794
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !556, metadata !DIExpression(), metadata !1795, metadata ptr %4, metadata !DIExpression()), !dbg !1794
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !548, metadata !DIExpression()), !dbg !1794
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !549, metadata !DIExpression()), !dbg !1794
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1796
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !550, metadata !DIExpression()), !dbg !1794
  %6 = icmp eq ptr %5, %0, !dbg !1797
  br i1 %6, label %7, label %14, !dbg !1799

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1800
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1801
  call void @llvm.dbg.value(metadata ptr %4, metadata !1802, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %4, metadata !1811, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 0, metadata !1817, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 8, metadata !1818, metadata !DIExpression()), !dbg !1819
  store i64 0, ptr %4, align 8, !dbg !1821
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1822
  %9 = icmp eq i64 %8, 2, !dbg !1824
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1825
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1826
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1794
  ret ptr %15, !dbg !1826
}

; Function Attrs: nounwind
declare !dbg !1827 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1833 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1838, metadata !DIExpression()), !dbg !1841
  %2 = tail call ptr @__errno_location() #41, !dbg !1842
  %3 = load i32, ptr %2, align 4, !dbg !1842, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1839, metadata !DIExpression()), !dbg !1841
  %4 = icmp eq ptr %0, null, !dbg !1843
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1843
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #44, !dbg !1844
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1840, metadata !DIExpression()), !dbg !1841
  store i32 %3, ptr %2, align 4, !dbg !1845, !tbaa !975
  ret ptr %6, !dbg !1846
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1847 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1853, metadata !DIExpression()), !dbg !1854
  %2 = icmp eq ptr %0, null, !dbg !1855
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1855
  %4 = load i32, ptr %3, align 8, !dbg !1856, !tbaa !1857
  ret i32 %4, !dbg !1859
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1860 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1864, metadata !DIExpression()), !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1865, metadata !DIExpression()), !dbg !1866
  %3 = icmp eq ptr %0, null, !dbg !1867
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1867
  store i32 %1, ptr %4, align 8, !dbg !1868, !tbaa !1857
  ret void, !dbg !1869
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1870 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1874, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1875, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1876, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1877, metadata !DIExpression()), !dbg !1882
  %4 = icmp eq ptr %0, null, !dbg !1883
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1883
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1884
  %7 = lshr i8 %1, 5, !dbg !1885
  %8 = zext nneg i8 %7 to i64, !dbg !1885
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1886
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1878, metadata !DIExpression()), !dbg !1882
  %10 = and i8 %1, 31, !dbg !1887
  %11 = zext nneg i8 %10 to i32, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1880, metadata !DIExpression()), !dbg !1882
  %12 = load i32, ptr %9, align 4, !dbg !1888, !tbaa !975
  %13 = lshr i32 %12, %11, !dbg !1889
  %14 = and i32 %13, 1, !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1881, metadata !DIExpression()), !dbg !1882
  %15 = xor i32 %13, %2, !dbg !1891
  %16 = and i32 %15, 1, !dbg !1891
  %17 = shl nuw i32 %16, %11, !dbg !1892
  %18 = xor i32 %17, %12, !dbg !1893
  store i32 %18, ptr %9, align 4, !dbg !1893, !tbaa !975
  ret i32 %14, !dbg !1894
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1895 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1899, metadata !DIExpression()), !dbg !1902
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1900, metadata !DIExpression()), !dbg !1902
  %3 = icmp eq ptr %0, null, !dbg !1903
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1905
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1899, metadata !DIExpression()), !dbg !1902
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1906
  %6 = load i32, ptr %5, align 4, !dbg !1906, !tbaa !1907
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1901, metadata !DIExpression()), !dbg !1902
  store i32 %1, ptr %5, align 4, !dbg !1908, !tbaa !1907
  ret i32 %6, !dbg !1909
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1910 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1914, metadata !DIExpression()), !dbg !1917
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !1917
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1916, metadata !DIExpression()), !dbg !1917
  %4 = icmp eq ptr %0, null, !dbg !1918
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1920
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !1917
  store i32 10, ptr %5, align 8, !dbg !1921, !tbaa !1857
  %6 = icmp ne ptr %1, null, !dbg !1922
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1924
  br i1 %8, label %10, label %9, !dbg !1924

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1925
  unreachable, !dbg !1925

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1926
  store ptr %1, ptr %11, align 8, !dbg !1927, !tbaa !1928
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1929
  store ptr %2, ptr %12, align 8, !dbg !1930, !tbaa !1931
  ret void, !dbg !1932
}

; Function Attrs: noreturn nounwind
declare !dbg !1933 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1934 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1938, metadata !DIExpression()), !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1939, metadata !DIExpression()), !dbg !1946
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1940, metadata !DIExpression()), !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1941, metadata !DIExpression()), !dbg !1946
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1942, metadata !DIExpression()), !dbg !1946
  %6 = icmp eq ptr %4, null, !dbg !1947
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1947
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1943, metadata !DIExpression()), !dbg !1946
  %8 = tail call ptr @__errno_location() #41, !dbg !1948
  %9 = load i32, ptr %8, align 4, !dbg !1948, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1944, metadata !DIExpression()), !dbg !1946
  %10 = load i32, ptr %7, align 8, !dbg !1949, !tbaa !1857
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1950
  %12 = load i32, ptr %11, align 4, !dbg !1950, !tbaa !1907
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1951
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1952
  %15 = load ptr, ptr %14, align 8, !dbg !1952, !tbaa !1928
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1953
  %17 = load ptr, ptr %16, align 8, !dbg !1953, !tbaa !1931
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1954
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1945, metadata !DIExpression()), !dbg !1946
  store i32 %9, ptr %8, align 4, !dbg !1955, !tbaa !975
  ret i64 %18, !dbg !1956
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1957 {
  %10 = alloca i32, align 4, !DIAssignID !2025
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2026
  %12 = alloca i32, align 4, !DIAssignID !2027
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2028
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2003, metadata !DIExpression(), metadata !2029, metadata ptr %14, metadata !DIExpression()), !dbg !2030
  %15 = alloca i32, align 4, !DIAssignID !2031
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2006, metadata !DIExpression(), metadata !2031, metadata ptr %15, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1963, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1965, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1966, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1967, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1968, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1969, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1970, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1971, metadata !DIExpression()), !dbg !2033
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2034
  %17 = icmp eq i64 %16, 1, !dbg !2035
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1972, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1975, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1976, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1978, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1980, metadata !DIExpression()), !dbg !2033
  %18 = and i32 %5, 2, !dbg !2036
  %19 = icmp ne i32 %18, 0, !dbg !2036
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2036

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2037
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2038
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2039
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1976, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1975, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1966, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1971, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1970, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1967, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.label(metadata !1981), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !2033
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
  ], !dbg !2041

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1967, metadata !DIExpression()), !dbg !2033
  br label %101, !dbg !2042

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1967, metadata !DIExpression()), !dbg !2033
  br i1 %36, label %101, label %42, !dbg !2042

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2043
  br i1 %43, label %101, label %44, !dbg !2047

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2043, !tbaa !984
  br label %101, !dbg !2043

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !645, metadata !DIExpression(), metadata !2027, metadata ptr %12, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.assign(metadata i1 undef, metadata !646, metadata !DIExpression(), metadata !2028, metadata ptr %13, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !642, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %28, metadata !643, metadata !DIExpression()), !dbg !2048
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #38, !dbg !2052
  call void @llvm.dbg.value(metadata ptr %46, metadata !644, metadata !DIExpression()), !dbg !2048
  %47 = icmp eq ptr %46, @.str.11.91, !dbg !2053
  br i1 %47, label %48, label %57, !dbg !2055

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2056
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2057
  call void @llvm.dbg.value(metadata ptr %13, metadata !2058, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr %13, metadata !2066, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 8, metadata !2070, metadata !DIExpression()), !dbg !2071
  store i64 0, ptr %13, align 8, !dbg !2073
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2074
  %50 = icmp eq i64 %49, 3, !dbg !2076
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2077
  %54 = icmp eq i32 %28, 9, !dbg !2077
  %55 = select i1 %54, ptr @.str.10.93, ptr @.str.12.94, !dbg !2077
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2078
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2078
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2048
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1970, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.assign(metadata i1 undef, metadata !645, metadata !DIExpression(), metadata !2025, metadata ptr %10, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.assign(metadata i1 undef, metadata !646, metadata !DIExpression(), metadata !2026, metadata ptr %11, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !642, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %28, metadata !643, metadata !DIExpression()), !dbg !2079
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #38, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %59, metadata !644, metadata !DIExpression()), !dbg !2079
  %60 = icmp eq ptr %59, @.str.12.94, !dbg !2082
  br i1 %60, label %61, label %70, !dbg !2083

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2084
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %11, metadata !2058, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %11, metadata !2066, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 8, metadata !2070, metadata !DIExpression()), !dbg !2088
  store i64 0, ptr %11, align 8, !dbg !2090
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2091
  %63 = icmp eq i64 %62, 3, !dbg !2092
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2093
  %67 = icmp eq i32 %28, 9, !dbg !2093
  %68 = select i1 %67, ptr @.str.10.93, ptr @.str.12.94, !dbg !2093
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2094
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2094
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1971, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1970, metadata !DIExpression()), !dbg !2033
  br i1 %36, label %88, label %73, !dbg !2095

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1983, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2033
  %74 = load i8, ptr %71, align 1, !dbg !2097, !tbaa !984
  %75 = icmp eq i8 %74, 0, !dbg !2099
  br i1 %75, label %88, label %.preheader11, !dbg !2099

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2099

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1983, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1973, metadata !DIExpression()), !dbg !2033
  %80 = icmp ult i64 %79, %39, !dbg !2100
  br i1 %80, label %81, label %83, !dbg !2103

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2100
  store i8 %77, ptr %82, align 1, !dbg !2100, !tbaa !984
  br label %83, !dbg !2100

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1973, metadata !DIExpression()), !dbg !2033
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2104
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1983, metadata !DIExpression()), !dbg !2096
  %86 = load i8, ptr %85, align 1, !dbg !2097, !tbaa !984
  %87 = icmp eq i8 %86, 0, !dbg !2099
  br i1 %87, label %.loopexit12, label %76, !dbg !2099, !llvm.loop !2105

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2103
  br label %88, !dbg !2107

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1975, metadata !DIExpression()), !dbg !2033
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1976, metadata !DIExpression()), !dbg !2033
  br label %101, !dbg !2109

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2033
  br label %101, !dbg !2110

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1967, metadata !DIExpression()), !dbg !2033
  br label %101, !dbg !2111

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2033
  br i1 %36, label %101, label %95, !dbg !2112

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1967, metadata !DIExpression()), !dbg !2033
  br i1 %36, label %101, label %95, !dbg !2111

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2113
  br i1 %97, label %101, label %98, !dbg !2117

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2113, !tbaa !984
  br label %101, !dbg !2113

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2033
  br label %101, !dbg !2118

100:                                              ; preds = %27
  call void @abort() #40, !dbg !2119
  unreachable, !dbg !2119

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2108
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.93, %42 ], [ @.str.10.93, %44 ], [ @.str.10.93, %41 ], [ %33, %27 ], [ @.str.12.94, %95 ], [ @.str.12.94, %98 ], [ @.str.12.94, %94 ], [ @.str.10.93, %40 ], [ @.str.12.94, %91 ], [ @.str.12.94, %92 ], [ @.str.12.94, %93 ], !dbg !2033
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2033
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1976, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1975, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1971, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1970, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1967, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1988, metadata !DIExpression()), !dbg !2120
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
  br label %121, !dbg !2121

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2108
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2037
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2122
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1988, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1966, metadata !DIExpression()), !dbg !2033
  %130 = icmp eq i64 %122, -1, !dbg !2123
  br i1 %130, label %131, label %135, !dbg !2124

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2125
  %133 = load i8, ptr %132, align 1, !dbg !2125, !tbaa !984
  %134 = icmp eq i8 %133, 0, !dbg !2126
  br i1 %134, label %573, label %137, !dbg !2127

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2128
  br i1 %136, label %573, label %137, !dbg !2127

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !2129
  br i1 %113, label %138, label %151, !dbg !2130

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2132
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2133
  br i1 %140, label %141, label %143, !dbg !2133

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1966, metadata !DIExpression()), !dbg !2033
  br label %143, !dbg !2135

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2135
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1966, metadata !DIExpression()), !dbg !2033
  %145 = icmp ugt i64 %139, %144, !dbg !2136
  br i1 %145, label %151, label %146, !dbg !2137

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2138
  call void @llvm.dbg.value(metadata ptr %147, metadata !2139, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata ptr %106, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %107, metadata !2143, metadata !DIExpression()), !dbg !2144
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2146
  %149 = icmp eq i32 %148, 0, !dbg !2147
  %150 = and i1 %149, %109, !dbg !2148
  br i1 %150, label %.loopexit7, label %151, !dbg !2148

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1966, metadata !DIExpression()), !dbg !2033
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2149
  %155 = load i8, ptr %154, align 1, !dbg !2149, !tbaa !984
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1995, metadata !DIExpression()), !dbg !2129
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
  ], !dbg !2150

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2151

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2152

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2129
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2156
  br i1 %159, label %176, label %160, !dbg !2156

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2158
  br i1 %161, label %162, label %164, !dbg !2162

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2158
  store i8 39, ptr %163, align 1, !dbg !2158, !tbaa !984
  br label %164, !dbg !2158

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1973, metadata !DIExpression()), !dbg !2033
  %166 = icmp ult i64 %165, %129, !dbg !2163
  br i1 %166, label %167, label %169, !dbg !2166

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2163
  store i8 36, ptr %168, align 1, !dbg !2163, !tbaa !984
  br label %169, !dbg !2163

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1973, metadata !DIExpression()), !dbg !2033
  %171 = icmp ult i64 %170, %129, !dbg !2167
  br i1 %171, label %172, label %174, !dbg !2170

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2167
  store i8 39, ptr %173, align 1, !dbg !2167, !tbaa !984
  br label %174, !dbg !2167

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1982, metadata !DIExpression()), !dbg !2033
  br label %176, !dbg !2171

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2033
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1973, metadata !DIExpression()), !dbg !2033
  %179 = icmp ult i64 %177, %129, !dbg !2172
  br i1 %179, label %180, label %182, !dbg !2175

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2172
  store i8 92, ptr %181, align 1, !dbg !2172, !tbaa !984
  br label %182, !dbg !2172

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1973, metadata !DIExpression()), !dbg !2033
  br i1 %110, label %184, label %476, !dbg !2176

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2178
  %186 = icmp ult i64 %185, %152, !dbg !2179
  br i1 %186, label %187, label %433, !dbg !2180

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2181
  %189 = load i8, ptr %188, align 1, !dbg !2181, !tbaa !984
  %190 = add i8 %189, -48, !dbg !2182
  %191 = icmp ult i8 %190, 10, !dbg !2182
  br i1 %191, label %192, label %433, !dbg !2182

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2183
  br i1 %193, label %194, label %196, !dbg !2187

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2183
  store i8 48, ptr %195, align 1, !dbg !2183, !tbaa !984
  br label %196, !dbg !2183

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1973, metadata !DIExpression()), !dbg !2033
  %198 = icmp ult i64 %197, %129, !dbg !2188
  br i1 %198, label %199, label %201, !dbg !2191

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2188
  store i8 48, ptr %200, align 1, !dbg !2188, !tbaa !984
  br label %201, !dbg !2188

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2191
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1973, metadata !DIExpression()), !dbg !2033
  br label %433, !dbg !2192

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2193

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2194

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2195

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2197

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2199
  %209 = icmp ult i64 %208, %152, !dbg !2200
  br i1 %209, label %210, label %433, !dbg !2201

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2202
  %212 = load i8, ptr %211, align 1, !dbg !2202, !tbaa !984
  %213 = icmp eq i8 %212, 63, !dbg !2203
  br i1 %213, label %214, label %433, !dbg !2204

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2205
  %216 = load i8, ptr %215, align 1, !dbg !2205, !tbaa !984
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
  ], !dbg !2206

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2207

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1995, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1988, metadata !DIExpression()), !dbg !2120
  %219 = icmp ult i64 %123, %129, !dbg !2209
  br i1 %219, label %220, label %222, !dbg !2212

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2209
  store i8 63, ptr %221, align 1, !dbg !2209, !tbaa !984
  br label %222, !dbg !2209

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1973, metadata !DIExpression()), !dbg !2033
  %224 = icmp ult i64 %223, %129, !dbg !2213
  br i1 %224, label %225, label %227, !dbg !2216

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2213
  store i8 34, ptr %226, align 1, !dbg !2213, !tbaa !984
  br label %227, !dbg !2213

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1973, metadata !DIExpression()), !dbg !2033
  %229 = icmp ult i64 %228, %129, !dbg !2217
  br i1 %229, label %230, label %232, !dbg !2220

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2217
  store i8 34, ptr %231, align 1, !dbg !2217, !tbaa !984
  br label %232, !dbg !2217

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1973, metadata !DIExpression()), !dbg !2033
  %234 = icmp ult i64 %233, %129, !dbg !2221
  br i1 %234, label %235, label %237, !dbg !2224

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2221
  store i8 63, ptr %236, align 1, !dbg !2221, !tbaa !984
  br label %237, !dbg !2221

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1973, metadata !DIExpression()), !dbg !2033
  br label %433, !dbg !2225

239:                                              ; preds = %151
  br label %249, !dbg !2226

240:                                              ; preds = %151
  br label %249, !dbg !2227

241:                                              ; preds = %151
  br label %247, !dbg !2228

242:                                              ; preds = %151
  br label %247, !dbg !2229

243:                                              ; preds = %151
  br label %249, !dbg !2230

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2231

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2232

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2235

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2237
  call void @llvm.dbg.label(metadata !1996), !dbg !2238
  br i1 %118, label %.loopexit8, label %249, !dbg !2239

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2237
  call void @llvm.dbg.label(metadata !1999), !dbg !2241
  br i1 %108, label %487, label %444, !dbg !2242

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2243

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2244, !tbaa !984
  %254 = icmp eq i8 %253, 0, !dbg !2246
  br i1 %254, label %255, label %433, !dbg !2247

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2248
  br i1 %256, label %257, label %433, !dbg !2250

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1994, metadata !DIExpression()), !dbg !2129
  br label %258, !dbg !2251

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1994, metadata !DIExpression()), !dbg !2129
  br i1 %115, label %260, label %433, !dbg !2252

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2254

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1994, metadata !DIExpression()), !dbg !2129
  br i1 %115, label %262, label %433, !dbg !2255

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2256

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2259
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2261
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2261
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2261
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1974, metadata !DIExpression()), !dbg !2033
  %269 = icmp ult i64 %123, %268, !dbg !2262
  br i1 %269, label %270, label %272, !dbg !2265

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2262
  store i8 39, ptr %271, align 1, !dbg !2262, !tbaa !984
  br label %272, !dbg !2262

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2265
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1973, metadata !DIExpression()), !dbg !2033
  %274 = icmp ult i64 %273, %268, !dbg !2266
  br i1 %274, label %275, label %277, !dbg !2269

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2266
  store i8 92, ptr %276, align 1, !dbg !2266, !tbaa !984
  br label %277, !dbg !2266

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2269
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1973, metadata !DIExpression()), !dbg !2033
  %279 = icmp ult i64 %278, %268, !dbg !2270
  br i1 %279, label %280, label %282, !dbg !2273

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2270
  store i8 39, ptr %281, align 1, !dbg !2270, !tbaa !984
  br label %282, !dbg !2270

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !2033
  br label %433, !dbg !2274

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2275

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2000, metadata !DIExpression()), !dbg !2276
  %286 = tail call ptr @__ctype_b_loc() #41, !dbg !2277
  %287 = load ptr, ptr %286, align 8, !dbg !2277, !tbaa !904
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2277
  %290 = load i16, ptr %289, align 2, !dbg !2277, !tbaa !1016
  %291 = and i16 %290, 16384, !dbg !2277
  %292 = icmp ne i16 %291, 0, !dbg !2279
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2276
  br label %334, !dbg !2280

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2281
  call void @llvm.dbg.value(metadata ptr %14, metadata !2058, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr %14, metadata !2066, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 8, metadata !2070, metadata !DIExpression()), !dbg !2284
  store i64 0, ptr %14, align 8, !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2000, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2276
  %294 = icmp eq i64 %152, -1, !dbg !2287
  br i1 %294, label %295, label %297, !dbg !2289

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2290
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1966, metadata !DIExpression()), !dbg !2033
  br label %297, !dbg !2291

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1966, metadata !DIExpression()), !dbg !2033
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2292
  %299 = sub i64 %298, %128, !dbg !2293
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #38, !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2010, metadata !DIExpression()), !dbg !2032
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2295

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2000, metadata !DIExpression()), !dbg !2276
  %302 = icmp ult i64 %128, %298, !dbg !2296
  br i1 %302, label %.preheader5, label %329, !dbg !2298

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2299

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2276
  br label %329, !dbg !2300

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2000, metadata !DIExpression()), !dbg !2276
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2302
  %308 = load i8, ptr %307, align 1, !dbg !2302, !tbaa !984
  %309 = icmp eq i8 %308, 0, !dbg !2298
  br i1 %309, label %.loopexit6, label %310, !dbg !2299

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2000, metadata !DIExpression()), !dbg !2276
  %312 = add i64 %311, %128, !dbg !2304
  %313 = icmp eq i64 %311, %299, !dbg !2296
  br i1 %313, label %.loopexit6, label %304, !dbg !2298, !llvm.loop !2305

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2011, metadata !DIExpression()), !dbg !2306
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2307
  %317 = and i1 %316, %109, !dbg !2307
  br i1 %317, label %.preheader3, label %325, !dbg !2307

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2308

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2011, metadata !DIExpression()), !dbg !2306
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2309
  %321 = load i8, ptr %320, align 1, !dbg !2309, !tbaa !984
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2311

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2312
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2011, metadata !DIExpression()), !dbg !2306
  %324 = icmp eq i64 %323, %300, !dbg !2313
  br i1 %324, label %.loopexit4, label %318, !dbg !2308, !llvm.loop !2314

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2316

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2316, !tbaa !975
  call void @llvm.dbg.value(metadata i32 %326, metadata !2318, metadata !DIExpression()), !dbg !2326
  %327 = call i32 @iswprint(i32 noundef %326) #38, !dbg !2328
  %328 = icmp ne i32 %327, 0, !dbg !2329
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2000, metadata !DIExpression()), !dbg !2276
  br label %329, !dbg !2330

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2331

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2000, metadata !DIExpression()), !dbg !2276
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2332
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2000, metadata !DIExpression()), !dbg !2276
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2332
  call void @llvm.dbg.label(metadata !2024), !dbg !2333
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2334
  br label %624, !dbg !2334

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2129
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2336
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2002, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2000, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1966, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1994, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  %338 = icmp ult i64 %336, 2, !dbg !2337
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2338
  br i1 %340, label %433, label %341, !dbg !2338

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2019, metadata !DIExpression()), !dbg !2340
  br label %343, !dbg !2341

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2033
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2120
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1995, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1988, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1973, metadata !DIExpression()), !dbg !2033
  br i1 %339, label %394, label %350, !dbg !2342

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2347

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2129
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2350
  br i1 %352, label %369, label %353, !dbg !2350

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2352
  br i1 %354, label %355, label %357, !dbg !2356

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2352
  store i8 39, ptr %356, align 1, !dbg !2352, !tbaa !984
  br label %357, !dbg !2352

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1973, metadata !DIExpression()), !dbg !2033
  %359 = icmp ult i64 %358, %129, !dbg !2357
  br i1 %359, label %360, label %362, !dbg !2360

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2357
  store i8 36, ptr %361, align 1, !dbg !2357, !tbaa !984
  br label %362, !dbg !2357

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1973, metadata !DIExpression()), !dbg !2033
  %364 = icmp ult i64 %363, %129, !dbg !2361
  br i1 %364, label %365, label %367, !dbg !2364

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2361
  store i8 39, ptr %366, align 1, !dbg !2361, !tbaa !984
  br label %367, !dbg !2361

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1982, metadata !DIExpression()), !dbg !2033
  br label %369, !dbg !2365

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2033
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1973, metadata !DIExpression()), !dbg !2033
  %372 = icmp ult i64 %370, %129, !dbg !2366
  br i1 %372, label %373, label %375, !dbg !2369

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2366
  store i8 92, ptr %374, align 1, !dbg !2366, !tbaa !984
  br label %375, !dbg !2366

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1973, metadata !DIExpression()), !dbg !2033
  %377 = icmp ult i64 %376, %129, !dbg !2370
  br i1 %377, label %378, label %382, !dbg !2373

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2370
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2370
  store i8 %380, ptr %381, align 1, !dbg !2370, !tbaa !984
  br label %382, !dbg !2370

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2373
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1973, metadata !DIExpression()), !dbg !2033
  %384 = icmp ult i64 %383, %129, !dbg !2374
  br i1 %384, label %385, label %390, !dbg !2377

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2374
  %388 = or disjoint i8 %387, 48, !dbg !2374
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2374
  store i8 %388, ptr %389, align 1, !dbg !2374, !tbaa !984
  br label %390, !dbg !2374

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2377
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1973, metadata !DIExpression()), !dbg !2033
  %392 = and i8 %349, 7, !dbg !2378
  %393 = or disjoint i8 %392, 48, !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1995, metadata !DIExpression()), !dbg !2129
  br label %401, !dbg !2380

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2381

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2382
  br i1 %396, label %397, label %399, !dbg !2387

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2382
  store i8 92, ptr %398, align 1, !dbg !2382, !tbaa !984
  br label %399, !dbg !2382

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2387
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2129
  br label %401, !dbg !2388

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2033
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1995, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1973, metadata !DIExpression()), !dbg !2033
  %407 = add i64 %346, 1, !dbg !2389
  %408 = icmp ugt i64 %342, %407, !dbg !2391
  br i1 %408, label %409, label %.loopexit2, !dbg !2392

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2393
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2393
  br i1 %411, label %423, label %412, !dbg !2393

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2396
  br i1 %413, label %414, label %416, !dbg !2400

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2396
  store i8 39, ptr %415, align 1, !dbg !2396, !tbaa !984
  br label %416, !dbg !2396

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2400
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1973, metadata !DIExpression()), !dbg !2033
  %418 = icmp ult i64 %417, %129, !dbg !2401
  br i1 %418, label %419, label %421, !dbg !2404

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2401
  store i8 39, ptr %420, align 1, !dbg !2401, !tbaa !984
  br label %421, !dbg !2401

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2404
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !2033
  br label %423, !dbg !2405

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2406
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1973, metadata !DIExpression()), !dbg !2033
  %426 = icmp ult i64 %424, %129, !dbg !2407
  br i1 %426, label %427, label %429, !dbg !2410

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2407
  store i8 %406, ptr %428, align 1, !dbg !2407, !tbaa !984
  br label %429, !dbg !2407

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2410
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1988, metadata !DIExpression()), !dbg !2120
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2411
  %432 = load i8, ptr %431, align 1, !dbg !2411, !tbaa !984
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1995, metadata !DIExpression()), !dbg !2129
  br label %343, !dbg !2412, !llvm.loop !2413

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2416
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2033
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2037
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2120
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2129
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1995, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1994, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1988, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1966, metadata !DIExpression()), !dbg !2033
  br i1 %111, label %455, label %444, !dbg !2417

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
  br i1 %120, label %456, label %476, !dbg !2419

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2420

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
  %467 = lshr i8 %458, 5, !dbg !2421
  %468 = zext nneg i8 %467 to i64, !dbg !2421
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2422
  %470 = load i32, ptr %469, align 4, !dbg !2422, !tbaa !975
  %471 = and i8 %458, 31, !dbg !2423
  %472 = zext nneg i8 %471 to i32, !dbg !2423
  %473 = shl nuw i32 1, %472, !dbg !2424
  %474 = and i32 %470, %473, !dbg !2424
  %475 = icmp eq i32 %474, 0, !dbg !2424
  br i1 %475, label %476, label %487, !dbg !2425

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
  br i1 %153, label %487, label %523, !dbg !2426

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2416
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2033
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2037
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2427
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2129
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1995, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1994, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1988, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1966, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.label(metadata !2022), !dbg !2428
  br i1 %109, label %.loopexit8, label %497, !dbg !2429

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2129
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2431
  br i1 %498, label %515, label %499, !dbg !2431

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2433
  br i1 %500, label %501, label %503, !dbg !2437

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2433
  store i8 39, ptr %502, align 1, !dbg !2433, !tbaa !984
  br label %503, !dbg !2433

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1973, metadata !DIExpression()), !dbg !2033
  %505 = icmp ult i64 %504, %496, !dbg !2438
  br i1 %505, label %506, label %508, !dbg !2441

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2438
  store i8 36, ptr %507, align 1, !dbg !2438, !tbaa !984
  br label %508, !dbg !2438

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2441
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1973, metadata !DIExpression()), !dbg !2033
  %510 = icmp ult i64 %509, %496, !dbg !2442
  br i1 %510, label %511, label %513, !dbg !2445

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2442
  store i8 39, ptr %512, align 1, !dbg !2442, !tbaa !984
  br label %513, !dbg !2442

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1982, metadata !DIExpression()), !dbg !2033
  br label %515, !dbg !2446

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2129
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1973, metadata !DIExpression()), !dbg !2033
  %518 = icmp ult i64 %516, %496, !dbg !2447
  br i1 %518, label %519, label %521, !dbg !2450

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2447
  store i8 92, ptr %520, align 1, !dbg !2447, !tbaa !984
  br label %521, !dbg !2447

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2450
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1995, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1994, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1988, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1966, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.label(metadata !2023), !dbg !2451
  br label %547, !dbg !2452

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2033
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2129
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2120
  br label %523, !dbg !2452

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2416
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2033
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2037
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2427
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2455
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1995, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1994, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1988, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1966, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.label(metadata !2023), !dbg !2451
  %534 = xor i1 %528, true, !dbg !2452
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2452
  br i1 %535, label %547, label %536, !dbg !2452

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2456
  br i1 %537, label %538, label %540, !dbg !2460

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2456
  store i8 39, ptr %539, align 1, !dbg !2456, !tbaa !984
  br label %540, !dbg !2456

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1973, metadata !DIExpression()), !dbg !2033
  %542 = icmp ult i64 %541, %533, !dbg !2461
  br i1 %542, label %543, label %545, !dbg !2464

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2461
  store i8 39, ptr %544, align 1, !dbg !2461, !tbaa !984
  br label %545, !dbg !2461

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2464
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !2033
  br label %547, !dbg !2465

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2129
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1973, metadata !DIExpression()), !dbg !2033
  %557 = icmp ult i64 %555, %548, !dbg !2466
  br i1 %557, label %558, label %560, !dbg !2469

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2466
  store i8 %549, ptr %559, align 1, !dbg !2466, !tbaa !984
  br label %560, !dbg !2466

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1973, metadata !DIExpression()), !dbg !2033
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2033
  br label %563, !dbg !2471

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2416
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2033
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2037
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2427
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1988, metadata !DIExpression()), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1982, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1966, metadata !DIExpression()), !dbg !2033
  %572 = add i64 %570, 1, !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1988, metadata !DIExpression()), !dbg !2120
  br label %121, !dbg !2473, !llvm.loop !2474

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2108
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2037
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1964, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1974, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1973, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1966, metadata !DIExpression()), !dbg !2033
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2476
  %575 = xor i1 %109, true, !dbg !2478
  %576 = or i1 %574, %575, !dbg !2478
  %577 = or i1 %576, %110, !dbg !2478
  br i1 %577, label %578, label %.loopexit13, !dbg !2478

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2479
  %580 = xor i1 %.lcssa38, true, !dbg !2479
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2479
  br i1 %581, label %589, label %582, !dbg !2479

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2481

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2037
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2483
  br label %638, !dbg !2485

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2486
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2488
  br i1 %588, label %27, label %589, !dbg !2488

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2033
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2108
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2489
  %592 = or i1 %591, %590, !dbg !2491
  br i1 %592, label %608, label %593, !dbg !2491

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1975, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1973, metadata !DIExpression()), !dbg !2033
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2492, !tbaa !984
  %595 = icmp eq i8 %594, 0, !dbg !2495
  br i1 %595, label %608, label %.preheader, !dbg !2495

.preheader:                                       ; preds = %593
  br label %596, !dbg !2495

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1975, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1973, metadata !DIExpression()), !dbg !2033
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2496
  br i1 %600, label %601, label %603, !dbg !2499

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2496
  store i8 %597, ptr %602, align 1, !dbg !2496, !tbaa !984
  br label %603, !dbg !2496

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1973, metadata !DIExpression()), !dbg !2033
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2500
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1975, metadata !DIExpression()), !dbg !2033
  %606 = load i8, ptr %605, align 1, !dbg !2492, !tbaa !984
  %607 = icmp eq i8 %606, 0, !dbg !2495
  br i1 %607, label %.loopexit, label %596, !dbg !2495, !llvm.loop !2501

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2499
  br label %608, !dbg !2503

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1973, metadata !DIExpression()), !dbg !2033
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2503
  br i1 %610, label %611, label %638, !dbg !2505

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2506
  store i8 0, ptr %612, align 1, !dbg !2507, !tbaa !984
  br label %638, !dbg !2506

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2024), !dbg !2333
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2508
  br i1 %614, label %624, label %630, !dbg !2334

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2129
  br label %615, !dbg !2508

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2508

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2508

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2024), !dbg !2333
  %622 = icmp eq i32 %616, 2, !dbg !2508
  %623 = select i1 %619, i32 4, i32 2, !dbg !2334
  br i1 %622, label %624, label %630, !dbg !2334

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2334

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2135
  br label %630, !dbg !2509

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1967, metadata !DIExpression()), !dbg !2033
  %636 = and i32 %5, -3, !dbg !2509
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2510
  br label %638, !dbg !2511

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2512
}

; Function Attrs: nounwind
declare !dbg !2513 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2516 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2519 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2526, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %0, metadata !2529, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr null, metadata !2535, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr %2, metadata !2536, metadata !DIExpression()), !dbg !2542
  %4 = icmp eq ptr %2, null, !dbg !2544
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %5, metadata !2537, metadata !DIExpression()), !dbg !2542
  %6 = tail call ptr @__errno_location() #41, !dbg !2545
  %7 = load i32, ptr %6, align 4, !dbg !2545, !tbaa !975
  call void @llvm.dbg.value(metadata i32 %7, metadata !2538, metadata !DIExpression()), !dbg !2542
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2546
  %9 = load i32, ptr %8, align 4, !dbg !2546, !tbaa !1907
  %10 = or i32 %9, 1, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %10, metadata !2539, metadata !DIExpression()), !dbg !2542
  %11 = load i32, ptr %5, align 8, !dbg !2548, !tbaa !1857
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2549
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2550
  %14 = load ptr, ptr %13, align 8, !dbg !2550, !tbaa !1928
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2551
  %16 = load ptr, ptr %15, align 8, !dbg !2551, !tbaa !1931
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2552
  %18 = add i64 %17, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %18, metadata !2540, metadata !DIExpression()), !dbg !2542
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2554
  call void @llvm.dbg.value(metadata ptr %19, metadata !2541, metadata !DIExpression()), !dbg !2542
  %20 = load i32, ptr %5, align 8, !dbg !2555, !tbaa !1857
  %21 = load ptr, ptr %13, align 8, !dbg !2556, !tbaa !1928
  %22 = load ptr, ptr %15, align 8, !dbg !2557, !tbaa !1931
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2558
  store i32 %7, ptr %6, align 4, !dbg !2559, !tbaa !975
  ret ptr %19, !dbg !2560
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2530 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2529, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2535, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2536, metadata !DIExpression()), !dbg !2561
  %5 = icmp eq ptr %3, null, !dbg !2562
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2562
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2537, metadata !DIExpression()), !dbg !2561
  %7 = tail call ptr @__errno_location() #41, !dbg !2563
  %8 = load i32, ptr %7, align 4, !dbg !2563, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2538, metadata !DIExpression()), !dbg !2561
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2564
  %10 = load i32, ptr %9, align 4, !dbg !2564, !tbaa !1907
  %11 = icmp eq ptr %2, null, !dbg !2565
  %12 = zext i1 %11 to i32, !dbg !2565
  %13 = or i32 %10, %12, !dbg !2566
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2539, metadata !DIExpression()), !dbg !2561
  %14 = load i32, ptr %6, align 8, !dbg !2567, !tbaa !1857
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2568
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2569
  %17 = load ptr, ptr %16, align 8, !dbg !2569, !tbaa !1928
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2570
  %19 = load ptr, ptr %18, align 8, !dbg !2570, !tbaa !1931
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2571
  %21 = add i64 %20, 1, !dbg !2572
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2540, metadata !DIExpression()), !dbg !2561
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2573
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2541, metadata !DIExpression()), !dbg !2561
  %23 = load i32, ptr %6, align 8, !dbg !2574, !tbaa !1857
  %24 = load ptr, ptr %16, align 8, !dbg !2575, !tbaa !1928
  %25 = load ptr, ptr %18, align 8, !dbg !2576, !tbaa !1931
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2577
  store i32 %8, ptr %7, align 4, !dbg !2578, !tbaa !975
  br i1 %11, label %28, label %27, !dbg !2579

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2580, !tbaa !2582
  br label %28, !dbg !2583

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2584
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2585 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2590, !tbaa !904
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2587, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2588, metadata !DIExpression()), !dbg !2592
  %2 = load i32, ptr @nslots, align 4, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2588, metadata !DIExpression()), !dbg !2592
  %3 = icmp sgt i32 %2, 1, !dbg !2593
  br i1 %3, label %4, label %6, !dbg !2595

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2593
  br label %10, !dbg !2595

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2596

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2596
  %8 = load ptr, ptr %7, align 8, !dbg !2596, !tbaa !2598
  %9 = icmp eq ptr %8, @slot0, !dbg !2600
  br i1 %9, label %17, label %16, !dbg !2601

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2588, metadata !DIExpression()), !dbg !2592
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2602
  %13 = load ptr, ptr %12, align 8, !dbg !2602, !tbaa !2598
  tail call void @free(ptr noundef %13) #38, !dbg !2603
  %14 = add nuw nsw i64 %11, 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2588, metadata !DIExpression()), !dbg !2592
  %15 = icmp eq i64 %14, %5, !dbg !2593
  br i1 %15, label %.loopexit, label %10, !dbg !2595, !llvm.loop !2605

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2607
  store i64 256, ptr @slotvec0, align 8, !dbg !2609, !tbaa !2610
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2611, !tbaa !2598
  br label %17, !dbg !2612

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2613
  br i1 %18, label %20, label %19, !dbg !2615

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2616
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2618, !tbaa !904
  br label %20, !dbg !2619

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2620, !tbaa !975
  ret void, !dbg !2621
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2622 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2625 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2628, metadata !DIExpression()), !dbg !2629
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2630
  ret ptr %3, !dbg !2631
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2632 {
  %5 = alloca i64, align 8, !DIAssignID !2652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2646, metadata !DIExpression(), metadata !2652, metadata ptr %5, metadata !DIExpression()), !dbg !2653
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2636, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2637, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2638, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2639, metadata !DIExpression()), !dbg !2654
  %6 = tail call ptr @__errno_location() #41, !dbg !2655
  %7 = load i32, ptr %6, align 4, !dbg !2655, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2640, metadata !DIExpression()), !dbg !2654
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2656, !tbaa !904
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2641, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2642, metadata !DIExpression()), !dbg !2654
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2657
  br i1 %9, label %10, label %11, !dbg !2657

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2659
  unreachable, !dbg !2659

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2660, !tbaa !975
  %13 = icmp sgt i32 %12, %0, !dbg !2661
  br i1 %13, label %32, label %14, !dbg !2662

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2663
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2653
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2664
  %16 = sext i32 %12 to i64, !dbg !2665
  store i64 %16, ptr %5, align 8, !dbg !2666, !tbaa !2582, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2646, metadata !DIExpression(), metadata !2667, metadata ptr %5, metadata !DIExpression()), !dbg !2653
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2668
  %18 = add nuw nsw i32 %0, 1, !dbg !2669
  %19 = sub i32 %18, %12, !dbg !2670
  %20 = sext i32 %19 to i64, !dbg !2671
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2672
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2641, metadata !DIExpression()), !dbg !2654
  store ptr %21, ptr @slotvec, align 8, !dbg !2673, !tbaa !904
  br i1 %15, label %22, label %23, !dbg !2674

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2675, !tbaa.struct !2677
  br label %23, !dbg !2678

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2679, !tbaa !975
  %25 = sext i32 %24 to i64, !dbg !2680
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2680
  %27 = load i64, ptr %5, align 8, !dbg !2681, !tbaa !2582
  %28 = sub nsw i64 %27, %25, !dbg !2682
  %29 = shl i64 %28, 4, !dbg !2683
  call void @llvm.dbg.value(metadata ptr %26, metadata !2066, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %29, metadata !2070, metadata !DIExpression()), !dbg !2684
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2686
  %30 = load i64, ptr %5, align 8, !dbg !2687, !tbaa !2582
  %31 = trunc i64 %30 to i32, !dbg !2687
  store i32 %31, ptr @nslots, align 4, !dbg !2688, !tbaa !975
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2689
  br label %32, !dbg !2690

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2654
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2641, metadata !DIExpression()), !dbg !2654
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2691
  %36 = load i64, ptr %35, align 8, !dbg !2692, !tbaa !2610
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2647, metadata !DIExpression()), !dbg !2693
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2694
  %38 = load ptr, ptr %37, align 8, !dbg !2694, !tbaa !2598
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2649, metadata !DIExpression()), !dbg !2693
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2695
  %40 = load i32, ptr %39, align 4, !dbg !2695, !tbaa !1907
  %41 = or i32 %40, 1, !dbg !2696
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2650, metadata !DIExpression()), !dbg !2693
  %42 = load i32, ptr %3, align 8, !dbg !2697, !tbaa !1857
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2698
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2699
  %45 = load ptr, ptr %44, align 8, !dbg !2699, !tbaa !1928
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2700
  %47 = load ptr, ptr %46, align 8, !dbg !2700, !tbaa !1931
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2651, metadata !DIExpression()), !dbg !2693
  %49 = icmp ugt i64 %36, %48, !dbg !2702
  br i1 %49, label %60, label %50, !dbg !2704

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2705
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2647, metadata !DIExpression()), !dbg !2693
  store i64 %51, ptr %35, align 8, !dbg !2707, !tbaa !2610
  %52 = icmp eq ptr %38, @slot0, !dbg !2708
  br i1 %52, label %54, label %53, !dbg !2710

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2711
  br label %54, !dbg !2711

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2712
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2649, metadata !DIExpression()), !dbg !2693
  store ptr %55, ptr %37, align 8, !dbg !2713, !tbaa !2598
  %56 = load i32, ptr %3, align 8, !dbg !2714, !tbaa !1857
  %57 = load ptr, ptr %44, align 8, !dbg !2715, !tbaa !1928
  %58 = load ptr, ptr %46, align 8, !dbg !2716, !tbaa !1931
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2717
  br label %60, !dbg !2718

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2693
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2649, metadata !DIExpression()), !dbg !2693
  store i32 %7, ptr %6, align 4, !dbg !2719, !tbaa !975
  ret ptr %61, !dbg !2720
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2721 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2726, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2727, metadata !DIExpression()), !dbg !2728
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2729
  ret ptr %4, !dbg !2730
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2731 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata ptr %0, metadata !2628, metadata !DIExpression()), !dbg !2735
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2737
  ret ptr %2, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2739 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !2726, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()), !dbg !2746
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2748
  ret ptr %3, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2750 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2758
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2757, metadata !DIExpression(), metadata !2758, metadata ptr %4, metadata !DIExpression()), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2755, metadata !DIExpression()), !dbg !2759
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2756, metadata !DIExpression()), !dbg !2759
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2773, !alias.scope !2761, !DIAssignID !2774
  call void @llvm.dbg.assign(metadata i8 0, metadata !2757, metadata !DIExpression(), metadata !2774, metadata ptr %4, metadata !DIExpression()), !dbg !2759
  %5 = icmp eq i32 %1, 10, !dbg !2775
  br i1 %5, label %6, label %7, !dbg !2777

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2778, !noalias !2761
  unreachable, !dbg !2778

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2779, !tbaa !1857, !alias.scope !2761, !DIAssignID !2780
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2757, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2780, metadata ptr %4, metadata !DIExpression()), !dbg !2759
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2781
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2782
  ret ptr %8, !dbg !2783
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2784 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2792, metadata !DIExpression(), metadata !2793, metadata ptr %5, metadata !DIExpression()), !dbg !2794
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2788, metadata !DIExpression()), !dbg !2794
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2789, metadata !DIExpression()), !dbg !2794
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2790, metadata !DIExpression()), !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2796), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2770, metadata !DIExpression()), !dbg !2802
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2802, !alias.scope !2796, !DIAssignID !2803
  call void @llvm.dbg.assign(metadata i8 0, metadata !2792, metadata !DIExpression(), metadata !2803, metadata ptr %5, metadata !DIExpression()), !dbg !2794
  %6 = icmp eq i32 %1, 10, !dbg !2804
  br i1 %6, label %7, label %8, !dbg !2805

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2806, !noalias !2796
  unreachable, !dbg !2806

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2807, !tbaa !1857, !alias.scope !2796, !DIAssignID !2808
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2792, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2808, metadata ptr %5, metadata !DIExpression()), !dbg !2794
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2809
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2810
  ret ptr %9, !dbg !2811
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2812 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2818
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2816, metadata !DIExpression()), !dbg !2819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2817, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2757, metadata !DIExpression(), metadata !2818, metadata ptr %3, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata ptr %1, metadata !2756, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2822
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2823), !dbg !2826
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2770, metadata !DIExpression()), !dbg !2829
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2829, !alias.scope !2823, !DIAssignID !2830
  call void @llvm.dbg.assign(metadata i8 0, metadata !2757, metadata !DIExpression(), metadata !2830, metadata ptr %3, metadata !DIExpression()), !dbg !2820
  %4 = icmp eq i32 %0, 10, !dbg !2831
  br i1 %4, label %5, label %6, !dbg !2832

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2833, !noalias !2823
  unreachable, !dbg !2833

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2834, !tbaa !1857, !alias.scope !2823, !DIAssignID !2835
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2757, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2835, metadata ptr %3, metadata !DIExpression()), !dbg !2820
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2836
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2837
  ret ptr %7, !dbg !2838
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2839 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2846
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2843, metadata !DIExpression()), !dbg !2847
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2844, metadata !DIExpression()), !dbg !2847
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2792, metadata !DIExpression(), metadata !2846, metadata ptr %4, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2788, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 %0, metadata !2789, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %1, metadata !2790, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %2, metadata !2791, metadata !DIExpression()), !dbg !2848
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2850
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851), !dbg !2854
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2770, metadata !DIExpression()), !dbg !2857
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2857, !alias.scope !2851, !DIAssignID !2858
  call void @llvm.dbg.assign(metadata i8 0, metadata !2792, metadata !DIExpression(), metadata !2858, metadata ptr %4, metadata !DIExpression()), !dbg !2848
  %5 = icmp eq i32 %0, 10, !dbg !2859
  br i1 %5, label %6, label %7, !dbg !2860

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2861, !noalias !2851
  unreachable, !dbg !2861

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2862, !tbaa !1857, !alias.scope !2851, !DIAssignID !2863
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2792, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2863, metadata ptr %4, metadata !DIExpression()), !dbg !2848
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2865
  ret ptr %8, !dbg !2866
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2867 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2875
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2875, metadata ptr %4, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2878, !tbaa.struct !2879, !DIAssignID !2880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2880, metadata ptr %4, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1874, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1875, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1877, metadata !DIExpression()), !dbg !2881
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2883
  %6 = lshr i8 %2, 5, !dbg !2884
  %7 = zext nneg i8 %6 to i64, !dbg !2884
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1878, metadata !DIExpression()), !dbg !2881
  %9 = and i8 %2, 31, !dbg !2886
  %10 = zext nneg i8 %9 to i32, !dbg !2886
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1880, metadata !DIExpression()), !dbg !2881
  %11 = load i32, ptr %8, align 4, !dbg !2887, !tbaa !975
  %12 = lshr i32 %11, %10, !dbg !2888
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1881, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2881
  %13 = and i32 %12, 1, !dbg !2889
  %14 = xor i32 %13, 1, !dbg !2889
  %15 = shl nuw i32 %14, %10, !dbg !2890
  %16 = xor i32 %15, %11, !dbg !2891
  store i32 %16, ptr %8, align 4, !dbg !2891, !tbaa !975
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2892
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2893
  ret ptr %17, !dbg !2894
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2895 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2901
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2899, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2901, metadata ptr %3, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 %1, metadata !2873, metadata !DIExpression()), !dbg !2903
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2906, !tbaa.struct !2879, !DIAssignID !2907
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2907, metadata ptr %3, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %3, metadata !1874, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 %1, metadata !1875, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 %1, metadata !1877, metadata !DIExpression()), !dbg !2908
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2910
  %5 = lshr i8 %1, 5, !dbg !2911
  %6 = zext nneg i8 %5 to i64, !dbg !2911
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2912
  call void @llvm.dbg.value(metadata ptr %7, metadata !1878, metadata !DIExpression()), !dbg !2908
  %8 = and i8 %1, 31, !dbg !2913
  %9 = zext nneg i8 %8 to i32, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %9, metadata !1880, metadata !DIExpression()), !dbg !2908
  %10 = load i32, ptr %7, align 4, !dbg !2914, !tbaa !975
  %11 = lshr i32 %10, %9, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %11, metadata !1881, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2908
  %12 = and i32 %11, 1, !dbg !2916
  %13 = xor i32 %12, 1, !dbg !2916
  %14 = shl nuw i32 %13, %9, !dbg !2917
  %15 = xor i32 %14, %10, !dbg !2918
  store i32 %15, ptr %7, align 4, !dbg !2918, !tbaa !975
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2919
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2920
  ret ptr %16, !dbg !2921
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2922 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2925
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata ptr %0, metadata !2899, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 58, metadata !2900, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2925, metadata ptr %2, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()), !dbg !2929
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2932, !tbaa.struct !2879, !DIAssignID !2933
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2933, metadata ptr %2, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %2, metadata !1874, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 58, metadata !1875, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 58, metadata !1877, metadata !DIExpression()), !dbg !2934
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2936
  call void @llvm.dbg.value(metadata ptr %3, metadata !1878, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 26, metadata !1880, metadata !DIExpression()), !dbg !2934
  %4 = load i32, ptr %3, align 4, !dbg !2937, !tbaa !975
  call void @llvm.dbg.value(metadata i32 %4, metadata !1881, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2934
  %5 = or i32 %4, 67108864, !dbg !2938
  store i32 %5, ptr %3, align 4, !dbg !2938, !tbaa !975
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2939
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2940
  ret ptr %6, !dbg !2941
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2942 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2946
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2946, metadata ptr %3, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2951, !tbaa.struct !2879, !DIAssignID !2952
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2952, metadata ptr %3, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %3, metadata !1874, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8 58, metadata !1875, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8 58, metadata !1877, metadata !DIExpression()), !dbg !2953
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %4, metadata !1878, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 26, metadata !1880, metadata !DIExpression()), !dbg !2953
  %5 = load i32, ptr %4, align 4, !dbg !2956, !tbaa !975
  call void @llvm.dbg.value(metadata i32 %5, metadata !1881, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2953
  %6 = or i32 %5, 67108864, !dbg !2957
  store i32 %6, ptr %4, align 4, !dbg !2957, !tbaa !975
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2958
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2959
  ret ptr %7, !dbg !2960
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2961 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2967
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2966, metadata !DIExpression(), metadata !2967, metadata ptr %4, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2964, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression()), !dbg !2972
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2972
  %5 = icmp eq i32 %1, 10, !dbg !2973
  br i1 %5, label %6, label %7, !dbg !2974

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2975, !noalias !2976
  unreachable, !dbg !2975

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2972
  store i32 %1, ptr %4, align 8, !dbg !2979, !tbaa.struct !2879, !DIAssignID !2980
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2979
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2979
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2966, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2980, metadata ptr %4, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2966, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2981, metadata ptr %8, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1874, metadata !DIExpression()), !dbg !2982
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1875, metadata !DIExpression()), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2982
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1877, metadata !DIExpression()), !dbg !2982
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2984
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1878, metadata !DIExpression()), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1880, metadata !DIExpression()), !dbg !2982
  %10 = load i32, ptr %9, align 4, !dbg !2985, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1881, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2982
  %11 = or i32 %10, 67108864, !dbg !2986
  store i32 %11, ptr %9, align 4, !dbg !2986, !tbaa !975, !DIAssignID !2987
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2966, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2987, metadata ptr %9, metadata !DIExpression()), !dbg !2968
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2988
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2989
  ret ptr %12, !dbg !2990
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2991 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2999
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2996, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2997, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !2999, metadata ptr %5, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %1, metadata !3007, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %2, metadata !3008, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %3, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 -1, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3014, !tbaa.struct !2879, !DIAssignID !3015
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3015, metadata ptr %5, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3016, metadata ptr undef, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr %2, metadata !1916, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !3017
  store i32 10, ptr %5, align 8, !dbg !3019, !tbaa !1857, !DIAssignID !3020
  call void @llvm.dbg.assign(metadata i32 10, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3020, metadata ptr %5, metadata !DIExpression()), !dbg !3011
  %6 = icmp ne ptr %1, null, !dbg !3021
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3022
  br i1 %8, label %10, label %9, !dbg !3022

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3023
  unreachable, !dbg !3023

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3024
  store ptr %1, ptr %11, align 8, !dbg !3025, !tbaa !1928, !DIAssignID !3026
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3026, metadata ptr %11, metadata !DIExpression()), !dbg !3011
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3027
  store ptr %2, ptr %12, align 8, !dbg !3028, !tbaa !1931, !DIAssignID !3029
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3029, metadata ptr %12, metadata !DIExpression()), !dbg !3011
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3030
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3031
  ret ptr %13, !dbg !3032
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3002 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3033
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3033, metadata ptr %6, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3007, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3008, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3009, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3010, metadata !DIExpression()), !dbg !3034
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3036, !tbaa.struct !2879, !DIAssignID !3037
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3037, metadata ptr %6, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3038, metadata ptr undef, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %6, metadata !1914, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %2, metadata !1916, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %6, metadata !1914, metadata !DIExpression()), !dbg !3039
  store i32 10, ptr %6, align 8, !dbg !3041, !tbaa !1857, !DIAssignID !3042
  call void @llvm.dbg.assign(metadata i32 10, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3042, metadata ptr %6, metadata !DIExpression()), !dbg !3034
  %7 = icmp ne ptr %1, null, !dbg !3043
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3044
  br i1 %9, label %11, label %10, !dbg !3044

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3045
  unreachable, !dbg !3045

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3046
  store ptr %1, ptr %12, align 8, !dbg !3047, !tbaa !1928, !DIAssignID !3048
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3048, metadata ptr %12, metadata !DIExpression()), !dbg !3034
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3049
  store ptr %2, ptr %13, align 8, !dbg !3050, !tbaa !1931, !DIAssignID !3051
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3051, metadata ptr %13, metadata !DIExpression()), !dbg !3034
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3052
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3053
  ret ptr %14, !dbg !3054
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3055 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3062
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3060, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 0, metadata !2995, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %0, metadata !2996, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %1, metadata !2997, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %2, metadata !2998, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3062, metadata ptr %4, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3006, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %1, metadata !3008, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %2, metadata !3009, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 -1, metadata !3010, metadata !DIExpression()), !dbg !3066
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3069, !tbaa.struct !2879, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3070, metadata ptr %4, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3071, metadata ptr undef, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %4, metadata !1914, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %0, metadata !1915, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %1, metadata !1916, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %4, metadata !1914, metadata !DIExpression()), !dbg !3072
  store i32 10, ptr %4, align 8, !dbg !3074, !tbaa !1857, !DIAssignID !3075
  call void @llvm.dbg.assign(metadata i32 10, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3075, metadata ptr %4, metadata !DIExpression()), !dbg !3066
  %5 = icmp ne ptr %0, null, !dbg !3076
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3077
  br i1 %7, label %9, label %8, !dbg !3077

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3078
  unreachable, !dbg !3078

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3079
  store ptr %0, ptr %10, align 8, !dbg !3080, !tbaa !1928, !DIAssignID !3081
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3081, metadata ptr %10, metadata !DIExpression()), !dbg !3066
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3082
  store ptr %1, ptr %11, align 8, !dbg !3083, !tbaa !1931, !DIAssignID !3084
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3084, metadata ptr %11, metadata !DIExpression()), !dbg !3066
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3085
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3086
  ret ptr %12, !dbg !3087
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3088 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3096
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3092, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3093, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3096, metadata ptr %5, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i32 0, metadata !3006, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %1, metadata !3008, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %2, metadata !3009, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %3, metadata !3010, metadata !DIExpression()), !dbg !3098
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3101, !tbaa.struct !2879, !DIAssignID !3102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(), metadata !3102, metadata ptr %5, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3103, metadata ptr undef, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !1915, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %1, metadata !1916, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !3104
  store i32 10, ptr %5, align 8, !dbg !3106, !tbaa !1857, !DIAssignID !3107
  call void @llvm.dbg.assign(metadata i32 10, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3107, metadata ptr %5, metadata !DIExpression()), !dbg !3098
  %6 = icmp ne ptr %0, null, !dbg !3108
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3109
  br i1 %8, label %10, label %9, !dbg !3109

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3110
  unreachable, !dbg !3110

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3111
  store ptr %0, ptr %11, align 8, !dbg !3112, !tbaa !1928, !DIAssignID !3113
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3113, metadata ptr %11, metadata !DIExpression()), !dbg !3098
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3114
  store ptr %1, ptr %12, align 8, !dbg !3115, !tbaa !1931, !DIAssignID !3116
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3001, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3116, metadata ptr %12, metadata !DIExpression()), !dbg !3098
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3117
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3118
  ret ptr %13, !dbg !3119
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3120 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3125, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3126, metadata !DIExpression()), !dbg !3127
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3128
  ret ptr %4, !dbg !3129
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3130 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3134, metadata !DIExpression()), !dbg !3136
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()), !dbg !3137
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3139
  ret ptr %3, !dbg !3140
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3141 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %1, metadata !3125, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 -1, metadata !3126, metadata !DIExpression()), !dbg !3148
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3150
  ret ptr %3, !dbg !3151
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3152 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 0, metadata !3145, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 -1, metadata !3126, metadata !DIExpression()), !dbg !3160
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3162
  ret ptr %2, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3164 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3204, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3205, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3206, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3207, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3208, metadata !DIExpression()), !dbg !3209
  %7 = icmp eq ptr %1, null, !dbg !3210
  br i1 %7, label %10, label %8, !dbg !3212

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3213
  br label %12, !dbg !3213

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.102, ptr noundef %2, ptr noundef %3) #38, !dbg !3214
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.3.104, i32 noundef 5) #38, !dbg !3215
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3215
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3216
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.5.106, i32 noundef 5) #38, !dbg !3217
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.107) #38, !dbg !3217
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3218
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
  ], !dbg !3219

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.7.108, i32 noundef 5) #38, !dbg !3220
  %21 = load ptr, ptr %4, align 8, !dbg !3220, !tbaa !904
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3220
  br label %147, !dbg !3222

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.8.109, i32 noundef 5) #38, !dbg !3223
  %25 = load ptr, ptr %4, align 8, !dbg !3223, !tbaa !904
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3223
  %27 = load ptr, ptr %26, align 8, !dbg !3223, !tbaa !904
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3223
  br label %147, !dbg !3224

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.9.110, i32 noundef 5) #38, !dbg !3225
  %31 = load ptr, ptr %4, align 8, !dbg !3225, !tbaa !904
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3225
  %33 = load ptr, ptr %32, align 8, !dbg !3225, !tbaa !904
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3225
  %35 = load ptr, ptr %34, align 8, !dbg !3225, !tbaa !904
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3225
  br label %147, !dbg !3226

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.10.111, i32 noundef 5) #38, !dbg !3227
  %39 = load ptr, ptr %4, align 8, !dbg !3227, !tbaa !904
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3227
  %41 = load ptr, ptr %40, align 8, !dbg !3227, !tbaa !904
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3227
  %43 = load ptr, ptr %42, align 8, !dbg !3227, !tbaa !904
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3227
  %45 = load ptr, ptr %44, align 8, !dbg !3227, !tbaa !904
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3227
  br label %147, !dbg !3228

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.11.112, i32 noundef 5) #38, !dbg !3229
  %49 = load ptr, ptr %4, align 8, !dbg !3229, !tbaa !904
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3229
  %51 = load ptr, ptr %50, align 8, !dbg !3229, !tbaa !904
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3229
  %53 = load ptr, ptr %52, align 8, !dbg !3229, !tbaa !904
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3229
  %55 = load ptr, ptr %54, align 8, !dbg !3229, !tbaa !904
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3229
  %57 = load ptr, ptr %56, align 8, !dbg !3229, !tbaa !904
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3229
  br label %147, !dbg !3230

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.12.113, i32 noundef 5) #38, !dbg !3231
  %61 = load ptr, ptr %4, align 8, !dbg !3231, !tbaa !904
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3231
  %63 = load ptr, ptr %62, align 8, !dbg !3231, !tbaa !904
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3231
  %65 = load ptr, ptr %64, align 8, !dbg !3231, !tbaa !904
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3231
  %67 = load ptr, ptr %66, align 8, !dbg !3231, !tbaa !904
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3231
  %69 = load ptr, ptr %68, align 8, !dbg !3231, !tbaa !904
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3231
  %71 = load ptr, ptr %70, align 8, !dbg !3231, !tbaa !904
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3231
  br label %147, !dbg !3232

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.13.114, i32 noundef 5) #38, !dbg !3233
  %75 = load ptr, ptr %4, align 8, !dbg !3233, !tbaa !904
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3233
  %77 = load ptr, ptr %76, align 8, !dbg !3233, !tbaa !904
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3233
  %79 = load ptr, ptr %78, align 8, !dbg !3233, !tbaa !904
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3233
  %81 = load ptr, ptr %80, align 8, !dbg !3233, !tbaa !904
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3233
  %83 = load ptr, ptr %82, align 8, !dbg !3233, !tbaa !904
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3233
  %85 = load ptr, ptr %84, align 8, !dbg !3233, !tbaa !904
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3233
  %87 = load ptr, ptr %86, align 8, !dbg !3233, !tbaa !904
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3233
  br label %147, !dbg !3234

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.14.115, i32 noundef 5) #38, !dbg !3235
  %91 = load ptr, ptr %4, align 8, !dbg !3235, !tbaa !904
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3235
  %93 = load ptr, ptr %92, align 8, !dbg !3235, !tbaa !904
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3235
  %95 = load ptr, ptr %94, align 8, !dbg !3235, !tbaa !904
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3235
  %97 = load ptr, ptr %96, align 8, !dbg !3235, !tbaa !904
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3235
  %99 = load ptr, ptr %98, align 8, !dbg !3235, !tbaa !904
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3235
  %101 = load ptr, ptr %100, align 8, !dbg !3235, !tbaa !904
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3235
  %103 = load ptr, ptr %102, align 8, !dbg !3235, !tbaa !904
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3235
  %105 = load ptr, ptr %104, align 8, !dbg !3235, !tbaa !904
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3235
  br label %147, !dbg !3236

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.15.116, i32 noundef 5) #38, !dbg !3237
  %109 = load ptr, ptr %4, align 8, !dbg !3237, !tbaa !904
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3237
  %111 = load ptr, ptr %110, align 8, !dbg !3237, !tbaa !904
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3237
  %113 = load ptr, ptr %112, align 8, !dbg !3237, !tbaa !904
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3237
  %115 = load ptr, ptr %114, align 8, !dbg !3237, !tbaa !904
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3237
  %117 = load ptr, ptr %116, align 8, !dbg !3237, !tbaa !904
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3237
  %119 = load ptr, ptr %118, align 8, !dbg !3237, !tbaa !904
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3237
  %121 = load ptr, ptr %120, align 8, !dbg !3237, !tbaa !904
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3237
  %123 = load ptr, ptr %122, align 8, !dbg !3237, !tbaa !904
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3237
  %125 = load ptr, ptr %124, align 8, !dbg !3237, !tbaa !904
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3237
  br label %147, !dbg !3238

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.16.117, i32 noundef 5) #38, !dbg !3239
  %129 = load ptr, ptr %4, align 8, !dbg !3239, !tbaa !904
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3239
  %131 = load ptr, ptr %130, align 8, !dbg !3239, !tbaa !904
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3239
  %133 = load ptr, ptr %132, align 8, !dbg !3239, !tbaa !904
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3239
  %135 = load ptr, ptr %134, align 8, !dbg !3239, !tbaa !904
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3239
  %137 = load ptr, ptr %136, align 8, !dbg !3239, !tbaa !904
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3239
  %139 = load ptr, ptr %138, align 8, !dbg !3239, !tbaa !904
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3239
  %141 = load ptr, ptr %140, align 8, !dbg !3239, !tbaa !904
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3239
  %143 = load ptr, ptr %142, align 8, !dbg !3239, !tbaa !904
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3239
  %145 = load ptr, ptr %144, align 8, !dbg !3239, !tbaa !904
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3239
  br label %147, !dbg !3240

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3241
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3242 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3252
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3247, metadata !DIExpression()), !dbg !3252
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3248, metadata !DIExpression()), !dbg !3252
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3249, metadata !DIExpression()), !dbg !3252
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3250, metadata !DIExpression()), !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3251, metadata !DIExpression()), !dbg !3252
  br label %6, !dbg !3253

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3251, metadata !DIExpression()), !dbg !3252
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3256
  %9 = load ptr, ptr %8, align 8, !dbg !3256, !tbaa !904
  %10 = icmp eq ptr %9, null, !dbg !3258
  %11 = add i64 %7, 1, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3251, metadata !DIExpression()), !dbg !3252
  br i1 %10, label %12, label %6, !dbg !3258, !llvm.loop !3260

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3255
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3262
  ret void, !dbg !3263
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3264 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3284, metadata !DIExpression(), metadata !3286, metadata ptr %6, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3279, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3280, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3281, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression(DW_OP_deref)), !dbg !3287
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3283, metadata !DIExpression()), !dbg !3287
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3283, metadata !DIExpression()), !dbg !3287
  %10 = icmp sgt i32 %9, -1, !dbg !3289
  br i1 %10, label %18, label %11, !dbg !3289

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3289
  store i32 %12, ptr %7, align 8, !dbg !3289
  %13 = icmp ult i32 %9, -7, !dbg !3289
  br i1 %13, label %14, label %18, !dbg !3289

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3289
  %16 = sext i32 %9 to i64, !dbg !3289
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3289
  br label %22, !dbg !3289

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3289
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3289
  store ptr %21, ptr %4, align 8, !dbg !3289
  br label %22, !dbg !3289

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3289
  %25 = load ptr, ptr %24, align 8, !dbg !3289
  store ptr %25, ptr %6, align 8, !dbg !3292, !tbaa !904
  %26 = icmp eq ptr %25, null, !dbg !3293
  br i1 %26, label %197, label %27, !dbg !3294

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3283, metadata !DIExpression()), !dbg !3287
  %28 = icmp sgt i32 %23, -1, !dbg !3289
  br i1 %28, label %36, label %29, !dbg !3289

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3289
  store i32 %30, ptr %7, align 8, !dbg !3289
  %31 = icmp ult i32 %23, -7, !dbg !3289
  br i1 %31, label %32, label %36, !dbg !3289

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3289
  %34 = sext i32 %23 to i64, !dbg !3289
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3289
  br label %40, !dbg !3289

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3289
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3289
  store ptr %39, ptr %4, align 8, !dbg !3289
  br label %40, !dbg !3289

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3289
  %43 = load ptr, ptr %42, align 8, !dbg !3289
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3295
  store ptr %43, ptr %44, align 8, !dbg !3292, !tbaa !904
  %45 = icmp eq ptr %43, null, !dbg !3293
  br i1 %45, label %197, label %46, !dbg !3294

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3283, metadata !DIExpression()), !dbg !3287
  %47 = icmp sgt i32 %41, -1, !dbg !3289
  br i1 %47, label %55, label %48, !dbg !3289

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3289
  store i32 %49, ptr %7, align 8, !dbg !3289
  %50 = icmp ult i32 %41, -7, !dbg !3289
  br i1 %50, label %51, label %55, !dbg !3289

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3289
  %53 = sext i32 %41 to i64, !dbg !3289
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3289
  br label %59, !dbg !3289

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3289
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3289
  store ptr %58, ptr %4, align 8, !dbg !3289
  br label %59, !dbg !3289

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3289
  %62 = load ptr, ptr %61, align 8, !dbg !3289
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3295
  store ptr %62, ptr %63, align 8, !dbg !3292, !tbaa !904
  %64 = icmp eq ptr %62, null, !dbg !3293
  br i1 %64, label %197, label %65, !dbg !3294

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3283, metadata !DIExpression()), !dbg !3287
  %66 = icmp sgt i32 %60, -1, !dbg !3289
  br i1 %66, label %74, label %67, !dbg !3289

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3289
  store i32 %68, ptr %7, align 8, !dbg !3289
  %69 = icmp ult i32 %60, -7, !dbg !3289
  br i1 %69, label %70, label %74, !dbg !3289

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3289
  %72 = sext i32 %60 to i64, !dbg !3289
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3289
  br label %78, !dbg !3289

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3289
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3289
  store ptr %77, ptr %4, align 8, !dbg !3289
  br label %78, !dbg !3289

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3289
  %81 = load ptr, ptr %80, align 8, !dbg !3289
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3295
  store ptr %81, ptr %82, align 8, !dbg !3292, !tbaa !904
  %83 = icmp eq ptr %81, null, !dbg !3293
  br i1 %83, label %197, label %84, !dbg !3294

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3283, metadata !DIExpression()), !dbg !3287
  %85 = icmp sgt i32 %79, -1, !dbg !3289
  br i1 %85, label %93, label %86, !dbg !3289

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3289
  store i32 %87, ptr %7, align 8, !dbg !3289
  %88 = icmp ult i32 %79, -7, !dbg !3289
  br i1 %88, label %89, label %93, !dbg !3289

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3289
  %91 = sext i32 %79 to i64, !dbg !3289
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3289
  br label %97, !dbg !3289

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3289
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3289
  store ptr %96, ptr %4, align 8, !dbg !3289
  br label %97, !dbg !3289

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3289
  %100 = load ptr, ptr %99, align 8, !dbg !3289
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3295
  store ptr %100, ptr %101, align 8, !dbg !3292, !tbaa !904
  %102 = icmp eq ptr %100, null, !dbg !3293
  br i1 %102, label %197, label %103, !dbg !3294

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3283, metadata !DIExpression()), !dbg !3287
  %104 = icmp sgt i32 %98, -1, !dbg !3289
  br i1 %104, label %112, label %105, !dbg !3289

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3289
  store i32 %106, ptr %7, align 8, !dbg !3289
  %107 = icmp ult i32 %98, -7, !dbg !3289
  br i1 %107, label %108, label %112, !dbg !3289

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3289
  %110 = sext i32 %98 to i64, !dbg !3289
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3289
  br label %116, !dbg !3289

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3289
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3289
  store ptr %115, ptr %4, align 8, !dbg !3289
  br label %116, !dbg !3289

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3289
  %119 = load ptr, ptr %118, align 8, !dbg !3289
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3295
  store ptr %119, ptr %120, align 8, !dbg !3292, !tbaa !904
  %121 = icmp eq ptr %119, null, !dbg !3293
  br i1 %121, label %197, label %122, !dbg !3294

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3283, metadata !DIExpression()), !dbg !3287
  %123 = icmp sgt i32 %117, -1, !dbg !3289
  br i1 %123, label %131, label %124, !dbg !3289

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3289
  store i32 %125, ptr %7, align 8, !dbg !3289
  %126 = icmp ult i32 %117, -7, !dbg !3289
  br i1 %126, label %127, label %131, !dbg !3289

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3289
  %129 = sext i32 %117 to i64, !dbg !3289
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3289
  br label %135, !dbg !3289

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3289
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3289
  store ptr %134, ptr %4, align 8, !dbg !3289
  br label %135, !dbg !3289

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3289
  %138 = load ptr, ptr %137, align 8, !dbg !3289
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3295
  store ptr %138, ptr %139, align 8, !dbg !3292, !tbaa !904
  %140 = icmp eq ptr %138, null, !dbg !3293
  br i1 %140, label %197, label %141, !dbg !3294

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3283, metadata !DIExpression()), !dbg !3287
  %142 = icmp sgt i32 %136, -1, !dbg !3289
  br i1 %142, label %150, label %143, !dbg !3289

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3289
  store i32 %144, ptr %7, align 8, !dbg !3289
  %145 = icmp ult i32 %136, -7, !dbg !3289
  br i1 %145, label %146, label %150, !dbg !3289

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3289
  %148 = sext i32 %136 to i64, !dbg !3289
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3289
  br label %154, !dbg !3289

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3289
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3289
  store ptr %153, ptr %4, align 8, !dbg !3289
  br label %154, !dbg !3289

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3289
  %157 = load ptr, ptr %156, align 8, !dbg !3289
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3295
  store ptr %157, ptr %158, align 8, !dbg !3292, !tbaa !904
  %159 = icmp eq ptr %157, null, !dbg !3293
  br i1 %159, label %197, label %160, !dbg !3294

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3283, metadata !DIExpression()), !dbg !3287
  %161 = icmp sgt i32 %155, -1, !dbg !3289
  br i1 %161, label %169, label %162, !dbg !3289

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3289
  store i32 %163, ptr %7, align 8, !dbg !3289
  %164 = icmp ult i32 %155, -7, !dbg !3289
  br i1 %164, label %165, label %169, !dbg !3289

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3289
  %167 = sext i32 %155 to i64, !dbg !3289
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3289
  br label %173, !dbg !3289

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3289
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3289
  store ptr %172, ptr %4, align 8, !dbg !3289
  br label %173, !dbg !3289

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3289
  %176 = load ptr, ptr %175, align 8, !dbg !3289
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3295
  store ptr %176, ptr %177, align 8, !dbg !3292, !tbaa !904
  %178 = icmp eq ptr %176, null, !dbg !3293
  br i1 %178, label %197, label %179, !dbg !3294

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3283, metadata !DIExpression()), !dbg !3287
  %180 = icmp sgt i32 %174, -1, !dbg !3289
  br i1 %180, label %188, label %181, !dbg !3289

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3289
  store i32 %182, ptr %7, align 8, !dbg !3289
  %183 = icmp ult i32 %174, -7, !dbg !3289
  br i1 %183, label %184, label %188, !dbg !3289

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3289
  %186 = sext i32 %174 to i64, !dbg !3289
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3289
  br label %191, !dbg !3289

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3289
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3289
  store ptr %190, ptr %4, align 8, !dbg !3289
  br label %191, !dbg !3289

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3289
  %193 = load ptr, ptr %192, align 8, !dbg !3289
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3295
  store ptr %193, ptr %194, align 8, !dbg !3292, !tbaa !904
  %195 = icmp eq ptr %193, null, !dbg !3293
  %196 = select i1 %195, i64 9, i64 10, !dbg !3294
  br label %197, !dbg !3294

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3296
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3297
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3298
  ret void, !dbg !3298
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3299 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3307, metadata !DIExpression(), metadata !3308, metadata ptr %5, metadata !DIExpression()), !dbg !3309
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3303, metadata !DIExpression()), !dbg !3309
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3304, metadata !DIExpression()), !dbg !3309
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3309
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3310
  call void @llvm.va_start(ptr nonnull %5), !dbg !3311
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3312, !tbaa.struct !1555
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3312
  call void @llvm.va_end(ptr nonnull %5), !dbg !3313
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3314
  ret void, !dbg !3314
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3315 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3316, !tbaa !904
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %1), !dbg !3316
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.17.122, i32 noundef 5) #38, !dbg !3317
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.123) #38, !dbg !3317
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.19.124, i32 noundef 5) #38, !dbg !3318
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.125, ptr noundef nonnull @.str.21.126) #38, !dbg !3318
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.22.127, i32 noundef 5) #38, !dbg !3319
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.128) #38, !dbg !3319
  ret void, !dbg !3320
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3321 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3326, metadata !DIExpression()), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3333, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %2, metadata !3334, metadata !DIExpression()), !dbg !3335
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3337
  call void @llvm.dbg.value(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3343
  %5 = icmp eq ptr %4, null, !dbg !3345
  br i1 %5, label %6, label %7, !dbg !3347

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3348
  unreachable, !dbg !3348

7:                                                ; preds = %3
  ret ptr %4, !dbg !3349
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3331 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3333, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3334, metadata !DIExpression()), !dbg !3350
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3351
  call void @llvm.dbg.value(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3352
  %5 = icmp eq ptr %4, null, !dbg !3354
  br i1 %5, label %6, label %7, !dbg !3355

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3356
  unreachable, !dbg !3356

7:                                                ; preds = %3
  ret ptr %4, !dbg !3357
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3358 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3362, metadata !DIExpression()), !dbg !3363
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3364
  call void @llvm.dbg.value(metadata ptr %2, metadata !3338, metadata !DIExpression()), !dbg !3365
  %3 = icmp eq ptr %2, null, !dbg !3367
  br i1 %3, label %4, label %5, !dbg !3368

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3369
  unreachable, !dbg !3369

5:                                                ; preds = %1
  ret ptr %2, !dbg !3370
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3371 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3372 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %0, metadata !3378, metadata !DIExpression()), !dbg !3382
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3384
  call void @llvm.dbg.value(metadata ptr %2, metadata !3338, metadata !DIExpression()), !dbg !3385
  %3 = icmp eq ptr %2, null, !dbg !3387
  br i1 %3, label %4, label %5, !dbg !3388

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3389
  unreachable, !dbg !3389

5:                                                ; preds = %1
  ret ptr %2, !dbg !3390
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %0, metadata !3362, metadata !DIExpression()), !dbg !3397
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3399
  call void @llvm.dbg.value(metadata ptr %2, metadata !3338, metadata !DIExpression()), !dbg !3400
  %3 = icmp eq ptr %2, null, !dbg !3402
  br i1 %3, label %4, label %5, !dbg !3403

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3404
  unreachable, !dbg !3404

5:                                                ; preds = %1
  ret ptr %2, !dbg !3405
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3406 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %0, metadata !3413, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %1, metadata !3417, metadata !DIExpression()), !dbg !3418
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3420
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3422
  %5 = icmp eq ptr %4, null, !dbg !3424
  br i1 %5, label %6, label %7, !dbg !3425

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3426
  unreachable, !dbg !3426

7:                                                ; preds = %2
  ret ptr %4, !dbg !3427
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3428 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3429 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3433, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata ptr %0, metadata !3413, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3417, metadata !DIExpression()), !dbg !3442
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3444
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3445
  call void @llvm.dbg.value(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3446
  %5 = icmp eq ptr %4, null, !dbg !3448
  br i1 %5, label %6, label %7, !dbg !3449

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3450
  unreachable, !dbg !3450

7:                                                ; preds = %2
  ret ptr %4, !dbg !3451
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3452 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3456, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3457, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %1, metadata !3463, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %2, metadata !3464, metadata !DIExpression()), !dbg !3465
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3467
  call void @llvm.dbg.value(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3468
  %5 = icmp eq ptr %4, null, !dbg !3470
  br i1 %5, label %6, label %7, !dbg !3471

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3472
  unreachable, !dbg !3472

7:                                                ; preds = %3
  ret ptr %4, !dbg !3473
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3474 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3478, metadata !DIExpression()), !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata ptr null, metadata !3330, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %0, metadata !3333, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3481
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3484
  %4 = icmp eq ptr %3, null, !dbg !3486
  br i1 %4, label %5, label %6, !dbg !3487

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3488
  unreachable, !dbg !3488

6:                                                ; preds = %2
  ret ptr %3, !dbg !3489
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3490 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3494, metadata !DIExpression()), !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3495, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr null, metadata !3456, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %0, metadata !3457, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata ptr null, metadata !3460, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %0, metadata !3463, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3464, metadata !DIExpression()), !dbg !3499
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3502
  %4 = icmp eq ptr %3, null, !dbg !3504
  br i1 %4, label %5, label %6, !dbg !3505

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3506
  unreachable, !dbg !3506

6:                                                ; preds = %2
  ret ptr %3, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3508 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3514
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata ptr %0, metadata !815, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %1, metadata !816, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 1, metadata !817, metadata !DIExpression()), !dbg !3515
  %3 = load i64, ptr %1, align 8, !dbg !3517, !tbaa !2582
  call void @llvm.dbg.value(metadata i64 %3, metadata !818, metadata !DIExpression()), !dbg !3515
  %4 = icmp eq ptr %0, null, !dbg !3518
  br i1 %4, label %5, label %8, !dbg !3520

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3521
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3524
  br label %15, !dbg !3524

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3525
  %10 = add nuw i64 %9, 1, !dbg !3525
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3525
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3525
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %13, metadata !818, metadata !DIExpression()), !dbg !3515
  br i1 %12, label %14, label %15, !dbg !3528

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3529
  unreachable, !dbg !3529

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3515
  call void @llvm.dbg.value(metadata i64 %16, metadata !818, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %16, metadata !3333, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 1, metadata !3334, metadata !DIExpression()), !dbg !3530
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3532
  call void @llvm.dbg.value(metadata ptr %17, metadata !3338, metadata !DIExpression()), !dbg !3533
  %18 = icmp eq ptr %17, null, !dbg !3535
  br i1 %18, label %19, label %20, !dbg !3536

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3537
  unreachable, !dbg !3537

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !815, metadata !DIExpression()), !dbg !3515
  store i64 %16, ptr %1, align 8, !dbg !3538, !tbaa !2582
  ret ptr %17, !dbg !3539
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !810 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !815, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !816, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !817, metadata !DIExpression()), !dbg !3540
  %4 = load i64, ptr %1, align 8, !dbg !3541, !tbaa !2582
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !818, metadata !DIExpression()), !dbg !3540
  %5 = icmp eq ptr %0, null, !dbg !3542
  br i1 %5, label %6, label %13, !dbg !3543

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3544
  br i1 %7, label %8, label %20, !dbg !3545

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3546
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !818, metadata !DIExpression()), !dbg !3540
  %10 = icmp ugt i64 %2, 128, !dbg !3548
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !818, metadata !DIExpression()), !dbg !3540
  br label %20, !dbg !3550

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3551
  %15 = add nuw i64 %14, 1, !dbg !3551
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3551
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3551
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !818, metadata !DIExpression()), !dbg !3540
  br i1 %17, label %19, label %20, !dbg !3552

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3553
  unreachable, !dbg !3553

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !818, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %21, metadata !3333, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %2, metadata !3334, metadata !DIExpression()), !dbg !3554
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3556
  call void @llvm.dbg.value(metadata ptr %22, metadata !3338, metadata !DIExpression()), !dbg !3557
  %23 = icmp eq ptr %22, null, !dbg !3559
  br i1 %23, label %24, label %25, !dbg !3560

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3561
  unreachable, !dbg !3561

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !815, metadata !DIExpression()), !dbg !3540
  store i64 %21, ptr %1, align 8, !dbg !3562, !tbaa !2582
  ret ptr %22, !dbg !3563
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !822 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !831, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !832, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !833, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !834, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !835, metadata !DIExpression()), !dbg !3564
  %6 = load i64, ptr %1, align 8, !dbg !3565, !tbaa !2582
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !836, metadata !DIExpression()), !dbg !3564
  %7 = ashr i64 %6, 1, !dbg !3566
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3566
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3566
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !837, metadata !DIExpression()), !dbg !3564
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !837, metadata !DIExpression()), !dbg !3564
  %12 = icmp sgt i64 %3, -1, !dbg !3569
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3571
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !837, metadata !DIExpression()), !dbg !3564
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3572
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3572
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3572
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !838, metadata !DIExpression()), !dbg !3564
  %18 = icmp slt i64 %17, 128, !dbg !3572
  %19 = select i1 %18, i64 128, i64 0, !dbg !3572
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3572
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !839, metadata !DIExpression()), !dbg !3564
  %21 = icmp eq i64 %20, 0, !dbg !3573
  br i1 %21, label %28, label %22, !dbg !3575

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !837, metadata !DIExpression()), !dbg !3564
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !838, metadata !DIExpression()), !dbg !3564
  br label %28, !dbg !3579

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3564
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !838, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !837, metadata !DIExpression()), !dbg !3564
  %31 = icmp eq ptr %0, null, !dbg !3580
  br i1 %31, label %32, label %33, !dbg !3582

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3583, !tbaa !2582
  br label %33, !dbg !3584

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3585
  %35 = icmp slt i64 %34, %2, !dbg !3587
  br i1 %35, label %36, label %48, !dbg !3588

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3589
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3589
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !837, metadata !DIExpression()), !dbg !3564
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3590
  br i1 %42, label %47, label %43, !dbg !3590

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3591
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3591
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !838, metadata !DIExpression()), !dbg !3564
  br i1 %45, label %47, label %48, !dbg !3592

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #40, !dbg !3593
  unreachable, !dbg !3593

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3564
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !838, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !837, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %50, metadata !3411, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata ptr %0, metadata !3413, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %50, metadata !3417, metadata !DIExpression()), !dbg !3596
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3598
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #44, !dbg !3599
  call void @llvm.dbg.value(metadata ptr %52, metadata !3338, metadata !DIExpression()), !dbg !3600
  %53 = icmp eq ptr %52, null, !dbg !3602
  br i1 %53, label %54, label %55, !dbg !3603

54:                                               ; preds = %48
  tail call void @xalloc_die() #40, !dbg !3604
  unreachable, !dbg !3604

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !831, metadata !DIExpression()), !dbg !3564
  store i64 %49, ptr %1, align 8, !dbg !3605, !tbaa !2582
  ret ptr %52, !dbg !3606
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3607 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %0, metadata !3611, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 1, metadata !3614, metadata !DIExpression()), !dbg !3615
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3617
  call void @llvm.dbg.value(metadata ptr %2, metadata !3338, metadata !DIExpression()), !dbg !3618
  %3 = icmp eq ptr %2, null, !dbg !3620
  br i1 %3, label %4, label %5, !dbg !3621

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3622
  unreachable, !dbg !3622

5:                                                ; preds = %1
  ret ptr %2, !dbg !3623
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3624 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3612 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3611, metadata !DIExpression()), !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3625
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3626
  call void @llvm.dbg.value(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3627
  %4 = icmp eq ptr %3, null, !dbg !3629
  br i1 %4, label %5, label %6, !dbg !3630

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3631
  unreachable, !dbg !3631

6:                                                ; preds = %2
  ret ptr %3, !dbg !3632
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3633 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3635, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i64 %0, metadata !3637, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 1, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %0, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 1, metadata !3646, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %0, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 1, metadata !3646, metadata !DIExpression()), !dbg !3647
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %2, metadata !3338, metadata !DIExpression()), !dbg !3650
  %3 = icmp eq ptr %2, null, !dbg !3652
  br i1 %3, label %4, label %5, !dbg !3653

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3654
  unreachable, !dbg !3654

5:                                                ; preds = %1
  ret ptr %2, !dbg !3655
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3638 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3637, metadata !DIExpression()), !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3640, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %0, metadata !3643, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %1, metadata !3646, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %0, metadata !3643, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %1, metadata !3646, metadata !DIExpression()), !dbg !3657
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3659
  call void @llvm.dbg.value(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3660
  %4 = icmp eq ptr %3, null, !dbg !3662
  br i1 %4, label %5, label %6, !dbg !3663

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3664
  unreachable, !dbg !3664

6:                                                ; preds = %2
  ret ptr %3, !dbg !3665
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3670, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3671, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3362, metadata !DIExpression()), !dbg !3673
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3675
  call void @llvm.dbg.value(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3676
  %4 = icmp eq ptr %3, null, !dbg !3678
  br i1 %4, label %5, label %6, !dbg !3679

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3680
  unreachable, !dbg !3680

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3681, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %1, metadata !3688, metadata !DIExpression()), !dbg !3689
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3691
  ret ptr %3, !dbg !3692
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3693 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3699
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %1, metadata !3376, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %1, metadata !3378, metadata !DIExpression()), !dbg !3702
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3704
  call void @llvm.dbg.value(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3705
  %4 = icmp eq ptr %3, null, !dbg !3707
  br i1 %4, label %5, label %6, !dbg !3708

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3709
  unreachable, !dbg !3709

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3681, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %1, metadata !3688, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3712
  ret ptr %3, !dbg !3713
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3714 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3718, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()), !dbg !3721
  %3 = add nsw i64 %1, 1, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %3, metadata !3376, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %3, metadata !3378, metadata !DIExpression()), !dbg !3725
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3727
  call void @llvm.dbg.value(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3728
  %5 = icmp eq ptr %4, null, !dbg !3730
  br i1 %5, label %6, label %7, !dbg !3731

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3732
  unreachable, !dbg !3732

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3720, metadata !DIExpression()), !dbg !3721
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3733
  store i8 0, ptr %8, align 1, !dbg !3734, !tbaa !984
  call void @llvm.dbg.value(metadata ptr %4, metadata !3681, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 %1, metadata !3688, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3737
  ret ptr %4, !dbg !3738
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3739 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3741, metadata !DIExpression()), !dbg !3742
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3743
  %3 = add i64 %2, 1, !dbg !3744
  call void @llvm.dbg.value(metadata ptr %0, metadata !3670, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 %3, metadata !3671, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 %3, metadata !3362, metadata !DIExpression()), !dbg !3747
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3749
  call void @llvm.dbg.value(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3750
  %5 = icmp eq ptr %4, null, !dbg !3752
  br i1 %5, label %6, label %7, !dbg !3753

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3754
  unreachable, !dbg !3754

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3681, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 %3, metadata !3688, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3757
  ret ptr %4, !dbg !3758
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3759 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3764, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3761, metadata !DIExpression()), !dbg !3765
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.139, ptr noundef nonnull @.str.2.140, i32 noundef 5) #38, !dbg !3764
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.141, ptr noundef %2) #38, !dbg !3764
  %3 = icmp eq i32 %1, 0, !dbg !3764
  tail call void @llvm.assume(i1 %3), !dbg !3764
  tail call void @abort() #40, !dbg !3766
  unreachable, !dbg !3766
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !3767 {
  %9 = alloca i64, align 8, !DIAssignID !3788
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3788, metadata ptr %9, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3771, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3772, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3773, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3774, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3775, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3776, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3777, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3778, metadata !DIExpression()), !dbg !3789
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #38, !dbg !3790
  %10 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #38, !dbg !3791
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3781, metadata !DIExpression()), !dbg !3789
  %11 = icmp eq i32 %10, 4, !dbg !3792
  br i1 %11, label %36, label %12, !dbg !3794

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !3795, !tbaa !2582
  %14 = icmp slt i64 %13, %2, !dbg !3798
  br i1 %14, label %17, label %15, !dbg !3799

15:                                               ; preds = %12
  %16 = icmp sgt i64 %13, %3, !dbg !3800
  br i1 %16, label %17, label %24, !dbg !3802

17:                                               ; preds = %15, %12
  %18 = phi i32 [ 4, %12 ], [ 8, %15 ]
  %19 = phi i64 [ %2, %12 ], [ %3, %15 ]
  %20 = and i32 %18, %7, !dbg !3803
  %21 = icmp eq i32 %20, 0, !dbg !3803
  %22 = select i1 %21, i32 75, i32 34, !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3780, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3781, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !3783, metadata !DIExpression()), !dbg !3789
  %23 = icmp ult i32 %10, 2, !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !3784, metadata !DIExpression()), !dbg !3789
  br i1 %23, label %29, label %36, !dbg !3805

24:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !3780, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3781, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 75, metadata !3783, metadata !DIExpression()), !dbg !3789
  %25 = icmp eq i32 %10, 1, !dbg !3804
  %26 = select i1 %25, i32 75, i32 0, !dbg !3806
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3784, metadata !DIExpression()), !dbg !3789
  %27 = icmp eq i32 %10, 0, !dbg !3807
  br i1 %27, label %40, label %28, !dbg !3808

28:                                               ; preds = %24
  br i1 %25, label %29, label %36, !dbg !3805

29:                                               ; preds = %17, %28
  %30 = phi i64 [ %19, %17 ], [ %13, %28 ]
  %31 = phi i32 [ %22, %17 ], [ 75, %28 ]
  %32 = icmp slt i64 %13, 0, !dbg !3809
  %33 = select i1 %32, i32 1, i32 2, !dbg !3810
  %34 = and i32 %33, %7, !dbg !3811
  %35 = icmp eq i32 %34, 0, !dbg !3811
  br i1 %35, label %36, label %40, !dbg !3812

36:                                               ; preds = %8, %17, %29, %28
  %37 = phi i32 [ 0, %17 ], [ %31, %29 ], [ 0, %28 ], [ 0, %8 ]
  %38 = call i32 @llvm.umax.i32(i32 %6, i32 1), !dbg !3813
  %39 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !3813
  call void (i32, i32, ptr, ...) @error(i32 noundef %38, i32 noundef %37, ptr noundef nonnull @.str.142, ptr noundef nonnull %5, ptr noundef %39) #38, !dbg !3813
  unreachable, !dbg !3813

40:                                               ; preds = %29, %24
  %41 = phi i32 [ %31, %29 ], [ %26, %24 ]
  %42 = phi i64 [ %30, %29 ], [ %13, %24 ]
  %43 = tail call ptr @__errno_location() #41, !dbg !3814
  store i32 %41, ptr %43, align 4, !dbg !3815, !tbaa !975
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #38, !dbg !3816
  ret i64 %42, !dbg !3817
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !3818 {
  %7 = alloca i64, align 8, !DIAssignID !3828
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3822, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3823, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3824, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3825, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3827, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3828, metadata ptr %7, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %0, metadata !3771, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 10, metadata !3772, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %1, metadata !3773, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %2, metadata !3774, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %3, metadata !3775, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %4, metadata !3776, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 %5, metadata !3777, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 0, metadata !3778, metadata !DIExpression()), !dbg !3830
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !3832
  %8 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #38, !dbg !3833
  call void @llvm.dbg.value(metadata i32 %8, metadata !3781, metadata !DIExpression()), !dbg !3830
  %9 = icmp eq i32 %8, 4, !dbg !3834
  br i1 %9, label %19, label %10, !dbg !3835

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !3836, !tbaa !2582
  %12 = icmp slt i64 %11, %1, !dbg !3837
  %13 = icmp sgt i64 %11, %2
  %14 = or i1 %12, %13, !dbg !3838
  br i1 %14, label %15, label %17, !dbg !3838

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 poison, metadata !3780, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 poison, metadata !3781, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 75, metadata !3783, metadata !DIExpression()), !dbg !3830
  %16 = icmp ult i32 %8, 2, !dbg !3839
  call void @llvm.dbg.value(metadata i32 undef, metadata !3784, metadata !DIExpression()), !dbg !3830
  br i1 %16, label %18, label %19, !dbg !3840

17:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !3780, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 %8, metadata !3781, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 75, metadata !3783, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3784, metadata !DIExpression()), !dbg !3830
  switch i32 %8, label %19 [
    i32 0, label %23
    i32 1, label %18
  ], !dbg !3841

18:                                               ; preds = %17, %15
  br label %19

19:                                               ; preds = %17, %18, %15, %6
  %20 = phi i32 [ 0, %15 ], [ 75, %18 ], [ 0, %6 ], [ 0, %17 ]
  %21 = call i32 @llvm.umax.i32(i32 %5, i32 1), !dbg !3842
  %22 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !3842
  call void (i32, i32, ptr, ...) @error(i32 noundef %21, i32 noundef %20, ptr noundef nonnull @.str.142, ptr noundef nonnull %4, ptr noundef %22) #38, !dbg !3842
  unreachable, !dbg !3842

23:                                               ; preds = %17
  %24 = tail call ptr @__errno_location() #41, !dbg !3843
  store i32 0, ptr %24, align 4, !dbg !3844, !tbaa !975
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !3845
  ret i64 %11, !dbg !3846
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3847 {
  %6 = alloca ptr, align 8, !DIAssignID !3868
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3868, metadata ptr %6, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3855, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3856, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3857, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3858, metadata !DIExpression()), !dbg !3869
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !3870
  %7 = icmp eq ptr %1, null, !dbg !3871
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3871
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3860, metadata !DIExpression()), !dbg !3869
  %9 = tail call ptr @__errno_location() #41, !dbg !3872
  store i32 0, ptr %9, align 4, !dbg !3873, !tbaa !975
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #38, !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3869
  %11 = load ptr, ptr %8, align 8, !dbg !3875, !tbaa !904
  %12 = icmp eq ptr %11, %0, !dbg !3877
  br i1 %12, label %13, label %22, !dbg !3878

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3879
  br i1 %14, label %490, label %15, !dbg !3882

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3883, !tbaa !984
  %17 = icmp eq i8 %16, 0, !dbg !3883
  br i1 %17, label %490, label %18, !dbg !3884

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !3883
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #39, !dbg !3885
  %21 = icmp eq ptr %20, null, !dbg !3885
  br i1 %21, label %490, label %29, !dbg !3886

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3887, !tbaa !975
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3889

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()), !dbg !3869
  br label %25, !dbg !3890

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3869
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3862, metadata !DIExpression()), !dbg !3869
  %27 = icmp eq ptr %4, null, !dbg !3892
  br i1 %27, label %28, label %29, !dbg !3894

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !3895, !tbaa !2582
  br label %490, !dbg !3897

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3898, !tbaa !984
  %33 = icmp eq i8 %32, 0, !dbg !3899
  br i1 %33, label %487, label %34, !dbg !3900

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !3898
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #39, !dbg !3901
  %37 = icmp eq ptr %36, null, !dbg !3901
  br i1 %37, label %38, label %40, !dbg !3903

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !3904, !tbaa !2582
  %39 = or disjoint i32 %30, 2, !dbg !3906
  br label %490, !dbg !3907

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !3863, metadata !DIExpression()), !dbg !3908
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3866, metadata !DIExpression()), !dbg !3908
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
  ], !dbg !3909

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !3910
  %43 = icmp eq ptr %42, null, !dbg !3910
  br i1 %43, label %53, label %44, !dbg !3913

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3914
  %46 = load i8, ptr %45, align 1, !dbg !3914, !tbaa !984
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !3915

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3916
  %49 = load i8, ptr %48, align 1, !dbg !3916, !tbaa !984
  %50 = icmp eq i8 %49, 66, !dbg !3919
  %51 = select i1 %50, i64 3, i64 1, !dbg !3920
  br label %53, !dbg !3920

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !3863, metadata !DIExpression()), !dbg !3908
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3866, metadata !DIExpression()), !dbg !3908
  br label %53, !dbg !3921

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !3908
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !3908
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !3866, metadata !DIExpression()), !dbg !3908
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !3863, metadata !DIExpression()), !dbg !3908
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
  ], !dbg !3922

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3941
  %57 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3943
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3941
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !3945
  %60 = icmp slt i64 %31, 0, !dbg !3945
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3945
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !3945
  call void @llvm.dbg.value(metadata i1 %58, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i1 %58, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3941
  %63 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !3943
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3941
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !3945
  %66 = icmp slt i64 %62, 0, !dbg !3945
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3945
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !3945
  %69 = or i1 %58, %64, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %69, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i1 %69, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3941
  %70 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !3943
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3941
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !3945
  %73 = icmp slt i64 %68, 0, !dbg !3945
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3945
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !3945
  %76 = or i1 %69, %71, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %76, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i1 %76, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3941
  %77 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !3943
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3941
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !3945
  %80 = icmp slt i64 %75, 0, !dbg !3945
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3945
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !3945
  %83 = or i1 %76, %78, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %83, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i1 %83, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3941
  %84 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !3943
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3941
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !3945
  %87 = icmp slt i64 %82, 0, !dbg !3945
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3945
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !3945
  %90 = or i1 %83, %85, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %90, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i1 %90, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3941
  %91 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !3943
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3941
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !3945
  %94 = icmp slt i64 %89, 0, !dbg !3945
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3945
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !3945
  %97 = or i1 %90, %92, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %97, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i1 %97, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3941
  %98 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !3943
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3941
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !3945
  %101 = icmp slt i64 %96, 0, !dbg !3945
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3945
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !3945
  %104 = or i1 %97, %99, !dbg !3946
  %105 = zext i1 %104 to i32, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %105, metadata !3923, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3931
  br label %476, !dbg !3947

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 8, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %107 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3952
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !3953
  %110 = icmp slt i64 %31, 0, !dbg !3953
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !3953
  call void @llvm.dbg.value(metadata i1 %108, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i1 %108, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %113 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !3952
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !3953
  %116 = icmp slt i64 %112, 0, !dbg !3953
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !3953
  %119 = or i1 %108, %114, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %119, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i1 %119, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %120 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !3952
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !3953
  %123 = icmp slt i64 %118, 0, !dbg !3953
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !3953
  %126 = or i1 %119, %121, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %126, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i1 %126, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !3952
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !3953
  %130 = icmp slt i64 %125, 0, !dbg !3953
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !3953
  %133 = or i1 %126, %128, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %133, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i1 %133, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %134 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !3952
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !3953
  %137 = icmp slt i64 %132, 0, !dbg !3953
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !3953
  %140 = or i1 %133, %135, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %140, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i1 %140, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %141 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !3952
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !3953
  %144 = icmp slt i64 %139, 0, !dbg !3953
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !3953
  %147 = or i1 %140, %142, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %147, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i1 %147, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %148 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !3952
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !3953
  %151 = icmp slt i64 %146, 0, !dbg !3953
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !3953
  %154 = or i1 %147, %149, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %154, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i1 %154, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3948
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3950
  %155 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !3952
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3950
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !3953
  %158 = icmp slt i64 %153, 0, !dbg !3953
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3953
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !3953
  %161 = or i1 %154, %156, !dbg !3954
  %162 = zext i1 %161 to i32, !dbg !3954
  call void @llvm.dbg.value(metadata i32 %162, metadata !3923, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3948
  br label %476, !dbg !3947

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 9, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 8, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %164 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3959
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !3960
  %167 = icmp slt i64 %31, 0, !dbg !3960
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !3960
  call void @llvm.dbg.value(metadata i1 %165, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 8, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %165, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 8, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %170 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !3959
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !3960
  %173 = icmp slt i64 %169, 0, !dbg !3960
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !3960
  %176 = or i1 %165, %171, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %176, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %176, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %177 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !3959
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !3960
  %180 = icmp slt i64 %175, 0, !dbg !3960
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !3960
  %183 = or i1 %176, %178, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %183, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %183, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !3959
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !3960
  %187 = icmp slt i64 %182, 0, !dbg !3960
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !3960
  %190 = or i1 %183, %185, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %190, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %190, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %191 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !3959
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !3960
  %194 = icmp slt i64 %189, 0, !dbg !3960
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !3960
  %197 = or i1 %190, %192, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %197, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %197, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %198 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !3959
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !3960
  %201 = icmp slt i64 %196, 0, !dbg !3960
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !3960
  %204 = or i1 %197, %199, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %204, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %204, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %205 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !3959
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !3960
  %208 = icmp slt i64 %203, 0, !dbg !3960
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !3960
  %211 = or i1 %204, %206, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %211, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %211, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %212 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !3959
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !3960
  %215 = icmp slt i64 %210, 0, !dbg !3960
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !3960
  %218 = or i1 %211, %213, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %218, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i1 %218, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3955
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3957
  %219 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !3959
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3957
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !3960
  %222 = icmp slt i64 %217, 0, !dbg !3960
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !3960
  %225 = or i1 %218, %220, !dbg !3961
  %226 = zext i1 %225 to i32, !dbg !3961
  call void @llvm.dbg.value(metadata i32 %226, metadata !3923, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3955
  br label %476, !dbg !3947

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 10, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 9, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3966
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !3967
  %231 = icmp slt i64 %31, 0, !dbg !3967
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !3967
  call void @llvm.dbg.value(metadata i1 %229, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 9, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %229, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 9, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 8, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %234 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !3966
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !3967
  %237 = icmp slt i64 %233, 0, !dbg !3967
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !3967
  %240 = or i1 %229, %235, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %240, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 8, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %240, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 8, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %241 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !3966
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !3967
  %244 = icmp slt i64 %239, 0, !dbg !3967
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !3967
  %247 = or i1 %240, %242, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %247, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %247, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 7, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %248 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !3966
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !3967
  %251 = icmp slt i64 %246, 0, !dbg !3967
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !3967
  %254 = or i1 %247, %249, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %254, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %254, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %255 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !3966
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !3967
  %258 = icmp slt i64 %253, 0, !dbg !3967
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !3967
  %261 = or i1 %254, %256, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %261, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %261, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %262 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !3966
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !3967
  %265 = icmp slt i64 %260, 0, !dbg !3967
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !3967
  %268 = or i1 %261, %263, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %268, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %268, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %269 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !3966
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !3967
  %272 = icmp slt i64 %267, 0, !dbg !3967
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !3967
  %275 = or i1 %268, %270, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %275, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %275, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %276 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !3966
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !3967
  %279 = icmp slt i64 %274, 0, !dbg !3967
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !3967
  %282 = or i1 %275, %277, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %282, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %282, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %283 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !3966
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !3967
  %286 = icmp slt i64 %281, 0, !dbg !3967
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !3967
  %289 = or i1 %282, %284, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %289, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i1 %289, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3962
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3964
  %290 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !3966
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3964
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !3967
  %293 = icmp slt i64 %288, 0, !dbg !3967
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3967
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !3967
  %296 = or i1 %289, %291, !dbg !3968
  %297 = zext i1 %296 to i32, !dbg !3968
  call void @llvm.dbg.value(metadata i32 %297, metadata !3923, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3962
  br label %476, !dbg !3947

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3971
  %299 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3973
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !3973
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3971
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !3974
  %302 = icmp slt i64 %31, 0, !dbg !3974
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3974
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !3974
  call void @llvm.dbg.value(metadata i1 %300, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i1 %300, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3971
  %305 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !3973
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !3973
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3971
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !3974
  %308 = icmp slt i64 %304, 0, !dbg !3974
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3974
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !3974
  %311 = or i1 %300, %306, !dbg !3975
  call void @llvm.dbg.value(metadata i1 %311, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i1 %311, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3971
  %312 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !3973
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !3973
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3971
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !3974
  %315 = icmp slt i64 %310, 0, !dbg !3974
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3974
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !3974
  %318 = or i1 %311, %313, !dbg !3975
  call void @llvm.dbg.value(metadata i1 %318, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i1 %318, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3971
  %319 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !3973
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !3973
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3971
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !3974
  %322 = icmp slt i64 %317, 0, !dbg !3974
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3974
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !3974
  %325 = or i1 %318, %320, !dbg !3975
  call void @llvm.dbg.value(metadata i1 %325, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i1 %325, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3969
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3971
  %326 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !3973
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !3973
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3971
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !3974
  %329 = icmp slt i64 %324, 0, !dbg !3974
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3974
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !3974
  %332 = or i1 %325, %327, !dbg !3975
  %333 = zext i1 %332 to i32, !dbg !3975
  call void @llvm.dbg.value(metadata i32 %333, metadata !3923, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3969
  br label %476, !dbg !3947

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 6, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3978
  %335 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3980
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3978
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !3981
  %338 = icmp slt i64 %31, 0, !dbg !3981
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3981
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !3981
  call void @llvm.dbg.value(metadata i1 %336, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i1 %336, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 5, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3978
  %341 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !3980
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3978
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !3981
  %344 = icmp slt i64 %340, 0, !dbg !3981
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3981
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !3981
  %347 = or i1 %336, %342, !dbg !3982
  call void @llvm.dbg.value(metadata i1 %347, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i1 %347, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3978
  %348 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !3980
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3978
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !3981
  %351 = icmp slt i64 %346, 0, !dbg !3981
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3981
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !3981
  %354 = or i1 %347, %349, !dbg !3982
  call void @llvm.dbg.value(metadata i1 %354, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i1 %354, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3978
  %355 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !3980
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3978
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !3981
  %358 = icmp slt i64 %353, 0, !dbg !3981
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3981
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !3981
  %361 = or i1 %354, %356, !dbg !3982
  call void @llvm.dbg.value(metadata i1 %361, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i1 %361, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3978
  %362 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !3980
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3978
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !3981
  %365 = icmp slt i64 %360, 0, !dbg !3981
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3981
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !3981
  %368 = or i1 %361, %363, !dbg !3982
  call void @llvm.dbg.value(metadata i1 %368, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i1 %368, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3976
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3978
  %369 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !3980
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3978
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !3981
  %372 = icmp slt i64 %367, 0, !dbg !3981
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3981
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !3981
  %375 = or i1 %368, %370, !dbg !3982
  %376 = zext i1 %375 to i32, !dbg !3982
  call void @llvm.dbg.value(metadata i32 %376, metadata !3923, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  br label %476, !dbg !3947

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 512, metadata !3939, metadata !DIExpression()), !dbg !3983
  %378 = add i64 %31, -18014398509481984, !dbg !3985
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !3985
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3983
  %380 = shl i64 %31, 9, !dbg !3986
  %381 = icmp slt i64 %31, 0, !dbg !3986
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3986
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !3986
  %384 = zext i1 %379 to i32, !dbg !3986
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !3867, metadata !DIExpression()), !dbg !3908
  br label %476, !dbg !3987

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i32 1024, metadata !3939, metadata !DIExpression()), !dbg !3988
  %386 = add i64 %31, -9007199254740992, !dbg !3990
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !3990
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3988
  %388 = shl i64 %31, 10, !dbg !3991
  %389 = icmp slt i64 %31, 0, !dbg !3991
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3991
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !3991
  %392 = zext i1 %387 to i32, !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !3867, metadata !DIExpression()), !dbg !3908
  br label %476, !dbg !3992

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3928, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %54, metadata !3929, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3993
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3995
  %394 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3997
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !3997
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3995
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !3998
  %397 = icmp slt i64 %31, 0, !dbg !3998
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3998
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !3998
  call void @llvm.dbg.value(metadata i1 %395, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3993
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3993
  call void @llvm.dbg.value(metadata i1 %395, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3993
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3995
  %400 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !3997
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !3997
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3995
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !3998
  %403 = icmp slt i64 %399, 0, !dbg !3998
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3998
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !3998
  %406 = or i1 %395, %401, !dbg !3999
  call void @llvm.dbg.value(metadata i1 %406, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3993
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3993
  call void @llvm.dbg.value(metadata i1 %406, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3993
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !3995
  %407 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !3997
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !3997
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !3995
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !3998
  %410 = icmp slt i64 %405, 0, !dbg !3998
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3998
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !3998
  %413 = or i1 %406, %408, !dbg !3999
  %414 = zext i1 %413 to i32, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %414, metadata !3923, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3993
  br label %476, !dbg !3947

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3928, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %54, metadata !3929, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4000
  %416 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4002
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !4002
  %418 = icmp slt i64 %31, 0, !dbg !4004
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4004
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !4004
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !4004
  %422 = zext i1 %417 to i32, !dbg !4004
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4005
  br label %476, !dbg !3947

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3928, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %54, metadata !3929, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4006
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !4008
  %424 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4010
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !4010
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4008
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !4011
  %427 = icmp slt i64 %31, 0, !dbg !4011
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4011
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !4011
  call void @llvm.dbg.value(metadata i1 %425, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4006
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4006
  call void @llvm.dbg.value(metadata i1 %425, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4006
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !4008
  %430 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !4010
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !4010
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4008
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !4011
  %433 = icmp slt i64 %429, 0, !dbg !4011
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4011
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !4011
  %436 = or i1 %425, %431, !dbg !4012
  %437 = zext i1 %436 to i32, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %437, metadata !3923, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4006
  br label %476, !dbg !3947

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3928, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i64 %54, metadata !3929, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 4, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !4015
  %439 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4017
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !4017
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4015
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !4018
  %442 = icmp slt i64 %31, 0, !dbg !4018
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4018
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %440, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i1 %440, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 3, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !4015
  %445 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !4017
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !4017
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4015
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !4018
  %448 = icmp slt i64 %444, 0, !dbg !4018
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4018
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !4018
  %451 = or i1 %440, %446, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %451, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i1 %451, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 2, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !4015
  %452 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !4017
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !4017
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4015
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !4018
  %455 = icmp slt i64 %450, 0, !dbg !4018
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4018
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !4018
  %458 = or i1 %451, %453, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %458, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i1 %458, metadata !3923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 1, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %54, metadata !3939, metadata !DIExpression()), !dbg !4015
  %459 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !4017
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !4017
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4015
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !4018
  %462 = icmp slt i64 %457, 0, !dbg !4018
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4018
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !4018
  %465 = or i1 %458, %460, !dbg !4019
  %466 = zext i1 %465 to i32, !dbg !4019
  call void @llvm.dbg.value(metadata i32 %466, metadata !3923, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4013
  br label %476, !dbg !3947

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3934, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 2, metadata !3939, metadata !DIExpression()), !dbg !4020
  %468 = add i64 %31, 4611686018427387904, !dbg !4022
  %469 = icmp slt i64 %468, 0, !dbg !4022
  call void @llvm.dbg.value(metadata i64 poison, metadata !3940, metadata !DIExpression()), !dbg !4020
  %470 = shl i64 %31, 1, !dbg !4023
  %471 = icmp slt i64 %31, 0, !dbg !4023
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4023
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !4023
  %474 = lshr i64 %468, 63, !dbg !4023
  %475 = trunc i64 %474 to i32, !dbg !4023
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !3867, metadata !DIExpression()), !dbg !3908
  br label %476, !dbg !4024

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !3869
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !4025
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !3867, metadata !DIExpression()), !dbg !3908
  %479 = or i32 %478, %30, !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !3862, metadata !DIExpression()), !dbg !3869
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4026
  store ptr %480, ptr %8, align 8, !dbg !4026, !tbaa !904
  %481 = load i8, ptr %480, align 1, !dbg !4027, !tbaa !984
  %482 = icmp eq i8 %481, 0, !dbg !4027
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !3862, metadata !DIExpression()), !dbg !3869
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !4030, !tbaa !2582
  %486 = or disjoint i32 %30, 2, !dbg !4031
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !3862, metadata !DIExpression()), !dbg !3869
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !4032
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3861, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !3862, metadata !DIExpression()), !dbg !3869
  store i64 %488, ptr %3, align 8, !dbg !4034, !tbaa !2582
  br label %490, !dbg !4035

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3869
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !4036
  ret i32 %491, !dbg !4036
}

; Function Attrs: nounwind
declare !dbg !4037 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4042 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4080, metadata !DIExpression()), !dbg !4085
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4086
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4081, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4085
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4087, metadata !DIExpression()), !dbg !4090
  %3 = load i32, ptr %0, align 8, !dbg !4092, !tbaa !4093
  %4 = and i32 %3, 32, !dbg !4094
  %5 = icmp eq i32 %4, 0, !dbg !4094
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4083, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4085
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4095
  %7 = icmp eq i32 %6, 0, !dbg !4096
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4084, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4085
  br i1 %5, label %8, label %18, !dbg !4097

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4099
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4081, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4085
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4100
  %11 = xor i1 %7, true, !dbg !4100
  %12 = sext i1 %11 to i32, !dbg !4100
  br i1 %10, label %21, label %13, !dbg !4100

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4101
  %15 = load i32, ptr %14, align 4, !dbg !4101, !tbaa !975
  %16 = icmp ne i32 %15, 9, !dbg !4102
  %17 = sext i1 %16 to i32, !dbg !4103
  br label %21, !dbg !4103

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4104

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4106
  store i32 0, ptr %20, align 4, !dbg !4108, !tbaa !975
  br label %21, !dbg !4106

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4085
  ret i32 %22, !dbg !4109
}

; Function Attrs: nounwind
declare !dbg !4110 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4114 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4152, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4153, metadata !DIExpression()), !dbg !4156
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4157
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4154, metadata !DIExpression()), !dbg !4156
  %3 = icmp slt i32 %2, 0, !dbg !4158
  br i1 %3, label %4, label %6, !dbg !4160

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4161
  br label %24, !dbg !4162

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4163
  %8 = icmp eq i32 %7, 0, !dbg !4163
  br i1 %8, label %13, label %9, !dbg !4165

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4166
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !4167
  %12 = icmp eq i64 %11, -1, !dbg !4168
  br i1 %12, label %16, label %13, !dbg !4169

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4170
  %15 = icmp eq i32 %14, 0, !dbg !4170
  br i1 %15, label %16, label %18, !dbg !4171

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4153, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4155, metadata !DIExpression()), !dbg !4156
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4155, metadata !DIExpression()), !dbg !4156
  br label %24, !dbg !4173

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4174
  %20 = load i32, ptr %19, align 4, !dbg !4174, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4153, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4155, metadata !DIExpression()), !dbg !4156
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4155, metadata !DIExpression()), !dbg !4156
  %22 = icmp eq i32 %20, 0, !dbg !4175
  br i1 %22, label %24, label %23, !dbg !4173

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4177, !tbaa !975
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4155, metadata !DIExpression()), !dbg !4156
  br label %24, !dbg !4179

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4156
  ret i32 %25, !dbg !4180
}

; Function Attrs: nofree nounwind
declare !dbg !4181 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4182 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4183 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4184 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4222, metadata !DIExpression()), !dbg !4223
  %2 = icmp eq ptr %0, null, !dbg !4224
  br i1 %2, label %6, label %3, !dbg !4226

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4227
  %5 = icmp eq i32 %4, 0, !dbg !4227
  br i1 %5, label %6, label %8, !dbg !4228

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4229
  br label %16, !dbg !4230

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4231, metadata !DIExpression()), !dbg !4236
  %9 = load i32, ptr %0, align 8, !dbg !4238, !tbaa !4093
  %10 = and i32 %9, 256, !dbg !4240
  %11 = icmp eq i32 %10, 0, !dbg !4240
  br i1 %11, label %14, label %12, !dbg !4241

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4242
  br label %14, !dbg !4242

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4243
  br label %16, !dbg !4244

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4223
  ret i32 %17, !dbg !4245
}

; Function Attrs: nofree nounwind
declare !dbg !4246 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4247 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4285, metadata !DIExpression()), !dbg !4291
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4286, metadata !DIExpression()), !dbg !4291
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4287, metadata !DIExpression()), !dbg !4291
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4292
  %5 = load ptr, ptr %4, align 8, !dbg !4292, !tbaa !4293
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4294
  %7 = load ptr, ptr %6, align 8, !dbg !4294, !tbaa !4295
  %8 = icmp eq ptr %5, %7, !dbg !4296
  br i1 %8, label %9, label %27, !dbg !4297

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4298
  %11 = load ptr, ptr %10, align 8, !dbg !4298, !tbaa !1666
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4299
  %13 = load ptr, ptr %12, align 8, !dbg !4299, !tbaa !4300
  %14 = icmp eq ptr %11, %13, !dbg !4301
  br i1 %14, label %15, label %27, !dbg !4302

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4303
  %17 = load ptr, ptr %16, align 8, !dbg !4303, !tbaa !4304
  %18 = icmp eq ptr %17, null, !dbg !4305
  br i1 %18, label %19, label %27, !dbg !4306

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4307
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4308
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4288, metadata !DIExpression()), !dbg !4309
  %22 = icmp eq i64 %21, -1, !dbg !4310
  br i1 %22, label %29, label %23, !dbg !4312

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4313, !tbaa !4093
  %25 = and i32 %24, -17, !dbg !4313
  store i32 %25, ptr %0, align 8, !dbg !4313, !tbaa !4093
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4314
  store i64 %21, ptr %26, align 8, !dbg !4315, !tbaa !4316
  br label %29, !dbg !4317

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4318
  br label %29, !dbg !4319

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4291
  ret i32 %30, !dbg !4320
}

; Function Attrs: nofree nounwind
declare !dbg !4321 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4324 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4329, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4330, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4331, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4332, metadata !DIExpression()), !dbg !4334
  %5 = icmp eq ptr %1, null, !dbg !4335
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4337
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4337
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4337
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4331, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4330, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4329, metadata !DIExpression()), !dbg !4334
  %9 = icmp eq ptr %3, null, !dbg !4338
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4340
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4332, metadata !DIExpression()), !dbg !4334
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !4341
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4333, metadata !DIExpression()), !dbg !4334
  %12 = icmp ult i64 %11, -3, !dbg !4342
  br i1 %12, label %13, label %17, !dbg !4344

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !4345
  %15 = icmp eq i32 %14, 0, !dbg !4345
  br i1 %15, label %16, label %29, !dbg !4346

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4347, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr %10, metadata !4354, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i32 0, metadata !4357, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 8, metadata !4358, metadata !DIExpression()), !dbg !4359
  store i64 0, ptr %10, align 1, !dbg !4361
  br label %29, !dbg !4362

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4363
  br i1 %18, label %19, label %20, !dbg !4365

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4366
  unreachable, !dbg !4366

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4367

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !4369
  br i1 %23, label %29, label %24, !dbg !4370

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4371
  br i1 %25, label %29, label %26, !dbg !4374

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4375, !tbaa !984
  %28 = zext i8 %27 to i32, !dbg !4376
  store i32 %28, ptr %6, align 4, !dbg !4377, !tbaa !975
  br label %29, !dbg !4378

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4334
  ret i64 %30, !dbg !4379
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4380 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4386 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4388, metadata !DIExpression()), !dbg !4392
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4389, metadata !DIExpression()), !dbg !4392
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4390, metadata !DIExpression()), !dbg !4392
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4393
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4393
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4391, metadata !DIExpression()), !dbg !4392
  br i1 %5, label %6, label %8, !dbg !4395

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !4396
  store i32 12, ptr %7, align 4, !dbg !4398, !tbaa !975
  br label %12, !dbg !4399

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4393
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4391, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata ptr %0, metadata !4400, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %9, metadata !4403, metadata !DIExpression()), !dbg !4404
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4406
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #44, !dbg !4407
  br label %12, !dbg !4408

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4392
  ret ptr %13, !dbg !4409
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4410 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4419
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4415, metadata !DIExpression(), metadata !4419, metadata ptr %2, metadata !DIExpression()), !dbg !4420
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4414, metadata !DIExpression()), !dbg !4420
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4421
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4422
  %4 = icmp eq i32 %3, 0, !dbg !4422
  br i1 %4, label %5, label %12, !dbg !4424

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4425, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !4428, metadata !DIExpression()), !dbg !4429
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.162, i64 2), !dbg !4432
  %7 = icmp eq i32 %6, 0, !dbg !4433
  br i1 %7, label %11, label %8, !dbg !4434

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4425, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata ptr @.str.1.163, metadata !4428, metadata !DIExpression()), !dbg !4435
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.163, i64 6), !dbg !4437
  %10 = icmp eq i32 %9, 0, !dbg !4438
  br i1 %10, label %11, label %12, !dbg !4439

11:                                               ; preds = %8, %5
  br label %12, !dbg !4440

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4420
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4441
  ret i1 %13, !dbg !4441
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4442 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4446, metadata !DIExpression()), !dbg !4449
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4447, metadata !DIExpression()), !dbg !4449
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4448, metadata !DIExpression()), !dbg !4449
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4450
  ret i32 %4, !dbg !4451
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4452 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4456, metadata !DIExpression()), !dbg !4457
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4458
  ret ptr %2, !dbg !4459
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4460 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4462, metadata !DIExpression()), !dbg !4464
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4465
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4463, metadata !DIExpression()), !dbg !4464
  ret ptr %2, !dbg !4466
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4467 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4469, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4470, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4471, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i32 %0, metadata !4462, metadata !DIExpression()), !dbg !4477
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4479
  call void @llvm.dbg.value(metadata ptr %4, metadata !4463, metadata !DIExpression()), !dbg !4477
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4472, metadata !DIExpression()), !dbg !4476
  %5 = icmp eq ptr %4, null, !dbg !4480
  br i1 %5, label %6, label %9, !dbg !4481

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4482
  br i1 %7, label %19, label %8, !dbg !4485

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4486, !tbaa !984
  br label %19, !dbg !4487

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4488
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4473, metadata !DIExpression()), !dbg !4489
  %11 = icmp ult i64 %10, %2, !dbg !4490
  br i1 %11, label %12, label %14, !dbg !4492

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4493
  call void @llvm.dbg.value(metadata ptr %1, metadata !4495, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr %4, metadata !4498, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %13, metadata !4499, metadata !DIExpression()), !dbg !4500
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4502
  br label %19, !dbg !4503

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4504
  br i1 %15, label %19, label %16, !dbg !4507

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4508
  call void @llvm.dbg.value(metadata ptr %1, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr %4, metadata !4498, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %17, metadata !4499, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4512
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4513
  store i8 0, ptr %18, align 1, !dbg !4514, !tbaa !984
  br label %19, !dbg !4515

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4516
  ret i32 %20, !dbg !4517
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
attributes #12 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!76, !460, !464, !479, !760, !797, !531, !545, !596, !799, !752, !806, !841, !843, !862, !868, !870, !872, !874, !779, !876, !878, !880, !882}
!llvm.ident = !{!884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884}
!llvm.module.flags = !{!885, !886, !887, !888, !889, !890, !891, !892}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/truncate.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8bafe287eed9afb172df3b934b446926")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!106 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!107 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!127 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!251 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !254)
!253 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!446 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!478 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !479, file: !480, line: 66, type: !526, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!481 = !{!130, !136}
!482 = !{!483, !485, !508, !510, !512, !514, !477, !516, !518, !520, !522, !524}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !480, line: 272, type: !306, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "old_file_name", scope: !487, file: !480, line: 304, type: !134, isLocal: true, isDefinition: true)
!487 = distinct !DISubprogram(name: "verror_at_line", scope: !480, file: !480, line: 298, type: !488, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !501)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !104, !104, !134, !79, !134, !490}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !492, line: 12, baseType: !493)
!492 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !480, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !495)
!495 = !{!496, !497, !498, !499, !500}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !494, file: !480, baseType: !130, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !494, file: !480, baseType: !130, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !494, file: !480, baseType: !130, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !494, file: !480, baseType: !104, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !494, file: !480, baseType: !104, size: 32, offset: 224)
!501 = !{!502, !503, !504, !505, !506, !507}
!502 = !DILocalVariable(name: "status", arg: 1, scope: !487, file: !480, line: 298, type: !104)
!503 = !DILocalVariable(name: "errnum", arg: 2, scope: !487, file: !480, line: 298, type: !104)
!504 = !DILocalVariable(name: "file_name", arg: 3, scope: !487, file: !480, line: 298, type: !134)
!505 = !DILocalVariable(name: "line_number", arg: 4, scope: !487, file: !480, line: 298, type: !79)
!506 = !DILocalVariable(name: "message", arg: 5, scope: !487, file: !480, line: 298, type: !134)
!507 = !DILocalVariable(name: "args", arg: 6, scope: !487, file: !480, line: 298, type: !490)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "old_line_number", scope: !487, file: !480, line: 305, type: !79, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !480, line: 338, type: !313, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !345, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !323, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "error_message_count", scope: !479, file: !480, line: 69, type: !79, isLocal: false, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !479, file: !480, line: 295, type: !104, isLocal: false, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !71, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !193, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !480, line: 214, type: !306, isLocal: true, isDefinition: true)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null}
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "program_name", scope: !531, file: !532, line: 31, type: !134, isLocal: false, isDefinition: true)
!531 = distinct !DICompileUnit(language: DW_LANG_C11, file: !532, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !533, globals: !534, splitDebugInlining: false, nameTableKind: None)
!532 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!533 = !{!130, !129}
!534 = !{!529, !535, !537}
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !532, line: 46, type: !345, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !532, line: 49, type: !313, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "utf07FF", scope: !541, file: !542, line: 46, type: !569, isLocal: true, isDefinition: true)
!541 = distinct !DISubprogram(name: "proper_name_lite", scope: !542, file: !542, line: 38, type: !543, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !547)
!542 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!543 = !DISubroutineType(types: !544)
!544 = !{!134, !134, !134}
!545 = distinct !DICompileUnit(language: DW_LANG_C11, file: !542, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !546, splitDebugInlining: false, nameTableKind: None)
!546 = !{!539}
!547 = !{!548, !549, !550, !551, !556}
!548 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !541, file: !542, line: 38, type: !134)
!549 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !541, file: !542, line: 38, type: !134)
!550 = !DILocalVariable(name: "translation", scope: !541, file: !542, line: 40, type: !134)
!551 = !DILocalVariable(name: "w", scope: !541, file: !542, line: 47, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !553, line: 37, baseType: !554)
!553 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !127, line: 57, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !127, line: 42, baseType: !79)
!556 = !DILocalVariable(name: "mbs", scope: !541, file: !542, line: 48, type: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !558, line: 6, baseType: !559)
!558 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !560, line: 21, baseType: !561)
!560 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !560, line: 13, size: 64, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !561, file: !560, line: 15, baseType: !104, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !561, file: !560, line: 20, baseType: !565, size: 32, offset: 32)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !560, line: 16, size: 32, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !565, file: !560, line: 18, baseType: !79, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !565, file: !560, line: 19, baseType: !313, size: 32)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16, elements: !324)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !572, line: 78, type: !345, isLocal: true, isDefinition: true)
!572 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !572, line: 79, type: !318, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !572, line: 80, type: !577, isLocal: true, isDefinition: true)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 13)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !572, line: 81, type: !577, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !572, line: 82, type: !295, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !572, line: 83, type: !323, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !572, line: 84, type: !345, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !572, line: 85, type: !71, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !572, line: 86, type: !71, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !572, line: 87, type: !345, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !596, file: !572, line: 76, type: !670, isLocal: false, isDefinition: true)
!596 = distinct !DICompileUnit(language: DW_LANG_C11, file: !572, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !597, retainedTypes: !605, globals: !606, splitDebugInlining: false, nameTableKind: None)
!597 = !{!598, !600, !87}
!598 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !599, line: 42, baseType: !79, size: 32, elements: !110)
!599 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !599, line: 254, baseType: !79, size: 32, elements: !601)
!601 = !{!602, !603, !604}
!602 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!603 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!604 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!605 = !{!130, !104, !123, !131}
!606 = !{!570, !573, !575, !580, !582, !584, !586, !588, !590, !592, !594, !607, !611, !621, !623, !628, !630, !632, !634, !636, !659, !666, !668}
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !596, file: !572, line: 92, type: !609, isLocal: false, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 320, elements: !62)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !596, file: !572, line: 1040, type: !613, isLocal: false, isDefinition: true)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !572, line: 56, size: 448, elements: !614)
!614 = !{!615, !616, !617, !619, !620}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !613, file: !572, line: 59, baseType: !598, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !572, line: 62, baseType: !104, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !613, file: !572, line: 66, baseType: !618, size: 256, offset: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !346)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !613, file: !572, line: 69, baseType: !134, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !613, file: !572, line: 72, baseType: !134, size: 64, offset: 384)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !596, file: !572, line: 107, type: !613, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "slot0", scope: !596, file: !572, line: 831, type: !625, isLocal: true, isDefinition: true)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 256)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !572, line: 321, type: !323, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !572, line: 357, type: !323, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !572, line: 358, type: !323, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !572, line: 199, type: !71, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "quote", scope: !638, file: !572, line: 228, type: !657, isLocal: true, isDefinition: true)
!638 = distinct !DISubprogram(name: "gettext_quote", scope: !572, file: !572, line: 197, type: !639, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{!134, !134, !598}
!641 = !{!642, !643, !644, !645, !646}
!642 = !DILocalVariable(name: "msgid", arg: 1, scope: !638, file: !572, line: 197, type: !134)
!643 = !DILocalVariable(name: "s", arg: 2, scope: !638, file: !572, line: 197, type: !598)
!644 = !DILocalVariable(name: "translation", scope: !638, file: !572, line: 199, type: !134)
!645 = !DILocalVariable(name: "w", scope: !638, file: !572, line: 229, type: !552)
!646 = !DILocalVariable(name: "mbs", scope: !638, file: !572, line: 230, type: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !558, line: 6, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !560, line: 21, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !560, line: 13, size: 64, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !649, file: !560, line: 15, baseType: !104, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !649, file: !560, line: 20, baseType: !653, size: 32, offset: 32)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !560, line: 16, size: 32, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !653, file: !560, line: 18, baseType: !79, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !653, file: !560, line: 19, baseType: !313, size: 32)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !658)
!658 = !{!325, !315}
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "slotvec", scope: !596, file: !572, line: 834, type: !661, isLocal: true, isDefinition: true)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !572, line: 823, size: 128, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !662, file: !572, line: 825, baseType: !131, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !662, file: !572, line: 826, baseType: !129, size: 64, offset: 64)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "nslots", scope: !596, file: !572, line: 832, type: !104, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(name: "slotvec0", scope: !596, file: !572, line: 833, type: !662, isLocal: true, isDefinition: true)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 704, elements: !672)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!672 = !{!673}
!673 = !DISubrange(count: 11)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !676, line: 67, type: !179, isLocal: true, isDefinition: true)
!676 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !676, line: 69, type: !71, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !676, line: 83, type: !71, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !676, line: 83, type: !313, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !676, line: 85, type: !323, isLocal: true, isDefinition: true)
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
!696 = distinct !DIGlobalVariable(scope: null, file: !676, line: 105, type: !148, isLocal: true, isDefinition: true)
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
!708 = distinct !DIGlobalVariable(scope: null, file: !676, line: 120, type: !186, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !676, line: 127, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 36)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !676, line: 134, type: !364, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !676, line: 142, type: !718, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 44)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !676, line: 150, type: !723, isLocal: true, isDefinition: true)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 48)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !676, line: 159, type: !728, isLocal: true, isDefinition: true)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 52)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !676, line: 170, type: !733, isLocal: true, isDefinition: true)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 60)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !676, line: 248, type: !295, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !676, line: 248, type: !391, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !676, line: 254, type: !295, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !676, line: 254, type: !163, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !676, line: 254, type: !364, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !676, line: 259, type: !3, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !676, line: 259, type: !9, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !752, file: !753, line: 26, type: !755, isLocal: false, isDefinition: true)
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !754, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!754 = !{!750}
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 47)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "exit_failure", scope: !760, file: !761, line: 24, type: !763, isLocal: false, isDefinition: true)
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !762, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!762 = !{!758}
!763 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !766, line: 34, type: !332, isLocal: true, isDefinition: true)
!766 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !766, line: 34, type: !71, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !766, line: 34, type: !158, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !773, line: 80, type: !71, isLocal: true, isDefinition: true)
!773 = !DIFile(filename: "lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !776, line: 108, type: !56, isLocal: true, isDefinition: true)
!776 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "internal_state", scope: !779, file: !776, line: 97, type: !782, isLocal: true, isDefinition: true)
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, globals: !781, splitDebugInlining: false, nameTableKind: None)
!780 = !{!130, !131, !136}
!781 = !{!774, !777}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !558, line: 6, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !560, line: 21, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !560, line: 13, size: 64, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !784, file: !560, line: 15, baseType: !104, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !784, file: !560, line: 20, baseType: !788, size: 32, offset: 32)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !560, line: 16, size: 32, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !788, file: !560, line: 18, baseType: !79, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !788, file: !560, line: 19, baseType: !313, size: 32)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !794, line: 35, type: !323, isLocal: true, isDefinition: true)
!794 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !794, line: 35, type: !318, isLocal: true, isDefinition: true)
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!799 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !800, retainedTypes: !804, globals: !805, splitDebugInlining: false, nameTableKind: None)
!800 = !{!801}
!801 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !676, line: 40, baseType: !79, size: 32, elements: !802)
!802 = !{!803}
!803 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!804 = !{!130}
!805 = !{!674, !677, !679, !681, !683, !685, !690, !695, !697, !702, !707, !709, !714, !716, !721, !726, !731, !736, !738, !740, !742, !744, !746, !748}
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !808, retainedTypes: !840, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!808 = !{!809, !821}
!809 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !810, file: !807, line: 188, baseType: !79, size: 32, elements: !819)
!810 = distinct !DISubprogram(name: "x2nrealloc", scope: !807, file: !807, line: 176, type: !811, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !814)
!811 = !DISubroutineType(types: !812)
!812 = !{!130, !130, !813, !131}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!814 = !{!815, !816, !817, !818}
!815 = !DILocalVariable(name: "p", arg: 1, scope: !810, file: !807, line: 176, type: !130)
!816 = !DILocalVariable(name: "pn", arg: 2, scope: !810, file: !807, line: 176, type: !813)
!817 = !DILocalVariable(name: "s", arg: 3, scope: !810, file: !807, line: 176, type: !131)
!818 = !DILocalVariable(name: "n", scope: !810, file: !807, line: 178, type: !131)
!819 = !{!820}
!820 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!821 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !822, file: !807, line: 228, baseType: !79, size: 32, elements: !819)
!822 = distinct !DISubprogram(name: "xpalloc", scope: !807, file: !807, line: 223, type: !823, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !830)
!823 = !DISubroutineType(types: !824)
!824 = !{!130, !130, !825, !826, !828, !826}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !827, line: 130, baseType: !828)
!827 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !829, line: 18, baseType: !128)
!829 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839}
!831 = !DILocalVariable(name: "pa", arg: 1, scope: !822, file: !807, line: 223, type: !130)
!832 = !DILocalVariable(name: "pn", arg: 2, scope: !822, file: !807, line: 223, type: !825)
!833 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !822, file: !807, line: 223, type: !826)
!834 = !DILocalVariable(name: "n_max", arg: 4, scope: !822, file: !807, line: 223, type: !828)
!835 = !DILocalVariable(name: "s", arg: 5, scope: !822, file: !807, line: 223, type: !826)
!836 = !DILocalVariable(name: "n0", scope: !822, file: !807, line: 230, type: !826)
!837 = !DILocalVariable(name: "n", scope: !822, file: !807, line: 237, type: !826)
!838 = !DILocalVariable(name: "nbytes", scope: !822, file: !807, line: 248, type: !826)
!839 = !DILocalVariable(name: "adjusted_nbytes", scope: !822, file: !807, line: 252, type: !826)
!840 = !{!129, !130}
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !842, splitDebugInlining: false, nameTableKind: None)
!842 = !{!764, !767, !769}
!843 = distinct !DICompileUnit(language: DW_LANG_C11, file: !844, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xdectoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xdectoimax.Tpo -c lib/xdectoimax.c -o lib/.libcoreutils_a-xdectoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !845, globals: !861, splitDebugInlining: false, nameTableKind: None)
!844 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!845 = !{!846, !854}
!846 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !847, line: 30, baseType: !79, size: 32, elements: !848)
!847 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!848 = !{!849, !850, !851, !852, !853}
!849 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!850 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!851 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!852 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!853 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!854 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !855, line: 24, baseType: !79, size: 32, elements: !856)
!855 = !DIFile(filename: "lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!856 = !{!857, !858, !859, !860}
!857 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!858 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!859 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!860 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!861 = !{!771}
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoimax.Tpo -c lib/xstrtoimax.c -o lib/.libcoreutils_a-xstrtoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !864, retainedTypes: !867, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!864 = !{!865}
!865 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !866, line: 30, baseType: !79, size: 32, elements: !848)
!866 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!867 = !{!137}
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !804, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!874 = distinct !DICompileUnit(language: DW_LANG_C11, file: !875, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !804, splitDebugInlining: false, nameTableKind: None)
!875 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !804, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !879, splitDebugInlining: false, nameTableKind: None)
!879 = !{!792, !795}
!880 = distinct !DICompileUnit(language: DW_LANG_C11, file: !881, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!881 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!882 = distinct !DICompileUnit(language: DW_LANG_C11, file: !883, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !804, splitDebugInlining: false, nameTableKind: None)
!883 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!884 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!885 = !{i32 7, !"Dwarf Version", i32 5}
!886 = !{i32 2, !"Debug Info Version", i32 3}
!887 = !{i32 1, !"wchar_size", i32 4}
!888 = !{i32 8, !"PIC Level", i32 2}
!889 = !{i32 7, !"PIE Level", i32 2}
!890 = !{i32 7, !"uwtable", i32 2}
!891 = !{i32 7, !"frame-pointer", i32 1}
!892 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!893 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 62, type: !894, scopeLine: 63, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !104}
!896 = !{!897}
!897 = !DILocalVariable(name: "status", arg: 1, scope: !893, file: !2, line: 62, type: !104)
!898 = !DILocation(line: 0, scope: !893)
!899 = !DILocation(line: 64, column: 14, scope: !900)
!900 = distinct !DILexicalBlock(scope: !893, file: !2, line: 64, column: 7)
!901 = !DILocation(line: 64, column: 7, scope: !893)
!902 = !DILocation(line: 65, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !2, line: 65, column: 5)
!904 = !{!905, !905, i64 0}
!905 = !{!"any pointer", !906, i64 0}
!906 = !{!"omnipotent char", !907, i64 0}
!907 = !{!"Simple C/C++ TBAA"}
!908 = !DILocation(line: 68, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !900, file: !2, line: 67, column: 5)
!910 = !DILocation(line: 69, column: 7, scope: !909)
!911 = !DILocation(line: 736, column: 3, scope: !912, inlinedAt: !913)
!912 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !103, file: !103, line: 734, type: !527, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!913 = distinct !DILocation(line: 79, column: 7, scope: !909)
!914 = !DILocation(line: 81, column: 7, scope: !909)
!915 = !DILocation(line: 84, column: 7, scope: !909)
!916 = !DILocation(line: 87, column: 7, scope: !909)
!917 = !DILocation(line: 90, column: 7, scope: !909)
!918 = !DILocation(line: 93, column: 7, scope: !909)
!919 = !DILocation(line: 94, column: 7, scope: !909)
!920 = !DILocation(line: 744, column: 3, scope: !921, inlinedAt: !922)
!921 = distinct !DISubprogram(name: "emit_size_note", scope: !103, file: !103, line: 742, type: !527, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!922 = distinct !DILocation(line: 95, column: 7, scope: !909)
!923 = !DILocation(line: 96, column: 7, scope: !909)
!924 = !DILocalVariable(name: "program", arg: 1, scope: !925, file: !103, line: 836, type: !134)
!925 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !103, file: !103, line: 836, type: !926, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !134}
!928 = !{!924, !929, !936, !937, !939, !940}
!929 = !DILocalVariable(name: "infomap", scope: !925, file: !103, line: 838, type: !930)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 896, elements: !72)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !925, file: !103, line: 838, size: 128, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !932, file: !103, line: 838, baseType: !134, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !932, file: !103, line: 838, baseType: !134, size: 64, offset: 64)
!936 = !DILocalVariable(name: "node", scope: !925, file: !103, line: 848, type: !134)
!937 = !DILocalVariable(name: "map_prog", scope: !925, file: !103, line: 849, type: !938)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!939 = !DILocalVariable(name: "lc_messages", scope: !925, file: !103, line: 861, type: !134)
!940 = !DILocalVariable(name: "url_program", scope: !925, file: !103, line: 874, type: !134)
!941 = !DILocation(line: 0, scope: !925, inlinedAt: !942)
!942 = distinct !DILocation(line: 100, column: 7, scope: !909)
!943 = !{}
!944 = !DILocation(line: 857, column: 3, scope: !925, inlinedAt: !942)
!945 = !DILocation(line: 861, column: 29, scope: !925, inlinedAt: !942)
!946 = !DILocation(line: 862, column: 7, scope: !947, inlinedAt: !942)
!947 = distinct !DILexicalBlock(scope: !925, file: !103, line: 862, column: 7)
!948 = !DILocation(line: 862, column: 19, scope: !947, inlinedAt: !942)
!949 = !DILocation(line: 862, column: 22, scope: !947, inlinedAt: !942)
!950 = !DILocation(line: 862, column: 7, scope: !925, inlinedAt: !942)
!951 = !DILocation(line: 868, column: 7, scope: !952, inlinedAt: !942)
!952 = distinct !DILexicalBlock(scope: !947, file: !103, line: 863, column: 5)
!953 = !DILocation(line: 870, column: 5, scope: !952, inlinedAt: !942)
!954 = !DILocation(line: 875, column: 3, scope: !925, inlinedAt: !942)
!955 = !DILocation(line: 877, column: 3, scope: !925, inlinedAt: !942)
!956 = !DILocation(line: 102, column: 3, scope: !893)
!957 = !DISubprogram(name: "dcgettext", scope: !958, file: !958, line: 51, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!959 = !DISubroutineType(types: !960)
!960 = !{!129, !134, !134, !104}
!961 = !DISubprogram(name: "__fprintf_chk", scope: !962, file: !962, line: 93, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!963 = !DISubroutineType(types: !964)
!964 = !{!104, !965, !104, !966, null}
!965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !249)
!966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!967 = !DISubprogram(name: "__printf_chk", scope: !962, file: !962, line: 95, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubroutineType(types: !969)
!969 = !{!104, !104, !966, null}
!970 = !DISubprogram(name: "fputs_unlocked", scope: !125, file: !125, line: 691, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DISubroutineType(types: !972)
!972 = !{!104, !966, !965}
!973 = !DILocation(line: 0, scope: !227)
!974 = !DILocation(line: 581, column: 7, scope: !235)
!975 = !{!976, !976, i64 0}
!976 = !{!"int", !906, i64 0}
!977 = !DILocation(line: 581, column: 19, scope: !235)
!978 = !DILocation(line: 581, column: 7, scope: !227)
!979 = !DILocation(line: 585, column: 26, scope: !234)
!980 = !DILocation(line: 0, scope: !234)
!981 = !DILocation(line: 586, column: 23, scope: !234)
!982 = !DILocation(line: 586, column: 28, scope: !234)
!983 = !DILocation(line: 586, column: 32, scope: !234)
!984 = !{!906, !906, i64 0}
!985 = !DILocation(line: 586, column: 38, scope: !234)
!986 = !DILocalVariable(name: "__s1", arg: 1, scope: !987, file: !988, line: 1359, type: !134)
!987 = distinct !DISubprogram(name: "streq", scope: !988, file: !988, line: 1359, type: !989, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !991)
!988 = !DIFile(filename: "./lib/string.h", directory: "/src")
!989 = !DISubroutineType(types: !990)
!990 = !{!215, !134, !134}
!991 = !{!986, !992}
!992 = !DILocalVariable(name: "__s2", arg: 2, scope: !987, file: !988, line: 1359, type: !134)
!993 = !DILocation(line: 0, scope: !987, inlinedAt: !994)
!994 = distinct !DILocation(line: 586, column: 41, scope: !234)
!995 = !DILocation(line: 1361, column: 11, scope: !987, inlinedAt: !994)
!996 = !DILocation(line: 1361, column: 10, scope: !987, inlinedAt: !994)
!997 = !DILocation(line: 586, column: 19, scope: !234)
!998 = !DILocation(line: 587, column: 5, scope: !234)
!999 = !DILocation(line: 588, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !227, file: !103, line: 588, column: 7)
!1001 = !DILocation(line: 588, column: 7, scope: !227)
!1002 = !DILocation(line: 590, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !103, line: 589, column: 5)
!1004 = !DILocation(line: 591, column: 7, scope: !1003)
!1005 = !DILocation(line: 595, column: 37, scope: !227)
!1006 = !DILocation(line: 595, column: 35, scope: !227)
!1007 = !DILocation(line: 596, column: 29, scope: !227)
!1008 = !DILocation(line: 597, column: 8, scope: !242)
!1009 = !DILocation(line: 597, column: 7, scope: !227)
!1010 = !DILocation(line: 604, column: 24, scope: !241)
!1011 = !DILocation(line: 604, column: 12, scope: !242)
!1012 = !DILocation(line: 0, scope: !240)
!1013 = !DILocation(line: 610, column: 16, scope: !240)
!1014 = !DILocation(line: 610, column: 7, scope: !240)
!1015 = !DILocation(line: 611, column: 21, scope: !240)
!1016 = !{!1017, !1017, i64 0}
!1017 = !{!"short", !906, i64 0}
!1018 = !DILocation(line: 611, column: 19, scope: !240)
!1019 = !DILocation(line: 611, column: 16, scope: !240)
!1020 = !DILocation(line: 610, column: 30, scope: !240)
!1021 = distinct !{!1021, !1014, !1015, !1022}
!1022 = !{!"llvm.loop.mustprogress"}
!1023 = !DILocation(line: 612, column: 18, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !240, file: !103, line: 612, column: 11)
!1025 = !DILocation(line: 612, column: 11, scope: !240)
!1026 = !DILocation(line: 620, column: 23, scope: !227)
!1027 = !DILocation(line: 625, column: 39, scope: !227)
!1028 = !DILocation(line: 626, column: 3, scope: !227)
!1029 = !DILocation(line: 626, column: 10, scope: !227)
!1030 = !DILocation(line: 626, column: 21, scope: !227)
!1031 = !DILocation(line: 628, column: 44, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !103, line: 628, column: 11)
!1033 = distinct !DILexicalBlock(scope: !227, file: !103, line: 627, column: 5)
!1034 = !DILocation(line: 628, column: 32, scope: !1032)
!1035 = !DILocation(line: 628, column: 49, scope: !1032)
!1036 = !DILocation(line: 628, column: 11, scope: !1033)
!1037 = !DILocation(line: 630, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !103, line: 630, column: 11)
!1039 = !DILocation(line: 630, column: 11, scope: !1033)
!1040 = !DILocation(line: 632, column: 26, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !103, line: 632, column: 15)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !103, line: 631, column: 9)
!1043 = !DILocation(line: 632, column: 34, scope: !1041)
!1044 = !DILocation(line: 632, column: 37, scope: !1041)
!1045 = !DILocation(line: 632, column: 15, scope: !1042)
!1046 = !DILocation(line: 640, column: 16, scope: !1033)
!1047 = distinct !{!1047, !1028, !1048, !1022}
!1048 = !DILocation(line: 641, column: 5, scope: !227)
!1049 = !DILocation(line: 644, column: 3, scope: !227)
!1050 = !DILocation(line: 0, scope: !987, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 648, column: 31, scope: !227)
!1052 = !DILocation(line: 0, scope: !987, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 649, column: 31, scope: !227)
!1054 = !DILocation(line: 0, scope: !987, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 650, column: 31, scope: !227)
!1056 = !DILocation(line: 0, scope: !987, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 651, column: 31, scope: !227)
!1058 = !DILocation(line: 0, scope: !987, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 652, column: 31, scope: !227)
!1060 = !DILocation(line: 0, scope: !987, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 653, column: 31, scope: !227)
!1062 = !DILocation(line: 0, scope: !987, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 654, column: 31, scope: !227)
!1064 = !DILocation(line: 0, scope: !987, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 655, column: 31, scope: !227)
!1066 = !DILocation(line: 0, scope: !987, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 656, column: 31, scope: !227)
!1068 = !DILocation(line: 0, scope: !987, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 657, column: 31, scope: !227)
!1070 = !DILocation(line: 663, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !227, file: !103, line: 663, column: 7)
!1072 = !DILocation(line: 664, column: 7, scope: !1071)
!1073 = !DILocation(line: 664, column: 10, scope: !1071)
!1074 = !DILocation(line: 663, column: 7, scope: !227)
!1075 = !DILocation(line: 669, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !103, line: 665, column: 5)
!1077 = !DILocation(line: 671, column: 5, scope: !1076)
!1078 = !DILocation(line: 676, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !103, line: 673, column: 5)
!1080 = !DILocation(line: 679, column: 3, scope: !227)
!1081 = !DILocation(line: 683, column: 3, scope: !227)
!1082 = !DILocation(line: 686, column: 3, scope: !227)
!1083 = !DILocation(line: 688, column: 3, scope: !227)
!1084 = !DILocation(line: 691, column: 3, scope: !227)
!1085 = !DILocation(line: 695, column: 3, scope: !227)
!1086 = !DILocation(line: 696, column: 1, scope: !227)
!1087 = !DISubprogram(name: "setlocale", scope: !1088, file: !1088, line: 122, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1088 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!129, !104, !134}
!1091 = !DISubprogram(name: "strncmp", scope: !1092, file: !1092, line: 159, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1092 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!104, !134, !134, !131}
!1095 = !DISubprogram(name: "exit", scope: !1096, file: !1096, line: 624, type: !894, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1096 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1097 = !DISubprogram(name: "getenv", scope: !1096, file: !1096, line: 641, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!129, !134}
!1100 = !DISubprogram(name: "strcmp", scope: !1092, file: !1092, line: 156, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!104, !134, !134}
!1103 = !DISubprogram(name: "strspn", scope: !1092, file: !1092, line: 297, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!133, !134, !134}
!1106 = !DISubprogram(name: "strchr", scope: !1092, file: !1092, line: 246, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!129, !134, !104}
!1109 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1115 = !DISubprogram(name: "strcspn", scope: !1092, file: !1092, line: 293, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DISubprogram(name: "fwrite_unlocked", scope: !125, file: !125, line: 704, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!131, !1119, !131, !131, !965}
!1119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1122 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 201, type: !1123, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1126)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!104, !104, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1134, !1135, !1173, !1174, !1177, !1180, !1181, !1182, !1183, !1185}
!1127 = !DILocalVariable(name: "argc", arg: 1, scope: !1122, file: !2, line: 201, type: !104)
!1128 = !DILocalVariable(name: "argv", arg: 2, scope: !1122, file: !2, line: 201, type: !1125)
!1129 = !DILocalVariable(name: "got_size", scope: !1122, file: !2, line: 203, type: !215)
!1130 = !DILocalVariable(name: "size", scope: !1122, file: !2, line: 204, type: !124)
!1131 = !DILocalVariable(name: "rsize", scope: !1122, file: !2, line: 205, type: !124)
!1132 = !DILocalVariable(name: "rel_mode", scope: !1122, file: !2, line: 206, type: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !2, line: 59, baseType: !78)
!1134 = !DILocalVariable(name: "c", scope: !1122, file: !2, line: 207, type: !104)
!1135 = !DILocalVariable(name: "sb", scope: !1136, file: !2, line: 321, type: !1138)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 320, column: 5)
!1137 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 319, column: 7)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1139, line: 44, size: 1024, elements: !1140)
!1139 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1140 = !{!1141, !1143, !1145, !1147, !1149, !1151, !1153, !1154, !1155, !1156, !1158, !1159, !1161, !1169, !1170, !1171}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1138, file: !1139, line: 46, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !127, line: 145, baseType: !133)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1138, file: !1139, line: 47, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !127, line: 148, baseType: !133)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1138, file: !1139, line: 48, baseType: !1146, size: 32, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !127, line: 150, baseType: !79)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1138, file: !1139, line: 49, baseType: !1148, size: 32, offset: 160)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !127, line: 151, baseType: !79)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1138, file: !1139, line: 50, baseType: !1150, size: 32, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !127, line: 146, baseType: !79)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1138, file: !1139, line: 51, baseType: !1152, size: 32, offset: 224)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !127, line: 147, baseType: !79)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1138, file: !1139, line: 52, baseType: !1142, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1138, file: !1139, line: 53, baseType: !1142, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1138, file: !1139, line: 54, baseType: !126, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1138, file: !1139, line: 55, baseType: !1157, size: 32, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !127, line: 175, baseType: !104)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1138, file: !1139, line: 56, baseType: !104, size: 32, offset: 480)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1138, file: !1139, line: 57, baseType: !1160, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !127, line: 180, baseType: !128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1138, file: !1139, line: 65, baseType: !1162, size: 128, offset: 576)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1163, line: 11, size: 128, elements: !1164)
!1163 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1164 = !{!1165, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1162, file: !1163, line: 16, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !127, line: 160, baseType: !128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1162, file: !1163, line: 21, baseType: !1168, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !127, line: 197, baseType: !128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1138, file: !1139, line: 66, baseType: !1162, size: 128, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1138, file: !1139, line: 67, baseType: !1162, size: 128, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1138, file: !1139, line: 79, baseType: !1172, size: 64, offset: 960)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !324)
!1173 = !DILocalVariable(name: "file_size", scope: !1136, file: !2, line: 322, type: !124)
!1174 = !DILocalVariable(name: "ref_fd", scope: !1175, file: !2, line: 329, type: !104)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 328, column: 9)
!1176 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 325, column: 11)
!1177 = !DILocalVariable(name: "file_end", scope: !1178, file: !2, line: 332, type: !124)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 331, column: 13)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 330, column: 15)
!1180 = !DILocalVariable(name: "saved_errno", scope: !1178, file: !2, line: 333, type: !104)
!1181 = !DILocalVariable(name: "oflags", scope: !1122, file: !2, line: 353, type: !104)
!1182 = !DILocalVariable(name: "errors", scope: !1122, file: !2, line: 354, type: !215)
!1183 = !DILocalVariable(name: "fname", scope: !1184, file: !2, line: 356, type: !134)
!1184 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 356, column: 3)
!1185 = !DILocalVariable(name: "fd", scope: !1186, file: !2, line: 358, type: !104)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 357, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 356, column: 3)
!1188 = distinct !DIAssignID()
!1189 = distinct !DIAssignID()
!1190 = !DILocation(line: 0, scope: !1136)
!1191 = !DILocation(line: 0, scope: !1122)
!1192 = !DILocation(line: 210, column: 21, scope: !1122)
!1193 = !DILocation(line: 210, column: 3, scope: !1122)
!1194 = !DILocation(line: 211, column: 3, scope: !1122)
!1195 = !DILocation(line: 212, column: 3, scope: !1122)
!1196 = !DILocation(line: 213, column: 3, scope: !1122)
!1197 = !DILocation(line: 215, column: 3, scope: !1122)
!1198 = !DILocation(line: 217, column: 3, scope: !1122)
!1199 = !DILocation(line: 217, column: 15, scope: !1122)
!1200 = !DILocation(line: 235, column: 18, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 220, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 218, column: 5)
!1203 = !DILocation(line: 235, column: 11, scope: !1201)
!1204 = !DILocation(line: 222, column: 21, scope: !1201)
!1205 = !DILocation(line: 223, column: 11, scope: !1201)
!1206 = !DILocation(line: 226, column: 22, scope: !1201)
!1207 = !DILocation(line: 227, column: 11, scope: !1201)
!1208 = !DILocation(line: 230, column: 22, scope: !1201)
!1209 = !DILocation(line: 230, column: 20, scope: !1201)
!1210 = !DILocation(line: 231, column: 11, scope: !1201)
!1211 = distinct !{!1211, !1198, !1212, !1022}
!1212 = !DILocation(line: 286, column: 5, scope: !1122)
!1213 = !DILocation(line: 236, column: 19, scope: !1201)
!1214 = distinct !{!1214, !1203, !1213, !1022}
!1215 = !DILocation(line: 237, column: 11, scope: !1201)
!1216 = !DILocation(line: 246, column: 15, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 238, column: 13)
!1218 = !DILocation(line: 250, column: 15, scope: !1217)
!1219 = !DILocation(line: 254, column: 15, scope: !1217)
!1220 = !DILocation(line: 0, scope: !1217)
!1221 = !DILocation(line: 257, column: 18, scope: !1201)
!1222 = !DILocation(line: 257, column: 11, scope: !1201)
!1223 = !DILocation(line: 258, column: 19, scope: !1201)
!1224 = distinct !{!1224, !1222, !1223, !1022}
!1225 = !DILocation(line: 259, column: 30, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 259, column: 15)
!1227 = !DILocation(line: 261, column: 19, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 261, column: 19)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 260, column: 13)
!1230 = !DILocation(line: 261, column: 19, scope: !1229)
!1231 = !DILocation(line: 263, column: 19, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 262, column: 17)
!1233 = !DILocation(line: 265, column: 19, scope: !1232)
!1234 = !DILocation(line: 272, column: 30, scope: !1201)
!1235 = !DILocation(line: 271, column: 18, scope: !1201)
!1236 = !DILocation(line: 274, column: 35, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 274, column: 15)
!1238 = !DILocation(line: 275, column: 13, scope: !1237)
!1239 = !DILocation(line: 279, column: 9, scope: !1201)
!1240 = !DILocation(line: 281, column: 9, scope: !1201)
!1241 = !DILocation(line: 284, column: 11, scope: !1201)
!1242 = !DILocation(line: 288, column: 11, scope: !1122)
!1243 = !DILocation(line: 288, column: 8, scope: !1122)
!1244 = !DILocation(line: 292, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 292, column: 7)
!1246 = !DILocation(line: 292, column: 17, scope: !1245)
!1247 = !DILocation(line: 294, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 293, column: 5)
!1249 = !DILocation(line: 296, column: 7, scope: !1248)
!1250 = !DILocation(line: 299, column: 16, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 299, column: 7)
!1252 = !DILocation(line: 301, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 300, column: 5)
!1254 = !DILocation(line: 303, column: 7, scope: !1253)
!1255 = !DILocation(line: 306, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 306, column: 7)
!1257 = !DILocation(line: 306, column: 18, scope: !1256)
!1258 = !DILocation(line: 308, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 307, column: 5)
!1260 = !DILocation(line: 310, column: 7, scope: !1259)
!1261 = !DILocation(line: 313, column: 12, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 313, column: 7)
!1263 = !DILocation(line: 313, column: 7, scope: !1122)
!1264 = !DILocation(line: 315, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 314, column: 5)
!1266 = !DILocation(line: 316, column: 7, scope: !1265)
!1267 = !DILocation(line: 319, column: 7, scope: !1122)
!1268 = !DILocation(line: 321, column: 7, scope: !1136)
!1269 = !DILocation(line: 323, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 323, column: 11)
!1271 = !DILocation(line: 323, column: 32, scope: !1270)
!1272 = !DILocation(line: 323, column: 11, scope: !1136)
!1273 = !DILocation(line: 324, column: 9, scope: !1270)
!1274 = !DILocalVariable(name: "sb", arg: 1, scope: !1275, file: !103, line: 911, type: !1278)
!1275 = distinct !DISubprogram(name: "usable_st_size", scope: !103, file: !103, line: 911, type: !1276, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1280)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!215, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1280 = !{!1274}
!1281 = !DILocation(line: 0, scope: !1275, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 325, column: 11, scope: !1176)
!1283 = !DILocation(line: 913, column: 11, scope: !1275, inlinedAt: !1282)
!1284 = !{!1285, !976, i64 16}
!1285 = !{!"stat", !1286, i64 0, !1286, i64 8, !976, i64 16, !976, i64 20, !976, i64 24, !976, i64 28, !1286, i64 32, !1286, i64 40, !1286, i64 48, !976, i64 56, !976, i64 60, !1286, i64 64, !1287, i64 72, !1287, i64 88, !1287, i64 104, !906, i64 120}
!1286 = !{!"long", !906, i64 0}
!1287 = !{!"timespec", !1286, i64 0, !1286, i64 8}
!1288 = !DILocation(line: 913, column: 33, scope: !1275, inlinedAt: !1282)
!1289 = !DILocation(line: 325, column: 11, scope: !1136)
!1290 = !DILocation(line: 329, column: 30, scope: !1175)
!1291 = !DILocation(line: 329, column: 24, scope: !1175)
!1292 = !DILocation(line: 0, scope: !1175)
!1293 = !DILocation(line: 330, column: 17, scope: !1179)
!1294 = !DILocation(line: 330, column: 15, scope: !1175)
!1295 = !DILocation(line: 332, column: 32, scope: !1178)
!1296 = !DILocation(line: 0, scope: !1178)
!1297 = !DILocation(line: 333, column: 33, scope: !1178)
!1298 = !DILocation(line: 334, column: 15, scope: !1178)
!1299 = !DILocation(line: 335, column: 21, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 335, column: 19)
!1301 = !DILocation(line: 335, column: 19, scope: !1178)
!1302 = !DILocation(line: 340, column: 25, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 338, column: 17)
!1304 = !DILocation(line: 326, column: 24, scope: !1176)
!1305 = !{!1285, !1286, i64 48}
!1306 = !DILocation(line: 344, column: 21, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 344, column: 11)
!1308 = !DILocation(line: 344, column: 11, scope: !1136)
!1309 = !DILocation(line: 345, column: 9, scope: !1307)
!1310 = !DILocation(line: 351, column: 5, scope: !1137)
!1311 = !DILocation(line: 351, column: 5, scope: !1136)
!1312 = !DILocation(line: 353, column: 28, scope: !1122)
!1313 = !DILocation(line: 353, column: 53, scope: !1122)
!1314 = !DILocation(line: 356, column: 36, scope: !1187)
!1315 = !DILocation(line: 0, scope: !1184)
!1316 = !DILocation(line: 356, column: 3, scope: !1184)
!1317 = !DILocation(line: 383, column: 10, scope: !1122)
!1318 = !DILocation(line: 383, column: 3, scope: !1122)
!1319 = !DILocation(line: 358, column: 16, scope: !1186)
!1320 = !DILocation(line: 0, scope: !1186)
!1321 = !DILocation(line: 359, column: 14, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 359, column: 11)
!1323 = !DILocation(line: 359, column: 11, scope: !1186)
!1324 = !DILocation(line: 365, column: 17, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 365, column: 15)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 360, column: 9)
!1327 = !DILocation(line: 0, scope: !1325)
!1328 = !DILocation(line: 365, column: 27, scope: !1325)
!1329 = !DILocation(line: 365, column: 30, scope: !1325)
!1330 = !DILocation(line: 365, column: 36, scope: !1325)
!1331 = !DILocation(line: 365, column: 15, scope: !1326)
!1332 = !DILocalVariable(name: "sb", scope: !1333, file: !2, line: 110, type: !1138)
!1333 = distinct !DISubprogram(name: "do_ftruncate", scope: !2, file: !2, line: 107, type: !1334, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!215, !104, !134, !124, !124, !1133}
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1332, !1342, !1343, !1346, !1347, !1350}
!1337 = !DILocalVariable(name: "fd", arg: 1, scope: !1333, file: !2, line: 107, type: !104)
!1338 = !DILocalVariable(name: "fname", arg: 2, scope: !1333, file: !2, line: 107, type: !134)
!1339 = !DILocalVariable(name: "ssize", arg: 3, scope: !1333, file: !2, line: 107, type: !124)
!1340 = !DILocalVariable(name: "rsize", arg: 4, scope: !1333, file: !2, line: 107, type: !124)
!1341 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !1333, file: !2, line: 108, type: !1133)
!1342 = !DILocalVariable(name: "nsize", scope: !1333, file: !2, line: 111, type: !124)
!1343 = !DILocalVariable(name: "blksize", scope: !1344, file: !2, line: 120, type: !828)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 119, column: 5)
!1345 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 118, column: 7)
!1346 = !DILocalVariable(name: "ssize0", scope: !1344, file: !2, line: 121, type: !137)
!1347 = !DILocalVariable(name: "fsize", scope: !1348, file: !2, line: 132, type: !124)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 131, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 130, column: 7)
!1350 = !DILocalVariable(name: "r", scope: !1351, file: !2, line: 174, type: !124)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 172, column: 13)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 171, column: 15)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 170, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 166, column: 16)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 164, column: 16)
!1356 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 162, column: 11)
!1357 = !DILocation(line: 0, scope: !1333, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 374, column: 22, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 373, column: 9)
!1360 = !DILocation(line: 110, column: 3, scope: !1333, inlinedAt: !1358)
!1361 = !DILocation(line: 113, column: 8, scope: !1362, inlinedAt: !1358)
!1362 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 113, column: 7)
!1363 = !DILocation(line: 113, column: 19, scope: !1362, inlinedAt: !1358)
!1364 = !DILocation(line: 113, column: 50, scope: !1362, inlinedAt: !1358)
!1365 = !DILocation(line: 113, column: 66, scope: !1362, inlinedAt: !1358)
!1366 = !DILocation(line: 113, column: 7, scope: !1333, inlinedAt: !1358)
!1367 = !DILocation(line: 115, column: 7, scope: !1368, inlinedAt: !1358)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 114, column: 5)
!1369 = !DILocation(line: 116, column: 7, scope: !1368, inlinedAt: !1358)
!1370 = !DILocation(line: 118, column: 7, scope: !1345, inlinedAt: !1358)
!1371 = !DILocation(line: 118, column: 7, scope: !1333, inlinedAt: !1358)
!1372 = !DILocation(line: 120, column: 27, scope: !1344, inlinedAt: !1358)
!1373 = !DILocation(line: 0, scope: !1344, inlinedAt: !1358)
!1374 = !DILocation(line: 122, column: 11, scope: !1375, inlinedAt: !1358)
!1375 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 122, column: 11)
!1376 = !DILocation(line: 122, column: 11, scope: !1344, inlinedAt: !1358)
!1377 = !DILocation(line: 124, column: 11, scope: !1378, inlinedAt: !1358)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 123, column: 9)
!1379 = !DILocation(line: 130, column: 7, scope: !1333, inlinedAt: !1358)
!1380 = !DILocation(line: 134, column: 11, scope: !1348, inlinedAt: !1358)
!1381 = !DILocation(line: 0, scope: !1275, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 138, column: 15, scope: !1383, inlinedAt: !1358)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 138, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 137, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 134, column: 11)
!1386 = !DILocation(line: 913, column: 11, scope: !1275, inlinedAt: !1382)
!1387 = !DILocation(line: 913, column: 33, scope: !1275, inlinedAt: !1382)
!1388 = !DILocation(line: 138, column: 15, scope: !1384, inlinedAt: !1358)
!1389 = !DILocation(line: 140, column: 26, scope: !1390, inlinedAt: !1358)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 139, column: 13)
!1391 = !DILocation(line: 0, scope: !1348, inlinedAt: !1358)
!1392 = !DILocation(line: 141, column: 25, scope: !1393, inlinedAt: !1358)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 141, column: 19)
!1394 = !DILocation(line: 141, column: 19, scope: !1390, inlinedAt: !1358)
!1395 = !DILocation(line: 145, column: 19, scope: !1396, inlinedAt: !1358)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 142, column: 17)
!1397 = !DILocation(line: 147, column: 19, scope: !1396, inlinedAt: !1358)
!1398 = !DILocation(line: 152, column: 23, scope: !1399, inlinedAt: !1358)
!1399 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 151, column: 13)
!1400 = !DILocation(line: 153, column: 25, scope: !1401, inlinedAt: !1358)
!1401 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 153, column: 19)
!1402 = !DILocation(line: 153, column: 19, scope: !1399, inlinedAt: !1358)
!1403 = !DILocation(line: 155, column: 19, scope: !1404, inlinedAt: !1358)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 154, column: 17)
!1405 = !DILocation(line: 157, column: 19, scope: !1404, inlinedAt: !1358)
!1406 = !DILocation(line: 0, scope: !1385, inlinedAt: !1358)
!1407 = !DILocation(line: 162, column: 11, scope: !1348, inlinedAt: !1358)
!1408 = !DILocation(line: 163, column: 17, scope: !1356, inlinedAt: !1358)
!1409 = !DILocation(line: 163, column: 9, scope: !1356, inlinedAt: !1358)
!1410 = !DILocation(line: 165, column: 17, scope: !1355, inlinedAt: !1358)
!1411 = !DILocation(line: 165, column: 9, scope: !1355, inlinedAt: !1358)
!1412 = !DILocation(line: 168, column: 31, scope: !1354, inlinedAt: !1358)
!1413 = !DILocation(line: 168, column: 23, scope: !1354, inlinedAt: !1358)
!1414 = !DILocation(line: 168, column: 9, scope: !1354, inlinedAt: !1358)
!1415 = !DILocation(line: 174, column: 31, scope: !1351, inlinedAt: !1358)
!1416 = !DILocation(line: 0, scope: !1351, inlinedAt: !1358)
!1417 = !DILocation(line: 175, column: 25, scope: !1351, inlinedAt: !1358)
!1418 = !DILocation(line: 175, column: 23, scope: !1351, inlinedAt: !1358)
!1419 = !DILocation(line: 176, column: 13, scope: !1351, inlinedAt: !1358)
!1420 = !DILocation(line: 177, column: 15, scope: !1421, inlinedAt: !1358)
!1421 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 177, column: 15)
!1422 = !DILocation(line: 177, column: 15, scope: !1353, inlinedAt: !1358)
!1423 = !DILocation(line: 179, column: 15, scope: !1424, inlinedAt: !1358)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 178, column: 13)
!1425 = !DILocation(line: 181, column: 15, scope: !1424, inlinedAt: !1358)
!1426 = !DILocation(line: 0, scope: !1349, inlinedAt: !1358)
!1427 = !DILocation(line: 187, column: 7, scope: !1333, inlinedAt: !1358)
!1428 = !DILocation(line: 190, column: 7, scope: !1429, inlinedAt: !1358)
!1429 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 190, column: 7)
!1430 = !DILocation(line: 190, column: 29, scope: !1429, inlinedAt: !1358)
!1431 = !DILocation(line: 190, column: 7, scope: !1333, inlinedAt: !1358)
!1432 = !DILocation(line: 192, column: 7, scope: !1433, inlinedAt: !1358)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 191, column: 5)
!1434 = !DILocation(line: 194, column: 7, scope: !1433, inlinedAt: !1358)
!1435 = !DILocation(line: 198, column: 1, scope: !1333, inlinedAt: !1358)
!1436 = !DILocation(line: 374, column: 18, scope: !1359)
!1437 = !DILocation(line: 375, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 375, column: 15)
!1439 = !DILocation(line: 375, column: 26, scope: !1438)
!1440 = !DILocation(line: 375, column: 15, scope: !1359)
!1441 = !DILocation(line: 377, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 376, column: 13)
!1443 = !DILocation(line: 379, column: 13, scope: !1442)
!1444 = !DILocation(line: 0, scope: !1322)
!1445 = !DILocation(line: 356, column: 48, scope: !1187)
!1446 = distinct !{!1446, !1316, !1447, !1022}
!1447 = !DILocation(line: 381, column: 5, scope: !1184)
!1448 = !DISubprogram(name: "bindtextdomain", scope: !958, file: !958, line: 86, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!129, !134, !134}
!1451 = !DISubprogram(name: "textdomain", scope: !958, file: !958, line: 82, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1452 = !DISubprogram(name: "atexit", scope: !1096, file: !1096, line: 602, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!104, !526}
!1455 = !DISubprogram(name: "getopt_long", scope: !446, file: !446, line: 66, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!104, !104, !1458, !134, !1460, !451}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1461 = !DISubprogram(name: "stat", scope: !1462, file: !1462, line: 205, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!104, !966, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1467 = !DISubprogram(name: "__errno_location", scope: !1468, file: !1468, line: 37, type: !1469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1468 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!451}
!1471 = !DISubprogram(name: "open", scope: !1472, file: !1472, line: 181, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1472 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!104, !134, !104, null}
!1475 = !DISubprogram(name: "lseek", scope: !1476, file: !1476, line: 339, type: !1477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!126, !104, !126, !104}
!1479 = !DISubprogram(name: "close", scope: !1476, file: !1476, line: 358, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!104, !104}
!1482 = !DISubprogram(name: "fstat", scope: !1462, file: !1462, line: 210, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!104, !104, !1466}
!1485 = !DISubprogram(name: "ftruncate", scope: !1476, file: !1476, line: 1049, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!104, !104, !126}
!1488 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !465, file: !465, line: 50, type: !926, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1489)
!1489 = !{!1490}
!1490 = !DILocalVariable(name: "file", arg: 1, scope: !1488, file: !465, line: 50, type: !134)
!1491 = !DILocation(line: 0, scope: !1488)
!1492 = !DILocation(line: 52, column: 13, scope: !1488)
!1493 = !DILocation(line: 53, column: 1, scope: !1488)
!1494 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !465, file: !465, line: 87, type: !1495, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !215}
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "ignore", arg: 1, scope: !1494, file: !465, line: 87, type: !215)
!1499 = !DILocation(line: 0, scope: !1494)
!1500 = !DILocation(line: 89, column: 16, scope: !1494)
!1501 = !{!1502, !1502, i64 0}
!1502 = !{!"_Bool", !906, i64 0}
!1503 = !DILocation(line: 90, column: 1, scope: !1494)
!1504 = distinct !DISubprogram(name: "close_stdout", scope: !465, file: !465, line: 116, type: !527, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1505)
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "write_error", scope: !1507, file: !465, line: 121, type: !134)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !465, line: 120, column: 5)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !465, line: 118, column: 7)
!1509 = !DILocation(line: 118, column: 21, scope: !1508)
!1510 = !DILocation(line: 118, column: 7, scope: !1508)
!1511 = !DILocation(line: 118, column: 29, scope: !1508)
!1512 = !DILocation(line: 119, column: 7, scope: !1508)
!1513 = !DILocation(line: 119, column: 12, scope: !1508)
!1514 = !{i8 0, i8 2}
!1515 = !DILocation(line: 119, column: 25, scope: !1508)
!1516 = !DILocation(line: 119, column: 28, scope: !1508)
!1517 = !DILocation(line: 119, column: 34, scope: !1508)
!1518 = !DILocation(line: 118, column: 7, scope: !1504)
!1519 = !DILocation(line: 121, column: 33, scope: !1507)
!1520 = !DILocation(line: 0, scope: !1507)
!1521 = !DILocation(line: 122, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1507, file: !465, line: 122, column: 11)
!1523 = !DILocation(line: 0, scope: !1522)
!1524 = !DILocation(line: 122, column: 11, scope: !1507)
!1525 = !DILocation(line: 123, column: 9, scope: !1522)
!1526 = !DILocation(line: 126, column: 9, scope: !1522)
!1527 = !DILocation(line: 128, column: 14, scope: !1507)
!1528 = !DILocation(line: 128, column: 7, scope: !1507)
!1529 = !DILocation(line: 133, column: 42, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1504, file: !465, line: 133, column: 7)
!1531 = !DILocation(line: 133, column: 28, scope: !1530)
!1532 = !DILocation(line: 133, column: 50, scope: !1530)
!1533 = !DILocation(line: 133, column: 7, scope: !1504)
!1534 = !DILocation(line: 134, column: 12, scope: !1530)
!1535 = !DILocation(line: 134, column: 5, scope: !1530)
!1536 = !DILocation(line: 135, column: 1, scope: !1504)
!1537 = !DISubprogram(name: "_exit", scope: !1476, file: !1476, line: 624, type: !894, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1538 = distinct !DISubprogram(name: "verror", scope: !480, file: !480, line: 251, type: !1539, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !104, !104, !134, !490}
!1541 = !{!1542, !1543, !1544, !1545}
!1542 = !DILocalVariable(name: "status", arg: 1, scope: !1538, file: !480, line: 251, type: !104)
!1543 = !DILocalVariable(name: "errnum", arg: 2, scope: !1538, file: !480, line: 251, type: !104)
!1544 = !DILocalVariable(name: "message", arg: 3, scope: !1538, file: !480, line: 251, type: !134)
!1545 = !DILocalVariable(name: "args", arg: 4, scope: !1538, file: !480, line: 251, type: !490)
!1546 = !DILocation(line: 0, scope: !1538)
!1547 = !DILocation(line: 261, column: 3, scope: !1538)
!1548 = !DILocation(line: 265, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1538, file: !480, line: 265, column: 7)
!1550 = !DILocation(line: 265, column: 7, scope: !1538)
!1551 = !DILocation(line: 266, column: 5, scope: !1549)
!1552 = !DILocation(line: 272, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !480, line: 268, column: 5)
!1554 = !DILocation(line: 276, column: 3, scope: !1538)
!1555 = !{i64 0, i64 8, !904, i64 8, i64 8, !904, i64 16, i64 8, !904, i64 24, i64 4, !975, i64 28, i64 4, !975}
!1556 = !DILocation(line: 282, column: 1, scope: !1538)
!1557 = distinct !DISubprogram(name: "flush_stdout", scope: !480, file: !480, line: 163, type: !527, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1558)
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "stdout_fd", scope: !1557, file: !480, line: 166, type: !104)
!1560 = !DILocation(line: 0, scope: !1557)
!1561 = !DILocalVariable(name: "fd", arg: 1, scope: !1562, file: !480, line: 145, type: !104)
!1562 = distinct !DISubprogram(name: "is_open", scope: !480, file: !480, line: 145, type: !1480, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1563)
!1563 = !{!1561}
!1564 = !DILocation(line: 0, scope: !1562, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 182, column: 25, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1557, file: !480, line: 182, column: 7)
!1567 = !DILocation(line: 157, column: 15, scope: !1562, inlinedAt: !1565)
!1568 = !DILocation(line: 157, column: 12, scope: !1562, inlinedAt: !1565)
!1569 = !DILocation(line: 182, column: 7, scope: !1557)
!1570 = !DILocation(line: 184, column: 5, scope: !1566)
!1571 = !DILocation(line: 185, column: 1, scope: !1557)
!1572 = distinct !DISubprogram(name: "error_tail", scope: !480, file: !480, line: 219, type: !1539, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1576, !1577}
!1574 = !DILocalVariable(name: "status", arg: 1, scope: !1572, file: !480, line: 219, type: !104)
!1575 = !DILocalVariable(name: "errnum", arg: 2, scope: !1572, file: !480, line: 219, type: !104)
!1576 = !DILocalVariable(name: "message", arg: 3, scope: !1572, file: !480, line: 219, type: !134)
!1577 = !DILocalVariable(name: "args", arg: 4, scope: !1572, file: !480, line: 219, type: !490)
!1578 = distinct !DIAssignID()
!1579 = !DILocation(line: 0, scope: !1572)
!1580 = !DILocation(line: 229, column: 13, scope: !1572)
!1581 = !DILocation(line: 135, column: 10, scope: !1582, inlinedAt: !1624)
!1582 = distinct !DISubprogram(name: "vfprintf", scope: !962, file: !962, line: 132, type: !1583, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1620)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!104, !1585, !966, !491}
!1585 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1588, file: !253, line: 51, baseType: !104, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1588, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1588, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1588, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1588, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1588, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1588, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1588, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1588, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1588, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1588, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1588, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1588, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1588, file: !253, line: 70, baseType: !1604, size: 64, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1588, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1588, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1588, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1588, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1588, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1588, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1588, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1588, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1588, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1588, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1588, file: !253, line: 93, baseType: !1604, size: 64, offset: 1344)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1588, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1588, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1588, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1588, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "__stream", arg: 1, scope: !1582, file: !962, line: 132, type: !1585)
!1622 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1582, file: !962, line: 133, type: !966)
!1623 = !DILocalVariable(name: "__ap", arg: 3, scope: !1582, file: !962, line: 133, type: !491)
!1624 = distinct !DILocation(line: 229, column: 3, scope: !1572)
!1625 = !{!1626, !1628}
!1626 = distinct !{!1626, !1627, !"vfprintf.inline: argument 0"}
!1627 = distinct !{!1627, !"vfprintf.inline"}
!1628 = distinct !{!1628, !1627, !"vfprintf.inline: argument 1"}
!1629 = !DILocation(line: 229, column: 3, scope: !1572)
!1630 = !DILocation(line: 0, scope: !1582, inlinedAt: !1624)
!1631 = !DILocation(line: 232, column: 3, scope: !1572)
!1632 = !DILocation(line: 233, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1572, file: !480, line: 233, column: 7)
!1634 = !DILocation(line: 233, column: 7, scope: !1572)
!1635 = !DILocalVariable(name: "errbuf", scope: !1636, file: !480, line: 193, type: !1640)
!1636 = distinct !DISubprogram(name: "print_errno_message", scope: !480, file: !480, line: 188, type: !894, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1637)
!1637 = !{!1638, !1639, !1635}
!1638 = !DILocalVariable(name: "errnum", arg: 1, scope: !1636, file: !480, line: 188, type: !104)
!1639 = !DILocalVariable(name: "s", scope: !1636, file: !480, line: 190, type: !134)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1641)
!1641 = !{!1642}
!1642 = !DISubrange(count: 1024)
!1643 = !DILocation(line: 0, scope: !1636, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 234, column: 5, scope: !1633)
!1645 = !DILocation(line: 193, column: 3, scope: !1636, inlinedAt: !1644)
!1646 = !DILocation(line: 195, column: 7, scope: !1636, inlinedAt: !1644)
!1647 = !DILocation(line: 207, column: 9, scope: !1648, inlinedAt: !1644)
!1648 = distinct !DILexicalBlock(scope: !1636, file: !480, line: 207, column: 7)
!1649 = !DILocation(line: 207, column: 7, scope: !1636, inlinedAt: !1644)
!1650 = !DILocation(line: 208, column: 9, scope: !1648, inlinedAt: !1644)
!1651 = !DILocation(line: 208, column: 5, scope: !1648, inlinedAt: !1644)
!1652 = !DILocation(line: 214, column: 3, scope: !1636, inlinedAt: !1644)
!1653 = !DILocation(line: 216, column: 1, scope: !1636, inlinedAt: !1644)
!1654 = !DILocation(line: 234, column: 5, scope: !1633)
!1655 = !DILocation(line: 238, column: 3, scope: !1572)
!1656 = !DILocalVariable(name: "__c", arg: 1, scope: !1657, file: !1658, line: 101, type: !104)
!1657 = distinct !DISubprogram(name: "putc_unlocked", scope: !1658, file: !1658, line: 101, type: !1659, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1661)
!1658 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!104, !104, !1586}
!1661 = !{!1656, !1662}
!1662 = !DILocalVariable(name: "__stream", arg: 2, scope: !1657, file: !1658, line: 101, type: !1586)
!1663 = !DILocation(line: 0, scope: !1657, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 238, column: 3, scope: !1572)
!1665 = !DILocation(line: 103, column: 10, scope: !1657, inlinedAt: !1664)
!1666 = !{!1667, !905, i64 40}
!1667 = !{!"_IO_FILE", !976, i64 0, !905, i64 8, !905, i64 16, !905, i64 24, !905, i64 32, !905, i64 40, !905, i64 48, !905, i64 56, !905, i64 64, !905, i64 72, !905, i64 80, !905, i64 88, !905, i64 96, !905, i64 104, !976, i64 112, !976, i64 116, !1286, i64 120, !1017, i64 128, !906, i64 130, !906, i64 131, !905, i64 136, !1286, i64 144, !905, i64 152, !905, i64 160, !905, i64 168, !905, i64 176, !1286, i64 184, !976, i64 192, !906, i64 196}
!1668 = !{!1667, !905, i64 48}
!1669 = !{!"branch_weights", i32 2000, i32 1}
!1670 = !DILocation(line: 240, column: 3, scope: !1572)
!1671 = !DILocation(line: 241, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1572, file: !480, line: 241, column: 7)
!1673 = !DILocation(line: 241, column: 7, scope: !1572)
!1674 = !DILocation(line: 242, column: 5, scope: !1672)
!1675 = !DILocation(line: 243, column: 1, scope: !1572)
!1676 = !DISubprogram(name: "__vfprintf_chk", scope: !962, file: !962, line: 96, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!104, !1585, !104, !966, !491}
!1679 = !DISubprogram(name: "strerror_r", scope: !1092, file: !1092, line: 444, type: !1680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!129, !104, !129, !131}
!1682 = !DISubprogram(name: "__overflow", scope: !125, file: !125, line: 886, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!104, !1586, !104}
!1685 = !DISubprogram(name: "fflush_unlocked", scope: !125, file: !125, line: 239, type: !1686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!104, !1586}
!1688 = !DISubprogram(name: "fcntl", scope: !1472, file: !1472, line: 149, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!104, !104, !104, null}
!1691 = distinct !DISubprogram(name: "error", scope: !480, file: !480, line: 285, type: !1692, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !104, !104, !134, null}
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DILocalVariable(name: "status", arg: 1, scope: !1691, file: !480, line: 285, type: !104)
!1696 = !DILocalVariable(name: "errnum", arg: 2, scope: !1691, file: !480, line: 285, type: !104)
!1697 = !DILocalVariable(name: "message", arg: 3, scope: !1691, file: !480, line: 285, type: !134)
!1698 = !DILocalVariable(name: "ap", scope: !1691, file: !480, line: 287, type: !490)
!1699 = distinct !DIAssignID()
!1700 = !DILocation(line: 0, scope: !1691)
!1701 = !DILocation(line: 287, column: 3, scope: !1691)
!1702 = !DILocation(line: 288, column: 3, scope: !1691)
!1703 = !DILocation(line: 289, column: 3, scope: !1691)
!1704 = !DILocation(line: 290, column: 3, scope: !1691)
!1705 = !DILocation(line: 291, column: 1, scope: !1691)
!1706 = !DILocation(line: 0, scope: !487)
!1707 = !DILocation(line: 302, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !487, file: !480, line: 302, column: 7)
!1709 = !DILocation(line: 302, column: 7, scope: !487)
!1710 = !DILocation(line: 307, column: 11, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !480, line: 307, column: 11)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !480, line: 303, column: 5)
!1713 = !DILocation(line: 307, column: 27, scope: !1711)
!1714 = !DILocation(line: 308, column: 11, scope: !1711)
!1715 = !DILocation(line: 308, column: 28, scope: !1711)
!1716 = !DILocation(line: 308, column: 25, scope: !1711)
!1717 = !DILocation(line: 309, column: 15, scope: !1711)
!1718 = !DILocation(line: 309, column: 33, scope: !1711)
!1719 = !DILocation(line: 310, column: 19, scope: !1711)
!1720 = !DILocation(line: 311, column: 22, scope: !1711)
!1721 = !DILocation(line: 311, column: 56, scope: !1711)
!1722 = !DILocation(line: 307, column: 11, scope: !1712)
!1723 = !DILocation(line: 316, column: 21, scope: !1712)
!1724 = !DILocation(line: 317, column: 23, scope: !1712)
!1725 = !DILocation(line: 318, column: 5, scope: !1712)
!1726 = !DILocation(line: 327, column: 3, scope: !487)
!1727 = !DILocation(line: 331, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !487, file: !480, line: 331, column: 7)
!1729 = !DILocation(line: 331, column: 7, scope: !487)
!1730 = !DILocation(line: 332, column: 5, scope: !1728)
!1731 = !DILocation(line: 338, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !480, line: 334, column: 5)
!1733 = !DILocation(line: 346, column: 3, scope: !487)
!1734 = !DILocation(line: 350, column: 3, scope: !487)
!1735 = !DILocation(line: 356, column: 1, scope: !487)
!1736 = distinct !DISubprogram(name: "error_at_line", scope: !480, file: !480, line: 359, type: !1737, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !104, !104, !134, !79, !134, null}
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745}
!1740 = !DILocalVariable(name: "status", arg: 1, scope: !1736, file: !480, line: 359, type: !104)
!1741 = !DILocalVariable(name: "errnum", arg: 2, scope: !1736, file: !480, line: 359, type: !104)
!1742 = !DILocalVariable(name: "file_name", arg: 3, scope: !1736, file: !480, line: 359, type: !134)
!1743 = !DILocalVariable(name: "line_number", arg: 4, scope: !1736, file: !480, line: 360, type: !79)
!1744 = !DILocalVariable(name: "message", arg: 5, scope: !1736, file: !480, line: 360, type: !134)
!1745 = !DILocalVariable(name: "ap", scope: !1736, file: !480, line: 362, type: !490)
!1746 = distinct !DIAssignID()
!1747 = !DILocation(line: 0, scope: !1736)
!1748 = !DILocation(line: 362, column: 3, scope: !1736)
!1749 = !DILocation(line: 363, column: 3, scope: !1736)
!1750 = !DILocation(line: 364, column: 3, scope: !1736)
!1751 = !DILocation(line: 366, column: 3, scope: !1736)
!1752 = !DILocation(line: 367, column: 1, scope: !1736)
!1753 = distinct !DISubprogram(name: "getprogname", scope: !798, file: !798, line: 54, type: !1754, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!134}
!1756 = !DILocation(line: 58, column: 10, scope: !1753)
!1757 = !DILocation(line: 58, column: 3, scope: !1753)
!1758 = distinct !DISubprogram(name: "set_program_name", scope: !532, file: !532, line: 37, type: !926, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DILocalVariable(name: "argv0", arg: 1, scope: !1758, file: !532, line: 37, type: !134)
!1761 = !DILocalVariable(name: "slash", scope: !1758, file: !532, line: 44, type: !134)
!1762 = !DILocalVariable(name: "base", scope: !1758, file: !532, line: 45, type: !134)
!1763 = !DILocation(line: 0, scope: !1758)
!1764 = !DILocation(line: 44, column: 23, scope: !1758)
!1765 = !DILocation(line: 45, column: 22, scope: !1758)
!1766 = !DILocation(line: 46, column: 17, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1758, file: !532, line: 46, column: 7)
!1768 = !DILocation(line: 46, column: 9, scope: !1767)
!1769 = !DILocation(line: 46, column: 25, scope: !1767)
!1770 = !DILocation(line: 46, column: 40, scope: !1767)
!1771 = !DILocalVariable(name: "__s1", arg: 1, scope: !1772, file: !988, line: 974, type: !1120)
!1772 = distinct !DISubprogram(name: "memeq", scope: !988, file: !988, line: 974, type: !1773, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!215, !1120, !1120, !131}
!1775 = !{!1771, !1776, !1777}
!1776 = !DILocalVariable(name: "__s2", arg: 2, scope: !1772, file: !988, line: 974, type: !1120)
!1777 = !DILocalVariable(name: "__n", arg: 3, scope: !1772, file: !988, line: 974, type: !131)
!1778 = !DILocation(line: 0, scope: !1772, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 46, column: 28, scope: !1767)
!1780 = !DILocation(line: 976, column: 11, scope: !1772, inlinedAt: !1779)
!1781 = !DILocation(line: 976, column: 10, scope: !1772, inlinedAt: !1779)
!1782 = !DILocation(line: 46, column: 7, scope: !1758)
!1783 = !DILocation(line: 49, column: 11, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !532, line: 49, column: 11)
!1785 = distinct !DILexicalBlock(scope: !1767, file: !532, line: 47, column: 5)
!1786 = !DILocation(line: 49, column: 36, scope: !1784)
!1787 = !DILocation(line: 49, column: 11, scope: !1785)
!1788 = !DILocation(line: 65, column: 16, scope: !1758)
!1789 = !DILocation(line: 71, column: 27, scope: !1758)
!1790 = !DILocation(line: 74, column: 33, scope: !1758)
!1791 = !DILocation(line: 76, column: 1, scope: !1758)
!1792 = !DISubprogram(name: "strrchr", scope: !1092, file: !1092, line: 273, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1793 = distinct !DIAssignID()
!1794 = !DILocation(line: 0, scope: !541)
!1795 = distinct !DIAssignID()
!1796 = !DILocation(line: 40, column: 29, scope: !541)
!1797 = !DILocation(line: 41, column: 19, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !541, file: !542, line: 41, column: 7)
!1799 = !DILocation(line: 41, column: 7, scope: !541)
!1800 = !DILocation(line: 47, column: 3, scope: !541)
!1801 = !DILocation(line: 48, column: 3, scope: !541)
!1802 = !DILocalVariable(name: "ps", arg: 1, scope: !1803, file: !1804, line: 1135, type: !1807)
!1803 = distinct !DISubprogram(name: "mbszero", scope: !1804, file: !1804, line: 1135, type: !1805, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1808)
!1804 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1808 = !{!1802}
!1809 = !DILocation(line: 0, scope: !1803, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 48, column: 18, scope: !541)
!1811 = !DILocalVariable(name: "__dest", arg: 1, scope: !1812, file: !1813, line: 57, type: !130)
!1812 = distinct !DISubprogram(name: "memset", scope: !1813, file: !1813, line: 57, type: !1814, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1816)
!1813 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!130, !130, !104, !131}
!1816 = !{!1811, !1817, !1818}
!1817 = !DILocalVariable(name: "__ch", arg: 2, scope: !1812, file: !1813, line: 57, type: !104)
!1818 = !DILocalVariable(name: "__len", arg: 3, scope: !1812, file: !1813, line: 57, type: !131)
!1819 = !DILocation(line: 0, scope: !1812, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 1137, column: 3, scope: !1803, inlinedAt: !1810)
!1821 = !DILocation(line: 59, column: 10, scope: !1812, inlinedAt: !1820)
!1822 = !DILocation(line: 49, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !541, file: !542, line: 49, column: 7)
!1824 = !DILocation(line: 49, column: 39, scope: !1823)
!1825 = !DILocation(line: 49, column: 44, scope: !1823)
!1826 = !DILocation(line: 54, column: 1, scope: !541)
!1827 = !DISubprogram(name: "mbrtoc32", scope: !553, file: !553, line: 57, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!131, !1830, !966, !131, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1807)
!1833 = distinct !DISubprogram(name: "clone_quoting_options", scope: !572, file: !572, line: 113, type: !1834, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1837)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1836, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "o", arg: 1, scope: !1833, file: !572, line: 113, type: !1836)
!1839 = !DILocalVariable(name: "saved_errno", scope: !1833, file: !572, line: 115, type: !104)
!1840 = !DILocalVariable(name: "p", scope: !1833, file: !572, line: 116, type: !1836)
!1841 = !DILocation(line: 0, scope: !1833)
!1842 = !DILocation(line: 115, column: 21, scope: !1833)
!1843 = !DILocation(line: 116, column: 40, scope: !1833)
!1844 = !DILocation(line: 116, column: 31, scope: !1833)
!1845 = !DILocation(line: 118, column: 9, scope: !1833)
!1846 = !DILocation(line: 119, column: 3, scope: !1833)
!1847 = distinct !DISubprogram(name: "get_quoting_style", scope: !572, file: !572, line: 124, type: !1848, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1852)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!598, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!1852 = !{!1853}
!1853 = !DILocalVariable(name: "o", arg: 1, scope: !1847, file: !572, line: 124, type: !1850)
!1854 = !DILocation(line: 0, scope: !1847)
!1855 = !DILocation(line: 126, column: 11, scope: !1847)
!1856 = !DILocation(line: 126, column: 46, scope: !1847)
!1857 = !{!1858, !976, i64 0}
!1858 = !{!"quoting_options", !976, i64 0, !976, i64 4, !906, i64 8, !905, i64 40, !905, i64 48}
!1859 = !DILocation(line: 126, column: 3, scope: !1847)
!1860 = distinct !DISubprogram(name: "set_quoting_style", scope: !572, file: !572, line: 132, type: !1861, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1836, !598}
!1863 = !{!1864, !1865}
!1864 = !DILocalVariable(name: "o", arg: 1, scope: !1860, file: !572, line: 132, type: !1836)
!1865 = !DILocalVariable(name: "s", arg: 2, scope: !1860, file: !572, line: 132, type: !598)
!1866 = !DILocation(line: 0, scope: !1860)
!1867 = !DILocation(line: 134, column: 4, scope: !1860)
!1868 = !DILocation(line: 134, column: 45, scope: !1860)
!1869 = !DILocation(line: 135, column: 1, scope: !1860)
!1870 = distinct !DISubprogram(name: "set_char_quoting", scope: !572, file: !572, line: 143, type: !1871, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!104, !1836, !4, !104}
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1880, !1881}
!1874 = !DILocalVariable(name: "o", arg: 1, scope: !1870, file: !572, line: 143, type: !1836)
!1875 = !DILocalVariable(name: "c", arg: 2, scope: !1870, file: !572, line: 143, type: !4)
!1876 = !DILocalVariable(name: "i", arg: 3, scope: !1870, file: !572, line: 143, type: !104)
!1877 = !DILocalVariable(name: "uc", scope: !1870, file: !572, line: 145, type: !136)
!1878 = !DILocalVariable(name: "p", scope: !1870, file: !572, line: 146, type: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1880 = !DILocalVariable(name: "shift", scope: !1870, file: !572, line: 148, type: !104)
!1881 = !DILocalVariable(name: "r", scope: !1870, file: !572, line: 149, type: !79)
!1882 = !DILocation(line: 0, scope: !1870)
!1883 = !DILocation(line: 147, column: 6, scope: !1870)
!1884 = !DILocation(line: 147, column: 41, scope: !1870)
!1885 = !DILocation(line: 147, column: 62, scope: !1870)
!1886 = !DILocation(line: 147, column: 57, scope: !1870)
!1887 = !DILocation(line: 148, column: 15, scope: !1870)
!1888 = !DILocation(line: 149, column: 21, scope: !1870)
!1889 = !DILocation(line: 149, column: 24, scope: !1870)
!1890 = !DILocation(line: 149, column: 34, scope: !1870)
!1891 = !DILocation(line: 150, column: 19, scope: !1870)
!1892 = !DILocation(line: 150, column: 24, scope: !1870)
!1893 = !DILocation(line: 150, column: 6, scope: !1870)
!1894 = !DILocation(line: 151, column: 3, scope: !1870)
!1895 = distinct !DISubprogram(name: "set_quoting_flags", scope: !572, file: !572, line: 159, type: !1896, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!104, !1836, !104}
!1898 = !{!1899, !1900, !1901}
!1899 = !DILocalVariable(name: "o", arg: 1, scope: !1895, file: !572, line: 159, type: !1836)
!1900 = !DILocalVariable(name: "i", arg: 2, scope: !1895, file: !572, line: 159, type: !104)
!1901 = !DILocalVariable(name: "r", scope: !1895, file: !572, line: 163, type: !104)
!1902 = !DILocation(line: 0, scope: !1895)
!1903 = !DILocation(line: 161, column: 8, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !572, line: 161, column: 7)
!1905 = !DILocation(line: 161, column: 7, scope: !1895)
!1906 = !DILocation(line: 163, column: 14, scope: !1895)
!1907 = !{!1858, !976, i64 4}
!1908 = !DILocation(line: 164, column: 12, scope: !1895)
!1909 = !DILocation(line: 165, column: 3, scope: !1895)
!1910 = distinct !DISubprogram(name: "set_custom_quoting", scope: !572, file: !572, line: 169, type: !1911, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1836, !134, !134}
!1913 = !{!1914, !1915, !1916}
!1914 = !DILocalVariable(name: "o", arg: 1, scope: !1910, file: !572, line: 169, type: !1836)
!1915 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1910, file: !572, line: 170, type: !134)
!1916 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1910, file: !572, line: 170, type: !134)
!1917 = !DILocation(line: 0, scope: !1910)
!1918 = !DILocation(line: 172, column: 8, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1910, file: !572, line: 172, column: 7)
!1920 = !DILocation(line: 172, column: 7, scope: !1910)
!1921 = !DILocation(line: 174, column: 12, scope: !1910)
!1922 = !DILocation(line: 175, column: 8, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1910, file: !572, line: 175, column: 7)
!1924 = !DILocation(line: 175, column: 19, scope: !1923)
!1925 = !DILocation(line: 176, column: 5, scope: !1923)
!1926 = !DILocation(line: 177, column: 6, scope: !1910)
!1927 = !DILocation(line: 177, column: 17, scope: !1910)
!1928 = !{!1858, !905, i64 40}
!1929 = !DILocation(line: 178, column: 6, scope: !1910)
!1930 = !DILocation(line: 178, column: 18, scope: !1910)
!1931 = !{!1858, !905, i64 48}
!1932 = !DILocation(line: 179, column: 1, scope: !1910)
!1933 = !DISubprogram(name: "abort", scope: !1096, file: !1096, line: 598, type: !527, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1934 = distinct !DISubprogram(name: "quotearg_buffer", scope: !572, file: !572, line: 774, type: !1935, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!131, !129, !131, !134, !131, !1850}
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1938 = !DILocalVariable(name: "buffer", arg: 1, scope: !1934, file: !572, line: 774, type: !129)
!1939 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1934, file: !572, line: 774, type: !131)
!1940 = !DILocalVariable(name: "arg", arg: 3, scope: !1934, file: !572, line: 775, type: !134)
!1941 = !DILocalVariable(name: "argsize", arg: 4, scope: !1934, file: !572, line: 775, type: !131)
!1942 = !DILocalVariable(name: "o", arg: 5, scope: !1934, file: !572, line: 776, type: !1850)
!1943 = !DILocalVariable(name: "p", scope: !1934, file: !572, line: 778, type: !1850)
!1944 = !DILocalVariable(name: "saved_errno", scope: !1934, file: !572, line: 779, type: !104)
!1945 = !DILocalVariable(name: "r", scope: !1934, file: !572, line: 780, type: !131)
!1946 = !DILocation(line: 0, scope: !1934)
!1947 = !DILocation(line: 778, column: 37, scope: !1934)
!1948 = !DILocation(line: 779, column: 21, scope: !1934)
!1949 = !DILocation(line: 781, column: 43, scope: !1934)
!1950 = !DILocation(line: 781, column: 53, scope: !1934)
!1951 = !DILocation(line: 781, column: 63, scope: !1934)
!1952 = !DILocation(line: 782, column: 43, scope: !1934)
!1953 = !DILocation(line: 782, column: 58, scope: !1934)
!1954 = !DILocation(line: 780, column: 14, scope: !1934)
!1955 = !DILocation(line: 783, column: 9, scope: !1934)
!1956 = !DILocation(line: 784, column: 3, scope: !1934)
!1957 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !572, file: !572, line: 251, type: !1958, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1962)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!131, !129, !131, !134, !131, !598, !104, !1960, !134, !134}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1988, !1990, !1993, !1994, !1995, !1996, !1999, !2000, !2002, !2003, !2006, !2010, !2011, !2019, !2022, !2023, !2024}
!1963 = !DILocalVariable(name: "buffer", arg: 1, scope: !1957, file: !572, line: 251, type: !129)
!1964 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1957, file: !572, line: 251, type: !131)
!1965 = !DILocalVariable(name: "arg", arg: 3, scope: !1957, file: !572, line: 252, type: !134)
!1966 = !DILocalVariable(name: "argsize", arg: 4, scope: !1957, file: !572, line: 252, type: !131)
!1967 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1957, file: !572, line: 253, type: !598)
!1968 = !DILocalVariable(name: "flags", arg: 6, scope: !1957, file: !572, line: 253, type: !104)
!1969 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1957, file: !572, line: 254, type: !1960)
!1970 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1957, file: !572, line: 255, type: !134)
!1971 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1957, file: !572, line: 256, type: !134)
!1972 = !DILocalVariable(name: "unibyte_locale", scope: !1957, file: !572, line: 258, type: !215)
!1973 = !DILocalVariable(name: "len", scope: !1957, file: !572, line: 260, type: !131)
!1974 = !DILocalVariable(name: "orig_buffersize", scope: !1957, file: !572, line: 261, type: !131)
!1975 = !DILocalVariable(name: "quote_string", scope: !1957, file: !572, line: 262, type: !134)
!1976 = !DILocalVariable(name: "quote_string_len", scope: !1957, file: !572, line: 263, type: !131)
!1977 = !DILocalVariable(name: "backslash_escapes", scope: !1957, file: !572, line: 264, type: !215)
!1978 = !DILocalVariable(name: "elide_outer_quotes", scope: !1957, file: !572, line: 265, type: !215)
!1979 = !DILocalVariable(name: "encountered_single_quote", scope: !1957, file: !572, line: 266, type: !215)
!1980 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1957, file: !572, line: 267, type: !215)
!1981 = !DILabel(scope: !1957, name: "process_input", file: !572, line: 308)
!1982 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1957, file: !572, line: 309, type: !215)
!1983 = !DILocalVariable(name: "lq", scope: !1984, file: !572, line: 361, type: !134)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !572, line: 361, column: 11)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !572, line: 360, column: 13)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !572, line: 333, column: 7)
!1987 = distinct !DILexicalBlock(scope: !1957, file: !572, line: 312, column: 5)
!1988 = !DILocalVariable(name: "i", scope: !1989, file: !572, line: 395, type: !131)
!1989 = distinct !DILexicalBlock(scope: !1957, file: !572, line: 395, column: 3)
!1990 = !DILocalVariable(name: "is_right_quote", scope: !1991, file: !572, line: 397, type: !215)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !572, line: 396, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !572, line: 395, column: 3)
!1993 = !DILocalVariable(name: "escaping", scope: !1991, file: !572, line: 398, type: !215)
!1994 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1991, file: !572, line: 399, type: !215)
!1995 = !DILocalVariable(name: "c", scope: !1991, file: !572, line: 417, type: !136)
!1996 = !DILabel(scope: !1997, name: "c_and_shell_escape", file: !572, line: 502)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 478, column: 9)
!1998 = distinct !DILexicalBlock(scope: !1991, file: !572, line: 419, column: 9)
!1999 = !DILabel(scope: !1997, name: "c_escape", file: !572, line: 507)
!2000 = !DILocalVariable(name: "m", scope: !2001, file: !572, line: 598, type: !131)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 596, column: 11)
!2002 = !DILocalVariable(name: "printable", scope: !2001, file: !572, line: 600, type: !215)
!2003 = !DILocalVariable(name: "mbs", scope: !2004, file: !572, line: 609, type: !647)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !572, line: 608, column: 15)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !572, line: 602, column: 17)
!2006 = !DILocalVariable(name: "w", scope: !2007, file: !572, line: 618, type: !552)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !572, line: 617, column: 19)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !572, line: 616, column: 17)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !572, line: 616, column: 17)
!2010 = !DILocalVariable(name: "bytes", scope: !2007, file: !572, line: 619, type: !131)
!2011 = !DILocalVariable(name: "j", scope: !2012, file: !572, line: 648, type: !131)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !572, line: 648, column: 29)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !572, line: 647, column: 27)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !572, line: 645, column: 29)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !572, line: 636, column: 23)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !572, line: 628, column: 30)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !572, line: 623, column: 30)
!2018 = distinct !DILexicalBlock(scope: !2007, file: !572, line: 621, column: 25)
!2019 = !DILocalVariable(name: "ilim", scope: !2020, file: !572, line: 674, type: !131)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !572, line: 671, column: 15)
!2021 = distinct !DILexicalBlock(scope: !2001, file: !572, line: 670, column: 17)
!2022 = !DILabel(scope: !1991, name: "store_escape", file: !572, line: 709)
!2023 = !DILabel(scope: !1991, name: "store_c", file: !572, line: 712)
!2024 = !DILabel(scope: !1957, name: "force_outer_quoting_style", file: !572, line: 753)
!2025 = distinct !DIAssignID()
!2026 = distinct !DIAssignID()
!2027 = distinct !DIAssignID()
!2028 = distinct !DIAssignID()
!2029 = distinct !DIAssignID()
!2030 = !DILocation(line: 0, scope: !2004)
!2031 = distinct !DIAssignID()
!2032 = !DILocation(line: 0, scope: !2007)
!2033 = !DILocation(line: 0, scope: !1957)
!2034 = !DILocation(line: 258, column: 25, scope: !1957)
!2035 = !DILocation(line: 258, column: 36, scope: !1957)
!2036 = !DILocation(line: 267, column: 3, scope: !1957)
!2037 = !DILocation(line: 261, column: 10, scope: !1957)
!2038 = !DILocation(line: 262, column: 15, scope: !1957)
!2039 = !DILocation(line: 263, column: 10, scope: !1957)
!2040 = !DILocation(line: 308, column: 2, scope: !1957)
!2041 = !DILocation(line: 311, column: 3, scope: !1957)
!2042 = !DILocation(line: 318, column: 11, scope: !1987)
!2043 = !DILocation(line: 319, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !572, line: 319, column: 9)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !572, line: 319, column: 9)
!2046 = distinct !DILexicalBlock(scope: !1987, file: !572, line: 318, column: 11)
!2047 = !DILocation(line: 319, column: 9, scope: !2045)
!2048 = !DILocation(line: 0, scope: !638, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 357, column: 26, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !572, line: 335, column: 11)
!2051 = distinct !DILexicalBlock(scope: !1986, file: !572, line: 334, column: 13)
!2052 = !DILocation(line: 199, column: 29, scope: !638, inlinedAt: !2049)
!2053 = !DILocation(line: 201, column: 19, scope: !2054, inlinedAt: !2049)
!2054 = distinct !DILexicalBlock(scope: !638, file: !572, line: 201, column: 7)
!2055 = !DILocation(line: 201, column: 7, scope: !638, inlinedAt: !2049)
!2056 = !DILocation(line: 229, column: 3, scope: !638, inlinedAt: !2049)
!2057 = !DILocation(line: 230, column: 3, scope: !638, inlinedAt: !2049)
!2058 = !DILocalVariable(name: "ps", arg: 1, scope: !2059, file: !1804, line: 1135, type: !2062)
!2059 = distinct !DISubprogram(name: "mbszero", scope: !1804, file: !1804, line: 1135, type: !2060, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2063)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!2063 = !{!2058}
!2064 = !DILocation(line: 0, scope: !2059, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 230, column: 18, scope: !638, inlinedAt: !2049)
!2066 = !DILocalVariable(name: "__dest", arg: 1, scope: !2067, file: !1813, line: 57, type: !130)
!2067 = distinct !DISubprogram(name: "memset", scope: !1813, file: !1813, line: 57, type: !1814, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2068)
!2068 = !{!2066, !2069, !2070}
!2069 = !DILocalVariable(name: "__ch", arg: 2, scope: !2067, file: !1813, line: 57, type: !104)
!2070 = !DILocalVariable(name: "__len", arg: 3, scope: !2067, file: !1813, line: 57, type: !131)
!2071 = !DILocation(line: 0, scope: !2067, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 1137, column: 3, scope: !2059, inlinedAt: !2065)
!2073 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2072)
!2074 = !DILocation(line: 231, column: 7, scope: !2075, inlinedAt: !2049)
!2075 = distinct !DILexicalBlock(scope: !638, file: !572, line: 231, column: 7)
!2076 = !DILocation(line: 231, column: 40, scope: !2075, inlinedAt: !2049)
!2077 = !DILocation(line: 231, column: 45, scope: !2075, inlinedAt: !2049)
!2078 = !DILocation(line: 235, column: 1, scope: !638, inlinedAt: !2049)
!2079 = !DILocation(line: 0, scope: !638, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 358, column: 27, scope: !2050)
!2081 = !DILocation(line: 199, column: 29, scope: !638, inlinedAt: !2080)
!2082 = !DILocation(line: 201, column: 19, scope: !2054, inlinedAt: !2080)
!2083 = !DILocation(line: 201, column: 7, scope: !638, inlinedAt: !2080)
!2084 = !DILocation(line: 229, column: 3, scope: !638, inlinedAt: !2080)
!2085 = !DILocation(line: 230, column: 3, scope: !638, inlinedAt: !2080)
!2086 = !DILocation(line: 0, scope: !2059, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 230, column: 18, scope: !638, inlinedAt: !2080)
!2088 = !DILocation(line: 0, scope: !2067, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 1137, column: 3, scope: !2059, inlinedAt: !2087)
!2090 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2089)
!2091 = !DILocation(line: 231, column: 7, scope: !2075, inlinedAt: !2080)
!2092 = !DILocation(line: 231, column: 40, scope: !2075, inlinedAt: !2080)
!2093 = !DILocation(line: 231, column: 45, scope: !2075, inlinedAt: !2080)
!2094 = !DILocation(line: 235, column: 1, scope: !638, inlinedAt: !2080)
!2095 = !DILocation(line: 360, column: 13, scope: !1986)
!2096 = !DILocation(line: 0, scope: !1984)
!2097 = !DILocation(line: 361, column: 45, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1984, file: !572, line: 361, column: 11)
!2099 = !DILocation(line: 361, column: 11, scope: !1984)
!2100 = !DILocation(line: 362, column: 13, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !572, line: 362, column: 13)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !572, line: 362, column: 13)
!2103 = !DILocation(line: 362, column: 13, scope: !2102)
!2104 = !DILocation(line: 361, column: 52, scope: !2098)
!2105 = distinct !{!2105, !2099, !2106, !1022}
!2106 = !DILocation(line: 362, column: 13, scope: !1984)
!2107 = !DILocation(line: 365, column: 28, scope: !1986)
!2108 = !DILocation(line: 260, column: 10, scope: !1957)
!2109 = !DILocation(line: 367, column: 7, scope: !1987)
!2110 = !DILocation(line: 373, column: 7, scope: !1987)
!2111 = !DILocation(line: 381, column: 11, scope: !1987)
!2112 = !DILocation(line: 376, column: 11, scope: !1987)
!2113 = !DILocation(line: 382, column: 9, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !572, line: 382, column: 9)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !572, line: 382, column: 9)
!2116 = distinct !DILexicalBlock(scope: !1987, file: !572, line: 381, column: 11)
!2117 = !DILocation(line: 382, column: 9, scope: !2115)
!2118 = !DILocation(line: 389, column: 7, scope: !1987)
!2119 = !DILocation(line: 392, column: 7, scope: !1987)
!2120 = !DILocation(line: 0, scope: !1989)
!2121 = !DILocation(line: 395, column: 8, scope: !1989)
!2122 = !DILocation(line: 395, scope: !1989)
!2123 = !DILocation(line: 395, column: 34, scope: !1992)
!2124 = !DILocation(line: 395, column: 26, scope: !1992)
!2125 = !DILocation(line: 395, column: 48, scope: !1992)
!2126 = !DILocation(line: 395, column: 55, scope: !1992)
!2127 = !DILocation(line: 395, column: 3, scope: !1989)
!2128 = !DILocation(line: 395, column: 67, scope: !1992)
!2129 = !DILocation(line: 0, scope: !1991)
!2130 = !DILocation(line: 402, column: 11, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1991, file: !572, line: 401, column: 11)
!2132 = !DILocation(line: 404, column: 17, scope: !2131)
!2133 = !DILocation(line: 405, column: 39, scope: !2131)
!2134 = !DILocation(line: 409, column: 32, scope: !2131)
!2135 = !DILocation(line: 405, column: 19, scope: !2131)
!2136 = !DILocation(line: 405, column: 15, scope: !2131)
!2137 = !DILocation(line: 410, column: 11, scope: !2131)
!2138 = !DILocation(line: 410, column: 25, scope: !2131)
!2139 = !DILocalVariable(name: "__s1", arg: 1, scope: !2140, file: !988, line: 974, type: !1120)
!2140 = distinct !DISubprogram(name: "memeq", scope: !988, file: !988, line: 974, type: !1773, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2141)
!2141 = !{!2139, !2142, !2143}
!2142 = !DILocalVariable(name: "__s2", arg: 2, scope: !2140, file: !988, line: 974, type: !1120)
!2143 = !DILocalVariable(name: "__n", arg: 3, scope: !2140, file: !988, line: 974, type: !131)
!2144 = !DILocation(line: 0, scope: !2140, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 410, column: 14, scope: !2131)
!2146 = !DILocation(line: 976, column: 11, scope: !2140, inlinedAt: !2145)
!2147 = !DILocation(line: 976, column: 10, scope: !2140, inlinedAt: !2145)
!2148 = !DILocation(line: 401, column: 11, scope: !1991)
!2149 = !DILocation(line: 417, column: 25, scope: !1991)
!2150 = !DILocation(line: 418, column: 7, scope: !1991)
!2151 = !DILocation(line: 421, column: 15, scope: !1998)
!2152 = !DILocation(line: 423, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !572, line: 423, column: 15)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !572, line: 422, column: 13)
!2155 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 421, column: 15)
!2156 = !DILocation(line: 423, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !572, line: 423, column: 15)
!2158 = !DILocation(line: 423, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !572, line: 423, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !572, line: 423, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !572, line: 423, column: 15)
!2162 = !DILocation(line: 423, column: 15, scope: !2160)
!2163 = !DILocation(line: 423, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !572, line: 423, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !572, line: 423, column: 15)
!2166 = !DILocation(line: 423, column: 15, scope: !2165)
!2167 = !DILocation(line: 423, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !572, line: 423, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !572, line: 423, column: 15)
!2170 = !DILocation(line: 423, column: 15, scope: !2169)
!2171 = !DILocation(line: 423, column: 15, scope: !2161)
!2172 = !DILocation(line: 423, column: 15, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !572, line: 423, column: 15)
!2174 = distinct !DILexicalBlock(scope: !2153, file: !572, line: 423, column: 15)
!2175 = !DILocation(line: 423, column: 15, scope: !2174)
!2176 = !DILocation(line: 431, column: 19, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2154, file: !572, line: 430, column: 19)
!2178 = !DILocation(line: 431, column: 24, scope: !2177)
!2179 = !DILocation(line: 431, column: 28, scope: !2177)
!2180 = !DILocation(line: 431, column: 38, scope: !2177)
!2181 = !DILocation(line: 431, column: 48, scope: !2177)
!2182 = !DILocation(line: 431, column: 59, scope: !2177)
!2183 = !DILocation(line: 433, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !572, line: 433, column: 19)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !572, line: 433, column: 19)
!2186 = distinct !DILexicalBlock(scope: !2177, file: !572, line: 432, column: 17)
!2187 = !DILocation(line: 433, column: 19, scope: !2185)
!2188 = !DILocation(line: 434, column: 19, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !572, line: 434, column: 19)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !572, line: 434, column: 19)
!2191 = !DILocation(line: 434, column: 19, scope: !2190)
!2192 = !DILocation(line: 435, column: 17, scope: !2186)
!2193 = !DILocation(line: 442, column: 20, scope: !2155)
!2194 = !DILocation(line: 447, column: 11, scope: !1998)
!2195 = !DILocation(line: 450, column: 19, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 448, column: 13)
!2197 = !DILocation(line: 456, column: 19, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2196, file: !572, line: 455, column: 19)
!2199 = !DILocation(line: 456, column: 24, scope: !2198)
!2200 = !DILocation(line: 456, column: 28, scope: !2198)
!2201 = !DILocation(line: 456, column: 38, scope: !2198)
!2202 = !DILocation(line: 456, column: 41, scope: !2198)
!2203 = !DILocation(line: 456, column: 52, scope: !2198)
!2204 = !DILocation(line: 455, column: 19, scope: !2196)
!2205 = !DILocation(line: 457, column: 25, scope: !2198)
!2206 = !DILocation(line: 457, column: 17, scope: !2198)
!2207 = !DILocation(line: 464, column: 25, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2198, file: !572, line: 458, column: 19)
!2209 = !DILocation(line: 468, column: 21, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !572, line: 468, column: 21)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !572, line: 468, column: 21)
!2212 = !DILocation(line: 468, column: 21, scope: !2211)
!2213 = !DILocation(line: 469, column: 21, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !572, line: 469, column: 21)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !572, line: 469, column: 21)
!2216 = !DILocation(line: 469, column: 21, scope: !2215)
!2217 = !DILocation(line: 470, column: 21, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !572, line: 470, column: 21)
!2219 = distinct !DILexicalBlock(scope: !2208, file: !572, line: 470, column: 21)
!2220 = !DILocation(line: 470, column: 21, scope: !2219)
!2221 = !DILocation(line: 471, column: 21, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !572, line: 471, column: 21)
!2223 = distinct !DILexicalBlock(scope: !2208, file: !572, line: 471, column: 21)
!2224 = !DILocation(line: 471, column: 21, scope: !2223)
!2225 = !DILocation(line: 472, column: 21, scope: !2208)
!2226 = !DILocation(line: 482, column: 33, scope: !1997)
!2227 = !DILocation(line: 483, column: 33, scope: !1997)
!2228 = !DILocation(line: 485, column: 33, scope: !1997)
!2229 = !DILocation(line: 486, column: 33, scope: !1997)
!2230 = !DILocation(line: 487, column: 33, scope: !1997)
!2231 = !DILocation(line: 490, column: 17, scope: !1997)
!2232 = !DILocation(line: 492, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !572, line: 491, column: 15)
!2234 = distinct !DILexicalBlock(scope: !1997, file: !572, line: 490, column: 17)
!2235 = !DILocation(line: 499, column: 35, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !1997, file: !572, line: 499, column: 17)
!2237 = !DILocation(line: 0, scope: !1997)
!2238 = !DILocation(line: 502, column: 11, scope: !1997)
!2239 = !DILocation(line: 504, column: 17, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1997, file: !572, line: 503, column: 17)
!2241 = !DILocation(line: 507, column: 11, scope: !1997)
!2242 = !DILocation(line: 508, column: 17, scope: !1997)
!2243 = !DILocation(line: 517, column: 15, scope: !1998)
!2244 = !DILocation(line: 517, column: 40, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 517, column: 15)
!2246 = !DILocation(line: 517, column: 47, scope: !2245)
!2247 = !DILocation(line: 517, column: 18, scope: !2245)
!2248 = !DILocation(line: 521, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 521, column: 15)
!2250 = !DILocation(line: 521, column: 15, scope: !1998)
!2251 = !DILocation(line: 525, column: 11, scope: !1998)
!2252 = !DILocation(line: 537, column: 15, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 536, column: 15)
!2254 = !DILocation(line: 536, column: 15, scope: !1998)
!2255 = !DILocation(line: 544, column: 15, scope: !1998)
!2256 = !DILocation(line: 546, column: 19, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !572, line: 545, column: 13)
!2258 = distinct !DILexicalBlock(scope: !1998, file: !572, line: 544, column: 15)
!2259 = !DILocation(line: 549, column: 19, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !572, line: 549, column: 19)
!2261 = !DILocation(line: 549, column: 30, scope: !2260)
!2262 = !DILocation(line: 558, column: 15, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !572, line: 558, column: 15)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !572, line: 558, column: 15)
!2265 = !DILocation(line: 558, column: 15, scope: !2264)
!2266 = !DILocation(line: 559, column: 15, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !572, line: 559, column: 15)
!2268 = distinct !DILexicalBlock(scope: !2257, file: !572, line: 559, column: 15)
!2269 = !DILocation(line: 559, column: 15, scope: !2268)
!2270 = !DILocation(line: 560, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !572, line: 560, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2257, file: !572, line: 560, column: 15)
!2273 = !DILocation(line: 560, column: 15, scope: !2272)
!2274 = !DILocation(line: 562, column: 13, scope: !2257)
!2275 = !DILocation(line: 602, column: 17, scope: !2001)
!2276 = !DILocation(line: 0, scope: !2001)
!2277 = !DILocation(line: 605, column: 29, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2005, file: !572, line: 603, column: 15)
!2279 = !DILocation(line: 605, column: 41, scope: !2278)
!2280 = !DILocation(line: 606, column: 15, scope: !2278)
!2281 = !DILocation(line: 609, column: 17, scope: !2004)
!2282 = !DILocation(line: 0, scope: !2059, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 609, column: 32, scope: !2004)
!2284 = !DILocation(line: 0, scope: !2067, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 1137, column: 3, scope: !2059, inlinedAt: !2283)
!2286 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2285)
!2287 = !DILocation(line: 613, column: 29, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2004, file: !572, line: 613, column: 21)
!2289 = !DILocation(line: 613, column: 21, scope: !2004)
!2290 = !DILocation(line: 614, column: 29, scope: !2288)
!2291 = !DILocation(line: 614, column: 19, scope: !2288)
!2292 = !DILocation(line: 618, column: 21, scope: !2007)
!2293 = !DILocation(line: 620, column: 54, scope: !2007)
!2294 = !DILocation(line: 619, column: 36, scope: !2007)
!2295 = !DILocation(line: 621, column: 25, scope: !2007)
!2296 = !DILocation(line: 631, column: 38, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2016, file: !572, line: 629, column: 23)
!2298 = !DILocation(line: 631, column: 48, scope: !2297)
!2299 = !DILocation(line: 631, column: 25, scope: !2297)
!2300 = !DILocation(line: 626, column: 25, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2017, file: !572, line: 624, column: 23)
!2302 = !DILocation(line: 631, column: 51, scope: !2297)
!2303 = !DILocation(line: 632, column: 28, scope: !2297)
!2304 = !DILocation(line: 631, column: 34, scope: !2297)
!2305 = distinct !{!2305, !2299, !2303, !1022}
!2306 = !DILocation(line: 0, scope: !2012)
!2307 = !DILocation(line: 646, column: 29, scope: !2014)
!2308 = !DILocation(line: 648, column: 29, scope: !2012)
!2309 = !DILocation(line: 649, column: 39, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2012, file: !572, line: 648, column: 29)
!2311 = !DILocation(line: 649, column: 31, scope: !2310)
!2312 = !DILocation(line: 648, column: 60, scope: !2310)
!2313 = !DILocation(line: 648, column: 50, scope: !2310)
!2314 = distinct !{!2314, !2308, !2315, !1022}
!2315 = !DILocation(line: 654, column: 33, scope: !2012)
!2316 = !DILocation(line: 657, column: 43, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2015, file: !572, line: 657, column: 29)
!2318 = !DILocalVariable(name: "wc", arg: 1, scope: !2319, file: !2320, line: 865, type: !2323)
!2319 = distinct !DISubprogram(name: "c32isprint", scope: !2320, file: !2320, line: 865, type: !2321, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2325)
!2320 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!104, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2324, line: 20, baseType: !79)
!2324 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2325 = !{!2318}
!2326 = !DILocation(line: 0, scope: !2319, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 657, column: 31, scope: !2317)
!2328 = !DILocation(line: 871, column: 10, scope: !2319, inlinedAt: !2327)
!2329 = !DILocation(line: 657, column: 31, scope: !2317)
!2330 = !DILocation(line: 664, column: 23, scope: !2007)
!2331 = !DILocation(line: 665, column: 19, scope: !2008)
!2332 = !DILocation(line: 666, column: 15, scope: !2005)
!2333 = !DILocation(line: 753, column: 2, scope: !1957)
!2334 = !DILocation(line: 756, column: 51, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !1957, file: !572, line: 756, column: 7)
!2336 = !DILocation(line: 0, scope: !2005)
!2337 = !DILocation(line: 670, column: 19, scope: !2021)
!2338 = !DILocation(line: 670, column: 23, scope: !2021)
!2339 = !DILocation(line: 674, column: 33, scope: !2020)
!2340 = !DILocation(line: 0, scope: !2020)
!2341 = !DILocation(line: 676, column: 17, scope: !2020)
!2342 = !DILocation(line: 678, column: 43, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !572, line: 678, column: 25)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !572, line: 677, column: 19)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !572, line: 676, column: 17)
!2346 = distinct !DILexicalBlock(scope: !2020, file: !572, line: 676, column: 17)
!2347 = !DILocation(line: 680, column: 25, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !572, line: 680, column: 25)
!2349 = distinct !DILexicalBlock(scope: !2343, file: !572, line: 679, column: 23)
!2350 = !DILocation(line: 680, column: 25, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !572, line: 680, column: 25)
!2352 = !DILocation(line: 680, column: 25, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !572, line: 680, column: 25)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !572, line: 680, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !572, line: 680, column: 25)
!2356 = !DILocation(line: 680, column: 25, scope: !2354)
!2357 = !DILocation(line: 680, column: 25, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !572, line: 680, column: 25)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !572, line: 680, column: 25)
!2360 = !DILocation(line: 680, column: 25, scope: !2359)
!2361 = !DILocation(line: 680, column: 25, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !572, line: 680, column: 25)
!2363 = distinct !DILexicalBlock(scope: !2355, file: !572, line: 680, column: 25)
!2364 = !DILocation(line: 680, column: 25, scope: !2363)
!2365 = !DILocation(line: 680, column: 25, scope: !2355)
!2366 = !DILocation(line: 680, column: 25, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !572, line: 680, column: 25)
!2368 = distinct !DILexicalBlock(scope: !2348, file: !572, line: 680, column: 25)
!2369 = !DILocation(line: 680, column: 25, scope: !2368)
!2370 = !DILocation(line: 681, column: 25, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !572, line: 681, column: 25)
!2372 = distinct !DILexicalBlock(scope: !2349, file: !572, line: 681, column: 25)
!2373 = !DILocation(line: 681, column: 25, scope: !2372)
!2374 = !DILocation(line: 682, column: 25, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !572, line: 682, column: 25)
!2376 = distinct !DILexicalBlock(scope: !2349, file: !572, line: 682, column: 25)
!2377 = !DILocation(line: 682, column: 25, scope: !2376)
!2378 = !DILocation(line: 683, column: 38, scope: !2349)
!2379 = !DILocation(line: 683, column: 33, scope: !2349)
!2380 = !DILocation(line: 684, column: 23, scope: !2349)
!2381 = !DILocation(line: 685, column: 30, scope: !2343)
!2382 = !DILocation(line: 687, column: 25, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !572, line: 687, column: 25)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !572, line: 687, column: 25)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !572, line: 686, column: 23)
!2386 = distinct !DILexicalBlock(scope: !2343, file: !572, line: 685, column: 30)
!2387 = !DILocation(line: 687, column: 25, scope: !2384)
!2388 = !DILocation(line: 689, column: 23, scope: !2385)
!2389 = !DILocation(line: 690, column: 35, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2344, file: !572, line: 690, column: 25)
!2391 = !DILocation(line: 690, column: 30, scope: !2390)
!2392 = !DILocation(line: 690, column: 25, scope: !2344)
!2393 = !DILocation(line: 692, column: 21, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !572, line: 692, column: 21)
!2395 = distinct !DILexicalBlock(scope: !2344, file: !572, line: 692, column: 21)
!2396 = !DILocation(line: 692, column: 21, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !572, line: 692, column: 21)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !572, line: 692, column: 21)
!2399 = distinct !DILexicalBlock(scope: !2394, file: !572, line: 692, column: 21)
!2400 = !DILocation(line: 692, column: 21, scope: !2398)
!2401 = !DILocation(line: 692, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !572, line: 692, column: 21)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !572, line: 692, column: 21)
!2404 = !DILocation(line: 692, column: 21, scope: !2403)
!2405 = !DILocation(line: 692, column: 21, scope: !2399)
!2406 = !DILocation(line: 0, scope: !2344)
!2407 = !DILocation(line: 693, column: 21, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !572, line: 693, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2344, file: !572, line: 693, column: 21)
!2410 = !DILocation(line: 693, column: 21, scope: !2409)
!2411 = !DILocation(line: 694, column: 25, scope: !2344)
!2412 = !DILocation(line: 676, column: 17, scope: !2345)
!2413 = distinct !{!2413, !2414, !2415}
!2414 = !DILocation(line: 676, column: 17, scope: !2346)
!2415 = !DILocation(line: 695, column: 19, scope: !2346)
!2416 = !DILocation(line: 409, column: 30, scope: !2131)
!2417 = !DILocation(line: 702, column: 34, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !1991, file: !572, line: 702, column: 11)
!2419 = !DILocation(line: 704, column: 14, scope: !2418)
!2420 = !DILocation(line: 705, column: 14, scope: !2418)
!2421 = !DILocation(line: 705, column: 35, scope: !2418)
!2422 = !DILocation(line: 705, column: 17, scope: !2418)
!2423 = !DILocation(line: 705, column: 47, scope: !2418)
!2424 = !DILocation(line: 705, column: 65, scope: !2418)
!2425 = !DILocation(line: 706, column: 11, scope: !2418)
!2426 = !DILocation(line: 702, column: 11, scope: !1991)
!2427 = !DILocation(line: 395, column: 15, scope: !1989)
!2428 = !DILocation(line: 709, column: 5, scope: !1991)
!2429 = !DILocation(line: 710, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !1991, file: !572, line: 710, column: 7)
!2431 = !DILocation(line: 710, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2430, file: !572, line: 710, column: 7)
!2433 = !DILocation(line: 710, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !572, line: 710, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !572, line: 710, column: 7)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !572, line: 710, column: 7)
!2437 = !DILocation(line: 710, column: 7, scope: !2435)
!2438 = !DILocation(line: 710, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !572, line: 710, column: 7)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !572, line: 710, column: 7)
!2441 = !DILocation(line: 710, column: 7, scope: !2440)
!2442 = !DILocation(line: 710, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !572, line: 710, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2436, file: !572, line: 710, column: 7)
!2445 = !DILocation(line: 710, column: 7, scope: !2444)
!2446 = !DILocation(line: 710, column: 7, scope: !2436)
!2447 = !DILocation(line: 710, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !572, line: 710, column: 7)
!2449 = distinct !DILexicalBlock(scope: !2430, file: !572, line: 710, column: 7)
!2450 = !DILocation(line: 710, column: 7, scope: !2449)
!2451 = !DILocation(line: 712, column: 5, scope: !1991)
!2452 = !DILocation(line: 713, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !572, line: 713, column: 7)
!2454 = distinct !DILexicalBlock(scope: !1991, file: !572, line: 713, column: 7)
!2455 = !DILocation(line: 417, column: 21, scope: !1991)
!2456 = !DILocation(line: 713, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !572, line: 713, column: 7)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !572, line: 713, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2453, file: !572, line: 713, column: 7)
!2460 = !DILocation(line: 713, column: 7, scope: !2458)
!2461 = !DILocation(line: 713, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !572, line: 713, column: 7)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !572, line: 713, column: 7)
!2464 = !DILocation(line: 713, column: 7, scope: !2463)
!2465 = !DILocation(line: 713, column: 7, scope: !2459)
!2466 = !DILocation(line: 714, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !572, line: 714, column: 7)
!2468 = distinct !DILexicalBlock(scope: !1991, file: !572, line: 714, column: 7)
!2469 = !DILocation(line: 714, column: 7, scope: !2468)
!2470 = !DILocation(line: 716, column: 11, scope: !1991)
!2471 = !DILocation(line: 718, column: 5, scope: !1992)
!2472 = !DILocation(line: 395, column: 82, scope: !1992)
!2473 = !DILocation(line: 395, column: 3, scope: !1992)
!2474 = distinct !{!2474, !2127, !2475, !1022}
!2475 = !DILocation(line: 718, column: 5, scope: !1989)
!2476 = !DILocation(line: 720, column: 11, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !1957, file: !572, line: 720, column: 7)
!2478 = !DILocation(line: 720, column: 16, scope: !2477)
!2479 = !DILocation(line: 728, column: 51, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !1957, file: !572, line: 728, column: 7)
!2481 = !DILocation(line: 731, column: 11, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2480, file: !572, line: 730, column: 5)
!2483 = !DILocation(line: 732, column: 16, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2482, file: !572, line: 731, column: 11)
!2485 = !DILocation(line: 732, column: 9, scope: !2484)
!2486 = !DILocation(line: 736, column: 18, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !572, line: 736, column: 16)
!2488 = !DILocation(line: 736, column: 29, scope: !2487)
!2489 = !DILocation(line: 745, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !1957, file: !572, line: 745, column: 7)
!2491 = !DILocation(line: 745, column: 20, scope: !2490)
!2492 = !DILocation(line: 746, column: 12, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !572, line: 746, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !572, line: 746, column: 5)
!2495 = !DILocation(line: 746, column: 5, scope: !2494)
!2496 = !DILocation(line: 747, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !572, line: 747, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !572, line: 747, column: 7)
!2499 = !DILocation(line: 747, column: 7, scope: !2498)
!2500 = !DILocation(line: 746, column: 39, scope: !2493)
!2501 = distinct !{!2501, !2495, !2502, !1022}
!2502 = !DILocation(line: 747, column: 7, scope: !2494)
!2503 = !DILocation(line: 749, column: 11, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !1957, file: !572, line: 749, column: 7)
!2505 = !DILocation(line: 749, column: 7, scope: !1957)
!2506 = !DILocation(line: 750, column: 5, scope: !2504)
!2507 = !DILocation(line: 750, column: 17, scope: !2504)
!2508 = !DILocation(line: 756, column: 21, scope: !2335)
!2509 = !DILocation(line: 760, column: 42, scope: !1957)
!2510 = !DILocation(line: 758, column: 10, scope: !1957)
!2511 = !DILocation(line: 758, column: 3, scope: !1957)
!2512 = !DILocation(line: 762, column: 1, scope: !1957)
!2513 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1096, file: !1096, line: 98, type: !2514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!131}
!2516 = !DISubprogram(name: "strlen", scope: !1092, file: !1092, line: 407, type: !2517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!133, !134}
!2519 = !DISubprogram(name: "iswprint", scope: !2520, file: !2520, line: 120, type: !2321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2520 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2521 = distinct !DISubprogram(name: "quotearg_alloc", scope: !572, file: !572, line: 788, type: !2522, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!129, !134, !131, !1850}
!2524 = !{!2525, !2526, !2527}
!2525 = !DILocalVariable(name: "arg", arg: 1, scope: !2521, file: !572, line: 788, type: !134)
!2526 = !DILocalVariable(name: "argsize", arg: 2, scope: !2521, file: !572, line: 788, type: !131)
!2527 = !DILocalVariable(name: "o", arg: 3, scope: !2521, file: !572, line: 789, type: !1850)
!2528 = !DILocation(line: 0, scope: !2521)
!2529 = !DILocalVariable(name: "arg", arg: 1, scope: !2530, file: !572, line: 801, type: !134)
!2530 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !572, file: !572, line: 801, type: !2531, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!129, !134, !131, !813, !1850}
!2533 = !{!2529, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2534 = !DILocalVariable(name: "argsize", arg: 2, scope: !2530, file: !572, line: 801, type: !131)
!2535 = !DILocalVariable(name: "size", arg: 3, scope: !2530, file: !572, line: 801, type: !813)
!2536 = !DILocalVariable(name: "o", arg: 4, scope: !2530, file: !572, line: 802, type: !1850)
!2537 = !DILocalVariable(name: "p", scope: !2530, file: !572, line: 804, type: !1850)
!2538 = !DILocalVariable(name: "saved_errno", scope: !2530, file: !572, line: 805, type: !104)
!2539 = !DILocalVariable(name: "flags", scope: !2530, file: !572, line: 807, type: !104)
!2540 = !DILocalVariable(name: "bufsize", scope: !2530, file: !572, line: 808, type: !131)
!2541 = !DILocalVariable(name: "buf", scope: !2530, file: !572, line: 812, type: !129)
!2542 = !DILocation(line: 0, scope: !2530, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 791, column: 10, scope: !2521)
!2544 = !DILocation(line: 804, column: 37, scope: !2530, inlinedAt: !2543)
!2545 = !DILocation(line: 805, column: 21, scope: !2530, inlinedAt: !2543)
!2546 = !DILocation(line: 807, column: 18, scope: !2530, inlinedAt: !2543)
!2547 = !DILocation(line: 807, column: 24, scope: !2530, inlinedAt: !2543)
!2548 = !DILocation(line: 808, column: 72, scope: !2530, inlinedAt: !2543)
!2549 = !DILocation(line: 809, column: 56, scope: !2530, inlinedAt: !2543)
!2550 = !DILocation(line: 810, column: 49, scope: !2530, inlinedAt: !2543)
!2551 = !DILocation(line: 811, column: 49, scope: !2530, inlinedAt: !2543)
!2552 = !DILocation(line: 808, column: 20, scope: !2530, inlinedAt: !2543)
!2553 = !DILocation(line: 811, column: 62, scope: !2530, inlinedAt: !2543)
!2554 = !DILocation(line: 812, column: 15, scope: !2530, inlinedAt: !2543)
!2555 = !DILocation(line: 813, column: 60, scope: !2530, inlinedAt: !2543)
!2556 = !DILocation(line: 815, column: 32, scope: !2530, inlinedAt: !2543)
!2557 = !DILocation(line: 815, column: 47, scope: !2530, inlinedAt: !2543)
!2558 = !DILocation(line: 813, column: 3, scope: !2530, inlinedAt: !2543)
!2559 = !DILocation(line: 816, column: 9, scope: !2530, inlinedAt: !2543)
!2560 = !DILocation(line: 791, column: 3, scope: !2521)
!2561 = !DILocation(line: 0, scope: !2530)
!2562 = !DILocation(line: 804, column: 37, scope: !2530)
!2563 = !DILocation(line: 805, column: 21, scope: !2530)
!2564 = !DILocation(line: 807, column: 18, scope: !2530)
!2565 = !DILocation(line: 807, column: 27, scope: !2530)
!2566 = !DILocation(line: 807, column: 24, scope: !2530)
!2567 = !DILocation(line: 808, column: 72, scope: !2530)
!2568 = !DILocation(line: 809, column: 56, scope: !2530)
!2569 = !DILocation(line: 810, column: 49, scope: !2530)
!2570 = !DILocation(line: 811, column: 49, scope: !2530)
!2571 = !DILocation(line: 808, column: 20, scope: !2530)
!2572 = !DILocation(line: 811, column: 62, scope: !2530)
!2573 = !DILocation(line: 812, column: 15, scope: !2530)
!2574 = !DILocation(line: 813, column: 60, scope: !2530)
!2575 = !DILocation(line: 815, column: 32, scope: !2530)
!2576 = !DILocation(line: 815, column: 47, scope: !2530)
!2577 = !DILocation(line: 813, column: 3, scope: !2530)
!2578 = !DILocation(line: 816, column: 9, scope: !2530)
!2579 = !DILocation(line: 817, column: 7, scope: !2530)
!2580 = !DILocation(line: 818, column: 11, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2530, file: !572, line: 817, column: 7)
!2582 = !{!1286, !1286, i64 0}
!2583 = !DILocation(line: 818, column: 5, scope: !2581)
!2584 = !DILocation(line: 819, column: 3, scope: !2530)
!2585 = distinct !DISubprogram(name: "quotearg_free", scope: !572, file: !572, line: 837, type: !527, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2586)
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "sv", scope: !2585, file: !572, line: 839, type: !661)
!2588 = !DILocalVariable(name: "i", scope: !2589, file: !572, line: 840, type: !104)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !572, line: 840, column: 3)
!2590 = !DILocation(line: 839, column: 24, scope: !2585)
!2591 = !DILocation(line: 0, scope: !2585)
!2592 = !DILocation(line: 0, scope: !2589)
!2593 = !DILocation(line: 840, column: 21, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !572, line: 840, column: 3)
!2595 = !DILocation(line: 840, column: 3, scope: !2589)
!2596 = !DILocation(line: 842, column: 13, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2585, file: !572, line: 842, column: 7)
!2598 = !{!2599, !905, i64 8}
!2599 = !{!"slotvec", !1286, i64 0, !905, i64 8}
!2600 = !DILocation(line: 842, column: 17, scope: !2597)
!2601 = !DILocation(line: 842, column: 7, scope: !2585)
!2602 = !DILocation(line: 841, column: 17, scope: !2594)
!2603 = !DILocation(line: 841, column: 5, scope: !2594)
!2604 = !DILocation(line: 840, column: 32, scope: !2594)
!2605 = distinct !{!2605, !2595, !2606, !1022}
!2606 = !DILocation(line: 841, column: 20, scope: !2589)
!2607 = !DILocation(line: 844, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2597, file: !572, line: 843, column: 5)
!2609 = !DILocation(line: 845, column: 21, scope: !2608)
!2610 = !{!2599, !1286, i64 0}
!2611 = !DILocation(line: 846, column: 20, scope: !2608)
!2612 = !DILocation(line: 847, column: 5, scope: !2608)
!2613 = !DILocation(line: 848, column: 10, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2585, file: !572, line: 848, column: 7)
!2615 = !DILocation(line: 848, column: 7, scope: !2585)
!2616 = !DILocation(line: 850, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !572, line: 849, column: 5)
!2618 = !DILocation(line: 851, column: 15, scope: !2617)
!2619 = !DILocation(line: 852, column: 5, scope: !2617)
!2620 = !DILocation(line: 853, column: 10, scope: !2585)
!2621 = !DILocation(line: 854, column: 1, scope: !2585)
!2622 = !DISubprogram(name: "free", scope: !1804, file: !1804, line: 786, type: !2623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !130}
!2625 = distinct !DISubprogram(name: "quotearg_n", scope: !572, file: !572, line: 919, type: !1089, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2626)
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2625, file: !572, line: 919, type: !104)
!2628 = !DILocalVariable(name: "arg", arg: 2, scope: !2625, file: !572, line: 919, type: !134)
!2629 = !DILocation(line: 0, scope: !2625)
!2630 = !DILocation(line: 921, column: 10, scope: !2625)
!2631 = !DILocation(line: 921, column: 3, scope: !2625)
!2632 = distinct !DISubprogram(name: "quotearg_n_options", scope: !572, file: !572, line: 866, type: !2633, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!129, !104, !134, !131, !1850}
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2646, !2647, !2649, !2650, !2651}
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2632, file: !572, line: 866, type: !104)
!2637 = !DILocalVariable(name: "arg", arg: 2, scope: !2632, file: !572, line: 866, type: !134)
!2638 = !DILocalVariable(name: "argsize", arg: 3, scope: !2632, file: !572, line: 866, type: !131)
!2639 = !DILocalVariable(name: "options", arg: 4, scope: !2632, file: !572, line: 867, type: !1850)
!2640 = !DILocalVariable(name: "saved_errno", scope: !2632, file: !572, line: 869, type: !104)
!2641 = !DILocalVariable(name: "sv", scope: !2632, file: !572, line: 871, type: !661)
!2642 = !DILocalVariable(name: "nslots_max", scope: !2632, file: !572, line: 873, type: !104)
!2643 = !DILocalVariable(name: "preallocated", scope: !2644, file: !572, line: 879, type: !215)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !572, line: 878, column: 5)
!2645 = distinct !DILexicalBlock(scope: !2632, file: !572, line: 877, column: 7)
!2646 = !DILocalVariable(name: "new_nslots", scope: !2644, file: !572, line: 880, type: !826)
!2647 = !DILocalVariable(name: "size", scope: !2648, file: !572, line: 891, type: !131)
!2648 = distinct !DILexicalBlock(scope: !2632, file: !572, line: 890, column: 3)
!2649 = !DILocalVariable(name: "val", scope: !2648, file: !572, line: 892, type: !129)
!2650 = !DILocalVariable(name: "flags", scope: !2648, file: !572, line: 894, type: !104)
!2651 = !DILocalVariable(name: "qsize", scope: !2648, file: !572, line: 895, type: !131)
!2652 = distinct !DIAssignID()
!2653 = !DILocation(line: 0, scope: !2644)
!2654 = !DILocation(line: 0, scope: !2632)
!2655 = !DILocation(line: 869, column: 21, scope: !2632)
!2656 = !DILocation(line: 871, column: 24, scope: !2632)
!2657 = !DILocation(line: 874, column: 17, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2632, file: !572, line: 874, column: 7)
!2659 = !DILocation(line: 875, column: 5, scope: !2658)
!2660 = !DILocation(line: 877, column: 7, scope: !2645)
!2661 = !DILocation(line: 877, column: 14, scope: !2645)
!2662 = !DILocation(line: 877, column: 7, scope: !2632)
!2663 = !DILocation(line: 879, column: 31, scope: !2644)
!2664 = !DILocation(line: 880, column: 7, scope: !2644)
!2665 = !DILocation(line: 880, column: 26, scope: !2644)
!2666 = !DILocation(line: 880, column: 13, scope: !2644)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 882, column: 31, scope: !2644)
!2669 = !DILocation(line: 883, column: 33, scope: !2644)
!2670 = !DILocation(line: 883, column: 42, scope: !2644)
!2671 = !DILocation(line: 883, column: 31, scope: !2644)
!2672 = !DILocation(line: 882, column: 22, scope: !2644)
!2673 = !DILocation(line: 882, column: 15, scope: !2644)
!2674 = !DILocation(line: 884, column: 11, scope: !2644)
!2675 = !DILocation(line: 885, column: 15, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2644, file: !572, line: 884, column: 11)
!2677 = !{i64 0, i64 8, !2582, i64 8, i64 8, !904}
!2678 = !DILocation(line: 885, column: 9, scope: !2676)
!2679 = !DILocation(line: 886, column: 20, scope: !2644)
!2680 = !DILocation(line: 886, column: 18, scope: !2644)
!2681 = !DILocation(line: 886, column: 32, scope: !2644)
!2682 = !DILocation(line: 886, column: 43, scope: !2644)
!2683 = !DILocation(line: 886, column: 53, scope: !2644)
!2684 = !DILocation(line: 0, scope: !2067, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 886, column: 7, scope: !2644)
!2686 = !DILocation(line: 59, column: 10, scope: !2067, inlinedAt: !2685)
!2687 = !DILocation(line: 887, column: 16, scope: !2644)
!2688 = !DILocation(line: 887, column: 14, scope: !2644)
!2689 = !DILocation(line: 888, column: 5, scope: !2645)
!2690 = !DILocation(line: 888, column: 5, scope: !2644)
!2691 = !DILocation(line: 891, column: 19, scope: !2648)
!2692 = !DILocation(line: 891, column: 25, scope: !2648)
!2693 = !DILocation(line: 0, scope: !2648)
!2694 = !DILocation(line: 892, column: 23, scope: !2648)
!2695 = !DILocation(line: 894, column: 26, scope: !2648)
!2696 = !DILocation(line: 894, column: 32, scope: !2648)
!2697 = !DILocation(line: 896, column: 55, scope: !2648)
!2698 = !DILocation(line: 897, column: 55, scope: !2648)
!2699 = !DILocation(line: 898, column: 55, scope: !2648)
!2700 = !DILocation(line: 899, column: 55, scope: !2648)
!2701 = !DILocation(line: 895, column: 20, scope: !2648)
!2702 = !DILocation(line: 901, column: 14, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2648, file: !572, line: 901, column: 9)
!2704 = !DILocation(line: 901, column: 9, scope: !2648)
!2705 = !DILocation(line: 903, column: 35, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !572, line: 902, column: 7)
!2707 = !DILocation(line: 903, column: 20, scope: !2706)
!2708 = !DILocation(line: 904, column: 17, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !572, line: 904, column: 13)
!2710 = !DILocation(line: 904, column: 13, scope: !2706)
!2711 = !DILocation(line: 905, column: 11, scope: !2709)
!2712 = !DILocation(line: 906, column: 27, scope: !2706)
!2713 = !DILocation(line: 906, column: 19, scope: !2706)
!2714 = !DILocation(line: 907, column: 69, scope: !2706)
!2715 = !DILocation(line: 909, column: 44, scope: !2706)
!2716 = !DILocation(line: 910, column: 44, scope: !2706)
!2717 = !DILocation(line: 907, column: 9, scope: !2706)
!2718 = !DILocation(line: 911, column: 7, scope: !2706)
!2719 = !DILocation(line: 913, column: 11, scope: !2648)
!2720 = !DILocation(line: 914, column: 5, scope: !2648)
!2721 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !572, file: !572, line: 925, type: !2722, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!129, !104, !134, !131}
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !572, line: 925, type: !104)
!2726 = !DILocalVariable(name: "arg", arg: 2, scope: !2721, file: !572, line: 925, type: !134)
!2727 = !DILocalVariable(name: "argsize", arg: 3, scope: !2721, file: !572, line: 925, type: !131)
!2728 = !DILocation(line: 0, scope: !2721)
!2729 = !DILocation(line: 927, column: 10, scope: !2721)
!2730 = !DILocation(line: 927, column: 3, scope: !2721)
!2731 = distinct !DISubprogram(name: "quotearg", scope: !572, file: !572, line: 931, type: !1098, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2732)
!2732 = !{!2733}
!2733 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !572, line: 931, type: !134)
!2734 = !DILocation(line: 0, scope: !2731)
!2735 = !DILocation(line: 0, scope: !2625, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 933, column: 10, scope: !2731)
!2737 = !DILocation(line: 921, column: 10, scope: !2625, inlinedAt: !2736)
!2738 = !DILocation(line: 933, column: 3, scope: !2731)
!2739 = distinct !DISubprogram(name: "quotearg_mem", scope: !572, file: !572, line: 937, type: !2740, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!129, !134, !131}
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !572, line: 937, type: !134)
!2744 = !DILocalVariable(name: "argsize", arg: 2, scope: !2739, file: !572, line: 937, type: !131)
!2745 = !DILocation(line: 0, scope: !2739)
!2746 = !DILocation(line: 0, scope: !2721, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 939, column: 10, scope: !2739)
!2748 = !DILocation(line: 927, column: 10, scope: !2721, inlinedAt: !2747)
!2749 = !DILocation(line: 939, column: 3, scope: !2739)
!2750 = distinct !DISubprogram(name: "quotearg_n_style", scope: !572, file: !572, line: 943, type: !2751, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!129, !104, !598, !134}
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !572, line: 943, type: !104)
!2755 = !DILocalVariable(name: "s", arg: 2, scope: !2750, file: !572, line: 943, type: !598)
!2756 = !DILocalVariable(name: "arg", arg: 3, scope: !2750, file: !572, line: 943, type: !134)
!2757 = !DILocalVariable(name: "o", scope: !2750, file: !572, line: 945, type: !1851)
!2758 = distinct !DIAssignID()
!2759 = !DILocation(line: 0, scope: !2750)
!2760 = !DILocation(line: 945, column: 3, scope: !2750)
!2761 = !{!2762}
!2762 = distinct !{!2762, !2763, !"quoting_options_from_style: argument 0"}
!2763 = distinct !{!2763, !"quoting_options_from_style"}
!2764 = !DILocation(line: 945, column: 36, scope: !2750)
!2765 = !DILocalVariable(name: "style", arg: 1, scope: !2766, file: !572, line: 183, type: !598)
!2766 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !572, file: !572, line: 183, type: !2767, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!613, !598}
!2769 = !{!2765, !2770}
!2770 = !DILocalVariable(name: "o", scope: !2766, file: !572, line: 185, type: !613)
!2771 = !DILocation(line: 0, scope: !2766, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 945, column: 36, scope: !2750)
!2773 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2772)
!2774 = distinct !DIAssignID()
!2775 = !DILocation(line: 186, column: 13, scope: !2776, inlinedAt: !2772)
!2776 = distinct !DILexicalBlock(scope: !2766, file: !572, line: 186, column: 7)
!2777 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2772)
!2778 = !DILocation(line: 187, column: 5, scope: !2776, inlinedAt: !2772)
!2779 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2772)
!2780 = distinct !DIAssignID()
!2781 = !DILocation(line: 946, column: 10, scope: !2750)
!2782 = !DILocation(line: 947, column: 1, scope: !2750)
!2783 = !DILocation(line: 946, column: 3, scope: !2750)
!2784 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !572, file: !572, line: 950, type: !2785, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!129, !104, !598, !134, !131}
!2787 = !{!2788, !2789, !2790, !2791, !2792}
!2788 = !DILocalVariable(name: "n", arg: 1, scope: !2784, file: !572, line: 950, type: !104)
!2789 = !DILocalVariable(name: "s", arg: 2, scope: !2784, file: !572, line: 950, type: !598)
!2790 = !DILocalVariable(name: "arg", arg: 3, scope: !2784, file: !572, line: 951, type: !134)
!2791 = !DILocalVariable(name: "argsize", arg: 4, scope: !2784, file: !572, line: 951, type: !131)
!2792 = !DILocalVariable(name: "o", scope: !2784, file: !572, line: 953, type: !1851)
!2793 = distinct !DIAssignID()
!2794 = !DILocation(line: 0, scope: !2784)
!2795 = !DILocation(line: 953, column: 3, scope: !2784)
!2796 = !{!2797}
!2797 = distinct !{!2797, !2798, !"quoting_options_from_style: argument 0"}
!2798 = distinct !{!2798, !"quoting_options_from_style"}
!2799 = !DILocation(line: 953, column: 36, scope: !2784)
!2800 = !DILocation(line: 0, scope: !2766, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 953, column: 36, scope: !2784)
!2802 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2801)
!2803 = distinct !DIAssignID()
!2804 = !DILocation(line: 186, column: 13, scope: !2776, inlinedAt: !2801)
!2805 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2801)
!2806 = !DILocation(line: 187, column: 5, scope: !2776, inlinedAt: !2801)
!2807 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2801)
!2808 = distinct !DIAssignID()
!2809 = !DILocation(line: 954, column: 10, scope: !2784)
!2810 = !DILocation(line: 955, column: 1, scope: !2784)
!2811 = !DILocation(line: 954, column: 3, scope: !2784)
!2812 = distinct !DISubprogram(name: "quotearg_style", scope: !572, file: !572, line: 958, type: !2813, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!129, !598, !134}
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "s", arg: 1, scope: !2812, file: !572, line: 958, type: !598)
!2817 = !DILocalVariable(name: "arg", arg: 2, scope: !2812, file: !572, line: 958, type: !134)
!2818 = distinct !DIAssignID()
!2819 = !DILocation(line: 0, scope: !2812)
!2820 = !DILocation(line: 0, scope: !2750, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 960, column: 10, scope: !2812)
!2822 = !DILocation(line: 945, column: 3, scope: !2750, inlinedAt: !2821)
!2823 = !{!2824}
!2824 = distinct !{!2824, !2825, !"quoting_options_from_style: argument 0"}
!2825 = distinct !{!2825, !"quoting_options_from_style"}
!2826 = !DILocation(line: 945, column: 36, scope: !2750, inlinedAt: !2821)
!2827 = !DILocation(line: 0, scope: !2766, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 945, column: 36, scope: !2750, inlinedAt: !2821)
!2829 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2828)
!2830 = distinct !DIAssignID()
!2831 = !DILocation(line: 186, column: 13, scope: !2776, inlinedAt: !2828)
!2832 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2828)
!2833 = !DILocation(line: 187, column: 5, scope: !2776, inlinedAt: !2828)
!2834 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2828)
!2835 = distinct !DIAssignID()
!2836 = !DILocation(line: 946, column: 10, scope: !2750, inlinedAt: !2821)
!2837 = !DILocation(line: 947, column: 1, scope: !2750, inlinedAt: !2821)
!2838 = !DILocation(line: 960, column: 3, scope: !2812)
!2839 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !572, file: !572, line: 964, type: !2840, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!129, !598, !134, !131}
!2842 = !{!2843, !2844, !2845}
!2843 = !DILocalVariable(name: "s", arg: 1, scope: !2839, file: !572, line: 964, type: !598)
!2844 = !DILocalVariable(name: "arg", arg: 2, scope: !2839, file: !572, line: 964, type: !134)
!2845 = !DILocalVariable(name: "argsize", arg: 3, scope: !2839, file: !572, line: 964, type: !131)
!2846 = distinct !DIAssignID()
!2847 = !DILocation(line: 0, scope: !2839)
!2848 = !DILocation(line: 0, scope: !2784, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 966, column: 10, scope: !2839)
!2850 = !DILocation(line: 953, column: 3, scope: !2784, inlinedAt: !2849)
!2851 = !{!2852}
!2852 = distinct !{!2852, !2853, !"quoting_options_from_style: argument 0"}
!2853 = distinct !{!2853, !"quoting_options_from_style"}
!2854 = !DILocation(line: 953, column: 36, scope: !2784, inlinedAt: !2849)
!2855 = !DILocation(line: 0, scope: !2766, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 953, column: 36, scope: !2784, inlinedAt: !2849)
!2857 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2856)
!2858 = distinct !DIAssignID()
!2859 = !DILocation(line: 186, column: 13, scope: !2776, inlinedAt: !2856)
!2860 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2856)
!2861 = !DILocation(line: 187, column: 5, scope: !2776, inlinedAt: !2856)
!2862 = !DILocation(line: 188, column: 11, scope: !2766, inlinedAt: !2856)
!2863 = distinct !DIAssignID()
!2864 = !DILocation(line: 954, column: 10, scope: !2784, inlinedAt: !2849)
!2865 = !DILocation(line: 955, column: 1, scope: !2784, inlinedAt: !2849)
!2866 = !DILocation(line: 966, column: 3, scope: !2839)
!2867 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !572, file: !572, line: 970, type: !2868, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!129, !134, !131, !4}
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DILocalVariable(name: "arg", arg: 1, scope: !2867, file: !572, line: 970, type: !134)
!2872 = !DILocalVariable(name: "argsize", arg: 2, scope: !2867, file: !572, line: 970, type: !131)
!2873 = !DILocalVariable(name: "ch", arg: 3, scope: !2867, file: !572, line: 970, type: !4)
!2874 = !DILocalVariable(name: "options", scope: !2867, file: !572, line: 972, type: !613)
!2875 = distinct !DIAssignID()
!2876 = !DILocation(line: 0, scope: !2867)
!2877 = !DILocation(line: 972, column: 3, scope: !2867)
!2878 = !DILocation(line: 973, column: 13, scope: !2867)
!2879 = !{i64 0, i64 4, !975, i64 4, i64 4, !975, i64 8, i64 32, !984, i64 40, i64 8, !904, i64 48, i64 8, !904}
!2880 = distinct !DIAssignID()
!2881 = !DILocation(line: 0, scope: !1870, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 974, column: 3, scope: !2867)
!2883 = !DILocation(line: 147, column: 41, scope: !1870, inlinedAt: !2882)
!2884 = !DILocation(line: 147, column: 62, scope: !1870, inlinedAt: !2882)
!2885 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2882)
!2886 = !DILocation(line: 148, column: 15, scope: !1870, inlinedAt: !2882)
!2887 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2882)
!2888 = !DILocation(line: 149, column: 24, scope: !1870, inlinedAt: !2882)
!2889 = !DILocation(line: 150, column: 19, scope: !1870, inlinedAt: !2882)
!2890 = !DILocation(line: 150, column: 24, scope: !1870, inlinedAt: !2882)
!2891 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2882)
!2892 = !DILocation(line: 975, column: 10, scope: !2867)
!2893 = !DILocation(line: 976, column: 1, scope: !2867)
!2894 = !DILocation(line: 975, column: 3, scope: !2867)
!2895 = distinct !DISubprogram(name: "quotearg_char", scope: !572, file: !572, line: 979, type: !2896, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!129, !134, !4}
!2898 = !{!2899, !2900}
!2899 = !DILocalVariable(name: "arg", arg: 1, scope: !2895, file: !572, line: 979, type: !134)
!2900 = !DILocalVariable(name: "ch", arg: 2, scope: !2895, file: !572, line: 979, type: !4)
!2901 = distinct !DIAssignID()
!2902 = !DILocation(line: 0, scope: !2895)
!2903 = !DILocation(line: 0, scope: !2867, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 981, column: 10, scope: !2895)
!2905 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2904)
!2906 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2904)
!2907 = distinct !DIAssignID()
!2908 = !DILocation(line: 0, scope: !1870, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2904)
!2910 = !DILocation(line: 147, column: 41, scope: !1870, inlinedAt: !2909)
!2911 = !DILocation(line: 147, column: 62, scope: !1870, inlinedAt: !2909)
!2912 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2909)
!2913 = !DILocation(line: 148, column: 15, scope: !1870, inlinedAt: !2909)
!2914 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2909)
!2915 = !DILocation(line: 149, column: 24, scope: !1870, inlinedAt: !2909)
!2916 = !DILocation(line: 150, column: 19, scope: !1870, inlinedAt: !2909)
!2917 = !DILocation(line: 150, column: 24, scope: !1870, inlinedAt: !2909)
!2918 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2909)
!2919 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2904)
!2920 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2904)
!2921 = !DILocation(line: 981, column: 3, scope: !2895)
!2922 = distinct !DISubprogram(name: "quotearg_colon", scope: !572, file: !572, line: 985, type: !1098, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2923)
!2923 = !{!2924}
!2924 = !DILocalVariable(name: "arg", arg: 1, scope: !2922, file: !572, line: 985, type: !134)
!2925 = distinct !DIAssignID()
!2926 = !DILocation(line: 0, scope: !2922)
!2927 = !DILocation(line: 0, scope: !2895, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 987, column: 10, scope: !2922)
!2929 = !DILocation(line: 0, scope: !2867, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 981, column: 10, scope: !2895, inlinedAt: !2928)
!2931 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2930)
!2932 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2930)
!2933 = distinct !DIAssignID()
!2934 = !DILocation(line: 0, scope: !1870, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2930)
!2936 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2935)
!2937 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2935)
!2938 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2935)
!2939 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2930)
!2940 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2930)
!2941 = !DILocation(line: 987, column: 3, scope: !2922)
!2942 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !572, file: !572, line: 991, type: !2740, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2943)
!2943 = !{!2944, !2945}
!2944 = !DILocalVariable(name: "arg", arg: 1, scope: !2942, file: !572, line: 991, type: !134)
!2945 = !DILocalVariable(name: "argsize", arg: 2, scope: !2942, file: !572, line: 991, type: !131)
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 0, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2867, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 993, column: 10, scope: !2942)
!2950 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2949)
!2951 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2949)
!2952 = distinct !DIAssignID()
!2953 = !DILocation(line: 0, scope: !1870, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2949)
!2955 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2954)
!2956 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2954)
!2957 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2954)
!2958 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2949)
!2959 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2949)
!2960 = !DILocation(line: 993, column: 3, scope: !2942)
!2961 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !572, file: !572, line: 997, type: !2751, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2962)
!2962 = !{!2963, !2964, !2965, !2966}
!2963 = !DILocalVariable(name: "n", arg: 1, scope: !2961, file: !572, line: 997, type: !104)
!2964 = !DILocalVariable(name: "s", arg: 2, scope: !2961, file: !572, line: 997, type: !598)
!2965 = !DILocalVariable(name: "arg", arg: 3, scope: !2961, file: !572, line: 997, type: !134)
!2966 = !DILocalVariable(name: "options", scope: !2961, file: !572, line: 999, type: !613)
!2967 = distinct !DIAssignID()
!2968 = !DILocation(line: 0, scope: !2961)
!2969 = !DILocation(line: 185, column: 26, scope: !2766, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 1000, column: 13, scope: !2961)
!2971 = !DILocation(line: 999, column: 3, scope: !2961)
!2972 = !DILocation(line: 0, scope: !2766, inlinedAt: !2970)
!2973 = !DILocation(line: 186, column: 13, scope: !2776, inlinedAt: !2970)
!2974 = !DILocation(line: 186, column: 7, scope: !2766, inlinedAt: !2970)
!2975 = !DILocation(line: 187, column: 5, scope: !2776, inlinedAt: !2970)
!2976 = !{!2977}
!2977 = distinct !{!2977, !2978, !"quoting_options_from_style: argument 0"}
!2978 = distinct !{!2978, !"quoting_options_from_style"}
!2979 = !DILocation(line: 1000, column: 13, scope: !2961)
!2980 = distinct !DIAssignID()
!2981 = distinct !DIAssignID()
!2982 = !DILocation(line: 0, scope: !1870, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1001, column: 3, scope: !2961)
!2984 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2983)
!2985 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2983)
!2986 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2983)
!2987 = distinct !DIAssignID()
!2988 = !DILocation(line: 1002, column: 10, scope: !2961)
!2989 = !DILocation(line: 1003, column: 1, scope: !2961)
!2990 = !DILocation(line: 1002, column: 3, scope: !2961)
!2991 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !572, file: !572, line: 1006, type: !2992, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!129, !104, !134, !134, !134}
!2994 = !{!2995, !2996, !2997, !2998}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2991, file: !572, line: 1006, type: !104)
!2996 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2991, file: !572, line: 1006, type: !134)
!2997 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2991, file: !572, line: 1007, type: !134)
!2998 = !DILocalVariable(name: "arg", arg: 4, scope: !2991, file: !572, line: 1007, type: !134)
!2999 = distinct !DIAssignID()
!3000 = !DILocation(line: 0, scope: !2991)
!3001 = !DILocalVariable(name: "o", scope: !3002, file: !572, line: 1018, type: !613)
!3002 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !572, file: !572, line: 1014, type: !3003, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!129, !104, !134, !134, !134, !131}
!3005 = !{!3006, !3007, !3008, !3009, !3010, !3001}
!3006 = !DILocalVariable(name: "n", arg: 1, scope: !3002, file: !572, line: 1014, type: !104)
!3007 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3002, file: !572, line: 1014, type: !134)
!3008 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3002, file: !572, line: 1015, type: !134)
!3009 = !DILocalVariable(name: "arg", arg: 4, scope: !3002, file: !572, line: 1016, type: !134)
!3010 = !DILocalVariable(name: "argsize", arg: 5, scope: !3002, file: !572, line: 1016, type: !131)
!3011 = !DILocation(line: 0, scope: !3002, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 1009, column: 10, scope: !2991)
!3013 = !DILocation(line: 1018, column: 3, scope: !3002, inlinedAt: !3012)
!3014 = !DILocation(line: 1018, column: 30, scope: !3002, inlinedAt: !3012)
!3015 = distinct !DIAssignID()
!3016 = distinct !DIAssignID()
!3017 = !DILocation(line: 0, scope: !1910, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 1019, column: 3, scope: !3002, inlinedAt: !3012)
!3019 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !3018)
!3020 = distinct !DIAssignID()
!3021 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !3018)
!3022 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !3018)
!3023 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !3018)
!3024 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !3018)
!3025 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !3018)
!3026 = distinct !DIAssignID()
!3027 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !3018)
!3028 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !3018)
!3029 = distinct !DIAssignID()
!3030 = !DILocation(line: 1020, column: 10, scope: !3002, inlinedAt: !3012)
!3031 = !DILocation(line: 1021, column: 1, scope: !3002, inlinedAt: !3012)
!3032 = !DILocation(line: 1009, column: 3, scope: !2991)
!3033 = distinct !DIAssignID()
!3034 = !DILocation(line: 0, scope: !3002)
!3035 = !DILocation(line: 1018, column: 3, scope: !3002)
!3036 = !DILocation(line: 1018, column: 30, scope: !3002)
!3037 = distinct !DIAssignID()
!3038 = distinct !DIAssignID()
!3039 = !DILocation(line: 0, scope: !1910, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 1019, column: 3, scope: !3002)
!3041 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !3040)
!3042 = distinct !DIAssignID()
!3043 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !3040)
!3044 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !3040)
!3045 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !3040)
!3046 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !3040)
!3047 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !3040)
!3048 = distinct !DIAssignID()
!3049 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !3040)
!3050 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !3040)
!3051 = distinct !DIAssignID()
!3052 = !DILocation(line: 1020, column: 10, scope: !3002)
!3053 = !DILocation(line: 1021, column: 1, scope: !3002)
!3054 = !DILocation(line: 1020, column: 3, scope: !3002)
!3055 = distinct !DISubprogram(name: "quotearg_custom", scope: !572, file: !572, line: 1024, type: !3056, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!129, !134, !134, !134}
!3058 = !{!3059, !3060, !3061}
!3059 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3055, file: !572, line: 1024, type: !134)
!3060 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3055, file: !572, line: 1024, type: !134)
!3061 = !DILocalVariable(name: "arg", arg: 3, scope: !3055, file: !572, line: 1025, type: !134)
!3062 = distinct !DIAssignID()
!3063 = !DILocation(line: 0, scope: !3055)
!3064 = !DILocation(line: 0, scope: !2991, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1027, column: 10, scope: !3055)
!3066 = !DILocation(line: 0, scope: !3002, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1009, column: 10, scope: !2991, inlinedAt: !3065)
!3068 = !DILocation(line: 1018, column: 3, scope: !3002, inlinedAt: !3067)
!3069 = !DILocation(line: 1018, column: 30, scope: !3002, inlinedAt: !3067)
!3070 = distinct !DIAssignID()
!3071 = distinct !DIAssignID()
!3072 = !DILocation(line: 0, scope: !1910, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1019, column: 3, scope: !3002, inlinedAt: !3067)
!3074 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !3073)
!3075 = distinct !DIAssignID()
!3076 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !3073)
!3077 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !3073)
!3078 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !3073)
!3079 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !3073)
!3080 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !3073)
!3081 = distinct !DIAssignID()
!3082 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !3073)
!3083 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !3073)
!3084 = distinct !DIAssignID()
!3085 = !DILocation(line: 1020, column: 10, scope: !3002, inlinedAt: !3067)
!3086 = !DILocation(line: 1021, column: 1, scope: !3002, inlinedAt: !3067)
!3087 = !DILocation(line: 1027, column: 3, scope: !3055)
!3088 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !572, file: !572, line: 1031, type: !3089, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!129, !134, !134, !134, !131}
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3088, file: !572, line: 1031, type: !134)
!3093 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3088, file: !572, line: 1031, type: !134)
!3094 = !DILocalVariable(name: "arg", arg: 3, scope: !3088, file: !572, line: 1032, type: !134)
!3095 = !DILocalVariable(name: "argsize", arg: 4, scope: !3088, file: !572, line: 1032, type: !131)
!3096 = distinct !DIAssignID()
!3097 = !DILocation(line: 0, scope: !3088)
!3098 = !DILocation(line: 0, scope: !3002, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 1034, column: 10, scope: !3088)
!3100 = !DILocation(line: 1018, column: 3, scope: !3002, inlinedAt: !3099)
!3101 = !DILocation(line: 1018, column: 30, scope: !3002, inlinedAt: !3099)
!3102 = distinct !DIAssignID()
!3103 = distinct !DIAssignID()
!3104 = !DILocation(line: 0, scope: !1910, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1019, column: 3, scope: !3002, inlinedAt: !3099)
!3106 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !3105)
!3107 = distinct !DIAssignID()
!3108 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !3105)
!3109 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !3105)
!3110 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !3105)
!3111 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !3105)
!3112 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !3105)
!3113 = distinct !DIAssignID()
!3114 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !3105)
!3115 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !3105)
!3116 = distinct !DIAssignID()
!3117 = !DILocation(line: 1020, column: 10, scope: !3002, inlinedAt: !3099)
!3118 = !DILocation(line: 1021, column: 1, scope: !3002, inlinedAt: !3099)
!3119 = !DILocation(line: 1034, column: 3, scope: !3088)
!3120 = distinct !DISubprogram(name: "quote_n_mem", scope: !572, file: !572, line: 1049, type: !3121, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!134, !104, !134, !131}
!3123 = !{!3124, !3125, !3126}
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3120, file: !572, line: 1049, type: !104)
!3125 = !DILocalVariable(name: "arg", arg: 2, scope: !3120, file: !572, line: 1049, type: !134)
!3126 = !DILocalVariable(name: "argsize", arg: 3, scope: !3120, file: !572, line: 1049, type: !131)
!3127 = !DILocation(line: 0, scope: !3120)
!3128 = !DILocation(line: 1051, column: 10, scope: !3120)
!3129 = !DILocation(line: 1051, column: 3, scope: !3120)
!3130 = distinct !DISubprogram(name: "quote_mem", scope: !572, file: !572, line: 1055, type: !3131, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!134, !134, !131}
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "arg", arg: 1, scope: !3130, file: !572, line: 1055, type: !134)
!3135 = !DILocalVariable(name: "argsize", arg: 2, scope: !3130, file: !572, line: 1055, type: !131)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 0, scope: !3120, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 1057, column: 10, scope: !3130)
!3139 = !DILocation(line: 1051, column: 10, scope: !3120, inlinedAt: !3138)
!3140 = !DILocation(line: 1057, column: 3, scope: !3130)
!3141 = distinct !DISubprogram(name: "quote_n", scope: !572, file: !572, line: 1061, type: !3142, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!134, !104, !134}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !572, line: 1061, type: !104)
!3146 = !DILocalVariable(name: "arg", arg: 2, scope: !3141, file: !572, line: 1061, type: !134)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3120, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1063, column: 10, scope: !3141)
!3150 = !DILocation(line: 1051, column: 10, scope: !3120, inlinedAt: !3149)
!3151 = !DILocation(line: 1063, column: 3, scope: !3141)
!3152 = distinct !DISubprogram(name: "quote", scope: !572, file: !572, line: 1067, type: !3153, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!134, !134}
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "arg", arg: 1, scope: !3152, file: !572, line: 1067, type: !134)
!3157 = !DILocation(line: 0, scope: !3152)
!3158 = !DILocation(line: 0, scope: !3141, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 1069, column: 10, scope: !3152)
!3160 = !DILocation(line: 0, scope: !3120, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1063, column: 10, scope: !3141, inlinedAt: !3159)
!3162 = !DILocation(line: 1051, column: 10, scope: !3120, inlinedAt: !3161)
!3163 = !DILocation(line: 1069, column: 3, scope: !3152)
!3164 = distinct !DISubprogram(name: "version_etc_arn", scope: !676, file: !676, line: 61, type: !3165, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3202)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !3167, !134, !134, !134, !3201, !131}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !3169)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3169, file: !253, line: 51, baseType: !104, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3169, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3169, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3169, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3169, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3169, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3169, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3169, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3169, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3169, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3169, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3169, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3169, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3169, file: !253, line: 70, baseType: !3185, size: 64, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3169, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3169, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3169, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3169, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3169, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3169, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3169, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3169, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3169, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3169, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3169, file: !253, line: 93, baseType: !3185, size: 64, offset: 1344)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3169, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3169, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3169, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3169, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208}
!3203 = !DILocalVariable(name: "stream", arg: 1, scope: !3164, file: !676, line: 61, type: !3167)
!3204 = !DILocalVariable(name: "command_name", arg: 2, scope: !3164, file: !676, line: 62, type: !134)
!3205 = !DILocalVariable(name: "package", arg: 3, scope: !3164, file: !676, line: 62, type: !134)
!3206 = !DILocalVariable(name: "version", arg: 4, scope: !3164, file: !676, line: 63, type: !134)
!3207 = !DILocalVariable(name: "authors", arg: 5, scope: !3164, file: !676, line: 64, type: !3201)
!3208 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3164, file: !676, line: 64, type: !131)
!3209 = !DILocation(line: 0, scope: !3164)
!3210 = !DILocation(line: 66, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3164, file: !676, line: 66, column: 7)
!3212 = !DILocation(line: 66, column: 7, scope: !3164)
!3213 = !DILocation(line: 67, column: 5, scope: !3211)
!3214 = !DILocation(line: 69, column: 5, scope: !3211)
!3215 = !DILocation(line: 83, column: 3, scope: !3164)
!3216 = !DILocation(line: 85, column: 3, scope: !3164)
!3217 = !DILocation(line: 88, column: 3, scope: !3164)
!3218 = !DILocation(line: 95, column: 3, scope: !3164)
!3219 = !DILocation(line: 97, column: 3, scope: !3164)
!3220 = !DILocation(line: 105, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3164, file: !676, line: 98, column: 5)
!3222 = !DILocation(line: 106, column: 7, scope: !3221)
!3223 = !DILocation(line: 109, column: 7, scope: !3221)
!3224 = !DILocation(line: 110, column: 7, scope: !3221)
!3225 = !DILocation(line: 113, column: 7, scope: !3221)
!3226 = !DILocation(line: 115, column: 7, scope: !3221)
!3227 = !DILocation(line: 120, column: 7, scope: !3221)
!3228 = !DILocation(line: 122, column: 7, scope: !3221)
!3229 = !DILocation(line: 127, column: 7, scope: !3221)
!3230 = !DILocation(line: 129, column: 7, scope: !3221)
!3231 = !DILocation(line: 134, column: 7, scope: !3221)
!3232 = !DILocation(line: 137, column: 7, scope: !3221)
!3233 = !DILocation(line: 142, column: 7, scope: !3221)
!3234 = !DILocation(line: 145, column: 7, scope: !3221)
!3235 = !DILocation(line: 150, column: 7, scope: !3221)
!3236 = !DILocation(line: 154, column: 7, scope: !3221)
!3237 = !DILocation(line: 159, column: 7, scope: !3221)
!3238 = !DILocation(line: 163, column: 7, scope: !3221)
!3239 = !DILocation(line: 170, column: 7, scope: !3221)
!3240 = !DILocation(line: 174, column: 7, scope: !3221)
!3241 = !DILocation(line: 176, column: 1, scope: !3164)
!3242 = distinct !DISubprogram(name: "version_etc_ar", scope: !676, file: !676, line: 183, type: !3243, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !3167, !134, !134, !134, !3201}
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251}
!3246 = !DILocalVariable(name: "stream", arg: 1, scope: !3242, file: !676, line: 183, type: !3167)
!3247 = !DILocalVariable(name: "command_name", arg: 2, scope: !3242, file: !676, line: 184, type: !134)
!3248 = !DILocalVariable(name: "package", arg: 3, scope: !3242, file: !676, line: 184, type: !134)
!3249 = !DILocalVariable(name: "version", arg: 4, scope: !3242, file: !676, line: 185, type: !134)
!3250 = !DILocalVariable(name: "authors", arg: 5, scope: !3242, file: !676, line: 185, type: !3201)
!3251 = !DILocalVariable(name: "n_authors", scope: !3242, file: !676, line: 187, type: !131)
!3252 = !DILocation(line: 0, scope: !3242)
!3253 = !DILocation(line: 189, column: 8, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3242, file: !676, line: 189, column: 3)
!3255 = !DILocation(line: 189, scope: !3254)
!3256 = !DILocation(line: 189, column: 23, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3254, file: !676, line: 189, column: 3)
!3258 = !DILocation(line: 189, column: 3, scope: !3254)
!3259 = !DILocation(line: 189, column: 52, scope: !3257)
!3260 = distinct !{!3260, !3258, !3261, !1022}
!3261 = !DILocation(line: 190, column: 5, scope: !3254)
!3262 = !DILocation(line: 191, column: 3, scope: !3242)
!3263 = !DILocation(line: 192, column: 1, scope: !3242)
!3264 = distinct !DISubprogram(name: "version_etc_va", scope: !676, file: !676, line: 199, type: !3265, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3277)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{null, !3167, !134, !134, !134, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !3268)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !492, line: 12, baseType: !3269)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !676, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3270, file: !676, line: 192, baseType: !130, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3270, file: !676, line: 192, baseType: !130, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3270, file: !676, line: 192, baseType: !130, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3270, file: !676, line: 192, baseType: !104, size: 32, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3270, file: !676, line: 192, baseType: !104, size: 32, offset: 224)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284}
!3278 = !DILocalVariable(name: "stream", arg: 1, scope: !3264, file: !676, line: 199, type: !3167)
!3279 = !DILocalVariable(name: "command_name", arg: 2, scope: !3264, file: !676, line: 200, type: !134)
!3280 = !DILocalVariable(name: "package", arg: 3, scope: !3264, file: !676, line: 200, type: !134)
!3281 = !DILocalVariable(name: "version", arg: 4, scope: !3264, file: !676, line: 201, type: !134)
!3282 = !DILocalVariable(name: "authors", arg: 5, scope: !3264, file: !676, line: 201, type: !3267)
!3283 = !DILocalVariable(name: "n_authors", scope: !3264, file: !676, line: 203, type: !131)
!3284 = !DILocalVariable(name: "authtab", scope: !3264, file: !676, line: 204, type: !3285)
!3285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !62)
!3286 = distinct !DIAssignID()
!3287 = !DILocation(line: 0, scope: !3264)
!3288 = !DILocation(line: 204, column: 3, scope: !3264)
!3289 = !DILocation(line: 208, column: 35, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !676, line: 206, column: 3)
!3291 = distinct !DILexicalBlock(scope: !3264, file: !676, line: 206, column: 3)
!3292 = !DILocation(line: 208, column: 33, scope: !3290)
!3293 = !DILocation(line: 208, column: 67, scope: !3290)
!3294 = !DILocation(line: 206, column: 3, scope: !3291)
!3295 = !DILocation(line: 208, column: 14, scope: !3290)
!3296 = !DILocation(line: 0, scope: !3291)
!3297 = !DILocation(line: 211, column: 3, scope: !3264)
!3298 = !DILocation(line: 213, column: 1, scope: !3264)
!3299 = distinct !DISubprogram(name: "version_etc", scope: !676, file: !676, line: 230, type: !3300, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !3167, !134, !134, !134, null}
!3302 = !{!3303, !3304, !3305, !3306, !3307}
!3303 = !DILocalVariable(name: "stream", arg: 1, scope: !3299, file: !676, line: 230, type: !3167)
!3304 = !DILocalVariable(name: "command_name", arg: 2, scope: !3299, file: !676, line: 231, type: !134)
!3305 = !DILocalVariable(name: "package", arg: 3, scope: !3299, file: !676, line: 231, type: !134)
!3306 = !DILocalVariable(name: "version", arg: 4, scope: !3299, file: !676, line: 232, type: !134)
!3307 = !DILocalVariable(name: "authors", scope: !3299, file: !676, line: 234, type: !3267)
!3308 = distinct !DIAssignID()
!3309 = !DILocation(line: 0, scope: !3299)
!3310 = !DILocation(line: 234, column: 3, scope: !3299)
!3311 = !DILocation(line: 235, column: 3, scope: !3299)
!3312 = !DILocation(line: 236, column: 3, scope: !3299)
!3313 = !DILocation(line: 237, column: 3, scope: !3299)
!3314 = !DILocation(line: 238, column: 1, scope: !3299)
!3315 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !676, file: !676, line: 241, type: !527, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799)
!3316 = !DILocation(line: 243, column: 3, scope: !3315)
!3317 = !DILocation(line: 248, column: 3, scope: !3315)
!3318 = !DILocation(line: 254, column: 3, scope: !3315)
!3319 = !DILocation(line: 259, column: 3, scope: !3315)
!3320 = !DILocation(line: 261, column: 1, scope: !3315)
!3321 = distinct !DISubprogram(name: "xnrealloc", scope: !3322, file: !3322, line: 147, type: !3323, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3325)
!3322 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!130, !130, !131, !131}
!3325 = !{!3326, !3327, !3328}
!3326 = !DILocalVariable(name: "p", arg: 1, scope: !3321, file: !3322, line: 147, type: !130)
!3327 = !DILocalVariable(name: "n", arg: 2, scope: !3321, file: !3322, line: 147, type: !131)
!3328 = !DILocalVariable(name: "s", arg: 3, scope: !3321, file: !3322, line: 147, type: !131)
!3329 = !DILocation(line: 0, scope: !3321)
!3330 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !807, line: 83, type: !130)
!3331 = distinct !DISubprogram(name: "xreallocarray", scope: !807, file: !807, line: 83, type: !3323, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3332)
!3332 = !{!3330, !3333, !3334}
!3333 = !DILocalVariable(name: "n", arg: 2, scope: !3331, file: !807, line: 83, type: !131)
!3334 = !DILocalVariable(name: "s", arg: 3, scope: !3331, file: !807, line: 83, type: !131)
!3335 = !DILocation(line: 0, scope: !3331, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 149, column: 10, scope: !3321)
!3337 = !DILocation(line: 85, column: 25, scope: !3331, inlinedAt: !3336)
!3338 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !807, line: 37, type: !130)
!3339 = distinct !DISubprogram(name: "check_nonnull", scope: !807, file: !807, line: 37, type: !3340, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!130, !130}
!3342 = !{!3338}
!3343 = !DILocation(line: 0, scope: !3339, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 85, column: 10, scope: !3331, inlinedAt: !3336)
!3345 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3344)
!3346 = distinct !DILexicalBlock(scope: !3339, file: !807, line: 39, column: 7)
!3347 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3344)
!3348 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3344)
!3349 = !DILocation(line: 149, column: 3, scope: !3321)
!3350 = !DILocation(line: 0, scope: !3331)
!3351 = !DILocation(line: 85, column: 25, scope: !3331)
!3352 = !DILocation(line: 0, scope: !3339, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 85, column: 10, scope: !3331)
!3354 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3353)
!3355 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3353)
!3356 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3353)
!3357 = !DILocation(line: 85, column: 3, scope: !3331)
!3358 = distinct !DISubprogram(name: "xmalloc", scope: !807, file: !807, line: 47, type: !3359, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!130, !131}
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "s", arg: 1, scope: !3358, file: !807, line: 47, type: !131)
!3363 = !DILocation(line: 0, scope: !3358)
!3364 = !DILocation(line: 49, column: 25, scope: !3358)
!3365 = !DILocation(line: 0, scope: !3339, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 49, column: 10, scope: !3358)
!3367 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3366)
!3368 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3366)
!3369 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3366)
!3370 = !DILocation(line: 49, column: 3, scope: !3358)
!3371 = !DISubprogram(name: "malloc", scope: !1096, file: !1096, line: 540, type: !3359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3372 = distinct !DISubprogram(name: "ximalloc", scope: !807, file: !807, line: 53, type: !3373, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!130, !826}
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "s", arg: 1, scope: !3372, file: !807, line: 53, type: !826)
!3377 = !DILocation(line: 0, scope: !3372)
!3378 = !DILocalVariable(name: "s", arg: 1, scope: !3379, file: !3380, line: 55, type: !826)
!3379 = distinct !DISubprogram(name: "imalloc", scope: !3380, file: !3380, line: 55, type: !3373, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3381)
!3380 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3381 = !{!3378}
!3382 = !DILocation(line: 0, scope: !3379, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 55, column: 25, scope: !3372)
!3384 = !DILocation(line: 57, column: 26, scope: !3379, inlinedAt: !3383)
!3385 = !DILocation(line: 0, scope: !3339, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 55, column: 10, scope: !3372)
!3387 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3386)
!3388 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3386)
!3389 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3386)
!3390 = !DILocation(line: 55, column: 3, scope: !3372)
!3391 = distinct !DISubprogram(name: "xcharalloc", scope: !807, file: !807, line: 59, type: !3392, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!129, !131}
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "n", arg: 1, scope: !3391, file: !807, line: 59, type: !131)
!3396 = !DILocation(line: 0, scope: !3391)
!3397 = !DILocation(line: 0, scope: !3358, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 61, column: 10, scope: !3391)
!3399 = !DILocation(line: 49, column: 25, scope: !3358, inlinedAt: !3398)
!3400 = !DILocation(line: 0, scope: !3339, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 49, column: 10, scope: !3358, inlinedAt: !3398)
!3402 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3401)
!3403 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3401)
!3404 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3401)
!3405 = !DILocation(line: 61, column: 3, scope: !3391)
!3406 = distinct !DISubprogram(name: "xrealloc", scope: !807, file: !807, line: 68, type: !3407, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!130, !130, !131}
!3409 = !{!3410, !3411}
!3410 = !DILocalVariable(name: "p", arg: 1, scope: !3406, file: !807, line: 68, type: !130)
!3411 = !DILocalVariable(name: "s", arg: 2, scope: !3406, file: !807, line: 68, type: !131)
!3412 = !DILocation(line: 0, scope: !3406)
!3413 = !DILocalVariable(name: "ptr", arg: 1, scope: !3414, file: !3415, line: 2057, type: !130)
!3414 = distinct !DISubprogram(name: "rpl_realloc", scope: !3415, file: !3415, line: 2057, type: !3407, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3416)
!3415 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3416 = !{!3413, !3417}
!3417 = !DILocalVariable(name: "size", arg: 2, scope: !3414, file: !3415, line: 2057, type: !131)
!3418 = !DILocation(line: 0, scope: !3414, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 70, column: 25, scope: !3406)
!3420 = !DILocation(line: 2059, column: 24, scope: !3414, inlinedAt: !3419)
!3421 = !DILocation(line: 2059, column: 10, scope: !3414, inlinedAt: !3419)
!3422 = !DILocation(line: 0, scope: !3339, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 70, column: 10, scope: !3406)
!3424 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3423)
!3425 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3423)
!3426 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3423)
!3427 = !DILocation(line: 70, column: 3, scope: !3406)
!3428 = !DISubprogram(name: "realloc", scope: !1096, file: !1096, line: 551, type: !3407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3429 = distinct !DISubprogram(name: "xirealloc", scope: !807, file: !807, line: 74, type: !3430, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!130, !130, !826}
!3432 = !{!3433, !3434}
!3433 = !DILocalVariable(name: "p", arg: 1, scope: !3429, file: !807, line: 74, type: !130)
!3434 = !DILocalVariable(name: "s", arg: 2, scope: !3429, file: !807, line: 74, type: !826)
!3435 = !DILocation(line: 0, scope: !3429)
!3436 = !DILocalVariable(name: "p", arg: 1, scope: !3437, file: !3380, line: 66, type: !130)
!3437 = distinct !DISubprogram(name: "irealloc", scope: !3380, file: !3380, line: 66, type: !3430, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3438)
!3438 = !{!3436, !3439}
!3439 = !DILocalVariable(name: "s", arg: 2, scope: !3437, file: !3380, line: 66, type: !826)
!3440 = !DILocation(line: 0, scope: !3437, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 76, column: 25, scope: !3429)
!3442 = !DILocation(line: 0, scope: !3414, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 68, column: 26, scope: !3437, inlinedAt: !3441)
!3444 = !DILocation(line: 2059, column: 24, scope: !3414, inlinedAt: !3443)
!3445 = !DILocation(line: 2059, column: 10, scope: !3414, inlinedAt: !3443)
!3446 = !DILocation(line: 0, scope: !3339, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 76, column: 10, scope: !3429)
!3448 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3447)
!3449 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3447)
!3450 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3447)
!3451 = !DILocation(line: 76, column: 3, scope: !3429)
!3452 = distinct !DISubprogram(name: "xireallocarray", scope: !807, file: !807, line: 89, type: !3453, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!130, !130, !826, !826}
!3455 = !{!3456, !3457, !3458}
!3456 = !DILocalVariable(name: "p", arg: 1, scope: !3452, file: !807, line: 89, type: !130)
!3457 = !DILocalVariable(name: "n", arg: 2, scope: !3452, file: !807, line: 89, type: !826)
!3458 = !DILocalVariable(name: "s", arg: 3, scope: !3452, file: !807, line: 89, type: !826)
!3459 = !DILocation(line: 0, scope: !3452)
!3460 = !DILocalVariable(name: "p", arg: 1, scope: !3461, file: !3380, line: 98, type: !130)
!3461 = distinct !DISubprogram(name: "ireallocarray", scope: !3380, file: !3380, line: 98, type: !3453, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3462)
!3462 = !{!3460, !3463, !3464}
!3463 = !DILocalVariable(name: "n", arg: 2, scope: !3461, file: !3380, line: 98, type: !826)
!3464 = !DILocalVariable(name: "s", arg: 3, scope: !3461, file: !3380, line: 98, type: !826)
!3465 = !DILocation(line: 0, scope: !3461, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 91, column: 25, scope: !3452)
!3467 = !DILocation(line: 101, column: 13, scope: !3461, inlinedAt: !3466)
!3468 = !DILocation(line: 0, scope: !3339, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 91, column: 10, scope: !3452)
!3470 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3469)
!3471 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3469)
!3472 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3469)
!3473 = !DILocation(line: 91, column: 3, scope: !3452)
!3474 = distinct !DISubprogram(name: "xnmalloc", scope: !807, file: !807, line: 98, type: !3475, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!130, !131, !131}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "n", arg: 1, scope: !3474, file: !807, line: 98, type: !131)
!3479 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !807, line: 98, type: !131)
!3480 = !DILocation(line: 0, scope: !3474)
!3481 = !DILocation(line: 0, scope: !3331, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 100, column: 10, scope: !3474)
!3483 = !DILocation(line: 85, column: 25, scope: !3331, inlinedAt: !3482)
!3484 = !DILocation(line: 0, scope: !3339, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 85, column: 10, scope: !3331, inlinedAt: !3482)
!3486 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3485)
!3487 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3485)
!3488 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3485)
!3489 = !DILocation(line: 100, column: 3, scope: !3474)
!3490 = distinct !DISubprogram(name: "xinmalloc", scope: !807, file: !807, line: 104, type: !3491, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!130, !826, !826}
!3493 = !{!3494, !3495}
!3494 = !DILocalVariable(name: "n", arg: 1, scope: !3490, file: !807, line: 104, type: !826)
!3495 = !DILocalVariable(name: "s", arg: 2, scope: !3490, file: !807, line: 104, type: !826)
!3496 = !DILocation(line: 0, scope: !3490)
!3497 = !DILocation(line: 0, scope: !3452, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 106, column: 10, scope: !3490)
!3499 = !DILocation(line: 0, scope: !3461, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 91, column: 25, scope: !3452, inlinedAt: !3498)
!3501 = !DILocation(line: 101, column: 13, scope: !3461, inlinedAt: !3500)
!3502 = !DILocation(line: 0, scope: !3339, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 91, column: 10, scope: !3452, inlinedAt: !3498)
!3504 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3503)
!3505 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3503)
!3506 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3503)
!3507 = !DILocation(line: 106, column: 3, scope: !3490)
!3508 = distinct !DISubprogram(name: "x2realloc", scope: !807, file: !807, line: 116, type: !3509, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!130, !130, !813}
!3511 = !{!3512, !3513}
!3512 = !DILocalVariable(name: "p", arg: 1, scope: !3508, file: !807, line: 116, type: !130)
!3513 = !DILocalVariable(name: "ps", arg: 2, scope: !3508, file: !807, line: 116, type: !813)
!3514 = !DILocation(line: 0, scope: !3508)
!3515 = !DILocation(line: 0, scope: !810, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 118, column: 10, scope: !3508)
!3517 = !DILocation(line: 178, column: 14, scope: !810, inlinedAt: !3516)
!3518 = !DILocation(line: 180, column: 9, scope: !3519, inlinedAt: !3516)
!3519 = distinct !DILexicalBlock(scope: !810, file: !807, line: 180, column: 7)
!3520 = !DILocation(line: 180, column: 7, scope: !810, inlinedAt: !3516)
!3521 = !DILocation(line: 182, column: 13, scope: !3522, inlinedAt: !3516)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !807, line: 182, column: 11)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !807, line: 181, column: 5)
!3524 = !DILocation(line: 182, column: 11, scope: !3523, inlinedAt: !3516)
!3525 = !DILocation(line: 197, column: 11, scope: !3526, inlinedAt: !3516)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !807, line: 197, column: 11)
!3527 = distinct !DILexicalBlock(scope: !3519, file: !807, line: 195, column: 5)
!3528 = !DILocation(line: 197, column: 11, scope: !3527, inlinedAt: !3516)
!3529 = !DILocation(line: 198, column: 9, scope: !3526, inlinedAt: !3516)
!3530 = !DILocation(line: 0, scope: !3331, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 201, column: 7, scope: !810, inlinedAt: !3516)
!3532 = !DILocation(line: 85, column: 25, scope: !3331, inlinedAt: !3531)
!3533 = !DILocation(line: 0, scope: !3339, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 85, column: 10, scope: !3331, inlinedAt: !3531)
!3535 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3534)
!3536 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3534)
!3537 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3534)
!3538 = !DILocation(line: 202, column: 7, scope: !810, inlinedAt: !3516)
!3539 = !DILocation(line: 118, column: 3, scope: !3508)
!3540 = !DILocation(line: 0, scope: !810)
!3541 = !DILocation(line: 178, column: 14, scope: !810)
!3542 = !DILocation(line: 180, column: 9, scope: !3519)
!3543 = !DILocation(line: 180, column: 7, scope: !810)
!3544 = !DILocation(line: 182, column: 13, scope: !3522)
!3545 = !DILocation(line: 182, column: 11, scope: !3523)
!3546 = !DILocation(line: 190, column: 30, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3522, file: !807, line: 183, column: 9)
!3548 = !DILocation(line: 191, column: 16, scope: !3547)
!3549 = !DILocation(line: 191, column: 13, scope: !3547)
!3550 = !DILocation(line: 192, column: 9, scope: !3547)
!3551 = !DILocation(line: 197, column: 11, scope: !3526)
!3552 = !DILocation(line: 197, column: 11, scope: !3527)
!3553 = !DILocation(line: 198, column: 9, scope: !3526)
!3554 = !DILocation(line: 0, scope: !3331, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 201, column: 7, scope: !810)
!3556 = !DILocation(line: 85, column: 25, scope: !3331, inlinedAt: !3555)
!3557 = !DILocation(line: 0, scope: !3339, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 85, column: 10, scope: !3331, inlinedAt: !3555)
!3559 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3558)
!3560 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3558)
!3561 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3558)
!3562 = !DILocation(line: 202, column: 7, scope: !810)
!3563 = !DILocation(line: 203, column: 3, scope: !810)
!3564 = !DILocation(line: 0, scope: !822)
!3565 = !DILocation(line: 230, column: 14, scope: !822)
!3566 = !DILocation(line: 238, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !822, file: !807, line: 238, column: 7)
!3568 = !DILocation(line: 238, column: 7, scope: !822)
!3569 = !DILocation(line: 240, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !822, file: !807, line: 240, column: 7)
!3571 = !DILocation(line: 240, column: 18, scope: !3570)
!3572 = !DILocation(line: 253, column: 8, scope: !822)
!3573 = !DILocation(line: 256, column: 7, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !822, file: !807, line: 256, column: 7)
!3575 = !DILocation(line: 256, column: 7, scope: !822)
!3576 = !DILocation(line: 258, column: 27, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3574, file: !807, line: 257, column: 5)
!3578 = !DILocation(line: 259, column: 32, scope: !3577)
!3579 = !DILocation(line: 260, column: 5, scope: !3577)
!3580 = !DILocation(line: 262, column: 9, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !822, file: !807, line: 262, column: 7)
!3582 = !DILocation(line: 262, column: 7, scope: !822)
!3583 = !DILocation(line: 263, column: 9, scope: !3581)
!3584 = !DILocation(line: 263, column: 5, scope: !3581)
!3585 = !DILocation(line: 264, column: 9, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !822, file: !807, line: 264, column: 7)
!3587 = !DILocation(line: 264, column: 14, scope: !3586)
!3588 = !DILocation(line: 265, column: 7, scope: !3586)
!3589 = !DILocation(line: 265, column: 11, scope: !3586)
!3590 = !DILocation(line: 266, column: 11, scope: !3586)
!3591 = !DILocation(line: 267, column: 14, scope: !3586)
!3592 = !DILocation(line: 264, column: 7, scope: !822)
!3593 = !DILocation(line: 268, column: 5, scope: !3586)
!3594 = !DILocation(line: 0, scope: !3406, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 269, column: 8, scope: !822)
!3596 = !DILocation(line: 0, scope: !3414, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 70, column: 25, scope: !3406, inlinedAt: !3595)
!3598 = !DILocation(line: 2059, column: 24, scope: !3414, inlinedAt: !3597)
!3599 = !DILocation(line: 2059, column: 10, scope: !3414, inlinedAt: !3597)
!3600 = !DILocation(line: 0, scope: !3339, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 70, column: 10, scope: !3406, inlinedAt: !3595)
!3602 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3601)
!3603 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3601)
!3604 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3601)
!3605 = !DILocation(line: 270, column: 7, scope: !822)
!3606 = !DILocation(line: 271, column: 3, scope: !822)
!3607 = distinct !DISubprogram(name: "xzalloc", scope: !807, file: !807, line: 279, type: !3359, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3608)
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "s", arg: 1, scope: !3607, file: !807, line: 279, type: !131)
!3610 = !DILocation(line: 0, scope: !3607)
!3611 = !DILocalVariable(name: "n", arg: 1, scope: !3612, file: !807, line: 294, type: !131)
!3612 = distinct !DISubprogram(name: "xcalloc", scope: !807, file: !807, line: 294, type: !3475, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3613)
!3613 = !{!3611, !3614}
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !807, line: 294, type: !131)
!3615 = !DILocation(line: 0, scope: !3612, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 281, column: 10, scope: !3607)
!3617 = !DILocation(line: 296, column: 25, scope: !3612, inlinedAt: !3616)
!3618 = !DILocation(line: 0, scope: !3339, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 296, column: 10, scope: !3612, inlinedAt: !3616)
!3620 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3619)
!3621 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3619)
!3622 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3619)
!3623 = !DILocation(line: 281, column: 3, scope: !3607)
!3624 = !DISubprogram(name: "calloc", scope: !1096, file: !1096, line: 543, type: !3475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3625 = !DILocation(line: 0, scope: !3612)
!3626 = !DILocation(line: 296, column: 25, scope: !3612)
!3627 = !DILocation(line: 0, scope: !3339, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 296, column: 10, scope: !3612)
!3629 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3628)
!3630 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3628)
!3631 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3628)
!3632 = !DILocation(line: 296, column: 3, scope: !3612)
!3633 = distinct !DISubprogram(name: "xizalloc", scope: !807, file: !807, line: 285, type: !3373, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3634)
!3634 = !{!3635}
!3635 = !DILocalVariable(name: "s", arg: 1, scope: !3633, file: !807, line: 285, type: !826)
!3636 = !DILocation(line: 0, scope: !3633)
!3637 = !DILocalVariable(name: "n", arg: 1, scope: !3638, file: !807, line: 300, type: !826)
!3638 = distinct !DISubprogram(name: "xicalloc", scope: !807, file: !807, line: 300, type: !3491, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3639)
!3639 = !{!3637, !3640}
!3640 = !DILocalVariable(name: "s", arg: 2, scope: !3638, file: !807, line: 300, type: !826)
!3641 = !DILocation(line: 0, scope: !3638, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 287, column: 10, scope: !3633)
!3643 = !DILocalVariable(name: "n", arg: 1, scope: !3644, file: !3380, line: 77, type: !826)
!3644 = distinct !DISubprogram(name: "icalloc", scope: !3380, file: !3380, line: 77, type: !3491, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3645)
!3645 = !{!3643, !3646}
!3646 = !DILocalVariable(name: "s", arg: 2, scope: !3644, file: !3380, line: 77, type: !826)
!3647 = !DILocation(line: 0, scope: !3644, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 302, column: 25, scope: !3638, inlinedAt: !3642)
!3649 = !DILocation(line: 91, column: 10, scope: !3644, inlinedAt: !3648)
!3650 = !DILocation(line: 0, scope: !3339, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 302, column: 10, scope: !3638, inlinedAt: !3642)
!3652 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3651)
!3653 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3651)
!3654 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3651)
!3655 = !DILocation(line: 287, column: 3, scope: !3633)
!3656 = !DILocation(line: 0, scope: !3638)
!3657 = !DILocation(line: 0, scope: !3644, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 302, column: 25, scope: !3638)
!3659 = !DILocation(line: 91, column: 10, scope: !3644, inlinedAt: !3658)
!3660 = !DILocation(line: 0, scope: !3339, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 302, column: 10, scope: !3638)
!3662 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3661)
!3663 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3661)
!3664 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3661)
!3665 = !DILocation(line: 302, column: 3, scope: !3638)
!3666 = distinct !DISubprogram(name: "xmemdup", scope: !807, file: !807, line: 310, type: !3667, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!130, !1120, !131}
!3669 = !{!3670, !3671}
!3670 = !DILocalVariable(name: "p", arg: 1, scope: !3666, file: !807, line: 310, type: !1120)
!3671 = !DILocalVariable(name: "s", arg: 2, scope: !3666, file: !807, line: 310, type: !131)
!3672 = !DILocation(line: 0, scope: !3666)
!3673 = !DILocation(line: 0, scope: !3358, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 312, column: 18, scope: !3666)
!3675 = !DILocation(line: 49, column: 25, scope: !3358, inlinedAt: !3674)
!3676 = !DILocation(line: 0, scope: !3339, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 49, column: 10, scope: !3358, inlinedAt: !3674)
!3678 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3677)
!3679 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3677)
!3680 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3677)
!3681 = !DILocalVariable(name: "__dest", arg: 1, scope: !3682, file: !1813, line: 26, type: !3685)
!3682 = distinct !DISubprogram(name: "memcpy", scope: !1813, file: !1813, line: 26, type: !3683, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3686)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!130, !3685, !1119, !131}
!3685 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!3686 = !{!3681, !3687, !3688}
!3687 = !DILocalVariable(name: "__src", arg: 2, scope: !3682, file: !1813, line: 26, type: !1119)
!3688 = !DILocalVariable(name: "__len", arg: 3, scope: !3682, file: !1813, line: 26, type: !131)
!3689 = !DILocation(line: 0, scope: !3682, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 312, column: 10, scope: !3666)
!3691 = !DILocation(line: 29, column: 10, scope: !3682, inlinedAt: !3690)
!3692 = !DILocation(line: 312, column: 3, scope: !3666)
!3693 = distinct !DISubprogram(name: "ximemdup", scope: !807, file: !807, line: 316, type: !3694, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!130, !1120, !826}
!3696 = !{!3697, !3698}
!3697 = !DILocalVariable(name: "p", arg: 1, scope: !3693, file: !807, line: 316, type: !1120)
!3698 = !DILocalVariable(name: "s", arg: 2, scope: !3693, file: !807, line: 316, type: !826)
!3699 = !DILocation(line: 0, scope: !3693)
!3700 = !DILocation(line: 0, scope: !3372, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 318, column: 18, scope: !3693)
!3702 = !DILocation(line: 0, scope: !3379, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 55, column: 25, scope: !3372, inlinedAt: !3701)
!3704 = !DILocation(line: 57, column: 26, scope: !3379, inlinedAt: !3703)
!3705 = !DILocation(line: 0, scope: !3339, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 55, column: 10, scope: !3372, inlinedAt: !3701)
!3707 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3706)
!3708 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3706)
!3709 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3706)
!3710 = !DILocation(line: 0, scope: !3682, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 318, column: 10, scope: !3693)
!3712 = !DILocation(line: 29, column: 10, scope: !3682, inlinedAt: !3711)
!3713 = !DILocation(line: 318, column: 3, scope: !3693)
!3714 = distinct !DISubprogram(name: "ximemdup0", scope: !807, file: !807, line: 325, type: !3715, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!129, !1120, !826}
!3717 = !{!3718, !3719, !3720}
!3718 = !DILocalVariable(name: "p", arg: 1, scope: !3714, file: !807, line: 325, type: !1120)
!3719 = !DILocalVariable(name: "s", arg: 2, scope: !3714, file: !807, line: 325, type: !826)
!3720 = !DILocalVariable(name: "result", scope: !3714, file: !807, line: 327, type: !129)
!3721 = !DILocation(line: 0, scope: !3714)
!3722 = !DILocation(line: 327, column: 30, scope: !3714)
!3723 = !DILocation(line: 0, scope: !3372, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 327, column: 18, scope: !3714)
!3725 = !DILocation(line: 0, scope: !3379, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 55, column: 25, scope: !3372, inlinedAt: !3724)
!3727 = !DILocation(line: 57, column: 26, scope: !3379, inlinedAt: !3726)
!3728 = !DILocation(line: 0, scope: !3339, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 55, column: 10, scope: !3372, inlinedAt: !3724)
!3730 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3729)
!3731 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3729)
!3732 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3729)
!3733 = !DILocation(line: 328, column: 3, scope: !3714)
!3734 = !DILocation(line: 328, column: 13, scope: !3714)
!3735 = !DILocation(line: 0, scope: !3682, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 329, column: 10, scope: !3714)
!3737 = !DILocation(line: 29, column: 10, scope: !3682, inlinedAt: !3736)
!3738 = !DILocation(line: 329, column: 3, scope: !3714)
!3739 = distinct !DISubprogram(name: "xstrdup", scope: !807, file: !807, line: 335, type: !1098, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !3740)
!3740 = !{!3741}
!3741 = !DILocalVariable(name: "string", arg: 1, scope: !3739, file: !807, line: 335, type: !134)
!3742 = !DILocation(line: 0, scope: !3739)
!3743 = !DILocation(line: 337, column: 27, scope: !3739)
!3744 = !DILocation(line: 337, column: 43, scope: !3739)
!3745 = !DILocation(line: 0, scope: !3666, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 337, column: 10, scope: !3739)
!3747 = !DILocation(line: 0, scope: !3358, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 312, column: 18, scope: !3666, inlinedAt: !3746)
!3749 = !DILocation(line: 49, column: 25, scope: !3358, inlinedAt: !3748)
!3750 = !DILocation(line: 0, scope: !3339, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 49, column: 10, scope: !3358, inlinedAt: !3748)
!3752 = !DILocation(line: 39, column: 8, scope: !3346, inlinedAt: !3751)
!3753 = !DILocation(line: 39, column: 7, scope: !3339, inlinedAt: !3751)
!3754 = !DILocation(line: 40, column: 5, scope: !3346, inlinedAt: !3751)
!3755 = !DILocation(line: 0, scope: !3682, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 312, column: 10, scope: !3666, inlinedAt: !3746)
!3757 = !DILocation(line: 29, column: 10, scope: !3682, inlinedAt: !3756)
!3758 = !DILocation(line: 337, column: 3, scope: !3739)
!3759 = distinct !DISubprogram(name: "xalloc_die", scope: !766, file: !766, line: 32, type: !527, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !3760)
!3760 = !{!3761}
!3761 = !DILocalVariable(name: "__errstatus", scope: !3762, file: !766, line: 34, type: !3763)
!3762 = distinct !DILexicalBlock(scope: !3759, file: !766, line: 34, column: 3)
!3763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!3764 = !DILocation(line: 34, column: 3, scope: !3762)
!3765 = !DILocation(line: 0, scope: !3762)
!3766 = !DILocation(line: 40, column: 3, scope: !3759)
!3767 = distinct !DISubprogram(name: "xnumtoimax", scope: !773, file: !773, line: 42, type: !3768, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!137, !134, !104, !137, !137, !134, !134, !104, !104}
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3783, !3784, !3785}
!3771 = !DILocalVariable(name: "n_str", arg: 1, scope: !3767, file: !773, line: 42, type: !134)
!3772 = !DILocalVariable(name: "base", arg: 2, scope: !3767, file: !773, line: 42, type: !104)
!3773 = !DILocalVariable(name: "min", arg: 3, scope: !3767, file: !773, line: 42, type: !137)
!3774 = !DILocalVariable(name: "max", arg: 4, scope: !3767, file: !773, line: 42, type: !137)
!3775 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3767, file: !773, line: 43, type: !134)
!3776 = !DILocalVariable(name: "err", arg: 6, scope: !3767, file: !773, line: 43, type: !134)
!3777 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3767, file: !773, line: 43, type: !104)
!3778 = !DILocalVariable(name: "flags", arg: 8, scope: !3767, file: !773, line: 44, type: !104)
!3779 = !DILocalVariable(name: "tnum", scope: !3767, file: !773, line: 46, type: !137)
!3780 = !DILocalVariable(name: "r", scope: !3767, file: !773, line: 46, type: !137)
!3781 = !DILocalVariable(name: "s_err", scope: !3767, file: !773, line: 47, type: !3782)
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !847, line: 43, baseType: !846)
!3783 = !DILocalVariable(name: "overflow_errno", scope: !3767, file: !773, line: 50, type: !104)
!3784 = !DILocalVariable(name: "e", scope: !3767, file: !773, line: 75, type: !104)
!3785 = !DILocalVariable(name: "__errstatus", scope: !3786, file: !773, line: 80, type: !3763)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !773, line: 80, column: 5)
!3787 = distinct !DILexicalBlock(scope: !3767, file: !773, line: 77, column: 7)
!3788 = distinct !DIAssignID()
!3789 = !DILocation(line: 0, scope: !3767)
!3790 = !DILocation(line: 46, column: 3, scope: !3767)
!3791 = !DILocation(line: 47, column: 24, scope: !3767)
!3792 = !DILocation(line: 52, column: 13, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3767, file: !773, line: 52, column: 7)
!3794 = !DILocation(line: 52, column: 7, scope: !3767)
!3795 = !DILocation(line: 54, column: 11, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !773, line: 54, column: 11)
!3797 = distinct !DILexicalBlock(scope: !3793, file: !773, line: 53, column: 5)
!3798 = !DILocation(line: 54, column: 16, scope: !3796)
!3799 = !DILocation(line: 54, column: 11, scope: !3797)
!3800 = !DILocation(line: 61, column: 20, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3796, file: !773, line: 61, column: 16)
!3802 = !DILocation(line: 61, column: 16, scope: !3796)
!3803 = !DILocation(line: 0, scope: !3796)
!3804 = !DILocation(line: 75, column: 17, scope: !3767)
!3805 = !DILocation(line: 79, column: 14, scope: !3787)
!3806 = !DILocation(line: 75, column: 11, scope: !3767)
!3807 = !DILocation(line: 77, column: 16, scope: !3787)
!3808 = !DILocation(line: 78, column: 10, scope: !3787)
!3809 = !DILocation(line: 79, column: 31, scope: !3787)
!3810 = !DILocation(line: 79, column: 26, scope: !3787)
!3811 = !DILocation(line: 79, column: 23, scope: !3787)
!3812 = !DILocation(line: 77, column: 7, scope: !3767)
!3813 = !DILocation(line: 80, column: 5, scope: !3787)
!3814 = !DILocation(line: 82, column: 3, scope: !3767)
!3815 = !DILocation(line: 82, column: 9, scope: !3767)
!3816 = !DILocation(line: 84, column: 1, scope: !3767)
!3817 = !DILocation(line: 83, column: 3, scope: !3767)
!3818 = distinct !DISubprogram(name: "xdectoimax", scope: !773, file: !773, line: 92, type: !3819, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!137, !134, !137, !137, !134, !134, !104}
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827}
!3822 = !DILocalVariable(name: "n_str", arg: 1, scope: !3818, file: !773, line: 92, type: !134)
!3823 = !DILocalVariable(name: "min", arg: 2, scope: !3818, file: !773, line: 92, type: !137)
!3824 = !DILocalVariable(name: "max", arg: 3, scope: !3818, file: !773, line: 92, type: !137)
!3825 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3818, file: !773, line: 93, type: !134)
!3826 = !DILocalVariable(name: "err", arg: 5, scope: !3818, file: !773, line: 93, type: !134)
!3827 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3818, file: !773, line: 93, type: !104)
!3828 = distinct !DIAssignID()
!3829 = !DILocation(line: 0, scope: !3818)
!3830 = !DILocation(line: 0, scope: !3767, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 95, column: 10, scope: !3818)
!3832 = !DILocation(line: 46, column: 3, scope: !3767, inlinedAt: !3831)
!3833 = !DILocation(line: 47, column: 24, scope: !3767, inlinedAt: !3831)
!3834 = !DILocation(line: 52, column: 13, scope: !3793, inlinedAt: !3831)
!3835 = !DILocation(line: 52, column: 7, scope: !3767, inlinedAt: !3831)
!3836 = !DILocation(line: 54, column: 11, scope: !3796, inlinedAt: !3831)
!3837 = !DILocation(line: 54, column: 16, scope: !3796, inlinedAt: !3831)
!3838 = !DILocation(line: 54, column: 11, scope: !3797, inlinedAt: !3831)
!3839 = !DILocation(line: 75, column: 17, scope: !3767, inlinedAt: !3831)
!3840 = !DILocation(line: 79, column: 14, scope: !3787, inlinedAt: !3831)
!3841 = !DILocation(line: 78, column: 10, scope: !3787, inlinedAt: !3831)
!3842 = !DILocation(line: 80, column: 5, scope: !3787, inlinedAt: !3831)
!3843 = !DILocation(line: 82, column: 3, scope: !3767, inlinedAt: !3831)
!3844 = !DILocation(line: 82, column: 9, scope: !3767, inlinedAt: !3831)
!3845 = !DILocation(line: 84, column: 1, scope: !3767, inlinedAt: !3831)
!3846 = !DILocation(line: 95, column: 3, scope: !3818)
!3847 = distinct !DISubprogram(name: "xstrtoimax", scope: !3848, file: !3848, line: 71, type: !3849, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3853)
!3848 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!3851, !134, !1125, !104, !3852, !134}
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !866, line: 43, baseType: !865)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3866, !3867}
!3854 = !DILocalVariable(name: "nptr", arg: 1, scope: !3847, file: !3848, line: 71, type: !134)
!3855 = !DILocalVariable(name: "endptr", arg: 2, scope: !3847, file: !3848, line: 71, type: !1125)
!3856 = !DILocalVariable(name: "base", arg: 3, scope: !3847, file: !3848, line: 71, type: !104)
!3857 = !DILocalVariable(name: "val", arg: 4, scope: !3847, file: !3848, line: 72, type: !3852)
!3858 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3847, file: !3848, line: 72, type: !134)
!3859 = !DILocalVariable(name: "t_ptr", scope: !3847, file: !3848, line: 74, type: !129)
!3860 = !DILocalVariable(name: "p", scope: !3847, file: !3848, line: 75, type: !1125)
!3861 = !DILocalVariable(name: "tmp", scope: !3847, file: !3848, line: 91, type: !137)
!3862 = !DILocalVariable(name: "err", scope: !3847, file: !3848, line: 92, type: !3851)
!3863 = !DILocalVariable(name: "xbase", scope: !3864, file: !3848, line: 126, type: !104)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !3848, line: 119, column: 5)
!3865 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 118, column: 7)
!3866 = !DILocalVariable(name: "suffixes", scope: !3864, file: !3848, line: 127, type: !104)
!3867 = !DILocalVariable(name: "overflow", scope: !3864, file: !3848, line: 156, type: !3851)
!3868 = distinct !DIAssignID()
!3869 = !DILocation(line: 0, scope: !3847)
!3870 = !DILocation(line: 74, column: 3, scope: !3847)
!3871 = !DILocation(line: 75, column: 14, scope: !3847)
!3872 = !DILocation(line: 90, column: 3, scope: !3847)
!3873 = !DILocation(line: 90, column: 9, scope: !3847)
!3874 = !DILocation(line: 91, column: 20, scope: !3847)
!3875 = !DILocation(line: 94, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 94, column: 7)
!3877 = !DILocation(line: 94, column: 10, scope: !3876)
!3878 = !DILocation(line: 94, column: 7, scope: !3847)
!3879 = !DILocation(line: 98, column: 14, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3848, line: 98, column: 11)
!3881 = distinct !DILexicalBlock(scope: !3876, file: !3848, line: 95, column: 5)
!3882 = !DILocation(line: 98, column: 29, scope: !3880)
!3883 = !DILocation(line: 98, column: 32, scope: !3880)
!3884 = !DILocation(line: 98, column: 38, scope: !3880)
!3885 = !DILocation(line: 98, column: 41, scope: !3880)
!3886 = !DILocation(line: 98, column: 11, scope: !3881)
!3887 = !DILocation(line: 102, column: 12, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3876, file: !3848, line: 102, column: 12)
!3889 = !DILocation(line: 102, column: 12, scope: !3876)
!3890 = !DILocation(line: 107, column: 5, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3888, file: !3848, line: 103, column: 5)
!3892 = !DILocation(line: 112, column: 8, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 112, column: 7)
!3894 = !DILocation(line: 112, column: 7, scope: !3847)
!3895 = !DILocation(line: 114, column: 12, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3893, file: !3848, line: 113, column: 5)
!3897 = !DILocation(line: 115, column: 7, scope: !3896)
!3898 = !DILocation(line: 118, column: 7, scope: !3865)
!3899 = !DILocation(line: 118, column: 11, scope: !3865)
!3900 = !DILocation(line: 118, column: 7, scope: !3847)
!3901 = !DILocation(line: 120, column: 12, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3864, file: !3848, line: 120, column: 11)
!3903 = !DILocation(line: 120, column: 11, scope: !3864)
!3904 = !DILocation(line: 122, column: 16, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3902, file: !3848, line: 121, column: 9)
!3906 = !DILocation(line: 123, column: 22, scope: !3905)
!3907 = !DILocation(line: 123, column: 11, scope: !3905)
!3908 = !DILocation(line: 0, scope: !3864)
!3909 = !DILocation(line: 128, column: 7, scope: !3864)
!3910 = !DILocation(line: 140, column: 15, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3848, line: 140, column: 15)
!3912 = distinct !DILexicalBlock(scope: !3864, file: !3848, line: 129, column: 9)
!3913 = !DILocation(line: 140, column: 15, scope: !3912)
!3914 = !DILocation(line: 141, column: 21, scope: !3911)
!3915 = !DILocation(line: 141, column: 13, scope: !3911)
!3916 = !DILocation(line: 144, column: 21, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !3848, line: 144, column: 21)
!3918 = distinct !DILexicalBlock(scope: !3911, file: !3848, line: 142, column: 15)
!3919 = !DILocation(line: 144, column: 29, scope: !3917)
!3920 = !DILocation(line: 144, column: 21, scope: !3918)
!3921 = !DILocation(line: 152, column: 17, scope: !3918)
!3922 = !DILocation(line: 157, column: 7, scope: !3864)
!3923 = !DILocalVariable(name: "err", scope: !3924, file: !3848, line: 64, type: !3851)
!3924 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3848, file: !3848, line: 62, type: !3925, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!3851, !3852, !104, !104}
!3927 = !{!3928, !3929, !3930, !3923}
!3928 = !DILocalVariable(name: "x", arg: 1, scope: !3924, file: !3848, line: 62, type: !3852)
!3929 = !DILocalVariable(name: "base", arg: 2, scope: !3924, file: !3848, line: 62, type: !104)
!3930 = !DILocalVariable(name: "power", arg: 3, scope: !3924, file: !3848, line: 62, type: !104)
!3931 = !DILocation(line: 0, scope: !3924, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 219, column: 22, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3864, file: !3848, line: 158, column: 9)
!3934 = !DILocalVariable(name: "x", arg: 1, scope: !3935, file: !3848, line: 47, type: !3852)
!3935 = distinct !DISubprogram(name: "bkm_scale", scope: !3848, file: !3848, line: 47, type: !3936, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3938)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!3851, !3852, !104}
!3938 = !{!3934, !3939, !3940}
!3939 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3935, file: !3848, line: 47, type: !104)
!3940 = !DILocalVariable(name: "scaled", scope: !3935, file: !3848, line: 49, type: !137)
!3941 = !DILocation(line: 0, scope: !3935, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !3932)
!3943 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3942)
!3944 = distinct !DILexicalBlock(scope: !3935, file: !3848, line: 50, column: 7)
!3945 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3942)
!3946 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !3932)
!3947 = !DILocation(line: 227, column: 11, scope: !3864)
!3948 = !DILocation(line: 0, scope: !3924, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 215, column: 22, scope: !3933)
!3950 = !DILocation(line: 0, scope: !3935, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !3949)
!3952 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3951)
!3953 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3951)
!3954 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !3949)
!3955 = !DILocation(line: 0, scope: !3924, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 202, column: 22, scope: !3933)
!3957 = !DILocation(line: 0, scope: !3935, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !3956)
!3959 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3958)
!3960 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3958)
!3961 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !3956)
!3962 = !DILocation(line: 0, scope: !3924, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 198, column: 22, scope: !3933)
!3964 = !DILocation(line: 0, scope: !3935, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !3963)
!3966 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3965)
!3967 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3965)
!3968 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !3963)
!3969 = !DILocation(line: 0, scope: !3924, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 194, column: 22, scope: !3933)
!3971 = !DILocation(line: 0, scope: !3935, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !3970)
!3973 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3972)
!3974 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3972)
!3975 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !3970)
!3976 = !DILocation(line: 0, scope: !3924, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 175, column: 22, scope: !3933)
!3978 = !DILocation(line: 0, scope: !3935, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !3977)
!3980 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3979)
!3981 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3979)
!3982 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !3977)
!3983 = !DILocation(line: 0, scope: !3935, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 160, column: 22, scope: !3933)
!3985 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3984)
!3986 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3984)
!3987 = !DILocation(line: 161, column: 11, scope: !3933)
!3988 = !DILocation(line: 0, scope: !3935, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 167, column: 22, scope: !3933)
!3990 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3989)
!3991 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3989)
!3992 = !DILocation(line: 168, column: 11, scope: !3933)
!3993 = !DILocation(line: 0, scope: !3924, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 180, column: 22, scope: !3933)
!3995 = !DILocation(line: 0, scope: !3935, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !3994)
!3997 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !3996)
!3998 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !3996)
!3999 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !3994)
!4000 = !DILocation(line: 0, scope: !3924, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 185, column: 22, scope: !3933)
!4002 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !4001)
!4004 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !4003)
!4005 = !DILocation(line: 0, scope: !3935, inlinedAt: !4003)
!4006 = !DILocation(line: 0, scope: !3924, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 190, column: 22, scope: !3933)
!4008 = !DILocation(line: 0, scope: !3935, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !4007)
!4010 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !4009)
!4011 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !4009)
!4012 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !4007)
!4013 = !DILocation(line: 0, scope: !3924, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 207, column: 22, scope: !3933)
!4015 = !DILocation(line: 0, scope: !3935, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 66, column: 12, scope: !3924, inlinedAt: !4014)
!4017 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !4016)
!4018 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !4016)
!4019 = !DILocation(line: 66, column: 9, scope: !3924, inlinedAt: !4014)
!4020 = !DILocation(line: 0, scope: !3935, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 211, column: 22, scope: !3933)
!4022 = !DILocation(line: 50, column: 7, scope: !3944, inlinedAt: !4021)
!4023 = !DILocation(line: 50, column: 7, scope: !3935, inlinedAt: !4021)
!4024 = !DILocation(line: 212, column: 11, scope: !3933)
!4025 = !DILocation(line: 0, scope: !3933)
!4026 = !DILocation(line: 228, column: 10, scope: !3864)
!4027 = !DILocation(line: 229, column: 11, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3864, file: !3848, line: 229, column: 11)
!4029 = !DILocation(line: 229, column: 11, scope: !3864)
!4030 = !DILocation(line: 223, column: 16, scope: !3933)
!4031 = !DILocation(line: 224, column: 22, scope: !3933)
!4032 = !DILocation(line: 100, column: 11, scope: !3881)
!4033 = !DILocation(line: 92, column: 16, scope: !3847)
!4034 = !DILocation(line: 233, column: 8, scope: !3847)
!4035 = !DILocation(line: 234, column: 3, scope: !3847)
!4036 = !DILocation(line: 235, column: 1, scope: !3847)
!4037 = !DISubprogram(name: "strtoimax", scope: !4038, file: !4038, line: 297, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4038 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!137, !966, !4041, !104}
!4041 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1125)
!4042 = distinct !DISubprogram(name: "close_stream", scope: !869, file: !869, line: 55, type: !4043, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4079)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!104, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4048)
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4047, file: !253, line: 51, baseType: !104, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4047, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4047, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4047, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4047, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4047, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4047, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4047, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4047, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4047, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4047, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4047, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4047, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4047, file: !253, line: 70, baseType: !4063, size: 64, offset: 832)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4047, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4047, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4047, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4047, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4047, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4047, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4047, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4047, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4047, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4047, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4047, file: !253, line: 93, baseType: !4063, size: 64, offset: 1344)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4047, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4047, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4047, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4047, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4079 = !{!4080, !4081, !4083, !4084}
!4080 = !DILocalVariable(name: "stream", arg: 1, scope: !4042, file: !869, line: 55, type: !4045)
!4081 = !DILocalVariable(name: "some_pending", scope: !4042, file: !869, line: 57, type: !4082)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4083 = !DILocalVariable(name: "prev_fail", scope: !4042, file: !869, line: 58, type: !4082)
!4084 = !DILocalVariable(name: "fclose_fail", scope: !4042, file: !869, line: 59, type: !4082)
!4085 = !DILocation(line: 0, scope: !4042)
!4086 = !DILocation(line: 57, column: 30, scope: !4042)
!4087 = !DILocalVariable(name: "__stream", arg: 1, scope: !4088, file: !1658, line: 135, type: !4045)
!4088 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1658, file: !1658, line: 135, type: !4043, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4089)
!4089 = !{!4087}
!4090 = !DILocation(line: 0, scope: !4088, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 58, column: 27, scope: !4042)
!4092 = !DILocation(line: 137, column: 10, scope: !4088, inlinedAt: !4091)
!4093 = !{!1667, !976, i64 0}
!4094 = !DILocation(line: 58, column: 43, scope: !4042)
!4095 = !DILocation(line: 59, column: 29, scope: !4042)
!4096 = !DILocation(line: 59, column: 45, scope: !4042)
!4097 = !DILocation(line: 69, column: 17, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4042, file: !869, line: 69, column: 7)
!4099 = !DILocation(line: 57, column: 50, scope: !4042)
!4100 = !DILocation(line: 69, column: 33, scope: !4098)
!4101 = !DILocation(line: 69, column: 53, scope: !4098)
!4102 = !DILocation(line: 69, column: 59, scope: !4098)
!4103 = !DILocation(line: 69, column: 7, scope: !4042)
!4104 = !DILocation(line: 71, column: 11, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4098, file: !869, line: 70, column: 5)
!4106 = !DILocation(line: 72, column: 9, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4105, file: !869, line: 71, column: 11)
!4108 = !DILocation(line: 72, column: 15, scope: !4107)
!4109 = !DILocation(line: 77, column: 1, scope: !4042)
!4110 = !DISubprogram(name: "__fpending", scope: !4111, file: !4111, line: 75, type: !4112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4111 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!131, !4045}
!4114 = distinct !DISubprogram(name: "rpl_fclose", scope: !871, file: !871, line: 58, type: !4115, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4151)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!104, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4119, file: !253, line: 51, baseType: !104, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4119, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4119, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4119, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4119, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4119, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4119, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4119, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4119, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4119, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4119, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4119, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4119, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4119, file: !253, line: 70, baseType: !4135, size: 64, offset: 832)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4119, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4119, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4119, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4119, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4119, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4119, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4119, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4119, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4119, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4119, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4119, file: !253, line: 93, baseType: !4135, size: 64, offset: 1344)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4119, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4119, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4119, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4119, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4151 = !{!4152, !4153, !4154, !4155}
!4152 = !DILocalVariable(name: "fp", arg: 1, scope: !4114, file: !871, line: 58, type: !4117)
!4153 = !DILocalVariable(name: "saved_errno", scope: !4114, file: !871, line: 60, type: !104)
!4154 = !DILocalVariable(name: "fd", scope: !4114, file: !871, line: 63, type: !104)
!4155 = !DILocalVariable(name: "result", scope: !4114, file: !871, line: 74, type: !104)
!4156 = !DILocation(line: 0, scope: !4114)
!4157 = !DILocation(line: 63, column: 12, scope: !4114)
!4158 = !DILocation(line: 64, column: 10, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4114, file: !871, line: 64, column: 7)
!4160 = !DILocation(line: 64, column: 7, scope: !4114)
!4161 = !DILocation(line: 65, column: 12, scope: !4159)
!4162 = !DILocation(line: 65, column: 5, scope: !4159)
!4163 = !DILocation(line: 70, column: 9, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4114, file: !871, line: 70, column: 7)
!4165 = !DILocation(line: 70, column: 23, scope: !4164)
!4166 = !DILocation(line: 70, column: 33, scope: !4164)
!4167 = !DILocation(line: 70, column: 26, scope: !4164)
!4168 = !DILocation(line: 70, column: 59, scope: !4164)
!4169 = !DILocation(line: 71, column: 7, scope: !4164)
!4170 = !DILocation(line: 71, column: 10, scope: !4164)
!4171 = !DILocation(line: 70, column: 7, scope: !4114)
!4172 = !DILocation(line: 100, column: 12, scope: !4114)
!4173 = !DILocation(line: 105, column: 7, scope: !4114)
!4174 = !DILocation(line: 72, column: 19, scope: !4164)
!4175 = !DILocation(line: 105, column: 19, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4114, file: !871, line: 105, column: 7)
!4177 = !DILocation(line: 107, column: 13, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4176, file: !871, line: 106, column: 5)
!4179 = !DILocation(line: 109, column: 5, scope: !4178)
!4180 = !DILocation(line: 112, column: 1, scope: !4114)
!4181 = !DISubprogram(name: "fileno", scope: !125, file: !125, line: 809, type: !4115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4182 = !DISubprogram(name: "fclose", scope: !125, file: !125, line: 178, type: !4115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4183 = !DISubprogram(name: "__freading", scope: !4111, file: !4111, line: 51, type: !4115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4184 = distinct !DISubprogram(name: "rpl_fflush", scope: !873, file: !873, line: 130, type: !4185, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4221)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!104, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4189)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4189, file: !253, line: 51, baseType: !104, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4189, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4189, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4189, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4189, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4189, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4189, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4189, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4189, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4189, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4189, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4189, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4189, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4189, file: !253, line: 70, baseType: !4205, size: 64, offset: 832)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4189, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4189, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4189, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4189, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4189, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4189, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4189, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4189, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4189, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4189, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4189, file: !253, line: 93, baseType: !4205, size: 64, offset: 1344)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4189, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4189, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4189, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4189, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4221 = !{!4222}
!4222 = !DILocalVariable(name: "stream", arg: 1, scope: !4184, file: !873, line: 130, type: !4187)
!4223 = !DILocation(line: 0, scope: !4184)
!4224 = !DILocation(line: 151, column: 14, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4184, file: !873, line: 151, column: 7)
!4226 = !DILocation(line: 151, column: 22, scope: !4225)
!4227 = !DILocation(line: 151, column: 27, scope: !4225)
!4228 = !DILocation(line: 151, column: 7, scope: !4184)
!4229 = !DILocation(line: 152, column: 12, scope: !4225)
!4230 = !DILocation(line: 152, column: 5, scope: !4225)
!4231 = !DILocalVariable(name: "fp", arg: 1, scope: !4232, file: !873, line: 42, type: !4187)
!4232 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !873, file: !873, line: 42, type: !4233, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4187}
!4235 = !{!4231}
!4236 = !DILocation(line: 0, scope: !4232, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 157, column: 3, scope: !4184)
!4238 = !DILocation(line: 44, column: 12, scope: !4239, inlinedAt: !4237)
!4239 = distinct !DILexicalBlock(scope: !4232, file: !873, line: 44, column: 7)
!4240 = !DILocation(line: 44, column: 19, scope: !4239, inlinedAt: !4237)
!4241 = !DILocation(line: 44, column: 7, scope: !4232, inlinedAt: !4237)
!4242 = !DILocation(line: 46, column: 5, scope: !4239, inlinedAt: !4237)
!4243 = !DILocation(line: 159, column: 10, scope: !4184)
!4244 = !DILocation(line: 159, column: 3, scope: !4184)
!4245 = !DILocation(line: 236, column: 1, scope: !4184)
!4246 = !DISubprogram(name: "fflush", scope: !125, file: !125, line: 230, type: !4185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4247 = distinct !DISubprogram(name: "rpl_fseeko", scope: !875, file: !875, line: 28, type: !4248, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4284)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!104, !4250, !124, !104}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4252, file: !253, line: 51, baseType: !104, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4252, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4252, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4252, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4252, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4252, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4252, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4252, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4252, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4252, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4252, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4252, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4252, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4252, file: !253, line: 70, baseType: !4268, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4252, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4252, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4252, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4252, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4252, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4252, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4252, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4252, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4252, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4252, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4252, file: !253, line: 93, baseType: !4268, size: 64, offset: 1344)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4252, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4252, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4252, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4252, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4284 = !{!4285, !4286, !4287, !4288}
!4285 = !DILocalVariable(name: "fp", arg: 1, scope: !4247, file: !875, line: 28, type: !4250)
!4286 = !DILocalVariable(name: "offset", arg: 2, scope: !4247, file: !875, line: 28, type: !124)
!4287 = !DILocalVariable(name: "whence", arg: 3, scope: !4247, file: !875, line: 28, type: !104)
!4288 = !DILocalVariable(name: "pos", scope: !4289, file: !875, line: 123, type: !124)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !875, line: 119, column: 5)
!4290 = distinct !DILexicalBlock(scope: !4247, file: !875, line: 55, column: 7)
!4291 = !DILocation(line: 0, scope: !4247)
!4292 = !DILocation(line: 55, column: 12, scope: !4290)
!4293 = !{!1667, !905, i64 16}
!4294 = !DILocation(line: 55, column: 33, scope: !4290)
!4295 = !{!1667, !905, i64 8}
!4296 = !DILocation(line: 55, column: 25, scope: !4290)
!4297 = !DILocation(line: 56, column: 7, scope: !4290)
!4298 = !DILocation(line: 56, column: 15, scope: !4290)
!4299 = !DILocation(line: 56, column: 37, scope: !4290)
!4300 = !{!1667, !905, i64 32}
!4301 = !DILocation(line: 56, column: 29, scope: !4290)
!4302 = !DILocation(line: 57, column: 7, scope: !4290)
!4303 = !DILocation(line: 57, column: 15, scope: !4290)
!4304 = !{!1667, !905, i64 72}
!4305 = !DILocation(line: 57, column: 29, scope: !4290)
!4306 = !DILocation(line: 55, column: 7, scope: !4247)
!4307 = !DILocation(line: 123, column: 26, scope: !4289)
!4308 = !DILocation(line: 123, column: 19, scope: !4289)
!4309 = !DILocation(line: 0, scope: !4289)
!4310 = !DILocation(line: 124, column: 15, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4289, file: !875, line: 124, column: 11)
!4312 = !DILocation(line: 124, column: 11, scope: !4289)
!4313 = !DILocation(line: 135, column: 19, scope: !4289)
!4314 = !DILocation(line: 136, column: 12, scope: !4289)
!4315 = !DILocation(line: 136, column: 20, scope: !4289)
!4316 = !{!1667, !1286, i64 144}
!4317 = !DILocation(line: 167, column: 7, scope: !4289)
!4318 = !DILocation(line: 169, column: 10, scope: !4247)
!4319 = !DILocation(line: 169, column: 3, scope: !4247)
!4320 = !DILocation(line: 170, column: 1, scope: !4247)
!4321 = !DISubprogram(name: "fseeko", scope: !125, file: !125, line: 736, type: !4322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!104, !4250, !126, !104}
!4324 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !776, file: !776, line: 100, type: !4325, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4328)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!131, !1831, !134, !131, !4327}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!4328 = !{!4329, !4330, !4331, !4332, !4333}
!4329 = !DILocalVariable(name: "pwc", arg: 1, scope: !4324, file: !776, line: 100, type: !1831)
!4330 = !DILocalVariable(name: "s", arg: 2, scope: !4324, file: !776, line: 100, type: !134)
!4331 = !DILocalVariable(name: "n", arg: 3, scope: !4324, file: !776, line: 100, type: !131)
!4332 = !DILocalVariable(name: "ps", arg: 4, scope: !4324, file: !776, line: 100, type: !4327)
!4333 = !DILocalVariable(name: "ret", scope: !4324, file: !776, line: 130, type: !131)
!4334 = !DILocation(line: 0, scope: !4324)
!4335 = !DILocation(line: 105, column: 9, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4324, file: !776, line: 105, column: 7)
!4337 = !DILocation(line: 105, column: 7, scope: !4324)
!4338 = !DILocation(line: 117, column: 10, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4324, file: !776, line: 117, column: 7)
!4340 = !DILocation(line: 117, column: 7, scope: !4324)
!4341 = !DILocation(line: 130, column: 16, scope: !4324)
!4342 = !DILocation(line: 135, column: 11, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4324, file: !776, line: 135, column: 7)
!4344 = !DILocation(line: 135, column: 25, scope: !4343)
!4345 = !DILocation(line: 135, column: 30, scope: !4343)
!4346 = !DILocation(line: 135, column: 7, scope: !4324)
!4347 = !DILocalVariable(name: "ps", arg: 1, scope: !4348, file: !1804, line: 1135, type: !4327)
!4348 = distinct !DISubprogram(name: "mbszero", scope: !1804, file: !1804, line: 1135, type: !4349, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{null, !4327}
!4351 = !{!4347}
!4352 = !DILocation(line: 0, scope: !4348, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 137, column: 5, scope: !4343)
!4354 = !DILocalVariable(name: "__dest", arg: 1, scope: !4355, file: !1813, line: 57, type: !130)
!4355 = distinct !DISubprogram(name: "memset", scope: !1813, file: !1813, line: 57, type: !1814, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4356)
!4356 = !{!4354, !4357, !4358}
!4357 = !DILocalVariable(name: "__ch", arg: 2, scope: !4355, file: !1813, line: 57, type: !104)
!4358 = !DILocalVariable(name: "__len", arg: 3, scope: !4355, file: !1813, line: 57, type: !131)
!4359 = !DILocation(line: 0, scope: !4355, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 1137, column: 3, scope: !4348, inlinedAt: !4353)
!4361 = !DILocation(line: 59, column: 10, scope: !4355, inlinedAt: !4360)
!4362 = !DILocation(line: 137, column: 5, scope: !4343)
!4363 = !DILocation(line: 138, column: 11, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4324, file: !776, line: 138, column: 7)
!4365 = !DILocation(line: 138, column: 7, scope: !4324)
!4366 = !DILocation(line: 139, column: 5, scope: !4364)
!4367 = !DILocation(line: 143, column: 26, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4324, file: !776, line: 143, column: 7)
!4369 = !DILocation(line: 143, column: 41, scope: !4368)
!4370 = !DILocation(line: 143, column: 7, scope: !4324)
!4371 = !DILocation(line: 145, column: 15, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !776, line: 145, column: 11)
!4373 = distinct !DILexicalBlock(scope: !4368, file: !776, line: 144, column: 5)
!4374 = !DILocation(line: 145, column: 11, scope: !4373)
!4375 = !DILocation(line: 146, column: 32, scope: !4372)
!4376 = !DILocation(line: 146, column: 16, scope: !4372)
!4377 = !DILocation(line: 146, column: 14, scope: !4372)
!4378 = !DILocation(line: 146, column: 9, scope: !4372)
!4379 = !DILocation(line: 286, column: 1, scope: !4324)
!4380 = !DISubprogram(name: "mbsinit", scope: !4381, file: !4381, line: 293, type: !4382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4381 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!104, !4384}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!4386 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !877, file: !877, line: 27, type: !3323, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4387)
!4387 = !{!4388, !4389, !4390, !4391}
!4388 = !DILocalVariable(name: "ptr", arg: 1, scope: !4386, file: !877, line: 27, type: !130)
!4389 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4386, file: !877, line: 27, type: !131)
!4390 = !DILocalVariable(name: "size", arg: 3, scope: !4386, file: !877, line: 27, type: !131)
!4391 = !DILocalVariable(name: "nbytes", scope: !4386, file: !877, line: 29, type: !131)
!4392 = !DILocation(line: 0, scope: !4386)
!4393 = !DILocation(line: 30, column: 7, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4386, file: !877, line: 30, column: 7)
!4395 = !DILocation(line: 30, column: 7, scope: !4386)
!4396 = !DILocation(line: 32, column: 7, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !877, line: 31, column: 5)
!4398 = !DILocation(line: 32, column: 13, scope: !4397)
!4399 = !DILocation(line: 33, column: 7, scope: !4397)
!4400 = !DILocalVariable(name: "ptr", arg: 1, scope: !4401, file: !3415, line: 2057, type: !130)
!4401 = distinct !DISubprogram(name: "rpl_realloc", scope: !3415, file: !3415, line: 2057, type: !3407, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4402)
!4402 = !{!4400, !4403}
!4403 = !DILocalVariable(name: "size", arg: 2, scope: !4401, file: !3415, line: 2057, type: !131)
!4404 = !DILocation(line: 0, scope: !4401, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 37, column: 10, scope: !4386)
!4406 = !DILocation(line: 2059, column: 24, scope: !4401, inlinedAt: !4405)
!4407 = !DILocation(line: 2059, column: 10, scope: !4401, inlinedAt: !4405)
!4408 = !DILocation(line: 37, column: 3, scope: !4386)
!4409 = !DILocation(line: 38, column: 1, scope: !4386)
!4410 = distinct !DISubprogram(name: "hard_locale", scope: !794, file: !794, line: 28, type: !4411, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!215, !104}
!4413 = !{!4414, !4415}
!4414 = !DILocalVariable(name: "category", arg: 1, scope: !4410, file: !794, line: 28, type: !104)
!4415 = !DILocalVariable(name: "locale", scope: !4410, file: !794, line: 30, type: !4416)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4417)
!4417 = !{!4418}
!4418 = !DISubrange(count: 257)
!4419 = distinct !DIAssignID()
!4420 = !DILocation(line: 0, scope: !4410)
!4421 = !DILocation(line: 30, column: 3, scope: !4410)
!4422 = !DILocation(line: 32, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4410, file: !794, line: 32, column: 7)
!4424 = !DILocation(line: 32, column: 7, scope: !4410)
!4425 = !DILocalVariable(name: "__s1", arg: 1, scope: !4426, file: !988, line: 1359, type: !134)
!4426 = distinct !DISubprogram(name: "streq", scope: !988, file: !988, line: 1359, type: !989, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4427)
!4427 = !{!4425, !4428}
!4428 = !DILocalVariable(name: "__s2", arg: 2, scope: !4426, file: !988, line: 1359, type: !134)
!4429 = !DILocation(line: 0, scope: !4426, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 35, column: 9, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4410, file: !794, line: 35, column: 7)
!4432 = !DILocation(line: 1361, column: 11, scope: !4426, inlinedAt: !4430)
!4433 = !DILocation(line: 1361, column: 10, scope: !4426, inlinedAt: !4430)
!4434 = !DILocation(line: 35, column: 29, scope: !4431)
!4435 = !DILocation(line: 0, scope: !4426, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 35, column: 32, scope: !4431)
!4437 = !DILocation(line: 1361, column: 11, scope: !4426, inlinedAt: !4436)
!4438 = !DILocation(line: 1361, column: 10, scope: !4426, inlinedAt: !4436)
!4439 = !DILocation(line: 35, column: 7, scope: !4410)
!4440 = !DILocation(line: 46, column: 3, scope: !4410)
!4441 = !DILocation(line: 47, column: 1, scope: !4410)
!4442 = distinct !DISubprogram(name: "setlocale_null_r", scope: !881, file: !881, line: 154, type: !4443, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4445)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!104, !104, !129, !131}
!4445 = !{!4446, !4447, !4448}
!4446 = !DILocalVariable(name: "category", arg: 1, scope: !4442, file: !881, line: 154, type: !104)
!4447 = !DILocalVariable(name: "buf", arg: 2, scope: !4442, file: !881, line: 154, type: !129)
!4448 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4442, file: !881, line: 154, type: !131)
!4449 = !DILocation(line: 0, scope: !4442)
!4450 = !DILocation(line: 159, column: 10, scope: !4442)
!4451 = !DILocation(line: 159, column: 3, scope: !4442)
!4452 = distinct !DISubprogram(name: "setlocale_null", scope: !881, file: !881, line: 186, type: !4453, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!134, !104}
!4455 = !{!4456}
!4456 = !DILocalVariable(name: "category", arg: 1, scope: !4452, file: !881, line: 186, type: !104)
!4457 = !DILocation(line: 0, scope: !4452)
!4458 = !DILocation(line: 189, column: 10, scope: !4452)
!4459 = !DILocation(line: 189, column: 3, scope: !4452)
!4460 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !883, file: !883, line: 35, type: !4453, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4461)
!4461 = !{!4462, !4463}
!4462 = !DILocalVariable(name: "category", arg: 1, scope: !4460, file: !883, line: 35, type: !104)
!4463 = !DILocalVariable(name: "result", scope: !4460, file: !883, line: 37, type: !134)
!4464 = !DILocation(line: 0, scope: !4460)
!4465 = !DILocation(line: 37, column: 24, scope: !4460)
!4466 = !DILocation(line: 62, column: 3, scope: !4460)
!4467 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !883, file: !883, line: 66, type: !4443, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4468)
!4468 = !{!4469, !4470, !4471, !4472, !4473}
!4469 = !DILocalVariable(name: "category", arg: 1, scope: !4467, file: !883, line: 66, type: !104)
!4470 = !DILocalVariable(name: "buf", arg: 2, scope: !4467, file: !883, line: 66, type: !129)
!4471 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4467, file: !883, line: 66, type: !131)
!4472 = !DILocalVariable(name: "result", scope: !4467, file: !883, line: 111, type: !134)
!4473 = !DILocalVariable(name: "length", scope: !4474, file: !883, line: 125, type: !131)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !883, line: 124, column: 5)
!4475 = distinct !DILexicalBlock(scope: !4467, file: !883, line: 113, column: 7)
!4476 = !DILocation(line: 0, scope: !4467)
!4477 = !DILocation(line: 0, scope: !4460, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 111, column: 24, scope: !4467)
!4479 = !DILocation(line: 37, column: 24, scope: !4460, inlinedAt: !4478)
!4480 = !DILocation(line: 113, column: 14, scope: !4475)
!4481 = !DILocation(line: 113, column: 7, scope: !4467)
!4482 = !DILocation(line: 116, column: 19, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !883, line: 116, column: 11)
!4484 = distinct !DILexicalBlock(scope: !4475, file: !883, line: 114, column: 5)
!4485 = !DILocation(line: 116, column: 11, scope: !4484)
!4486 = !DILocation(line: 120, column: 16, scope: !4483)
!4487 = !DILocation(line: 120, column: 9, scope: !4483)
!4488 = !DILocation(line: 125, column: 23, scope: !4474)
!4489 = !DILocation(line: 0, scope: !4474)
!4490 = !DILocation(line: 126, column: 18, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4474, file: !883, line: 126, column: 11)
!4492 = !DILocation(line: 126, column: 11, scope: !4474)
!4493 = !DILocation(line: 128, column: 39, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4491, file: !883, line: 127, column: 9)
!4495 = !DILocalVariable(name: "__dest", arg: 1, scope: !4496, file: !1813, line: 26, type: !3685)
!4496 = distinct !DISubprogram(name: "memcpy", scope: !1813, file: !1813, line: 26, type: !3683, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4497)
!4497 = !{!4495, !4498, !4499}
!4498 = !DILocalVariable(name: "__src", arg: 2, scope: !4496, file: !1813, line: 26, type: !1119)
!4499 = !DILocalVariable(name: "__len", arg: 3, scope: !4496, file: !1813, line: 26, type: !131)
!4500 = !DILocation(line: 0, scope: !4496, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 128, column: 11, scope: !4494)
!4502 = !DILocation(line: 29, column: 10, scope: !4496, inlinedAt: !4501)
!4503 = !DILocation(line: 129, column: 11, scope: !4494)
!4504 = !DILocation(line: 133, column: 23, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !883, line: 133, column: 15)
!4506 = distinct !DILexicalBlock(scope: !4491, file: !883, line: 132, column: 9)
!4507 = !DILocation(line: 133, column: 15, scope: !4506)
!4508 = !DILocation(line: 138, column: 44, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4505, file: !883, line: 134, column: 13)
!4510 = !DILocation(line: 0, scope: !4496, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 138, column: 15, scope: !4509)
!4512 = !DILocation(line: 29, column: 10, scope: !4496, inlinedAt: !4511)
!4513 = !DILocation(line: 139, column: 15, scope: !4509)
!4514 = !DILocation(line: 139, column: 32, scope: !4509)
!4515 = !DILocation(line: 140, column: 13, scope: !4509)
!4516 = !DILocation(line: 0, scope: !4475)
!4517 = !DILocation(line: 145, column: 1, scope: !4467)
