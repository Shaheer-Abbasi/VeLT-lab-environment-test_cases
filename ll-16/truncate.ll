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
@.str.15 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1, !dbg !142
@.str.16 = private unnamed_addr constant [16 x i8] c"EgGkKmMPQRtTYZ0\00", align 1, !dbg !147
@.str.17 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1, !dbg !152
@.str.18 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1, !dbg !157
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !162
@.str.20 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1, !dbg !167
@.str.21 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1, !dbg !169
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1, !dbg !171
@.str.23 = private unnamed_addr constant [7 x i8] c"--size\00", align 1, !dbg !176
@.str.24 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1, !dbg !178
@.str.25 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1, !dbg !183
@.str.26 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1, !dbg !185
@.str.27 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1, !dbg !190
@.str.28 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1, !dbg !192
@.str.29 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1, !dbg !197
@.str.30 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1, !dbg !199
@.str.31 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1, !dbg !204
@.str.32 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1, !dbg !209
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !519
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !485
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !509
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !511
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !513
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !515
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !517
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !521
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !523
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !525
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !530
@.str.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !536
@.str.1.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !538
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !540
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !571
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !574
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !576
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !581
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !583
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !585
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !587
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !589
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !591
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !593
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 8, !dbg !595
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !606
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !620
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !658
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !665
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !622
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !667
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !610
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !627
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !629
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !631
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !633
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !635
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !673
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !676
@.str.2.103 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !678
@.str.3.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !680
@.str.4.105 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !682
@.str.5.106 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !684
@.str.6.107 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !689
@.str.7.108 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !694
@.str.8.109 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !696
@.str.9.110 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !701
@.str.10.111 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !706
@.str.11.112 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !708
@.str.12.113 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !713
@.str.13.114 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !715
@.str.14.115 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !720
@.str.15.116 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !725
@.str.16.117 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !730
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.122 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !735
@.str.18.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !737
@.str.19.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !739
@.str.20.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !741
@.str.21.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !743
@.str.22.127 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !745
@.str.23.128 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !747
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !749
@exit_failure = dso_local global i32 1, align 4, !dbg !757
@.str.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !763
@.str.1.139 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !766
@.str.2.140 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !768
@.str.142 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !770
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !773
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !776
@.str.162 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !791
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !794

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !889 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !893, metadata !DIExpression()), !dbg !894
  %2 = icmp eq i32 %0, 0, !dbg !895
  br i1 %2, label %8, label %3, !dbg !897

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !898, !tbaa !900
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !898
  %6 = load ptr, ptr @program_name, align 8, !dbg !898, !tbaa !900
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !898
  br label %44, !dbg !898

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !904
  %10 = load ptr, ptr @program_name, align 8, !dbg !904, !tbaa !900
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !904
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !906
  %13 = load ptr, ptr @stdout, align 8, !dbg !906, !tbaa !900
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !906
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #37, !dbg !907
  %16 = load ptr, ptr @stdout, align 8, !dbg !907, !tbaa !900
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !907
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !911
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !911
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !912
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !912
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !913
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !913
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !914
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !914
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !915
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !915
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !916
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !916
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #37, !dbg !917
  %25 = load ptr, ptr @stdout, align 8, !dbg !917, !tbaa !900
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !917
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !920
  %28 = load ptr, ptr @stdout, align 8, !dbg !920, !tbaa !900
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !920
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !933, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr poison, metadata !933, metadata !DIExpression()), !dbg !938
  tail call void @emit_bug_reporting_address() #37, !dbg !940
  %30 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !941
  call void @llvm.dbg.value(metadata ptr %30, metadata !936, metadata !DIExpression()), !dbg !938
  %31 = icmp eq ptr %30, null, !dbg !942
  br i1 %31, label %39, label %32, !dbg !944

32:                                               ; preds = %8
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #38, !dbg !945
  %34 = icmp eq i32 %33, 0, !dbg !945
  br i1 %34, label %39, label %35, !dbg !946

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !947
  %37 = load ptr, ptr @stdout, align 8, !dbg !947, !tbaa !900
  %38 = tail call i32 @fputs_unlocked(ptr noundef %36, ptr noundef %37), !dbg !947
  br label %39, !dbg !949

39:                                               ; preds = %8, %32, %35
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !933, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !937, metadata !DIExpression()), !dbg !938
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #37, !dbg !950
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #37, !dbg !950
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #37, !dbg !951
  %43 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #37, !dbg !951
  br label %44

44:                                               ; preds = %39, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !952
  unreachable, !dbg !952
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !953 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !957 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !963 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !966 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !227 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %0, metadata !232, metadata !DIExpression()), !dbg !969
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !970, !tbaa !971
  %3 = icmp eq i32 %2, -1, !dbg !973
  br i1 %3, label %4, label %16, !dbg !974

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #37, !dbg !975
  call void @llvm.dbg.value(metadata ptr %5, metadata !233, metadata !DIExpression()), !dbg !976
  %6 = icmp eq ptr %5, null, !dbg !977
  br i1 %6, label %14, label %7, !dbg !978

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !979, !tbaa !980
  %9 = icmp eq i8 %8, 0, !dbg !979
  br i1 %9, label %14, label %10, !dbg !981

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !982, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !988, metadata !DIExpression()), !dbg !989
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #38, !dbg !991
  %12 = icmp eq i32 %11, 0, !dbg !992
  %13 = zext i1 %12 to i32, !dbg !981
  br label %14, !dbg !981

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !993, !tbaa !971
  br label %16, !dbg !994

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !995
  %18 = icmp eq i32 %17, 0, !dbg !995
  br i1 %18, label %22, label %19, !dbg !997

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !900
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !998
  br label %122, !dbg !1000

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !236, metadata !DIExpression()), !dbg !969
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #38, !dbg !1001
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1002
  call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !969
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %25, metadata !238, metadata !DIExpression()), !dbg !969
  %26 = icmp eq ptr %25, null, !dbg !1004
  br i1 %26, label %54, label %27, !dbg !1005

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1006
  br i1 %28, label %54, label %29, !dbg !1007

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !239, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()), !dbg !1008
  %30 = icmp ult ptr %24, %25, !dbg !1009
  br i1 %30, label %31, label %52, !dbg !1010

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !969
  %33 = load ptr, ptr %32, align 8, !tbaa !900
  br label %34, !dbg !1010

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !239, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 %36, metadata !243, metadata !DIExpression()), !dbg !1008
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1011
  call void @llvm.dbg.value(metadata ptr %37, metadata !239, metadata !DIExpression()), !dbg !1008
  %38 = load i8, ptr %35, align 1, !dbg !1011, !tbaa !980
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1011
  %41 = load i16, ptr %40, align 2, !dbg !1011, !tbaa !1012
  %42 = freeze i16 %41, !dbg !1014
  %43 = lshr i16 %42, 13, !dbg !1014
  %44 = and i16 %43, 1, !dbg !1014
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %46, metadata !243, metadata !DIExpression()), !dbg !1008
  %47 = icmp ult ptr %37, %25, !dbg !1009
  %48 = icmp ult i64 %46, 2, !dbg !1016
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1016
  br i1 %49, label %34, label %50, !dbg !1010, !llvm.loop !1017

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1019
  br i1 %51, label %52, label %54, !dbg !1021

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1021

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !969
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !236, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %55, metadata !238, metadata !DIExpression()), !dbg !969
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.37) #38, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %57, metadata !244, metadata !DIExpression()), !dbg !969
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1023
  call void @llvm.dbg.value(metadata ptr %58, metadata !245, metadata !DIExpression()), !dbg !969
  br label %59, !dbg !1024

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !969
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !236, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %60, metadata !245, metadata !DIExpression()), !dbg !969
  %62 = load i8, ptr %60, align 1, !dbg !1025, !tbaa !980
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1026

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1027
  %65 = load i8, ptr %64, align 1, !dbg !1030, !tbaa !980
  %66 = icmp ne i8 %65, 45, !dbg !1031
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1032
  br label %68, !dbg !1032

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !236, metadata !DIExpression()), !dbg !969
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !1033
  %71 = load ptr, ptr %70, align 8, !dbg !1033, !tbaa !900
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1033
  %74 = load i16, ptr %73, align 2, !dbg !1033, !tbaa !1012
  %75 = and i16 %74, 8192, !dbg !1033
  %76 = icmp eq i16 %75, 0, !dbg !1033
  br i1 %76, label %90, label %77, !dbg !1035

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1036
  br i1 %78, label %92, label %79, !dbg !1039

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1040
  %81 = load i8, ptr %80, align 1, !dbg !1040, !tbaa !980
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1040
  %84 = load i16, ptr %83, align 2, !dbg !1040, !tbaa !1012
  %85 = and i16 %84, 8192, !dbg !1040
  %86 = icmp eq i16 %85, 0, !dbg !1040
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1041
  br i1 %89, label %90, label %92, !dbg !1041

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1042
  call void @llvm.dbg.value(metadata ptr %91, metadata !245, metadata !DIExpression()), !dbg !969
  br label %59, !dbg !1024, !llvm.loop !1043

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1045
  %94 = load ptr, ptr @stdout, align 8, !dbg !1045, !tbaa !900
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !969
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #38, !dbg !1066
  %97 = icmp eq i32 %96, 0, !dbg !1066
  br i1 %97, label %101, label %98, !dbg !1068

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #38, !dbg !1069
  %100 = icmp eq i32 %99, 0, !dbg !1069
  br i1 %100, label %101, label %104, !dbg !1070

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1071
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #37, !dbg !1071
  br label %107, !dbg !1073

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1074
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #37, !dbg !1074
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1076, !tbaa !900
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %108), !dbg !1076
  %110 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !900
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %110), !dbg !1077
  %112 = ptrtoint ptr %60 to i64, !dbg !1078
  %113 = sub i64 %112, %93, !dbg !1078
  %114 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !900
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1078
  %116 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !900
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %116), !dbg !1079
  %118 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !900
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %118), !dbg !1080
  %120 = load ptr, ptr @stdout, align 8, !dbg !1081, !tbaa !900
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1081
  br label %122, !dbg !1082

122:                                              ; preds = %107, %19
  ret void, !dbg !1082
}

; Function Attrs: nounwind
declare !dbg !1083 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1087 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1091 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1093 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1096 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1099 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1102 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1105 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1111 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1112 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1118 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %1, metadata !1124, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, metadata !1125, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 -1, metadata !1127, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 0, metadata !1128, metadata !DIExpression()), !dbg !1184
  %5 = load ptr, ptr %1, align 8, !dbg !1185, !tbaa !900
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1186
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #37, !dbg !1187
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #37, !dbg !1188
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #37, !dbg !1189
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1190
  br label %10, !dbg !1191

10:                                               ; preds = %77, %2
  %11 = phi i32 [ %78, %77 ], [ 0, %2 ]
  %12 = phi i64 [ %80, %77 ], [ undef, %2 ]
  %13 = phi i1 [ true, %77 ], [ false, %2 ]
  br label %14, !dbg !1191

14:                                               ; preds = %30, %10
  call void @llvm.dbg.value(metadata i8 poison, metadata !1125, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %12, metadata !1126, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %11, metadata !1128, metadata !DIExpression()), !dbg !1184
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %15, metadata !1130, metadata !DIExpression()), !dbg !1184
  switch i32 %15, label %92 [
    i32 -1, label %93
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -2, label %87
    i32 -3, label %88
  ], !dbg !1191

16:                                               ; preds = %14
  %17 = tail call ptr @__ctype_b_loc() #40, !dbg !1184
  %18 = load ptr, ptr %17, align 8, !dbg !1193, !tbaa !900
  %19 = load ptr, ptr @optarg, align 8, !dbg !1193, !tbaa !900
  %20 = load i8, ptr %19, align 1, !dbg !1193, !tbaa !980
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21, !dbg !1193
  %23 = load i16, ptr %22, align 2, !dbg !1193, !tbaa !1012
  %24 = and i16 %23, 8192, !dbg !1193
  %25 = icmp eq i16 %24, 0, !dbg !1196
  br i1 %25, label %41, label %31, !dbg !1196

26:                                               ; preds = %14
  store i1 true, ptr @no_create, align 1, !dbg !1197
  br label %30, !dbg !1198

27:                                               ; preds = %14
  store i1 true, ptr @block_mode, align 1, !dbg !1199
  br label %30, !dbg !1200

28:                                               ; preds = %14
  %29 = load ptr, ptr @optarg, align 8, !dbg !1201, !tbaa !900
  store ptr %29, ptr @ref_file, align 8, !dbg !1202, !tbaa !900
  br label %30, !dbg !1203

30:                                               ; preds = %28, %27, %26
  br label %14, !dbg !1184, !llvm.loop !1204

31:                                               ; preds = %16, %31
  %32 = phi ptr [ %33, %31 ], [ %19, %16 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1206
  store ptr %33, ptr @optarg, align 8, !dbg !1206, !tbaa !900
  %34 = load ptr, ptr %17, align 8, !dbg !1193, !tbaa !900
  %35 = load i8, ptr %33, align 1, !dbg !1193, !tbaa !980
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i16, ptr %34, i64 %36, !dbg !1193
  %38 = load i16, ptr %37, align 2, !dbg !1193, !tbaa !1012
  %39 = and i16 %38, 8192, !dbg !1193
  %40 = icmp eq i16 %39, 0, !dbg !1196
  br i1 %40, label %41, label %31, !dbg !1196, !llvm.loop !1207

41:                                               ; preds = %31, %16
  %42 = phi ptr [ %19, %16 ], [ %33, %31 ], !dbg !1193
  %43 = phi i8 [ %20, %16 ], [ %35, %31 ], !dbg !1193
  switch i8 %43, label %50 [
    i8 60, label %47
    i8 62, label %44
    i8 47, label %45
    i8 37, label %46
  ], !dbg !1208

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 2, metadata !1128, metadata !DIExpression()), !dbg !1184
  br label %47, !dbg !1209

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 4, metadata !1128, metadata !DIExpression()), !dbg !1184
  br label %47, !dbg !1211

46:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 5, metadata !1128, metadata !DIExpression()), !dbg !1184
  br label %47, !dbg !1212

47:                                               ; preds = %41, %44, %45, %46
  %48 = phi i32 [ 5, %46 ], [ 4, %45 ], [ 2, %44 ], [ 3, %41 ]
  %49 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !1213
  store ptr %49, ptr @optarg, align 8, !dbg !1213, !tbaa !900
  br label %50, !dbg !1214

50:                                               ; preds = %47, %41
  %51 = phi ptr [ %42, %41 ], [ %49, %47 ], !dbg !1214
  %52 = phi i32 [ %11, %41 ], [ %48, %47 ], !dbg !1184
  call void @llvm.dbg.value(metadata i32 %52, metadata !1128, metadata !DIExpression()), !dbg !1184
  %53 = load ptr, ptr %17, align 8, !dbg !1214, !tbaa !900
  %54 = load i8, ptr %51, align 1, !dbg !1214, !tbaa !980
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i16, ptr %53, i64 %55, !dbg !1214
  %57 = load i16, ptr %56, align 2, !dbg !1214, !tbaa !1012
  %58 = and i16 %57, 8192, !dbg !1214
  %59 = icmp eq i16 %58, 0, !dbg !1215
  br i1 %59, label %70, label %60, !dbg !1215

60:                                               ; preds = %50, %60
  %61 = phi ptr [ %62, %60 ], [ %51, %50 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1216
  store ptr %62, ptr @optarg, align 8, !dbg !1216, !tbaa !900
  %63 = load ptr, ptr %17, align 8, !dbg !1214, !tbaa !900
  %64 = load i8, ptr %62, align 1, !dbg !1214, !tbaa !980
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i16, ptr %63, i64 %65, !dbg !1214
  %67 = load i16, ptr %66, align 2, !dbg !1214, !tbaa !1012
  %68 = and i16 %67, 8192, !dbg !1214
  %69 = icmp eq i16 %68, 0, !dbg !1215
  br i1 %69, label %70, label %60, !dbg !1215, !llvm.loop !1217

70:                                               ; preds = %60, %50
  %71 = phi ptr [ %51, %50 ], [ %62, %60 ], !dbg !1214
  %72 = phi i8 [ %54, %50 ], [ %64, %60 ], !dbg !1214
  switch i8 %72, label %77 [
    i8 43, label %73
    i8 45, label %73
  ], !dbg !1218

73:                                               ; preds = %70, %70
  %74 = icmp eq i32 %52, 0, !dbg !1220
  br i1 %74, label %77, label %75, !dbg !1223

75:                                               ; preds = %73
  %76 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1224
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %76) #37, !dbg !1224
  tail call void @usage(i32 noundef 1) #41, !dbg !1226
  unreachable, !dbg !1226

77:                                               ; preds = %73, %70
  %78 = phi i32 [ %52, %70 ], [ 1, %73 ], !dbg !1184
  call void @llvm.dbg.value(metadata i32 %78, metadata !1128, metadata !DIExpression()), !dbg !1184
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1227
  %80 = tail call i64 @xdectoimax(ptr noundef nonnull %71, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.16, ptr noundef %79, i32 noundef 0) #37, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %80, metadata !1126, metadata !DIExpression()), !dbg !1184
  %81 = and i32 %78, -2, !dbg !1229
  %82 = icmp eq i32 %81, 4, !dbg !1229
  %83 = icmp eq i64 %80, 0
  %84 = select i1 %82, i1 %83, i1 false, !dbg !1229
  br i1 %84, label %85, label %10, !dbg !1229, !llvm.loop !1204

85:                                               ; preds = %77
  %86 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #37, !dbg !1231
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %86) #37, !dbg !1231
  unreachable, !dbg !1231

87:                                               ; preds = %14
  tail call void @usage(i32 noundef 0) #41, !dbg !1232
  unreachable, !dbg !1232

88:                                               ; preds = %14
  %89 = load ptr, ptr @stdout, align 8, !dbg !1233, !tbaa !900
  %90 = load ptr, ptr @Version, align 8, !dbg !1233, !tbaa !900
  %91 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !1233
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %89, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, ptr noundef %90, ptr noundef %91, ptr noundef null) #37, !dbg !1233
  tail call void @exit(i32 noundef 0) #39, !dbg !1233
  unreachable, !dbg !1233

92:                                               ; preds = %14
  tail call void @usage(i32 noundef 1) #41, !dbg !1234
  unreachable, !dbg !1234

93:                                               ; preds = %14
  %94 = load i32, ptr @optind, align 4, !dbg !1235, !tbaa !971
  %95 = sext i32 %94 to i64, !dbg !1236
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95, !dbg !1236
  call void @llvm.dbg.value(metadata ptr %96, metadata !1124, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %94), metadata !1123, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1184
  %97 = load ptr, ptr @ref_file, align 8, !dbg !1237, !tbaa !900
  %98 = icmp ne ptr %97, null, !dbg !1237
  %99 = or i1 %98, %13, !dbg !1239
  br i1 %99, label %104, label %100, !dbg !1239

100:                                              ; preds = %93
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !1240
  %102 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #37, !dbg !1240
  %103 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #37, !dbg !1240
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101, ptr noundef %102, ptr noundef %103) #37, !dbg !1240
  tail call void @usage(i32 noundef 1) #41, !dbg !1242
  unreachable, !dbg !1242

104:                                              ; preds = %93
  %105 = icmp eq i32 %11, 0
  %106 = and i1 %98, %13, !dbg !1243
  %107 = select i1 %106, i1 %105, i1 false, !dbg !1243
  br i1 %107, label %108, label %112, !dbg !1243

108:                                              ; preds = %104
  %109 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #37, !dbg !1245
  %110 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #37, !dbg !1245
  %111 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #37, !dbg !1245
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %109, ptr noundef %110, ptr noundef %111) #37, !dbg !1245
  tail call void @usage(i32 noundef 1) #41, !dbg !1247
  unreachable, !dbg !1247

112:                                              ; preds = %104
  %113 = load i1, ptr @block_mode, align 1, !dbg !1248
  %114 = xor i1 %113, true, !dbg !1250
  %115 = or i1 %13, %114, !dbg !1250
  br i1 %115, label %120, label %116, !dbg !1250

116:                                              ; preds = %112
  %117 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #37, !dbg !1251
  %118 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.27) #37, !dbg !1251
  %119 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.23) #37, !dbg !1251
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %117, ptr noundef %118, ptr noundef %119) #37, !dbg !1251
  tail call void @usage(i32 noundef 1) #41, !dbg !1253
  unreachable, !dbg !1253

120:                                              ; preds = %112
  %121 = icmp slt i32 %94, %0, !dbg !1254
  br i1 %121, label %124, label %122, !dbg !1256

122:                                              ; preds = %120
  %123 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #37, !dbg !1257
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %123) #37, !dbg !1257
  tail call void @usage(i32 noundef 1) #41, !dbg !1259
  unreachable, !dbg !1259

124:                                              ; preds = %120
  br i1 %98, label %125, label %164, !dbg !1260

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #37, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1131, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 -1, metadata !1169, metadata !DIExpression()), !dbg !1263
  %126 = call i32 @stat(ptr noundef nonnull %97, ptr noundef nonnull %4) #37, !dbg !1264
  %127 = icmp eq i32 %126, 0, !dbg !1266
  br i1 %127, label %134, label %128, !dbg !1267

128:                                              ; preds = %125
  %129 = tail call ptr @__errno_location() #40, !dbg !1268
  %130 = load i32, ptr %129, align 4, !dbg !1268, !tbaa !971
  %131 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #37, !dbg !1268
  %132 = load ptr, ptr @ref_file, align 8, !dbg !1268, !tbaa !900
  %133 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %132) #37, !dbg !1268
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %130, ptr noundef %131, ptr noundef %133) #37, !dbg !1268
  unreachable, !dbg !1268

134:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr %4, metadata !1269, metadata !DIExpression()), !dbg !1276
  %135 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 2, !dbg !1278
  %136 = load i32, ptr %135, align 8, !dbg !1278, !tbaa !1279
  %137 = and i32 %136, 53248, !dbg !1283
  %138 = icmp eq i32 %137, 32768, !dbg !1283
  br i1 %138, label %150, label %139, !dbg !1284

139:                                              ; preds = %134
  %140 = load ptr, ptr @ref_file, align 8, !dbg !1285, !tbaa !900
  %141 = tail call i32 (ptr, i32, ...) @open(ptr noundef %140, i32 noundef 0) #37, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %141, metadata !1170, metadata !DIExpression()), !dbg !1287
  %142 = icmp sgt i32 %141, -1, !dbg !1288
  br i1 %142, label %143, label %154, !dbg !1289

143:                                              ; preds = %139
  %144 = tail call i64 @lseek(i32 noundef %141, i64 noundef 0, i32 noundef 2) #37, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %144, metadata !1173, metadata !DIExpression()), !dbg !1291
  %145 = tail call ptr @__errno_location() #40, !dbg !1292
  %146 = load i32, ptr %145, align 4, !dbg !1292, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %146, metadata !1176, metadata !DIExpression()), !dbg !1291
  %147 = tail call i32 @close(i32 noundef %141) #37, !dbg !1293
  %148 = icmp sgt i64 %144, -1, !dbg !1294
  br i1 %148, label %160, label %149, !dbg !1296

149:                                              ; preds = %143
  store i32 %146, ptr %145, align 4, !dbg !1297, !tbaa !971
  br label %154

150:                                              ; preds = %134
  %151 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8, !dbg !1299
  %152 = load i64, ptr %151, align 8, !dbg !1299, !tbaa !1300
  call void @llvm.dbg.value(metadata i64 %152, metadata !1169, metadata !DIExpression()), !dbg !1263
  %153 = icmp slt i64 %152, 0, !dbg !1301
  br i1 %153, label %154, label %160, !dbg !1303

154:                                              ; preds = %149, %139, %150
  %155 = tail call ptr @__errno_location() #40, !dbg !1304
  %156 = load i32, ptr %155, align 4, !dbg !1304, !tbaa !971
  %157 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #37, !dbg !1304
  %158 = load ptr, ptr @ref_file, align 8, !dbg !1304, !tbaa !900
  %159 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %158) #37, !dbg !1304
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %156, ptr noundef %157, ptr noundef %159) #37, !dbg !1304
  unreachable, !dbg !1304

160:                                              ; preds = %143, %150
  %161 = phi i64 [ %152, %150 ], [ %144, %143 ]
  %162 = select i1 %13, i64 %161, i64 -1
  %163 = select i1 %13, i64 %12, i64 %161
  call void @llvm.dbg.value(metadata i64 %163, metadata !1126, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %162, metadata !1127, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #37, !dbg !1305
  br label %164, !dbg !1306

164:                                              ; preds = %160, %124
  %165 = phi i64 [ %162, %160 ], [ -1, %124 ], !dbg !1184
  %166 = phi i64 [ %163, %160 ], [ %12, %124 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !1126, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %165, metadata !1127, metadata !DIExpression()), !dbg !1184
  %167 = load i1, ptr @no_create, align 1, !dbg !1307
  %168 = select i1 %167, i32 2049, i32 2113, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %168, metadata !1177, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %96, metadata !1124, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 poison, metadata !1178, metadata !DIExpression()), !dbg !1184
  %169 = load ptr, ptr %96, align 8, !dbg !1309, !tbaa !900
  call void @llvm.dbg.value(metadata ptr %169, metadata !1179, metadata !DIExpression()), !dbg !1310
  %170 = icmp eq ptr %169, null, !dbg !1311
  br i1 %170, label %182, label %171, !dbg !1311

171:                                              ; preds = %164
  %172 = icmp ne i32 %11, 0
  %173 = icmp slt i64 %165, 0
  %174 = and i1 %172, %173
  %175 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 9
  %176 = icmp slt i64 %166, 0
  %177 = icmp eq i64 %166, -1
  %178 = sub i64 0, %166
  %179 = icmp sgt i64 %165, -1
  %180 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 2
  %181 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  br label %185, !dbg !1311

182:                                              ; preds = %293, %164
  %183 = phi i1 [ false, %164 ], [ %294, %293 ]
  %184 = zext i1 %183 to i32, !dbg !1312
  ret i32 %184, !dbg !1313

185:                                              ; preds = %171, %293
  %186 = phi ptr [ %169, %171 ], [ %296, %293 ]
  %187 = phi ptr [ %96, %171 ], [ %295, %293 ]
  %188 = phi i1 [ false, %171 ], [ %294, %293 ]
  call void @llvm.dbg.value(metadata ptr %187, metadata !1124, metadata !DIExpression()), !dbg !1184
  %189 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %186, i32 noundef %168, i32 noundef 438) #37, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %189, metadata !1181, metadata !DIExpression()), !dbg !1315
  %190 = icmp slt i32 %189, 0, !dbg !1316
  br i1 %190, label %191, label %197, !dbg !1318

191:                                              ; preds = %185
  %192 = load i1, ptr @no_create, align 1, !dbg !1319
  %193 = tail call ptr @__errno_location() #40, !dbg !1322
  br i1 %192, label %194, label %287, !dbg !1323

194:                                              ; preds = %191
  %195 = load i32, ptr %193, align 4, !dbg !1324, !tbaa !971
  %196 = icmp eq i32 %195, 2, !dbg !1325
  br i1 %196, label %293, label %287, !dbg !1326

197:                                              ; preds = %185
  call void @llvm.dbg.value(metadata i32 %189, metadata !1327, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %186, metadata !1332, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %166, metadata !1333, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %165, metadata !1334, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %11, metadata !1335, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #37, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1336, metadata !DIExpression()), !dbg !1356
  %198 = load i1, ptr @block_mode, align 1, !dbg !1357
  %199 = select i1 %198, i1 true, i1 %174, !dbg !1359
  br i1 %199, label %200, label %227, !dbg !1359

200:                                              ; preds = %197
  %201 = call i32 @fstat(i32 noundef %189, ptr noundef nonnull %3) #37, !dbg !1360
  %202 = icmp eq i32 %201, 0, !dbg !1361
  br i1 %202, label %208, label %203, !dbg !1362

203:                                              ; preds = %200
  %204 = tail call ptr @__errno_location() #40, !dbg !1363
  %205 = load i32, ptr %204, align 4, !dbg !1363, !tbaa !971
  %206 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #37, !dbg !1363
  %207 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %186) #37, !dbg !1363
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %205, ptr noundef %206, ptr noundef %207) #37, !dbg !1363
  br label %280, !dbg !1365

208:                                              ; preds = %200
  %209 = load i1, ptr @block_mode, align 1, !dbg !1366
  br i1 %209, label %210, label %227, !dbg !1367

210:                                              ; preds = %208
  %211 = load i32, ptr %175, align 8, !dbg !1368, !tbaa !1369
  %212 = icmp sgt i32 %211, 0, !dbg !1368
  %213 = select i1 %212, i32 %211, i32 512, !dbg !1368
  %214 = zext i32 %213 to i64, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %214, metadata !1338, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %166, metadata !1341, metadata !DIExpression()), !dbg !1370
  br i1 %176, label %215, label %219, !dbg !1371

215:                                              ; preds = %210
  br i1 %177, label %222, label %216, !dbg !1371

216:                                              ; preds = %215
  %217 = udiv i64 -9223372036854775808, %178, !dbg !1371
  %218 = icmp ult i64 %217, %214, !dbg !1371
  br i1 %218, label %224, label %222, !dbg !1371

219:                                              ; preds = %210
  %220 = udiv i64 9223372036854775807, %214
  %221 = icmp ult i64 %220, %166, !dbg !1371
  br i1 %221, label %224, label %222, !dbg !1371

222:                                              ; preds = %219, %216, %215
  call void @llvm.dbg.value(metadata !DIArgList(i64 %214, i64 %166), metadata !1333, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1352
  %223 = mul i64 %166, %214, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %223, metadata !1333, metadata !DIExpression()), !dbg !1352
  br label %227, !dbg !1373

224:                                              ; preds = %219, %216
  call void @llvm.dbg.value(metadata !DIArgList(i64 %214, i64 %166), metadata !1333, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1352
  %225 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #37, !dbg !1374
  %226 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %186) #37, !dbg !1374
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %225, i64 noundef %166, i64 noundef %214, ptr noundef %226) #37, !dbg !1374
  br label %280

227:                                              ; preds = %197, %222, %208
  %228 = phi i64 [ %166, %208 ], [ %223, %222 ], [ %166, %197 ]
  call void @llvm.dbg.value(metadata i64 %228, metadata !1333, metadata !DIExpression()), !dbg !1352
  br i1 %105, label %270, label %229, !dbg !1376

229:                                              ; preds = %227
  br i1 %179, label %248, label %230, !dbg !1377

230:                                              ; preds = %229
  call void @llvm.dbg.value(metadata ptr %3, metadata !1269, metadata !DIExpression()), !dbg !1378
  %231 = load i32, ptr %180, align 8, !dbg !1383, !tbaa !1279
  %232 = and i32 %231, 53248, !dbg !1384
  %233 = icmp eq i32 %232, 32768, !dbg !1384
  br i1 %233, label %234, label %240, !dbg !1385

234:                                              ; preds = %230
  %235 = load i64, ptr %181, align 8, !dbg !1386, !tbaa !1300
  call void @llvm.dbg.value(metadata i64 %235, metadata !1342, metadata !DIExpression()), !dbg !1388
  %236 = icmp slt i64 %235, 0, !dbg !1389
  br i1 %236, label %237, label %248, !dbg !1391

237:                                              ; preds = %234
  %238 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #37, !dbg !1392
  %239 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %186) #37, !dbg !1392
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %238, ptr noundef %239) #37, !dbg !1392
  br label %280, !dbg !1394

240:                                              ; preds = %230
  %241 = tail call i64 @lseek(i32 noundef %189, i64 noundef 0, i32 noundef 2) #37, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %241, metadata !1342, metadata !DIExpression()), !dbg !1388
  %242 = icmp slt i64 %241, 0, !dbg !1397
  br i1 %242, label %243, label %248, !dbg !1399

243:                                              ; preds = %240
  %244 = tail call ptr @__errno_location() #40, !dbg !1400
  %245 = load i32, ptr %244, align 4, !dbg !1400, !tbaa !971
  %246 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #37, !dbg !1400
  %247 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %186) #37, !dbg !1400
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %245, ptr noundef %246, ptr noundef %247) #37, !dbg !1400
  br label %280, !dbg !1402

248:                                              ; preds = %240, %234, %229
  %249 = phi i64 [ %235, %234 ], [ %241, %240 ], [ %165, %229 ], !dbg !1403
  call void @llvm.dbg.value(metadata i64 %249, metadata !1342, metadata !DIExpression()), !dbg !1388
  switch i32 %11, label %262 [
    i32 2, label %250
    i32 3, label %252
    i32 4, label %254
    i32 5, label %257
  ], !dbg !1404

250:                                              ; preds = %248
  %251 = tail call i64 @llvm.smax.i64(i64 %249, i64 %228), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %251, metadata !1337, metadata !DIExpression()), !dbg !1352
  br label %270, !dbg !1406

252:                                              ; preds = %248
  %253 = tail call i64 @llvm.smin.i64(i64 %249, i64 %228), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %253, metadata !1337, metadata !DIExpression()), !dbg !1352
  br label %270, !dbg !1408

254:                                              ; preds = %248
  %255 = srem i64 %249, %228, !dbg !1409
  %256 = sub nsw i64 %249, %255, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %256, metadata !1337, metadata !DIExpression()), !dbg !1352
  br label %270, !dbg !1411

257:                                              ; preds = %248
  %258 = srem i64 %249, %228, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %258, metadata !1345, metadata !DIExpression()), !dbg !1413
  %259 = icmp eq i64 %258, 0, !dbg !1414
  %260 = sub nsw i64 %228, %258, !dbg !1415
  %261 = select i1 %259, i64 0, i64 %260, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %261, metadata !1333, metadata !DIExpression()), !dbg !1352
  br label %262, !dbg !1416

262:                                              ; preds = %257, %248
  %263 = phi i64 [ %261, %257 ], [ %228, %248 ], !dbg !1352
  call void @llvm.dbg.value(metadata i64 %263, metadata !1333, metadata !DIExpression()), !dbg !1352
  %264 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %249, i64 %263), !dbg !1417
  %265 = extractvalue { i64, i1 } %264, 1, !dbg !1417
  %266 = extractvalue { i64, i1 } %264, 0, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %266, metadata !1337, metadata !DIExpression()), !dbg !1352
  br i1 %265, label %267, label %270, !dbg !1419

267:                                              ; preds = %262
  %268 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #37, !dbg !1420
  %269 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %186) #37, !dbg !1420
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %268, ptr noundef %269) #37, !dbg !1420
  br label %280, !dbg !1422

270:                                              ; preds = %262, %254, %252, %250, %227
  %271 = phi i64 [ %228, %227 ], [ %266, %262 ], [ %256, %254 ], [ %253, %252 ], [ %251, %250 ], !dbg !1423
  call void @llvm.dbg.value(metadata i64 %271, metadata !1337, metadata !DIExpression()), !dbg !1352
  %272 = tail call i64 @llvm.smax.i64(i64 %271, i64 0), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %272, metadata !1337, metadata !DIExpression()), !dbg !1352
  %273 = tail call i32 @ftruncate(i32 noundef %189, i64 noundef %272) #37, !dbg !1425
  %274 = icmp eq i32 %273, 0, !dbg !1427
  br i1 %274, label %280, label %275, !dbg !1428

275:                                              ; preds = %270
  %276 = tail call ptr @__errno_location() #40, !dbg !1429
  %277 = load i32, ptr %276, align 4, !dbg !1429, !tbaa !971
  %278 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #37, !dbg !1429
  %279 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %186) #37, !dbg !1429
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %277, ptr noundef %278, ptr noundef %279, i64 noundef %272) #37, !dbg !1429
  br label %280, !dbg !1431

280:                                              ; preds = %203, %224, %237, %243, %267, %270, %275
  %281 = phi i1 [ true, %203 ], [ true, %275 ], [ true, %224 ], [ false, %270 ], [ true, %267 ], [ true, %243 ], [ true, %237 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #37, !dbg !1432
  %282 = or i1 %188, %281, !dbg !1433
  call void @llvm.dbg.value(metadata i1 %282, metadata !1178, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1184
  %283 = tail call i32 @close(i32 noundef %189) #37, !dbg !1434
  %284 = icmp eq i32 %283, 0, !dbg !1436
  br i1 %284, label %293, label %285, !dbg !1437

285:                                              ; preds = %280
  %286 = tail call ptr @__errno_location() #40, !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1178, metadata !DIExpression()), !dbg !1184
  br label %287, !dbg !1440

287:                                              ; preds = %194, %191, %285
  %288 = phi ptr [ %286, %285 ], [ %193, %194 ], [ %193, %191 ]
  %289 = phi ptr [ @.str.32, %285 ], [ @.str.31, %194 ], [ @.str.31, %191 ]
  %290 = load i32, ptr %288, align 4, !dbg !1441, !tbaa !971
  %291 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %289, i32 noundef 5) #37, !dbg !1441
  %292 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %186) #37, !dbg !1441
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %290, ptr noundef %291, ptr noundef %292) #37, !dbg !1441
  br label %293, !dbg !1442

293:                                              ; preds = %287, %280, %194
  %294 = phi i1 [ %188, %194 ], [ %282, %280 ], [ true, %287 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1178, metadata !DIExpression()), !dbg !1184
  %295 = getelementptr inbounds ptr, ptr %187, i64 1, !dbg !1442
  call void @llvm.dbg.value(metadata ptr %295, metadata !1124, metadata !DIExpression()), !dbg !1184
  %296 = load ptr, ptr %295, align 8, !dbg !1309, !tbaa !900
  call void @llvm.dbg.value(metadata ptr %296, metadata !1179, metadata !DIExpression()), !dbg !1310
  %297 = icmp eq ptr %296, null, !dbg !1311
  br i1 %297, label %182, label %185, !dbg !1311, !llvm.loop !1443
}

; Function Attrs: nounwind
declare !dbg !1445 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1448 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1449 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1452 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !1458 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1464 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1468 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1472 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1476 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1479 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !1482 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1485 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1487, metadata !DIExpression()), !dbg !1488
  store ptr %0, ptr @file_name, align 8, !dbg !1489, !tbaa !900
  ret void, !dbg !1490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1491 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1495, metadata !DIExpression()), !dbg !1496
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1497, !tbaa !1498
  ret void, !dbg !1500
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1501 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1506, !tbaa !900
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1507
  %3 = icmp eq i32 %2, 0, !dbg !1508
  br i1 %3, label %22, label %4, !dbg !1509

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1510, !tbaa !1498, !range !1511, !noundef !909
  %6 = icmp eq i8 %5, 0, !dbg !1510
  br i1 %6, label %11, label %7, !dbg !1512

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1513
  %9 = load i32, ptr %8, align 4, !dbg !1513, !tbaa !971
  %10 = icmp eq i32 %9, 32, !dbg !1514
  br i1 %10, label %22, label %11, !dbg !1515

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #37, !dbg !1516
  call void @llvm.dbg.value(metadata ptr %12, metadata !1503, metadata !DIExpression()), !dbg !1517
  %13 = load ptr, ptr @file_name, align 8, !dbg !1518, !tbaa !900
  %14 = icmp eq ptr %13, null, !dbg !1518
  %15 = tail call ptr @__errno_location() #40, !dbg !1520
  %16 = load i32, ptr %15, align 4, !dbg !1520, !tbaa !971
  br i1 %14, label %19, label %17, !dbg !1521

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1522
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #37, !dbg !1522
  br label %20, !dbg !1522

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #37, !dbg !1523
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1524, !tbaa !971
  tail call void @_exit(i32 noundef %21) #39, !dbg !1525
  unreachable, !dbg !1525

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1526, !tbaa !900
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1528
  %25 = icmp eq i32 %24, 0, !dbg !1529
  br i1 %25, label %28, label %26, !dbg !1530

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1531, !tbaa !971
  tail call void @_exit(i32 noundef %27) #39, !dbg !1532
  unreachable, !dbg !1532

28:                                               ; preds = %22
  ret void, !dbg !1533
}

; Function Attrs: noreturn
declare !dbg !1534 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1535 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1539, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 %1, metadata !1540, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %2, metadata !1541, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1542, metadata !DIExpression()), !dbg !1544
  tail call fastcc void @flush_stdout(), !dbg !1545
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1546, !tbaa !900
  %7 = icmp eq ptr %6, null, !dbg !1546
  br i1 %7, label %9, label %8, !dbg !1548

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1549
  br label %13, !dbg !1549

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1550, !tbaa !900
  %11 = tail call ptr @getprogname() #38, !dbg !1550
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %11) #37, !dbg !1550
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1552, !tbaa.struct !1553
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1552
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1552
  ret void, !dbg !1554
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1555 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i32 1, metadata !1559, metadata !DIExpression()), !dbg !1562
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1565
  %2 = icmp slt i32 %1, 0, !dbg !1566
  br i1 %2, label %6, label %3, !dbg !1567

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1568, !tbaa !900
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1568
  br label %6, !dbg !1568

6:                                                ; preds = %3, %0
  ret void, !dbg !1569
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1570 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1572, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 %1, metadata !1573, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %2, metadata !1574, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1575, metadata !DIExpression()), !dbg !1577
  %7 = load ptr, ptr @stderr, align 8, !dbg !1578, !tbaa !900
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1579, !noalias !1623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1627
  call void @llvm.dbg.value(metadata ptr %7, metadata !1619, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata ptr %2, metadata !1620, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1621, metadata !DIExpression()), !dbg !1629
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1579
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1579, !noalias !1623
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1630, !tbaa !971
  %10 = add i32 %9, 1, !dbg !1630
  store i32 %10, ptr @error_message_count, align 4, !dbg !1630, !tbaa !971
  %11 = icmp eq i32 %1, 0, !dbg !1631
  br i1 %11, label %21, label %12, !dbg !1633

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1634, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1644
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1638, metadata !DIExpression()), !dbg !1645
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1646
  call void @llvm.dbg.value(metadata ptr %13, metadata !1637, metadata !DIExpression()), !dbg !1642
  %14 = icmp eq ptr %13, null, !dbg !1647
  br i1 %14, label %15, label %17, !dbg !1649

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #37, !dbg !1650
  call void @llvm.dbg.value(metadata ptr %16, metadata !1637, metadata !DIExpression()), !dbg !1642
  br label %17, !dbg !1651

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1642
  call void @llvm.dbg.value(metadata ptr %18, metadata !1637, metadata !DIExpression()), !dbg !1642
  %19 = load ptr, ptr @stderr, align 8, !dbg !1652, !tbaa !900
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %18) #37, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1653
  br label %21, !dbg !1654

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1655, !tbaa !900
  call void @llvm.dbg.value(metadata i32 10, metadata !1656, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata ptr %22, metadata !1662, metadata !DIExpression()), !dbg !1663
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1665
  %24 = load ptr, ptr %23, align 8, !dbg !1665, !tbaa !1666
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1665
  %26 = load ptr, ptr %25, align 8, !dbg !1665, !tbaa !1668
  %27 = icmp ult ptr %24, %26, !dbg !1665
  br i1 %27, label %30, label %28, !dbg !1665, !prof !1669

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1665
  br label %32, !dbg !1665

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1665
  store ptr %31, ptr %23, align 8, !dbg !1665, !tbaa !1666
  store i8 10, ptr %24, align 1, !dbg !1665, !tbaa !980
  br label %32, !dbg !1665

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1670, !tbaa !900
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1670
  %35 = icmp eq i32 %0, 0, !dbg !1671
  br i1 %35, label %37, label %36, !dbg !1673

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1674
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
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1695, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %1, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata ptr %2, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1700
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1698, metadata !DIExpression()), !dbg !1701
  call void @llvm.va_start(ptr nonnull %4), !dbg !1702
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1703, !tbaa.struct !1553
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1703
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1703
  call void @llvm.va_end(ptr nonnull %4), !dbg !1704
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1705
  ret void, !dbg !1705
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !487 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !503, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %1, metadata !504, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %2, metadata !505, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %3, metadata !506, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %4, metadata !507, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %5, metadata !508, metadata !DIExpression()), !dbg !1707
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1708, !tbaa !971
  %9 = icmp eq i32 %8, 0, !dbg !1708
  br i1 %9, label %24, label %10, !dbg !1710

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1711, !tbaa !971
  %12 = icmp eq i32 %11, %3, !dbg !1714
  br i1 %12, label %13, label %23, !dbg !1715

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1716, !tbaa !900
  %15 = icmp eq ptr %14, %2, !dbg !1717
  br i1 %15, label %37, label %16, !dbg !1718

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1719
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1720
  br i1 %19, label %20, label %23, !dbg !1720

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1721
  %22 = icmp eq i32 %21, 0, !dbg !1722
  br i1 %22, label %37, label %23, !dbg !1723

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1724, !tbaa !900
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1725, !tbaa !971
  br label %24, !dbg !1726

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1727
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1728, !tbaa !900
  %26 = icmp eq ptr %25, null, !dbg !1728
  br i1 %26, label %28, label %27, !dbg !1730

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1731
  br label %32, !dbg !1731

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1732, !tbaa !900
  %30 = tail call ptr @getprogname() #38, !dbg !1732
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %30) #37, !dbg !1732
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1734, !tbaa !900
  %34 = icmp eq ptr %2, null, !dbg !1734
  %35 = select i1 %34, ptr @.str.3.52, ptr @.str.2.53, !dbg !1734
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1734
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1735, !tbaa.struct !1553
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1735
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1735
  br label %37, !dbg !1736

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1736
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1737 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1741, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %1, metadata !1742, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %2, metadata !1743, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %3, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata ptr %4, metadata !1745, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1748
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1746, metadata !DIExpression()), !dbg !1749
  call void @llvm.va_start(ptr nonnull %6), !dbg !1750
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1751, !tbaa.struct !1553
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1751
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1751
  call void @llvm.va_end(ptr nonnull %6), !dbg !1752
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1753
  ret void, !dbg !1753
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1754 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1757, !tbaa !900
  ret ptr %1, !dbg !1758
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1761, metadata !DIExpression()), !dbg !1764
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %2, metadata !1762, metadata !DIExpression()), !dbg !1764
  %3 = icmp eq ptr %2, null, !dbg !1766
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1766
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %5, metadata !1763, metadata !DIExpression()), !dbg !1764
  %6 = ptrtoint ptr %5 to i64, !dbg !1767
  %7 = ptrtoint ptr %0 to i64, !dbg !1767
  %8 = sub i64 %6, %7, !dbg !1767
  %9 = icmp sgt i64 %8, 6, !dbg !1769
  br i1 %9, label %10, label %19, !dbg !1770

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1771
  call void @llvm.dbg.value(metadata ptr %11, metadata !1772, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 7, metadata !1778, metadata !DIExpression()), !dbg !1779
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.62, i64 7), !dbg !1781
  %13 = icmp eq i32 %12, 0, !dbg !1782
  br i1 %13, label %14, label %19, !dbg !1783

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1761, metadata !DIExpression()), !dbg !1764
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.63, i64 noundef 3) #38, !dbg !1784
  %16 = icmp eq i32 %15, 0, !dbg !1787
  %17 = select i1 %16, i64 3, i64 0, !dbg !1788
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1788
  br label %19, !dbg !1788

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1764
  call void @llvm.dbg.value(metadata ptr %21, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %20, metadata !1761, metadata !DIExpression()), !dbg !1764
  store ptr %20, ptr @program_name, align 8, !dbg !1789, !tbaa !900
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1790, !tbaa !900
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1791, !tbaa !900
  ret void, !dbg !1792
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1793 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !542 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !549, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata ptr %1, metadata !550, metadata !DIExpression()), !dbg !1794
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %5, metadata !551, metadata !DIExpression()), !dbg !1794
  %6 = icmp eq ptr %5, %0, !dbg !1796
  br i1 %6, label %7, label %14, !dbg !1798

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1799
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1800
  call void @llvm.dbg.declare(metadata ptr %4, metadata !557, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata ptr %4, metadata !1802, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %4, metadata !1811, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 0, metadata !1817, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 8, metadata !1818, metadata !DIExpression()), !dbg !1819
  store i64 0, ptr %4, align 8, !dbg !1821
  call void @llvm.dbg.value(metadata ptr %3, metadata !552, metadata !DIExpression(DW_OP_deref)), !dbg !1794
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1822
  %9 = icmp eq i64 %8, 2, !dbg !1824
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !552, metadata !DIExpression()), !dbg !1794
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1825
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1826
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1794
  ret ptr %15, !dbg !1826
}

; Function Attrs: nounwind
declare !dbg !1827 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1833 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1838, metadata !DIExpression()), !dbg !1841
  %2 = tail call ptr @__errno_location() #40, !dbg !1842
  %3 = load i32, ptr %2, align 4, !dbg !1842, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %3, metadata !1839, metadata !DIExpression()), !dbg !1841
  %4 = icmp eq ptr %0, null, !dbg !1843
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1843
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #43, !dbg !1844
  call void @llvm.dbg.value(metadata ptr %6, metadata !1840, metadata !DIExpression()), !dbg !1841
  store i32 %3, ptr %2, align 4, !dbg !1845, !tbaa !971
  ret ptr %6, !dbg !1846
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1847 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1853, metadata !DIExpression()), !dbg !1854
  %2 = icmp eq ptr %0, null, !dbg !1855
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1855
  %4 = load i32, ptr %3, align 8, !dbg !1856, !tbaa !1857
  ret i32 %4, !dbg !1859
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1860 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1864, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i32 %1, metadata !1865, metadata !DIExpression()), !dbg !1866
  %3 = icmp eq ptr %0, null, !dbg !1867
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1867
  store i32 %1, ptr %4, align 8, !dbg !1868, !tbaa !1857
  ret void, !dbg !1869
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1870 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1874, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %1, metadata !1875, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %2, metadata !1876, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %1, metadata !1877, metadata !DIExpression()), !dbg !1882
  %4 = icmp eq ptr %0, null, !dbg !1883
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1883
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1884
  %7 = lshr i8 %1, 5, !dbg !1885
  %8 = zext i8 %7 to i64, !dbg !1885
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1886
  call void @llvm.dbg.value(metadata ptr %9, metadata !1878, metadata !DIExpression()), !dbg !1882
  %10 = and i8 %1, 31, !dbg !1887
  %11 = zext i8 %10 to i32, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %11, metadata !1880, metadata !DIExpression()), !dbg !1882
  %12 = load i32, ptr %9, align 4, !dbg !1888, !tbaa !971
  %13 = lshr i32 %12, %11, !dbg !1889
  %14 = and i32 %13, 1, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %14, metadata !1881, metadata !DIExpression()), !dbg !1882
  %15 = xor i32 %13, %2, !dbg !1891
  %16 = and i32 %15, 1, !dbg !1891
  %17 = shl nuw i32 %16, %11, !dbg !1892
  %18 = xor i32 %17, %12, !dbg !1893
  store i32 %18, ptr %9, align 4, !dbg !1893, !tbaa !971
  ret i32 %14, !dbg !1894
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1895 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1899, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %1, metadata !1900, metadata !DIExpression()), !dbg !1902
  %3 = icmp eq ptr %0, null, !dbg !1903
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %4, metadata !1899, metadata !DIExpression()), !dbg !1902
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1906
  %6 = load i32, ptr %5, align 4, !dbg !1906, !tbaa !1907
  call void @llvm.dbg.value(metadata i32 %6, metadata !1901, metadata !DIExpression()), !dbg !1902
  store i32 %1, ptr %5, align 4, !dbg !1908, !tbaa !1907
  ret i32 %6, !dbg !1909
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1910 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1914, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata ptr %2, metadata !1916, metadata !DIExpression()), !dbg !1917
  %4 = icmp eq ptr %0, null, !dbg !1918
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !1917
  store i32 10, ptr %5, align 8, !dbg !1921, !tbaa !1857
  %6 = icmp ne ptr %1, null, !dbg !1922
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1924
  br i1 %8, label %10, label %9, !dbg !1924

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1925
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1938, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %1, metadata !1939, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata ptr %2, metadata !1940, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %3, metadata !1941, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata ptr %4, metadata !1942, metadata !DIExpression()), !dbg !1946
  %6 = icmp eq ptr %4, null, !dbg !1947
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1947
  call void @llvm.dbg.value(metadata ptr %7, metadata !1943, metadata !DIExpression()), !dbg !1946
  %8 = tail call ptr @__errno_location() #40, !dbg !1948
  %9 = load i32, ptr %8, align 4, !dbg !1948, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %9, metadata !1944, metadata !DIExpression()), !dbg !1946
  %10 = load i32, ptr %7, align 8, !dbg !1949, !tbaa !1857
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1950
  %12 = load i32, ptr %11, align 4, !dbg !1950, !tbaa !1907
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1951
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1952
  %15 = load ptr, ptr %14, align 8, !dbg !1952, !tbaa !1928
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1953
  %17 = load ptr, ptr %16, align 8, !dbg !1953, !tbaa !1931
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %18, metadata !1945, metadata !DIExpression()), !dbg !1946
  store i32 %9, ptr %8, align 4, !dbg !1955, !tbaa !971
  ret i64 %18, !dbg !1956
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1957 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1963, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %1, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %2, metadata !1965, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %3, metadata !1966, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %4, metadata !1967, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %5, metadata !1968, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %6, metadata !1969, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %7, metadata !1970, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %8, metadata !1971, metadata !DIExpression()), !dbg !2025
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2026
  %17 = icmp eq i64 %16, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i1 %17, metadata !1972, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr null, metadata !1975, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !1976, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %5, metadata !1978, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 1, metadata !1980, metadata !DIExpression()), !dbg !2025
  %18 = and i32 %5, 2, !dbg !2028
  %19 = icmp ne i32 %18, 0, !dbg !2028
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2028

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2029
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2030
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2031
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %34, metadata !1976, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %33, metadata !1975, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %32, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %31, metadata !1966, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %30, metadata !1971, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %29, metadata !1970, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %28, metadata !1967, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.label(metadata !2018), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2025
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
  ], !dbg !2033

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 5, metadata !1967, metadata !DIExpression()), !dbg !2025
  br label %102, !dbg !2034

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 5, metadata !1967, metadata !DIExpression()), !dbg !2025
  br i1 %36, label %102, label %42, !dbg !2034

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2035
  br i1 %43, label %102, label %44, !dbg !2039

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2035, !tbaa !980
  br label %102, !dbg !2035

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !641, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %28, metadata !642, metadata !DIExpression()), !dbg !2040
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #37, !dbg !2044
  call void @llvm.dbg.value(metadata ptr %46, metadata !643, metadata !DIExpression()), !dbg !2040
  %47 = icmp eq ptr %46, @.str.11.91, !dbg !2045
  br i1 %47, label %48, label %57, !dbg !2047

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2048
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2049
  call void @llvm.dbg.declare(metadata ptr %13, metadata !645, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %13, metadata !2051, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata ptr %13, metadata !2059, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2064
  store i64 0, ptr %13, align 8, !dbg !2066
  call void @llvm.dbg.value(metadata ptr %12, metadata !644, metadata !DIExpression(DW_OP_deref)), !dbg !2040
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2067
  %50 = icmp eq i64 %49, 3, !dbg !2069
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !644, metadata !DIExpression()), !dbg !2040
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2070
  %54 = icmp eq i32 %28, 9, !dbg !2070
  %55 = select i1 %54, ptr @.str.10.93, ptr @.str.12.94, !dbg !2070
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2070
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2071
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2040
  call void @llvm.dbg.value(metadata ptr %58, metadata !1970, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !641, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %28, metadata !642, metadata !DIExpression()), !dbg !2072
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #37, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %59, metadata !643, metadata !DIExpression()), !dbg !2072
  %60 = icmp eq ptr %59, @.str.12.94, !dbg !2075
  br i1 %60, label %61, label %70, !dbg !2076

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %11, metadata !645, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata ptr %11, metadata !2051, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata ptr %11, metadata !2059, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2082
  store i64 0, ptr %11, align 8, !dbg !2084
  call void @llvm.dbg.value(metadata ptr %10, metadata !644, metadata !DIExpression(DW_OP_deref)), !dbg !2072
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2085
  %63 = icmp eq i64 %62, 3, !dbg !2086
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !644, metadata !DIExpression()), !dbg !2072
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2087
  %67 = icmp eq i32 %28, 9, !dbg !2087
  %68 = select i1 %67, ptr @.str.10.93, ptr @.str.12.94, !dbg !2087
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2088
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1971, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %71, metadata !1970, metadata !DIExpression()), !dbg !2025
  br i1 %36, label %88, label %73, !dbg !2089

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1982, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2025
  %74 = load i8, ptr %71, align 1, !dbg !2091, !tbaa !980
  %75 = icmp eq i8 %74, 0, !dbg !2093
  br i1 %75, label %88, label %76, !dbg !2093

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1982, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %79, metadata !1973, metadata !DIExpression()), !dbg !2025
  %80 = icmp ult i64 %79, %39, !dbg !2094
  br i1 %80, label %81, label %83, !dbg !2097

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2094
  store i8 %77, ptr %82, align 1, !dbg !2094, !tbaa !980
  br label %83, !dbg !2094

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %84, metadata !1973, metadata !DIExpression()), !dbg !2025
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2098
  call void @llvm.dbg.value(metadata ptr %85, metadata !1982, metadata !DIExpression()), !dbg !2090
  %86 = load i8, ptr %85, align 1, !dbg !2091, !tbaa !980
  %87 = icmp eq i8 %86, 0, !dbg !2093
  br i1 %87, label %88, label %76, !dbg !2093, !llvm.loop !2099

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2101
  call void @llvm.dbg.value(metadata i64 %89, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %72, metadata !1975, metadata !DIExpression()), !dbg !2025
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %90, metadata !1976, metadata !DIExpression()), !dbg !2025
  br label %102, !dbg !2103

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2025
  br label %93, !dbg !2104

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2025
  br i1 %36, label %102, label %96, !dbg !2105

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 2, metadata !1967, metadata !DIExpression()), !dbg !2025
  br label %102, !dbg !2106

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 2, metadata !1967, metadata !DIExpression()), !dbg !2025
  br i1 %36, label %102, label %96, !dbg !2106

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2107
  br i1 %98, label %102, label %99, !dbg !2111

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2107, !tbaa !980
  br label %102, !dbg !2107

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2025
  br label %102, !dbg !2112

101:                                              ; preds = %27
  call void @abort() #39, !dbg !2113
  unreachable, !dbg !2113

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2101
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.93, %42 ], [ @.str.10.93, %44 ], [ @.str.10.93, %41 ], [ %33, %27 ], [ @.str.12.94, %96 ], [ @.str.12.94, %99 ], [ @.str.12.94, %95 ], [ @.str.10.93, %40 ], [ @.str.12.94, %93 ], [ @.str.12.94, %92 ], !dbg !2025
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2025
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %108, metadata !1976, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %107, metadata !1975, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %106, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %105, metadata !1971, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata ptr %104, metadata !1970, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %103, metadata !1967, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !1987, metadata !DIExpression()), !dbg !2114
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
  br label %122, !dbg !2115

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2101
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2029
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2116
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %129, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %125, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %124, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %123, metadata !1966, metadata !DIExpression()), !dbg !2025
  %131 = icmp eq i64 %123, -1, !dbg !2117
  br i1 %131, label %132, label %136, !dbg !2118

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2119
  %134 = load i8, ptr %133, align 1, !dbg !2119, !tbaa !980
  %135 = icmp eq i8 %134, 0, !dbg !2120
  br i1 %135, label %579, label %138, !dbg !2121

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2122
  br i1 %137, label %579, label %138, !dbg !2121

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 0, metadata !1992, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2123
  br i1 %114, label %139, label %152, !dbg !2124

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2126
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2127
  br i1 %141, label %142, label %144, !dbg !2127

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %143, metadata !1966, metadata !DIExpression()), !dbg !2025
  br label %144, !dbg !2129

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2129
  call void @llvm.dbg.value(metadata i64 %145, metadata !1966, metadata !DIExpression()), !dbg !2025
  %146 = icmp ugt i64 %140, %145, !dbg !2130
  br i1 %146, label %152, label %147, !dbg !2131

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2132
  call void @llvm.dbg.value(metadata ptr %148, metadata !2133, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %107, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %108, metadata !2137, metadata !DIExpression()), !dbg !2138
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2140
  %150 = icmp eq i32 %149, 0, !dbg !2141
  %151 = and i1 %150, %110, !dbg !2142
  br i1 %151, label %630, label %152, !dbg !2142

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %153, metadata !1966, metadata !DIExpression()), !dbg !2025
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2143
  %156 = load i8, ptr %155, align 1, !dbg !2143, !tbaa !980
  call void @llvm.dbg.value(metadata i8 %156, metadata !1994, metadata !DIExpression()), !dbg !2123
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
  ], !dbg !2144

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2145

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2146

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1992, metadata !DIExpression()), !dbg !2123
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2150
  br i1 %160, label %177, label %161, !dbg !2150

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2152
  br i1 %162, label %163, label %165, !dbg !2156

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2152
  store i8 39, ptr %164, align 1, !dbg !2152, !tbaa !980
  br label %165, !dbg !2152

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %166, metadata !1973, metadata !DIExpression()), !dbg !2025
  %167 = icmp ult i64 %166, %130, !dbg !2157
  br i1 %167, label %168, label %170, !dbg !2160

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2157
  store i8 36, ptr %169, align 1, !dbg !2157, !tbaa !980
  br label %170, !dbg !2157

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %171, metadata !1973, metadata !DIExpression()), !dbg !2025
  %172 = icmp ult i64 %171, %130, !dbg !2161
  br i1 %172, label %173, label %175, !dbg !2164

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2161
  store i8 39, ptr %174, align 1, !dbg !2161, !tbaa !980
  br label %175, !dbg !2161

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %176, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !2025
  br label %177, !dbg !2165

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2025
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %178, metadata !1973, metadata !DIExpression()), !dbg !2025
  %180 = icmp ult i64 %178, %130, !dbg !2166
  br i1 %180, label %181, label %183, !dbg !2169

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2166
  store i8 92, ptr %182, align 1, !dbg !2166, !tbaa !980
  br label %183, !dbg !2166

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %184, metadata !1973, metadata !DIExpression()), !dbg !2025
  br i1 %111, label %185, label %482, !dbg !2170

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2172
  %187 = icmp ult i64 %186, %153, !dbg !2173
  br i1 %187, label %188, label %439, !dbg !2174

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2175
  %190 = load i8, ptr %189, align 1, !dbg !2175, !tbaa !980
  %191 = add i8 %190, -48, !dbg !2176
  %192 = icmp ult i8 %191, 10, !dbg !2176
  br i1 %192, label %193, label %439, !dbg !2176

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2177
  br i1 %194, label %195, label %197, !dbg !2181

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2177
  store i8 48, ptr %196, align 1, !dbg !2177, !tbaa !980
  br label %197, !dbg !2177

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %198, metadata !1973, metadata !DIExpression()), !dbg !2025
  %199 = icmp ult i64 %198, %130, !dbg !2182
  br i1 %199, label %200, label %202, !dbg !2185

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2182
  store i8 48, ptr %201, align 1, !dbg !2182, !tbaa !980
  br label %202, !dbg !2182

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %203, metadata !1973, metadata !DIExpression()), !dbg !2025
  br label %439, !dbg !2186

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2187

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2188

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2189

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2191

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2193
  %210 = icmp ult i64 %209, %153, !dbg !2194
  br i1 %210, label %211, label %439, !dbg !2195

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2196
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2197
  %214 = load i8, ptr %213, align 1, !dbg !2197, !tbaa !980
  %215 = icmp eq i8 %214, 63, !dbg !2198
  br i1 %215, label %216, label %439, !dbg !2199

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2200
  %218 = load i8, ptr %217, align 1, !dbg !2200, !tbaa !980
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
  ], !dbg !2201

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2202

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %209, metadata !1987, metadata !DIExpression()), !dbg !2114
  %221 = icmp ult i64 %124, %130, !dbg !2204
  br i1 %221, label %222, label %224, !dbg !2207

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2204
  store i8 63, ptr %223, align 1, !dbg !2204, !tbaa !980
  br label %224, !dbg !2204

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %225, metadata !1973, metadata !DIExpression()), !dbg !2025
  %226 = icmp ult i64 %225, %130, !dbg !2208
  br i1 %226, label %227, label %229, !dbg !2211

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2208
  store i8 34, ptr %228, align 1, !dbg !2208, !tbaa !980
  br label %229, !dbg !2208

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %230, metadata !1973, metadata !DIExpression()), !dbg !2025
  %231 = icmp ult i64 %230, %130, !dbg !2212
  br i1 %231, label %232, label %234, !dbg !2215

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2212
  store i8 34, ptr %233, align 1, !dbg !2212, !tbaa !980
  br label %234, !dbg !2212

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %235, metadata !1973, metadata !DIExpression()), !dbg !2025
  %236 = icmp ult i64 %235, %130, !dbg !2216
  br i1 %236, label %237, label %239, !dbg !2219

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2216
  store i8 63, ptr %238, align 1, !dbg !2216, !tbaa !980
  br label %239, !dbg !2216

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %240, metadata !1973, metadata !DIExpression()), !dbg !2025
  br label %439, !dbg !2220

241:                                              ; preds = %152
  br label %251, !dbg !2221

242:                                              ; preds = %152
  br label %251, !dbg !2222

243:                                              ; preds = %152
  br label %249, !dbg !2223

244:                                              ; preds = %152
  br label %249, !dbg !2224

245:                                              ; preds = %152
  br label %251, !dbg !2225

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2226

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2227

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2230

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2232
  call void @llvm.dbg.label(metadata !2019), !dbg !2233
  br i1 %119, label %621, label %251, !dbg !2234

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2232
  call void @llvm.dbg.label(metadata !2021), !dbg !2236
  br i1 %109, label %493, label %450, !dbg !2237

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2238

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2239, !tbaa !980
  %256 = icmp eq i8 %255, 0, !dbg !2241
  br i1 %256, label %257, label %439, !dbg !2242

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2243
  br i1 %258, label %259, label %439, !dbg !2245

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2123
  br label %260, !dbg !2246

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2123
  br i1 %116, label %262, label %439, !dbg !2247

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2249

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2123
  br i1 %116, label %264, label %439, !dbg !2250

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2251

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2254
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2256
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2256
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %270, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %269, metadata !1974, metadata !DIExpression()), !dbg !2025
  %271 = icmp ult i64 %124, %270, !dbg !2257
  br i1 %271, label %272, label %274, !dbg !2260

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2257
  store i8 39, ptr %273, align 1, !dbg !2257, !tbaa !980
  br label %274, !dbg !2257

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %275, metadata !1973, metadata !DIExpression()), !dbg !2025
  %276 = icmp ult i64 %275, %270, !dbg !2261
  br i1 %276, label %277, label %279, !dbg !2264

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2261
  store i8 92, ptr %278, align 1, !dbg !2261, !tbaa !980
  br label %279, !dbg !2261

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %280, metadata !1973, metadata !DIExpression()), !dbg !2025
  %281 = icmp ult i64 %280, %270, !dbg !2265
  br i1 %281, label %282, label %284, !dbg !2268

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2265
  store i8 39, ptr %283, align 1, !dbg !2265, !tbaa !980
  br label %284, !dbg !2265

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %285, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2025
  br label %439, !dbg !2269

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2270

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1995, metadata !DIExpression()), !dbg !2271
  %288 = tail call ptr @__ctype_b_loc() #40, !dbg !2272
  %289 = load ptr, ptr %288, align 8, !dbg !2272, !tbaa !900
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2272
  %292 = load i16, ptr %291, align 2, !dbg !2272, !tbaa !1012
  %293 = and i16 %292, 16384, !dbg !2272
  %294 = icmp ne i16 %293, 0, !dbg !2274
  call void @llvm.dbg.value(metadata i1 %294, metadata !1998, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2271
  br label %337, !dbg !2275

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2276
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1999, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata ptr %14, metadata !2051, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata ptr %14, metadata !2059, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2280
  store i64 0, ptr %14, align 8, !dbg !2282
  call void @llvm.dbg.value(metadata i64 0, metadata !1995, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2271
  %296 = icmp eq i64 %153, -1, !dbg !2283
  br i1 %296, label %297, label %299, !dbg !2285

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %298, metadata !1966, metadata !DIExpression()), !dbg !2025
  br label %299, !dbg !2287

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2123
  call void @llvm.dbg.value(metadata i64 %300, metadata !1966, metadata !DIExpression()), !dbg !2025
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2288
  %301 = sub i64 %300, %129, !dbg !2289
  call void @llvm.dbg.value(metadata ptr %15, metadata !2002, metadata !DIExpression(DW_OP_deref)), !dbg !2290
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #37, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %302, metadata !2006, metadata !DIExpression()), !dbg !2290
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2292

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1995, metadata !DIExpression()), !dbg !2271
  %304 = icmp ugt i64 %300, %129, !dbg !2293
  br i1 %304, label %306, label %332, !dbg !2295

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2271
  br label %332, !dbg !2296

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1995, metadata !DIExpression()), !dbg !2271
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2298
  %310 = load i8, ptr %309, align 1, !dbg !2298, !tbaa !980
  %311 = icmp eq i8 %310, 0, !dbg !2295
  br i1 %311, label %332, label %312, !dbg !2299

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %313, metadata !1995, metadata !DIExpression()), !dbg !2271
  %314 = add i64 %313, %129, !dbg !2301
  %315 = icmp eq i64 %313, %301, !dbg !2293
  br i1 %315, label %332, label %306, !dbg !2295, !llvm.loop !2302

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2303
  %319 = and i1 %318, %110, !dbg !2303
  call void @llvm.dbg.value(metadata i64 1, metadata !2007, metadata !DIExpression()), !dbg !2304
  br i1 %319, label %320, label %328, !dbg !2303

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2007, metadata !DIExpression()), !dbg !2304
  %322 = add i64 %321, %129, !dbg !2305
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2307
  %324 = load i8, ptr %323, align 1, !dbg !2307, !tbaa !980
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2308

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %326, metadata !2007, metadata !DIExpression()), !dbg !2304
  %327 = icmp eq i64 %326, %302, !dbg !2310
  br i1 %327, label %328, label %320, !dbg !2311, !llvm.loop !2312

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2314, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %329, metadata !2002, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %329, metadata !2316, metadata !DIExpression()), !dbg !2324
  %330 = call i32 @iswprint(i32 noundef %329) #37, !dbg !2326
  %331 = icmp ne i32 %330, 0, !dbg !2327
  call void @llvm.dbg.value(metadata i8 poison, metadata !1998, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %302, metadata !1995, metadata !DIExpression()), !dbg !2271
  br label %332, !dbg !2328

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1998, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %333, metadata !1995, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2330
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1998, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 0, metadata !1995, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2330
  call void @llvm.dbg.label(metadata !2024), !dbg !2331
  %336 = select i1 %109, i32 4, i32 2, !dbg !2332
  br label %626, !dbg !2332

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2123
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2334
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1998, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %339, metadata !1995, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %338, metadata !1966, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i1 %340, metadata !1993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2123
  %341 = icmp ult i64 %339, 2, !dbg !2335
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2336
  br i1 %343, label %439, label %344, !dbg !2336

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %345, metadata !2015, metadata !DIExpression()), !dbg !2338
  br label %346, !dbg !2339

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2025
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2114
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2340
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2123
  call void @llvm.dbg.value(metadata i8 %352, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %351, metadata !1992, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %349, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %347, metadata !1973, metadata !DIExpression()), !dbg !2025
  br i1 %342, label %397, label %353, !dbg !2341

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2346

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1992, metadata !DIExpression()), !dbg !2123
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2349
  br i1 %355, label %372, label %356, !dbg !2349

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2351
  br i1 %357, label %358, label %360, !dbg !2355

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2351
  store i8 39, ptr %359, align 1, !dbg !2351, !tbaa !980
  br label %360, !dbg !2351

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %361, metadata !1973, metadata !DIExpression()), !dbg !2025
  %362 = icmp ult i64 %361, %130, !dbg !2356
  br i1 %362, label %363, label %365, !dbg !2359

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2356
  store i8 36, ptr %364, align 1, !dbg !2356, !tbaa !980
  br label %365, !dbg !2356

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %366, metadata !1973, metadata !DIExpression()), !dbg !2025
  %367 = icmp ult i64 %366, %130, !dbg !2360
  br i1 %367, label %368, label %370, !dbg !2363

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2360
  store i8 39, ptr %369, align 1, !dbg !2360, !tbaa !980
  br label %370, !dbg !2360

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %371, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !2025
  br label %372, !dbg !2364

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2025
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %373, metadata !1973, metadata !DIExpression()), !dbg !2025
  %375 = icmp ult i64 %373, %130, !dbg !2365
  br i1 %375, label %376, label %378, !dbg !2368

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2365
  store i8 92, ptr %377, align 1, !dbg !2365, !tbaa !980
  br label %378, !dbg !2365

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %379, metadata !1973, metadata !DIExpression()), !dbg !2025
  %380 = icmp ult i64 %379, %130, !dbg !2369
  br i1 %380, label %381, label %385, !dbg !2372

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2369
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2369
  store i8 %383, ptr %384, align 1, !dbg !2369, !tbaa !980
  br label %385, !dbg !2369

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %386, metadata !1973, metadata !DIExpression()), !dbg !2025
  %387 = icmp ult i64 %386, %130, !dbg !2373
  br i1 %387, label %388, label %393, !dbg !2376

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2373
  %391 = or i8 %390, 48, !dbg !2373
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2373
  store i8 %391, ptr %392, align 1, !dbg !2373, !tbaa !980
  br label %393, !dbg !2373

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %394, metadata !1973, metadata !DIExpression()), !dbg !2025
  %395 = and i8 %352, 7, !dbg !2377
  %396 = or i8 %395, 48, !dbg !2378
  call void @llvm.dbg.value(metadata i8 %396, metadata !1994, metadata !DIExpression()), !dbg !2123
  br label %404, !dbg !2379

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2380

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2381
  br i1 %399, label %400, label %402, !dbg !2386

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2381
  store i8 92, ptr %401, align 1, !dbg !2381, !tbaa !980
  br label %402, !dbg !2381

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %403, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2123
  br label %404, !dbg !2387

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2025
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2123
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2123
  call void @llvm.dbg.value(metadata i8 %409, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %408, metadata !1992, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %405, metadata !1973, metadata !DIExpression()), !dbg !2025
  %410 = add i64 %349, 1, !dbg !2388
  %411 = icmp ugt i64 %345, %410, !dbg !2390
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2391

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2392
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2392
  br i1 %415, label %416, label %427, !dbg !2392

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2395
  br i1 %417, label %418, label %420, !dbg !2399

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2395
  store i8 39, ptr %419, align 1, !dbg !2395, !tbaa !980
  br label %420, !dbg !2395

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %421, metadata !1973, metadata !DIExpression()), !dbg !2025
  %422 = icmp ult i64 %421, %130, !dbg !2400
  br i1 %422, label %423, label %425, !dbg !2403

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2400
  store i8 39, ptr %424, align 1, !dbg !2400, !tbaa !980
  br label %425, !dbg !2400

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %426, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2025
  br label %427, !dbg !2404

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2405
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %428, metadata !1973, metadata !DIExpression()), !dbg !2025
  %430 = icmp ult i64 %428, %130, !dbg !2406
  br i1 %430, label %431, label %433, !dbg !2409

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2406
  store i8 %409, ptr %432, align 1, !dbg !2406, !tbaa !980
  br label %433, !dbg !2406

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %434, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %410, metadata !1987, metadata !DIExpression()), !dbg !2114
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2410
  %436 = load i8, ptr %435, align 1, !dbg !2410, !tbaa !980
  call void @llvm.dbg.value(metadata i8 %436, metadata !1994, metadata !DIExpression()), !dbg !2123
  br label %346, !dbg !2411, !llvm.loop !2412

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i1 %340, metadata !1993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %408, metadata !1992, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %349, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %405, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %338, metadata !1966, metadata !DIExpression()), !dbg !2025
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2415
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2025
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2029
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2114
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2123
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %448, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1992, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %445, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %442, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %441, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %440, metadata !1966, metadata !DIExpression()), !dbg !2025
  br i1 %112, label %461, label %450, !dbg !2416

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
  br i1 %121, label %462, label %482, !dbg !2418

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2419

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
  %473 = lshr i8 %464, 5, !dbg !2420
  %474 = zext i8 %473 to i64, !dbg !2420
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2421
  %476 = load i32, ptr %475, align 4, !dbg !2421, !tbaa !971
  %477 = and i8 %464, 31, !dbg !2422
  %478 = zext i8 %477 to i32, !dbg !2422
  %479 = shl nuw i32 1, %478, !dbg !2423
  %480 = and i32 %476, %479, !dbg !2423
  %481 = icmp eq i32 %480, 0, !dbg !2423
  br i1 %481, label %482, label %493, !dbg !2424

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
  br i1 %154, label %493, label %529, !dbg !2425

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2415
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2025
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2029
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2426
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2123
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %501, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %499, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %496, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %495, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %494, metadata !1966, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.label(metadata !2022), !dbg !2427
  br i1 %110, label %621, label %503, !dbg !2428

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1992, metadata !DIExpression()), !dbg !2123
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2430
  br i1 %504, label %521, label %505, !dbg !2430

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2432
  br i1 %506, label %507, label %509, !dbg !2436

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2432
  store i8 39, ptr %508, align 1, !dbg !2432, !tbaa !980
  br label %509, !dbg !2432

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %510, metadata !1973, metadata !DIExpression()), !dbg !2025
  %511 = icmp ult i64 %510, %502, !dbg !2437
  br i1 %511, label %512, label %514, !dbg !2440

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2437
  store i8 36, ptr %513, align 1, !dbg !2437, !tbaa !980
  br label %514, !dbg !2437

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %515, metadata !1973, metadata !DIExpression()), !dbg !2025
  %516 = icmp ult i64 %515, %502, !dbg !2441
  br i1 %516, label %517, label %519, !dbg !2444

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2441
  store i8 39, ptr %518, align 1, !dbg !2441, !tbaa !980
  br label %519, !dbg !2441

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %520, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !2025
  br label %521, !dbg !2445

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2123
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %522, metadata !1973, metadata !DIExpression()), !dbg !2025
  %524 = icmp ult i64 %522, %502, !dbg !2446
  br i1 %524, label %525, label %527, !dbg !2449

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2446
  store i8 92, ptr %526, align 1, !dbg !2446, !tbaa !980
  br label %527, !dbg !2446

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %502, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %501, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1992, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %499, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %496, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %528, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %494, metadata !1966, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.label(metadata !2023), !dbg !2450
  br label %553, !dbg !2451

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2415
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2025
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2029
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2426
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2454
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %538, metadata !1994, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1992, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %535, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %532, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %531, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %530, metadata !1966, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.label(metadata !2023), !dbg !2450
  %540 = xor i1 %534, true, !dbg !2451
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2451
  br i1 %541, label %553, label %542, !dbg !2451

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2455
  br i1 %543, label %544, label %546, !dbg !2459

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2455
  store i8 39, ptr %545, align 1, !dbg !2455, !tbaa !980
  br label %546, !dbg !2455

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %547, metadata !1973, metadata !DIExpression()), !dbg !2025
  %548 = icmp ult i64 %547, %539, !dbg !2460
  br i1 %548, label %549, label %551, !dbg !2463

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2460
  store i8 39, ptr %550, align 1, !dbg !2460, !tbaa !980
  br label %551, !dbg !2460

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %552, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2025
  br label %553, !dbg !2464

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2123
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %561, metadata !1973, metadata !DIExpression()), !dbg !2025
  %563 = icmp ult i64 %561, %554, !dbg !2465
  br i1 %563, label %564, label %566, !dbg !2468

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2465
  store i8 %555, ptr %565, align 1, !dbg !2465, !tbaa !980
  br label %566, !dbg !2465

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %567, metadata !1973, metadata !DIExpression()), !dbg !2025
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2469
  call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2025
  br label %569, !dbg !2470

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2415
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2025
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2029
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2426
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %576, metadata !1987, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %572, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %571, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %570, metadata !1966, metadata !DIExpression()), !dbg !2025
  %578 = add i64 %576, 1, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %578, metadata !1987, metadata !DIExpression()), !dbg !2114
  br label %122, !dbg !2472, !llvm.loop !2473

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1964, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1980, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %125, metadata !1974, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %124, metadata !1973, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %123, metadata !1966, metadata !DIExpression()), !dbg !2025
  %580 = icmp ne i64 %124, 0, !dbg !2475
  %581 = xor i1 %110, true, !dbg !2477
  %582 = or i1 %580, %581, !dbg !2477
  %583 = or i1 %582, %111, !dbg !2477
  br i1 %583, label %584, label %621, !dbg !2477

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2478
  %586 = xor i1 %126, true, !dbg !2478
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2478
  br i1 %587, label %595, label %588, !dbg !2478

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2480

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2482
  br label %636, !dbg !2484

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2485
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2487
  br i1 %594, label %27, label %595, !dbg !2487

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2488
  %598 = or i1 %597, %596, !dbg !2490
  br i1 %598, label %614, label %599, !dbg !2490

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1975, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %124, metadata !1973, metadata !DIExpression()), !dbg !2025
  %600 = load i8, ptr %107, align 1, !dbg !2491, !tbaa !980
  %601 = icmp eq i8 %600, 0, !dbg !2494
  br i1 %601, label %614, label %602, !dbg !2494

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1975, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %605, metadata !1973, metadata !DIExpression()), !dbg !2025
  %606 = icmp ult i64 %605, %130, !dbg !2495
  br i1 %606, label %607, label %609, !dbg !2498

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2495
  store i8 %603, ptr %608, align 1, !dbg !2495, !tbaa !980
  br label %609, !dbg !2495

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %610, metadata !1973, metadata !DIExpression()), !dbg !2025
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2499
  call void @llvm.dbg.value(metadata ptr %611, metadata !1975, metadata !DIExpression()), !dbg !2025
  %612 = load i8, ptr %611, align 1, !dbg !2491, !tbaa !980
  %613 = icmp eq i8 %612, 0, !dbg !2494
  br i1 %613, label %614, label %602, !dbg !2494, !llvm.loop !2500

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2101
  call void @llvm.dbg.value(metadata i64 %615, metadata !1973, metadata !DIExpression()), !dbg !2025
  %616 = icmp ult i64 %615, %130, !dbg !2502
  br i1 %616, label %617, label %636, !dbg !2504

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2505
  store i8 0, ptr %618, align 1, !dbg !2506, !tbaa !980
  br label %636, !dbg !2505

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2024), !dbg !2331
  %620 = icmp eq i32 %103, 2, !dbg !2507
  br i1 %620, label %626, label %630, !dbg !2332

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2024), !dbg !2331
  %624 = icmp eq i32 %103, 2, !dbg !2507
  %625 = select i1 %109, i32 4, i32 2, !dbg !2332
  br i1 %624, label %626, label %630, !dbg !2332

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2332

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1967, metadata !DIExpression()), !dbg !2025
  %634 = and i32 %5, -3, !dbg !2508
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2509
  br label %636, !dbg !2510

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2511
}

; Function Attrs: nounwind
declare !dbg !2512 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2515 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2518 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2520 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 %1, metadata !2525, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata ptr %2, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata ptr %0, metadata !2528, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %1, metadata !2533, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata ptr null, metadata !2534, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata ptr %2, metadata !2535, metadata !DIExpression()), !dbg !2541
  %4 = icmp eq ptr %2, null, !dbg !2543
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2543
  call void @llvm.dbg.value(metadata ptr %5, metadata !2536, metadata !DIExpression()), !dbg !2541
  %6 = tail call ptr @__errno_location() #40, !dbg !2544
  %7 = load i32, ptr %6, align 4, !dbg !2544, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %7, metadata !2537, metadata !DIExpression()), !dbg !2541
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2545
  %9 = load i32, ptr %8, align 4, !dbg !2545, !tbaa !1907
  %10 = or i32 %9, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %10, metadata !2538, metadata !DIExpression()), !dbg !2541
  %11 = load i32, ptr %5, align 8, !dbg !2547, !tbaa !1857
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2548
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2549
  %14 = load ptr, ptr %13, align 8, !dbg !2549, !tbaa !1928
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2550
  %16 = load ptr, ptr %15, align 8, !dbg !2550, !tbaa !1931
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2551
  %18 = add i64 %17, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %18, metadata !2539, metadata !DIExpression()), !dbg !2541
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2553
  call void @llvm.dbg.value(metadata ptr %19, metadata !2540, metadata !DIExpression()), !dbg !2541
  %20 = load i32, ptr %5, align 8, !dbg !2554, !tbaa !1857
  %21 = load ptr, ptr %13, align 8, !dbg !2555, !tbaa !1928
  %22 = load ptr, ptr %15, align 8, !dbg !2556, !tbaa !1931
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2557
  store i32 %7, ptr %6, align 4, !dbg !2558, !tbaa !971
  ret ptr %19, !dbg !2559
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2529 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2528, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1, metadata !2533, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %2, metadata !2534, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %3, metadata !2535, metadata !DIExpression()), !dbg !2560
  %5 = icmp eq ptr %3, null, !dbg !2561
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2561
  call void @llvm.dbg.value(metadata ptr %6, metadata !2536, metadata !DIExpression()), !dbg !2560
  %7 = tail call ptr @__errno_location() #40, !dbg !2562
  %8 = load i32, ptr %7, align 4, !dbg !2562, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %8, metadata !2537, metadata !DIExpression()), !dbg !2560
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2563
  %10 = load i32, ptr %9, align 4, !dbg !2563, !tbaa !1907
  %11 = icmp eq ptr %2, null, !dbg !2564
  %12 = zext i1 %11 to i32, !dbg !2564
  %13 = or i32 %10, %12, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %13, metadata !2538, metadata !DIExpression()), !dbg !2560
  %14 = load i32, ptr %6, align 8, !dbg !2566, !tbaa !1857
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2567
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2568
  %17 = load ptr, ptr %16, align 8, !dbg !2568, !tbaa !1928
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2569
  %19 = load ptr, ptr %18, align 8, !dbg !2569, !tbaa !1931
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2570
  %21 = add i64 %20, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %21, metadata !2539, metadata !DIExpression()), !dbg !2560
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2572
  call void @llvm.dbg.value(metadata ptr %22, metadata !2540, metadata !DIExpression()), !dbg !2560
  %23 = load i32, ptr %6, align 8, !dbg !2573, !tbaa !1857
  %24 = load ptr, ptr %16, align 8, !dbg !2574, !tbaa !1928
  %25 = load ptr, ptr %18, align 8, !dbg !2575, !tbaa !1931
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2576
  store i32 %8, ptr %7, align 4, !dbg !2577, !tbaa !971
  br i1 %11, label %28, label %27, !dbg !2578

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2579, !tbaa !2581
  br label %28, !dbg !2582

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2583
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2584 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2589, !tbaa !900
  call void @llvm.dbg.value(metadata ptr %1, metadata !2586, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 1, metadata !2587, metadata !DIExpression()), !dbg !2591
  %2 = load i32, ptr @nslots, align 4, !tbaa !971
  call void @llvm.dbg.value(metadata i32 1, metadata !2587, metadata !DIExpression()), !dbg !2591
  %3 = icmp sgt i32 %2, 1, !dbg !2592
  br i1 %3, label %4, label %6, !dbg !2594

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2592
  br label %10, !dbg !2594

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2595
  %8 = load ptr, ptr %7, align 8, !dbg !2595, !tbaa !2597
  %9 = icmp eq ptr %8, @slot0, !dbg !2599
  br i1 %9, label %17, label %16, !dbg !2600

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2587, metadata !DIExpression()), !dbg !2591
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2601
  %13 = load ptr, ptr %12, align 8, !dbg !2601, !tbaa !2597
  tail call void @free(ptr noundef %13) #37, !dbg !2602
  %14 = add nuw nsw i64 %11, 1, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %14, metadata !2587, metadata !DIExpression()), !dbg !2591
  %15 = icmp eq i64 %14, %5, !dbg !2592
  br i1 %15, label %6, label %10, !dbg !2594, !llvm.loop !2604

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2606
  store i64 256, ptr @slotvec0, align 8, !dbg !2608, !tbaa !2609
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2610, !tbaa !2597
  br label %17, !dbg !2611

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2612
  br i1 %18, label %20, label %19, !dbg !2614

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2615
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2617, !tbaa !900
  br label %20, !dbg !2618

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2619, !tbaa !971
  ret void, !dbg !2620
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2621 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr %1, metadata !2627, metadata !DIExpression()), !dbg !2628
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2629
  ret ptr %3, !dbg !2630
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2631 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %2, metadata !2637, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr %3, metadata !2638, metadata !DIExpression()), !dbg !2651
  %6 = tail call ptr @__errno_location() #40, !dbg !2652
  %7 = load i32, ptr %6, align 4, !dbg !2652, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %7, metadata !2639, metadata !DIExpression()), !dbg !2651
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2653, !tbaa !900
  call void @llvm.dbg.value(metadata ptr %8, metadata !2640, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2641, metadata !DIExpression()), !dbg !2651
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2654
  br i1 %9, label %10, label %11, !dbg !2654

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2656
  unreachable, !dbg !2656

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2657, !tbaa !971
  %13 = icmp sgt i32 %12, %0, !dbg !2658
  br i1 %13, label %32, label %14, !dbg !2659

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2660
  call void @llvm.dbg.value(metadata i1 %15, metadata !2642, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2661
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2662
  %16 = sext i32 %12 to i64, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %16, metadata !2645, metadata !DIExpression()), !dbg !2661
  store i64 %16, ptr %5, align 8, !dbg !2664, !tbaa !2581
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2665
  %18 = add nuw nsw i32 %0, 1, !dbg !2666
  %19 = sub i32 %18, %12, !dbg !2667
  %20 = sext i32 %19 to i64, !dbg !2668
  call void @llvm.dbg.value(metadata ptr %5, metadata !2645, metadata !DIExpression(DW_OP_deref)), !dbg !2661
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2669
  call void @llvm.dbg.value(metadata ptr %21, metadata !2640, metadata !DIExpression()), !dbg !2651
  store ptr %21, ptr @slotvec, align 8, !dbg !2670, !tbaa !900
  br i1 %15, label %22, label %23, !dbg !2671

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2672, !tbaa.struct !2674
  br label %23, !dbg !2675

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2676, !tbaa !971
  %25 = sext i32 %24 to i64, !dbg !2677
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2677
  %27 = load i64, ptr %5, align 8, !dbg !2678, !tbaa !2581
  call void @llvm.dbg.value(metadata i64 %27, metadata !2645, metadata !DIExpression()), !dbg !2661
  %28 = sub nsw i64 %27, %25, !dbg !2679
  %29 = shl i64 %28, 4, !dbg !2680
  call void @llvm.dbg.value(metadata ptr %26, metadata !2059, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %29, metadata !2063, metadata !DIExpression()), !dbg !2681
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2683
  %30 = load i64, ptr %5, align 8, !dbg !2684, !tbaa !2581
  call void @llvm.dbg.value(metadata i64 %30, metadata !2645, metadata !DIExpression()), !dbg !2661
  %31 = trunc i64 %30 to i32, !dbg !2684
  store i32 %31, ptr @nslots, align 4, !dbg !2685, !tbaa !971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2686
  br label %32, !dbg !2687

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2651
  call void @llvm.dbg.value(metadata ptr %33, metadata !2640, metadata !DIExpression()), !dbg !2651
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2688
  %36 = load i64, ptr %35, align 8, !dbg !2689, !tbaa !2609
  call void @llvm.dbg.value(metadata i64 %36, metadata !2646, metadata !DIExpression()), !dbg !2690
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2691
  %38 = load ptr, ptr %37, align 8, !dbg !2691, !tbaa !2597
  call void @llvm.dbg.value(metadata ptr %38, metadata !2648, metadata !DIExpression()), !dbg !2690
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2692
  %40 = load i32, ptr %39, align 4, !dbg !2692, !tbaa !1907
  %41 = or i32 %40, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %41, metadata !2649, metadata !DIExpression()), !dbg !2690
  %42 = load i32, ptr %3, align 8, !dbg !2694, !tbaa !1857
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2695
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2696
  %45 = load ptr, ptr %44, align 8, !dbg !2696, !tbaa !1928
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2697
  %47 = load ptr, ptr %46, align 8, !dbg !2697, !tbaa !1931
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %48, metadata !2650, metadata !DIExpression()), !dbg !2690
  %49 = icmp ugt i64 %36, %48, !dbg !2699
  br i1 %49, label %60, label %50, !dbg !2701

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %51, metadata !2646, metadata !DIExpression()), !dbg !2690
  store i64 %51, ptr %35, align 8, !dbg !2704, !tbaa !2609
  %52 = icmp eq ptr %38, @slot0, !dbg !2705
  br i1 %52, label %54, label %53, !dbg !2707

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2708
  br label %54, !dbg !2708

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2709
  call void @llvm.dbg.value(metadata ptr %55, metadata !2648, metadata !DIExpression()), !dbg !2690
  store ptr %55, ptr %37, align 8, !dbg !2710, !tbaa !2597
  %56 = load i32, ptr %3, align 8, !dbg !2711, !tbaa !1857
  %57 = load ptr, ptr %44, align 8, !dbg !2712, !tbaa !1928
  %58 = load ptr, ptr %46, align 8, !dbg !2713, !tbaa !1931
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2714
  br label %60, !dbg !2715

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2690
  call void @llvm.dbg.value(metadata ptr %61, metadata !2648, metadata !DIExpression()), !dbg !2690
  store i32 %7, ptr %6, align 4, !dbg !2716, !tbaa !971
  ret ptr %61, !dbg !2717
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata ptr %1, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %2, metadata !2724, metadata !DIExpression()), !dbg !2725
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2726
  ret ptr %4, !dbg !2727
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2728 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2730, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 0, metadata !2626, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %0, metadata !2627, metadata !DIExpression()), !dbg !2732
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2734
  ret ptr %2, !dbg !2735
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2736 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2740, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %1, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2722, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %1, metadata !2724, metadata !DIExpression()), !dbg !2743
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2745
  ret ptr %3, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2747 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %1, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata ptr %2, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2754, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2767, metadata !DIExpression()), !dbg !2770
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2770, !alias.scope !2758
  %5 = icmp eq i32 %1, 10, !dbg !2771
  br i1 %5, label %6, label %7, !dbg !2773

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2774, !noalias !2758
  unreachable, !dbg !2774

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2775, !tbaa !1857, !alias.scope !2758
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2776
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2777
  ret ptr %8, !dbg !2778
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2779 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %1, metadata !2784, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %2, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %3, metadata !2786, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2787, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2767, metadata !DIExpression()), !dbg !2797
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2797, !alias.scope !2791
  %6 = icmp eq i32 %1, 10, !dbg !2798
  br i1 %6, label %7, label %8, !dbg !2799

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2800, !noalias !2791
  unreachable, !dbg !2800

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2801, !tbaa !1857, !alias.scope !2791
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2802
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2803
  ret ptr %9, !dbg !2804
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2805 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2809, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %1, metadata !2810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2751, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 %0, metadata !2752, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata ptr %1, metadata !2753, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2814
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2754, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816), !dbg !2819
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2767, metadata !DIExpression()), !dbg !2822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2822, !alias.scope !2816
  %4 = icmp eq i32 %0, 10, !dbg !2823
  br i1 %4, label %5, label %6, !dbg !2824

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2825, !noalias !2816
  unreachable, !dbg !2825

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2826, !tbaa !1857, !alias.scope !2816
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2827
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2828
  ret ptr %7, !dbg !2829
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2830 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2834, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %1, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 %2, metadata !2836, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 0, metadata !2783, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %1, metadata !2785, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %2, metadata !2786, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2840
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2787, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2842), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2767, metadata !DIExpression()), !dbg !2848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2848, !alias.scope !2842
  %5 = icmp eq i32 %0, 10, !dbg !2849
  br i1 %5, label %6, label %7, !dbg !2850

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2851, !noalias !2842
  unreachable, !dbg !2851

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2852, !tbaa !1857, !alias.scope !2842
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2853
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2854
  ret ptr %8, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2856 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 %2, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2865
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2867, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %4, metadata !1874, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %2, metadata !1875, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %2, metadata !1877, metadata !DIExpression()), !dbg !2869
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2871
  %6 = lshr i8 %2, 5, !dbg !2872
  %7 = zext i8 %6 to i64, !dbg !2872
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2873
  call void @llvm.dbg.value(metadata ptr %8, metadata !1878, metadata !DIExpression()), !dbg !2869
  %9 = and i8 %2, 31, !dbg !2874
  %10 = zext i8 %9 to i32, !dbg !2874
  call void @llvm.dbg.value(metadata i32 %10, metadata !1880, metadata !DIExpression()), !dbg !2869
  %11 = load i32, ptr %8, align 4, !dbg !2875, !tbaa !971
  %12 = lshr i32 %11, %10, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %12, metadata !1881, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2869
  %13 = and i32 %12, 1, !dbg !2877
  %14 = xor i32 %13, 1, !dbg !2877
  %15 = shl nuw i32 %14, %10, !dbg !2878
  %16 = xor i32 %15, %11, !dbg !2879
  store i32 %16, ptr %8, align 4, !dbg !2879, !tbaa !971
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2880
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2881
  ret ptr %17, !dbg !2882
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2883 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 %1, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 -1, metadata !2861, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8 %1, metadata !2862, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2863, metadata !DIExpression()), !dbg !2893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2894, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %3, metadata !1874, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !1875, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !1877, metadata !DIExpression()), !dbg !2895
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2897
  %5 = lshr i8 %1, 5, !dbg !2898
  %6 = zext i8 %5 to i64, !dbg !2898
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %7, metadata !1878, metadata !DIExpression()), !dbg !2895
  %8 = and i8 %1, 31, !dbg !2900
  %9 = zext i8 %8 to i32, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %9, metadata !1880, metadata !DIExpression()), !dbg !2895
  %10 = load i32, ptr %7, align 4, !dbg !2901, !tbaa !971
  %11 = lshr i32 %10, %9, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %11, metadata !1881, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2895
  %12 = and i32 %11, 1, !dbg !2903
  %13 = xor i32 %12, 1, !dbg !2903
  %14 = shl nuw i32 %13, %9, !dbg !2904
  %15 = xor i32 %14, %10, !dbg !2905
  store i32 %15, ptr %7, align 4, !dbg !2905, !tbaa !971
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2906
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2907
  ret ptr %16, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2909 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 58, metadata !2888, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 -1, metadata !2861, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 58, metadata !2862, metadata !DIExpression()), !dbg !2915
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2917
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2863, metadata !DIExpression()), !dbg !2918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2919, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %2, metadata !1874, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 58, metadata !1875, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 58, metadata !1877, metadata !DIExpression()), !dbg !2920
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2922
  call void @llvm.dbg.value(metadata ptr %3, metadata !1878, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 26, metadata !1880, metadata !DIExpression()), !dbg !2920
  %4 = load i32, ptr %3, align 4, !dbg !2923, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %4, metadata !1881, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2920
  %5 = or i32 %4, 67108864, !dbg !2924
  store i32 %5, ptr %3, align 4, !dbg !2924, !tbaa !971
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2925
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2926
  ret ptr %6, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2928 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 58, metadata !2862, metadata !DIExpression()), !dbg !2933
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2935
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2863, metadata !DIExpression()), !dbg !2936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2937, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %3, metadata !1874, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 58, metadata !1875, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 58, metadata !1877, metadata !DIExpression()), !dbg !2938
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2940
  call void @llvm.dbg.value(metadata ptr %4, metadata !1878, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 26, metadata !1880, metadata !DIExpression()), !dbg !2938
  %5 = load i32, ptr %4, align 4, !dbg !2941, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %5, metadata !1881, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2938
  %6 = or i32 %5, 67108864, !dbg !2942
  store i32 %6, ptr %4, align 4, !dbg !2942, !tbaa !971
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2943
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2944
  ret ptr %7, !dbg !2945
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2946 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2767, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %0, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %1, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %2, metadata !2950, metadata !DIExpression()), !dbg !2954
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2955
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2951, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 0, metadata !2767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2957
  %5 = icmp eq i32 %1, 10, !dbg !2958
  br i1 %5, label %6, label %7, !dbg !2959

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2960, !noalias !2961
  unreachable, !dbg !2960

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2957
  store i32 %1, ptr %4, align 8, !dbg !2964, !tbaa.struct !2868
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2964
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2964
  call void @llvm.dbg.value(metadata ptr %4, metadata !1874, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 58, metadata !1875, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 1, metadata !1876, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 58, metadata !1877, metadata !DIExpression()), !dbg !2965
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %9, metadata !1878, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 26, metadata !1880, metadata !DIExpression()), !dbg !2965
  %10 = load i32, ptr %9, align 4, !dbg !2968, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %10, metadata !1881, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2965
  %11 = or i32 %10, 67108864, !dbg !2969
  store i32 %11, ptr %9, align 4, !dbg !2969, !tbaa !971
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2970
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2971
  ret ptr %12, !dbg !2972
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2973 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %1, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %2, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %3, metadata !2980, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %0, metadata !2982, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %1, metadata !2987, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %2, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %3, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 -1, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2994
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2991, metadata !DIExpression()), !dbg !2995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2996, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %2, metadata !1916, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !2997
  store i32 10, ptr %5, align 8, !dbg !2999, !tbaa !1857
  %6 = icmp ne ptr %1, null, !dbg !3000
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3001
  br i1 %8, label %10, label %9, !dbg !3001

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3002
  unreachable, !dbg !3002

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3003
  store ptr %1, ptr %11, align 8, !dbg !3004, !tbaa !1928
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3005
  store ptr %2, ptr %12, align 8, !dbg !3006, !tbaa !1931
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3007
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3008
  ret ptr %13, !dbg !3009
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2983 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2982, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %1, metadata !2987, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %2, metadata !2988, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %3, metadata !2989, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %4, metadata !2990, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2991, metadata !DIExpression()), !dbg !3012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3013, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %6, metadata !1914, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %1, metadata !1915, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %2, metadata !1916, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %6, metadata !1914, metadata !DIExpression()), !dbg !3014
  store i32 10, ptr %6, align 8, !dbg !3016, !tbaa !1857
  %7 = icmp ne ptr %1, null, !dbg !3017
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3018
  br i1 %9, label %11, label %10, !dbg !3018

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3019
  unreachable, !dbg !3019

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3020
  store ptr %1, ptr %12, align 8, !dbg !3021, !tbaa !1928
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3022
  store ptr %2, ptr %13, align 8, !dbg !3023, !tbaa !1931
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3024
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3025
  ret ptr %14, !dbg !3026
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3027 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %1, metadata !3032, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %2, metadata !3033, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %1, metadata !2979, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %2, metadata !2980, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 0, metadata !2982, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %2, metadata !2989, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 -1, metadata !2990, metadata !DIExpression()), !dbg !3037
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3039
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2991, metadata !DIExpression()), !dbg !3040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3041, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %4, metadata !1914, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %0, metadata !1915, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %1, metadata !1916, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %4, metadata !1914, metadata !DIExpression()), !dbg !3042
  store i32 10, ptr %4, align 8, !dbg !3044, !tbaa !1857
  %5 = icmp ne ptr %0, null, !dbg !3045
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3046
  br i1 %7, label %9, label %8, !dbg !3046

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3047
  unreachable, !dbg !3047

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3048
  store ptr %0, ptr %10, align 8, !dbg !3049, !tbaa !1928
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3050
  store ptr %1, ptr %11, align 8, !dbg !3051, !tbaa !1931
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3052
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3053
  ret ptr %12, !dbg !3054
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3055 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %1, metadata !3060, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %2, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %3, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 0, metadata !2982, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %2, metadata !2989, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %3, metadata !2990, metadata !DIExpression()), !dbg !3064
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3066
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2991, metadata !DIExpression()), !dbg !3067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3068, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %0, metadata !1915, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %1, metadata !1916, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %5, metadata !1914, metadata !DIExpression()), !dbg !3069
  store i32 10, ptr %5, align 8, !dbg !3071, !tbaa !1857
  %6 = icmp ne ptr %0, null, !dbg !3072
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3073
  br i1 %8, label %10, label %9, !dbg !3073

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3074
  unreachable, !dbg !3074

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3075
  store ptr %0, ptr %11, align 8, !dbg !3076, !tbaa !1928
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3077
  store ptr %1, ptr %12, align 8, !dbg !3078, !tbaa !1931
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3079
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3080
  ret ptr %13, !dbg !3081
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3082 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %1, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %2, metadata !3088, metadata !DIExpression()), !dbg !3089
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3090
  ret ptr %4, !dbg !3091
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3092 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i32 0, metadata !3086, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3087, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3099
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3101
  ret ptr %3, !dbg !3102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata ptr %1, metadata !3087, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 -1, metadata !3088, metadata !DIExpression()), !dbg !3110
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3112
  ret ptr %3, !dbg !3113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3114 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 0, metadata !3107, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata ptr %0, metadata !3108, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !3086, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %0, metadata !3087, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 -1, metadata !3088, metadata !DIExpression()), !dbg !3122
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3124
  ret ptr %2, !dbg !3125
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3126 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3165, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %1, metadata !3166, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %2, metadata !3167, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %3, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %4, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %5, metadata !3170, metadata !DIExpression()), !dbg !3171
  %7 = icmp eq ptr %1, null, !dbg !3172
  br i1 %7, label %10, label %8, !dbg !3174

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3175
  br label %12, !dbg !3175

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.102, ptr noundef %2, ptr noundef %3) #37, !dbg !3176
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.3.104, i32 noundef 5) #37, !dbg !3177
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3177
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3178
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.5.106, i32 noundef 5) #37, !dbg !3179
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.107) #37, !dbg !3179
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3180
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
  ], !dbg !3181

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.7.108, i32 noundef 5) #37, !dbg !3182
  %21 = load ptr, ptr %4, align 8, !dbg !3182, !tbaa !900
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3182
  br label %147, !dbg !3184

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.8.109, i32 noundef 5) #37, !dbg !3185
  %25 = load ptr, ptr %4, align 8, !dbg !3185, !tbaa !900
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3185
  %27 = load ptr, ptr %26, align 8, !dbg !3185, !tbaa !900
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3185
  br label %147, !dbg !3186

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.9.110, i32 noundef 5) #37, !dbg !3187
  %31 = load ptr, ptr %4, align 8, !dbg !3187, !tbaa !900
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3187
  %33 = load ptr, ptr %32, align 8, !dbg !3187, !tbaa !900
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3187
  %35 = load ptr, ptr %34, align 8, !dbg !3187, !tbaa !900
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3187
  br label %147, !dbg !3188

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.10.111, i32 noundef 5) #37, !dbg !3189
  %39 = load ptr, ptr %4, align 8, !dbg !3189, !tbaa !900
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3189
  %41 = load ptr, ptr %40, align 8, !dbg !3189, !tbaa !900
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3189
  %43 = load ptr, ptr %42, align 8, !dbg !3189, !tbaa !900
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3189
  %45 = load ptr, ptr %44, align 8, !dbg !3189, !tbaa !900
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3189
  br label %147, !dbg !3190

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.11.112, i32 noundef 5) #37, !dbg !3191
  %49 = load ptr, ptr %4, align 8, !dbg !3191, !tbaa !900
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3191
  %51 = load ptr, ptr %50, align 8, !dbg !3191, !tbaa !900
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3191
  %53 = load ptr, ptr %52, align 8, !dbg !3191, !tbaa !900
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3191
  %55 = load ptr, ptr %54, align 8, !dbg !3191, !tbaa !900
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3191
  %57 = load ptr, ptr %56, align 8, !dbg !3191, !tbaa !900
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3191
  br label %147, !dbg !3192

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.12.113, i32 noundef 5) #37, !dbg !3193
  %61 = load ptr, ptr %4, align 8, !dbg !3193, !tbaa !900
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3193
  %63 = load ptr, ptr %62, align 8, !dbg !3193, !tbaa !900
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3193
  %65 = load ptr, ptr %64, align 8, !dbg !3193, !tbaa !900
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3193
  %67 = load ptr, ptr %66, align 8, !dbg !3193, !tbaa !900
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3193
  %69 = load ptr, ptr %68, align 8, !dbg !3193, !tbaa !900
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3193
  %71 = load ptr, ptr %70, align 8, !dbg !3193, !tbaa !900
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3193
  br label %147, !dbg !3194

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.13.114, i32 noundef 5) #37, !dbg !3195
  %75 = load ptr, ptr %4, align 8, !dbg !3195, !tbaa !900
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3195
  %77 = load ptr, ptr %76, align 8, !dbg !3195, !tbaa !900
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3195
  %79 = load ptr, ptr %78, align 8, !dbg !3195, !tbaa !900
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3195
  %81 = load ptr, ptr %80, align 8, !dbg !3195, !tbaa !900
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3195
  %83 = load ptr, ptr %82, align 8, !dbg !3195, !tbaa !900
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3195
  %85 = load ptr, ptr %84, align 8, !dbg !3195, !tbaa !900
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3195
  %87 = load ptr, ptr %86, align 8, !dbg !3195, !tbaa !900
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3195
  br label %147, !dbg !3196

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.14.115, i32 noundef 5) #37, !dbg !3197
  %91 = load ptr, ptr %4, align 8, !dbg !3197, !tbaa !900
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3197
  %93 = load ptr, ptr %92, align 8, !dbg !3197, !tbaa !900
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3197
  %95 = load ptr, ptr %94, align 8, !dbg !3197, !tbaa !900
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3197
  %97 = load ptr, ptr %96, align 8, !dbg !3197, !tbaa !900
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3197
  %99 = load ptr, ptr %98, align 8, !dbg !3197, !tbaa !900
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3197
  %101 = load ptr, ptr %100, align 8, !dbg !3197, !tbaa !900
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3197
  %103 = load ptr, ptr %102, align 8, !dbg !3197, !tbaa !900
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3197
  %105 = load ptr, ptr %104, align 8, !dbg !3197, !tbaa !900
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3197
  br label %147, !dbg !3198

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.15.116, i32 noundef 5) #37, !dbg !3199
  %109 = load ptr, ptr %4, align 8, !dbg !3199, !tbaa !900
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3199
  %111 = load ptr, ptr %110, align 8, !dbg !3199, !tbaa !900
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3199
  %113 = load ptr, ptr %112, align 8, !dbg !3199, !tbaa !900
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3199
  %115 = load ptr, ptr %114, align 8, !dbg !3199, !tbaa !900
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3199
  %117 = load ptr, ptr %116, align 8, !dbg !3199, !tbaa !900
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3199
  %119 = load ptr, ptr %118, align 8, !dbg !3199, !tbaa !900
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3199
  %121 = load ptr, ptr %120, align 8, !dbg !3199, !tbaa !900
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3199
  %123 = load ptr, ptr %122, align 8, !dbg !3199, !tbaa !900
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3199
  %125 = load ptr, ptr %124, align 8, !dbg !3199, !tbaa !900
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3199
  br label %147, !dbg !3200

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.16.117, i32 noundef 5) #37, !dbg !3201
  %129 = load ptr, ptr %4, align 8, !dbg !3201, !tbaa !900
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3201
  %131 = load ptr, ptr %130, align 8, !dbg !3201, !tbaa !900
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3201
  %133 = load ptr, ptr %132, align 8, !dbg !3201, !tbaa !900
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3201
  %135 = load ptr, ptr %134, align 8, !dbg !3201, !tbaa !900
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3201
  %137 = load ptr, ptr %136, align 8, !dbg !3201, !tbaa !900
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3201
  %139 = load ptr, ptr %138, align 8, !dbg !3201, !tbaa !900
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3201
  %141 = load ptr, ptr %140, align 8, !dbg !3201, !tbaa !900
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3201
  %143 = load ptr, ptr %142, align 8, !dbg !3201, !tbaa !900
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3201
  %145 = load ptr, ptr %144, align 8, !dbg !3201, !tbaa !900
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3201
  br label %147, !dbg !3202

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3204 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3208, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %1, metadata !3209, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %2, metadata !3210, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %3, metadata !3211, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %4, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 0, metadata !3213, metadata !DIExpression()), !dbg !3214
  br label %6, !dbg !3215

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3217
  call void @llvm.dbg.value(metadata i64 %7, metadata !3213, metadata !DIExpression()), !dbg !3214
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3218
  %9 = load ptr, ptr %8, align 8, !dbg !3218, !tbaa !900
  %10 = icmp eq ptr %9, null, !dbg !3220
  %11 = add i64 %7, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %11, metadata !3213, metadata !DIExpression()), !dbg !3214
  br i1 %10, label %12, label %6, !dbg !3220, !llvm.loop !3222

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3224
  ret void, !dbg !3225
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3226 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3241, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %1, metadata !3242, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %2, metadata !3243, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %3, metadata !3244, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3245, metadata !DIExpression()), !dbg !3250
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3247, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 0, metadata !3246, metadata !DIExpression()), !dbg !3249
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3246, metadata !DIExpression()), !dbg !3249
  %10 = icmp sgt i32 %9, -1, !dbg !3253
  br i1 %10, label %18, label %11, !dbg !3253

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3253
  store i32 %12, ptr %7, align 8, !dbg !3253
  %13 = icmp ult i32 %9, -7, !dbg !3253
  br i1 %13, label %14, label %18, !dbg !3253

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3253
  %16 = sext i32 %9 to i64, !dbg !3253
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3253
  br label %22, !dbg !3253

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3253
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3253
  store ptr %21, ptr %4, align 8, !dbg !3253
  br label %22, !dbg !3253

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3253
  %25 = load ptr, ptr %24, align 8, !dbg !3253
  store ptr %25, ptr %6, align 8, !dbg !3256, !tbaa !900
  %26 = icmp eq ptr %25, null, !dbg !3257
  br i1 %26, label %197, label %27, !dbg !3258

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3246, metadata !DIExpression()), !dbg !3249
  %28 = icmp sgt i32 %23, -1, !dbg !3253
  br i1 %28, label %36, label %29, !dbg !3253

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3253
  store i32 %30, ptr %7, align 8, !dbg !3253
  %31 = icmp ult i32 %23, -7, !dbg !3253
  br i1 %31, label %32, label %36, !dbg !3253

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3253
  %34 = sext i32 %23 to i64, !dbg !3253
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3253
  br label %40, !dbg !3253

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3253
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3253
  store ptr %39, ptr %4, align 8, !dbg !3253
  br label %40, !dbg !3253

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3253
  %43 = load ptr, ptr %42, align 8, !dbg !3253
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3259
  store ptr %43, ptr %44, align 8, !dbg !3256, !tbaa !900
  %45 = icmp eq ptr %43, null, !dbg !3257
  br i1 %45, label %197, label %46, !dbg !3258

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 2, metadata !3246, metadata !DIExpression()), !dbg !3249
  %47 = icmp sgt i32 %41, -1, !dbg !3253
  br i1 %47, label %55, label %48, !dbg !3253

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3253
  store i32 %49, ptr %7, align 8, !dbg !3253
  %50 = icmp ult i32 %41, -7, !dbg !3253
  br i1 %50, label %51, label %55, !dbg !3253

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3253
  %53 = sext i32 %41 to i64, !dbg !3253
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3253
  br label %59, !dbg !3253

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3253
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3253
  store ptr %58, ptr %4, align 8, !dbg !3253
  br label %59, !dbg !3253

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3253
  %62 = load ptr, ptr %61, align 8, !dbg !3253
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3259
  store ptr %62, ptr %63, align 8, !dbg !3256, !tbaa !900
  %64 = icmp eq ptr %62, null, !dbg !3257
  br i1 %64, label %197, label %65, !dbg !3258

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 3, metadata !3246, metadata !DIExpression()), !dbg !3249
  %66 = icmp sgt i32 %60, -1, !dbg !3253
  br i1 %66, label %74, label %67, !dbg !3253

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3253
  store i32 %68, ptr %7, align 8, !dbg !3253
  %69 = icmp ult i32 %60, -7, !dbg !3253
  br i1 %69, label %70, label %74, !dbg !3253

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3253
  %72 = sext i32 %60 to i64, !dbg !3253
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3253
  br label %78, !dbg !3253

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3253
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3253
  store ptr %77, ptr %4, align 8, !dbg !3253
  br label %78, !dbg !3253

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3253
  %81 = load ptr, ptr %80, align 8, !dbg !3253
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3259
  store ptr %81, ptr %82, align 8, !dbg !3256, !tbaa !900
  %83 = icmp eq ptr %81, null, !dbg !3257
  br i1 %83, label %197, label %84, !dbg !3258

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 4, metadata !3246, metadata !DIExpression()), !dbg !3249
  %85 = icmp sgt i32 %79, -1, !dbg !3253
  br i1 %85, label %93, label %86, !dbg !3253

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3253
  store i32 %87, ptr %7, align 8, !dbg !3253
  %88 = icmp ult i32 %79, -7, !dbg !3253
  br i1 %88, label %89, label %93, !dbg !3253

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3253
  %91 = sext i32 %79 to i64, !dbg !3253
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3253
  br label %97, !dbg !3253

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3253
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3253
  store ptr %96, ptr %4, align 8, !dbg !3253
  br label %97, !dbg !3253

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3253
  %100 = load ptr, ptr %99, align 8, !dbg !3253
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3259
  store ptr %100, ptr %101, align 8, !dbg !3256, !tbaa !900
  %102 = icmp eq ptr %100, null, !dbg !3257
  br i1 %102, label %197, label %103, !dbg !3258

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 5, metadata !3246, metadata !DIExpression()), !dbg !3249
  %104 = icmp sgt i32 %98, -1, !dbg !3253
  br i1 %104, label %112, label %105, !dbg !3253

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3253
  store i32 %106, ptr %7, align 8, !dbg !3253
  %107 = icmp ult i32 %98, -7, !dbg !3253
  br i1 %107, label %108, label %112, !dbg !3253

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3253
  %110 = sext i32 %98 to i64, !dbg !3253
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3253
  br label %116, !dbg !3253

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3253
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3253
  store ptr %115, ptr %4, align 8, !dbg !3253
  br label %116, !dbg !3253

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3253
  %119 = load ptr, ptr %118, align 8, !dbg !3253
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3259
  store ptr %119, ptr %120, align 8, !dbg !3256, !tbaa !900
  %121 = icmp eq ptr %119, null, !dbg !3257
  br i1 %121, label %197, label %122, !dbg !3258

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 6, metadata !3246, metadata !DIExpression()), !dbg !3249
  %123 = icmp sgt i32 %117, -1, !dbg !3253
  br i1 %123, label %131, label %124, !dbg !3253

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3253
  store i32 %125, ptr %7, align 8, !dbg !3253
  %126 = icmp ult i32 %117, -7, !dbg !3253
  br i1 %126, label %127, label %131, !dbg !3253

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3253
  %129 = sext i32 %117 to i64, !dbg !3253
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3253
  br label %135, !dbg !3253

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3253
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3253
  store ptr %134, ptr %4, align 8, !dbg !3253
  br label %135, !dbg !3253

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3253
  %138 = load ptr, ptr %137, align 8, !dbg !3253
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3259
  store ptr %138, ptr %139, align 8, !dbg !3256, !tbaa !900
  %140 = icmp eq ptr %138, null, !dbg !3257
  br i1 %140, label %197, label %141, !dbg !3258

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 7, metadata !3246, metadata !DIExpression()), !dbg !3249
  %142 = icmp sgt i32 %136, -1, !dbg !3253
  br i1 %142, label %150, label %143, !dbg !3253

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3253
  store i32 %144, ptr %7, align 8, !dbg !3253
  %145 = icmp ult i32 %136, -7, !dbg !3253
  br i1 %145, label %146, label %150, !dbg !3253

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3253
  %148 = sext i32 %136 to i64, !dbg !3253
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3253
  br label %154, !dbg !3253

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3253
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3253
  store ptr %153, ptr %4, align 8, !dbg !3253
  br label %154, !dbg !3253

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3253
  %157 = load ptr, ptr %156, align 8, !dbg !3253
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3259
  store ptr %157, ptr %158, align 8, !dbg !3256, !tbaa !900
  %159 = icmp eq ptr %157, null, !dbg !3257
  br i1 %159, label %197, label %160, !dbg !3258

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 8, metadata !3246, metadata !DIExpression()), !dbg !3249
  %161 = icmp sgt i32 %155, -1, !dbg !3253
  br i1 %161, label %169, label %162, !dbg !3253

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3253
  store i32 %163, ptr %7, align 8, !dbg !3253
  %164 = icmp ult i32 %155, -7, !dbg !3253
  br i1 %164, label %165, label %169, !dbg !3253

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3253
  %167 = sext i32 %155 to i64, !dbg !3253
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3253
  br label %173, !dbg !3253

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3253
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3253
  store ptr %172, ptr %4, align 8, !dbg !3253
  br label %173, !dbg !3253

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3253
  %176 = load ptr, ptr %175, align 8, !dbg !3253
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3259
  store ptr %176, ptr %177, align 8, !dbg !3256, !tbaa !900
  %178 = icmp eq ptr %176, null, !dbg !3257
  br i1 %178, label %197, label %179, !dbg !3258

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 9, metadata !3246, metadata !DIExpression()), !dbg !3249
  %180 = icmp sgt i32 %174, -1, !dbg !3253
  br i1 %180, label %188, label %181, !dbg !3253

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3253
  store i32 %182, ptr %7, align 8, !dbg !3253
  %183 = icmp ult i32 %174, -7, !dbg !3253
  br i1 %183, label %184, label %188, !dbg !3253

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3253
  %186 = sext i32 %174 to i64, !dbg !3253
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3253
  br label %191, !dbg !3253

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3253
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3253
  store ptr %190, ptr %4, align 8, !dbg !3253
  br label %191, !dbg !3253

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3253
  %193 = load ptr, ptr %192, align 8, !dbg !3253
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3259
  store ptr %193, ptr %194, align 8, !dbg !3256, !tbaa !900
  %195 = icmp eq ptr %193, null, !dbg !3257
  %196 = select i1 %195, i64 9, i64 10, !dbg !3258
  br label %197, !dbg !3258

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3260
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3261
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3262
  ret void, !dbg !3262
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3263 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3267, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %1, metadata !3268, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %2, metadata !3269, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %3, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3273
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.va_start(ptr nonnull %5), !dbg !3275
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3276, !tbaa.struct !1553
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3276
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3276
  call void @llvm.va_end(ptr nonnull %5), !dbg !3277
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3278
  ret void, !dbg !3278
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3279 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3280, !tbaa !900
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %1), !dbg !3280
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.17.122, i32 noundef 5) #37, !dbg !3281
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.123) #37, !dbg !3281
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.19.124, i32 noundef 5) #37, !dbg !3282
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.125, ptr noundef nonnull @.str.21.126) #37, !dbg !3282
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.22.127, i32 noundef 5) #37, !dbg !3283
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.128) #37, !dbg !3283
  ret void, !dbg !3284
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3285 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3290, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %2, metadata !3298, metadata !DIExpression()), !dbg !3299
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3301
  call void @llvm.dbg.value(metadata ptr %4, metadata !3302, metadata !DIExpression()), !dbg !3307
  %5 = icmp eq ptr %4, null, !dbg !3309
  br i1 %5, label %6, label %7, !dbg !3311

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3312
  unreachable, !dbg !3312

7:                                                ; preds = %3
  ret ptr %4, !dbg !3313
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3295 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %2, metadata !3298, metadata !DIExpression()), !dbg !3314
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3315
  call void @llvm.dbg.value(metadata ptr %4, metadata !3302, metadata !DIExpression()), !dbg !3316
  %5 = icmp eq ptr %4, null, !dbg !3318
  br i1 %5, label %6, label %7, !dbg !3319

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3320
  unreachable, !dbg !3320

7:                                                ; preds = %3
  ret ptr %4, !dbg !3321
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3322 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3326, metadata !DIExpression()), !dbg !3327
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3328
  call void @llvm.dbg.value(metadata ptr %2, metadata !3302, metadata !DIExpression()), !dbg !3329
  %3 = icmp eq ptr %2, null, !dbg !3331
  br i1 %3, label %4, label %5, !dbg !3332

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3333
  unreachable, !dbg !3333

5:                                                ; preds = %1
  ret ptr %2, !dbg !3334
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3335 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3336 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3340, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %0, metadata !3342, metadata !DIExpression()), !dbg !3346
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3348
  call void @llvm.dbg.value(metadata ptr %2, metadata !3302, metadata !DIExpression()), !dbg !3349
  %3 = icmp eq ptr %2, null, !dbg !3351
  br i1 %3, label %4, label %5, !dbg !3352

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3353
  unreachable, !dbg !3353

5:                                                ; preds = %1
  ret ptr %2, !dbg !3354
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3355 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %0, metadata !3326, metadata !DIExpression()), !dbg !3361
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3363
  call void @llvm.dbg.value(metadata ptr %2, metadata !3302, metadata !DIExpression()), !dbg !3364
  %3 = icmp eq ptr %2, null, !dbg !3366
  br i1 %3, label %4, label %5, !dbg !3367

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3368
  unreachable, !dbg !3368

5:                                                ; preds = %1
  ret ptr %2, !dbg !3369
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3370 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %1, metadata !3381, metadata !DIExpression()), !dbg !3382
  %3 = icmp eq i64 %1, 0, !dbg !3384
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3384
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3385
  call void @llvm.dbg.value(metadata ptr %5, metadata !3302, metadata !DIExpression()), !dbg !3386
  %6 = icmp eq ptr %5, null, !dbg !3388
  br i1 %6, label %7, label %8, !dbg !3389

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3390
  unreachable, !dbg !3390

8:                                                ; preds = %2
  ret ptr %5, !dbg !3391
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3392 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3393 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3397, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3398, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %1, metadata !3381, metadata !DIExpression()), !dbg !3406
  %3 = icmp eq i64 %1, 0, !dbg !3408
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3408
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3409
  call void @llvm.dbg.value(metadata ptr %5, metadata !3302, metadata !DIExpression()), !dbg !3410
  %6 = icmp eq ptr %5, null, !dbg !3412
  br i1 %6, label %7, label %8, !dbg !3413

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3414
  unreachable, !dbg !3414

8:                                                ; preds = %2
  ret ptr %5, !dbg !3415
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3416 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %2, metadata !3422, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %1, metadata !3427, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %2, metadata !3428, metadata !DIExpression()), !dbg !3429
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3431
  call void @llvm.dbg.value(metadata ptr %4, metadata !3302, metadata !DIExpression()), !dbg !3432
  %5 = icmp eq ptr %4, null, !dbg !3434
  br i1 %5, label %6, label %7, !dbg !3435

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3436
  unreachable, !dbg !3436

7:                                                ; preds = %3
  ret ptr %4, !dbg !3437
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3438 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata ptr null, metadata !3294, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %0, metadata !3297, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3298, metadata !DIExpression()), !dbg !3445
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3447
  call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3448
  %4 = icmp eq ptr %3, null, !dbg !3450
  br i1 %4, label %5, label %6, !dbg !3451

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3452
  unreachable, !dbg !3452

6:                                                ; preds = %2
  ret ptr %3, !dbg !3453
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3454 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3458, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %1, metadata !3459, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata ptr null, metadata !3420, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %0, metadata !3421, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %1, metadata !3422, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata ptr null, metadata !3424, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()), !dbg !3463
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3465
  call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3466
  %4 = icmp eq ptr %3, null, !dbg !3468
  br i1 %4, label %5, label %6, !dbg !3469

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3470
  unreachable, !dbg !3470

6:                                                ; preds = %2
  ret ptr %3, !dbg !3471
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3476, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %1, metadata !3477, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %0, metadata !814, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata ptr %1, metadata !815, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 1, metadata !816, metadata !DIExpression()), !dbg !3479
  %3 = load i64, ptr %1, align 8, !dbg !3481, !tbaa !2581
  call void @llvm.dbg.value(metadata i64 %3, metadata !817, metadata !DIExpression()), !dbg !3479
  %4 = icmp eq ptr %0, null, !dbg !3482
  br i1 %4, label %5, label %8, !dbg !3484

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3485
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3488
  br label %15, !dbg !3488

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3489
  %10 = add nuw i64 %9, 1, !dbg !3489
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3489
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3489
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3489
  call void @llvm.dbg.value(metadata i64 %13, metadata !817, metadata !DIExpression()), !dbg !3479
  br i1 %12, label %14, label %15, !dbg !3492

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3493
  unreachable, !dbg !3493

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3479
  call void @llvm.dbg.value(metadata i64 %16, metadata !817, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %16, metadata !3297, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 1, metadata !3298, metadata !DIExpression()), !dbg !3494
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3496
  call void @llvm.dbg.value(metadata ptr %17, metadata !3302, metadata !DIExpression()), !dbg !3497
  %18 = icmp eq ptr %17, null, !dbg !3499
  br i1 %18, label %19, label %20, !dbg !3500

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3501
  unreachable, !dbg !3501

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !814, metadata !DIExpression()), !dbg !3479
  store i64 %16, ptr %1, align 8, !dbg !3502, !tbaa !2581
  ret ptr %17, !dbg !3503
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !809 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !814, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr %1, metadata !815, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %2, metadata !816, metadata !DIExpression()), !dbg !3504
  %4 = load i64, ptr %1, align 8, !dbg !3505, !tbaa !2581
  call void @llvm.dbg.value(metadata i64 %4, metadata !817, metadata !DIExpression()), !dbg !3504
  %5 = icmp eq ptr %0, null, !dbg !3506
  br i1 %5, label %6, label %13, !dbg !3507

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3508
  br i1 %7, label %8, label %20, !dbg !3509

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %9, metadata !817, metadata !DIExpression()), !dbg !3504
  %10 = icmp ugt i64 %2, 128, !dbg !3512
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %12, metadata !817, metadata !DIExpression()), !dbg !3504
  br label %20, !dbg !3514

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3515
  %15 = add nuw i64 %14, 1, !dbg !3515
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3515
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3515
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3515
  call void @llvm.dbg.value(metadata i64 %18, metadata !817, metadata !DIExpression()), !dbg !3504
  br i1 %17, label %19, label %20, !dbg !3516

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3517
  unreachable, !dbg !3517

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3504
  call void @llvm.dbg.value(metadata i64 %21, metadata !817, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %21, metadata !3297, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %2, metadata !3298, metadata !DIExpression()), !dbg !3518
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3520
  call void @llvm.dbg.value(metadata ptr %22, metadata !3302, metadata !DIExpression()), !dbg !3521
  %23 = icmp eq ptr %22, null, !dbg !3523
  br i1 %23, label %24, label %25, !dbg !3524

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3525
  unreachable, !dbg !3525

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !814, metadata !DIExpression()), !dbg !3504
  store i64 %21, ptr %1, align 8, !dbg !3526, !tbaa !2581
  ret ptr %22, !dbg !3527
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !821 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !829, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata ptr %1, metadata !830, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %2, metadata !831, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %3, metadata !832, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %4, metadata !833, metadata !DIExpression()), !dbg !3528
  %6 = load i64, ptr %1, align 8, !dbg !3529, !tbaa !2581
  call void @llvm.dbg.value(metadata i64 %6, metadata !834, metadata !DIExpression()), !dbg !3528
  %7 = ashr i64 %6, 1, !dbg !3530
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3530
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3530
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %10, metadata !835, metadata !DIExpression()), !dbg !3528
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %11, metadata !835, metadata !DIExpression()), !dbg !3528
  %12 = icmp sgt i64 %3, -1, !dbg !3533
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3535
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %15, metadata !835, metadata !DIExpression()), !dbg !3528
  %16 = icmp slt i64 %4, 0, !dbg !3536
  br i1 %16, label %17, label %30, !dbg !3536

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3536
  br i1 %18, label %19, label %24, !dbg !3536

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3536
  %21 = udiv i64 9223372036854775807, %20, !dbg !3536
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3536
  br i1 %23, label %46, label %43, !dbg !3536

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3536
  br i1 %25, label %43, label %26, !dbg !3536

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3536
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3536
  %29 = icmp ult i64 %28, %15, !dbg !3536
  br i1 %29, label %46, label %43, !dbg !3536

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3536
  br i1 %31, label %43, label %32, !dbg !3536

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3536
  br i1 %33, label %34, label %40, !dbg !3536

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3536
  br i1 %35, label %43, label %36, !dbg !3536

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3536
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3536
  %39 = icmp ult i64 %38, %4, !dbg !3536
  br i1 %39, label %46, label %43, !dbg !3536

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3536
  br i1 %42, label %46, label %43, !dbg !3536

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !836, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3528
  %44 = mul i64 %15, %4, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %44, metadata !836, metadata !DIExpression()), !dbg !3528
  %45 = icmp slt i64 %44, 128, !dbg !3536
  br i1 %45, label %46, label %52, !dbg !3536

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !837, metadata !DIExpression()), !dbg !3528
  %48 = sdiv i64 %47, %4, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %48, metadata !835, metadata !DIExpression()), !dbg !3528
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %51, metadata !836, metadata !DIExpression()), !dbg !3528
  br label %52, !dbg !3541

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3528
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3528
  call void @llvm.dbg.value(metadata i64 %54, metadata !836, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %53, metadata !835, metadata !DIExpression()), !dbg !3528
  %55 = icmp eq ptr %0, null, !dbg !3542
  br i1 %55, label %56, label %57, !dbg !3544

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3545, !tbaa !2581
  br label %57, !dbg !3546

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3547
  %59 = icmp slt i64 %58, %2, !dbg !3549
  br i1 %59, label %60, label %97, !dbg !3550

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3551
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3551
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %63, metadata !835, metadata !DIExpression()), !dbg !3528
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3552
  br i1 %66, label %96, label %67, !dbg !3552

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3553

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3553
  br i1 %69, label %70, label %75, !dbg !3553

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3553
  %72 = udiv i64 9223372036854775807, %71, !dbg !3553
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3553
  br i1 %74, label %96, label %94, !dbg !3553

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3553
  br i1 %76, label %94, label %77, !dbg !3553

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3553
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3553
  %80 = icmp ult i64 %79, %63, !dbg !3553
  br i1 %80, label %96, label %94, !dbg !3553

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3553
  br i1 %82, label %94, label %83, !dbg !3553

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3553
  br i1 %84, label %85, label %91, !dbg !3553

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3553
  br i1 %86, label %94, label %87, !dbg !3553

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3553
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3553
  %90 = icmp ult i64 %89, %4, !dbg !3553
  br i1 %90, label %96, label %94, !dbg !3553

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3553
  br i1 %93, label %96, label %94, !dbg !3553

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !836, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3528
  %95 = mul i64 %63, %4, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %95, metadata !836, metadata !DIExpression()), !dbg !3528
  br label %97, !dbg !3554

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #39, !dbg !3555
  unreachable, !dbg !3555

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3528
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3528
  call void @llvm.dbg.value(metadata i64 %99, metadata !836, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %98, metadata !835, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %99, metadata !3375, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %99, metadata !3381, metadata !DIExpression()), !dbg !3558
  %100 = icmp eq i64 %99, 0, !dbg !3560
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3560
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #43, !dbg !3561
  call void @llvm.dbg.value(metadata ptr %102, metadata !3302, metadata !DIExpression()), !dbg !3562
  %103 = icmp eq ptr %102, null, !dbg !3564
  br i1 %103, label %104, label %105, !dbg !3565

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !3566
  unreachable, !dbg !3566

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !829, metadata !DIExpression()), !dbg !3528
  store i64 %98, ptr %1, align 8, !dbg !3567, !tbaa !2581
  ret ptr %102, !dbg !3568
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3569 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %0, metadata !3573, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 1, metadata !3576, metadata !DIExpression()), !dbg !3577
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3579
  call void @llvm.dbg.value(metadata ptr %2, metadata !3302, metadata !DIExpression()), !dbg !3580
  %3 = icmp eq ptr %2, null, !dbg !3582
  br i1 %3, label %4, label %5, !dbg !3583

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3584
  unreachable, !dbg !3584

5:                                                ; preds = %1
  ret ptr %2, !dbg !3585
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3586 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3574 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3573, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3576, metadata !DIExpression()), !dbg !3587
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3588
  call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3589
  %4 = icmp eq ptr %3, null, !dbg !3591
  br i1 %4, label %5, label %6, !dbg !3592

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3593
  unreachable, !dbg !3593

6:                                                ; preds = %2
  ret ptr %3, !dbg !3594
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3595 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3597, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 1, metadata !3602, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 1, metadata !3608, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 1, metadata !3608, metadata !DIExpression()), !dbg !3609
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3611
  call void @llvm.dbg.value(metadata ptr %2, metadata !3302, metadata !DIExpression()), !dbg !3612
  %3 = icmp eq ptr %2, null, !dbg !3614
  br i1 %3, label %4, label %5, !dbg !3615

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3616
  unreachable, !dbg !3616

5:                                                ; preds = %1
  ret ptr %2, !dbg !3617
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3600 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %1, metadata !3602, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()), !dbg !3619
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3621
  call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3622
  %4 = icmp eq ptr %3, null, !dbg !3624
  br i1 %4, label %5, label %6, !dbg !3625

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3626
  unreachable, !dbg !3626

6:                                                ; preds = %2
  ret ptr %3, !dbg !3627
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3628 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3635
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3638
  %4 = icmp eq ptr %3, null, !dbg !3640
  br i1 %4, label %5, label %6, !dbg !3641

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3642
  unreachable, !dbg !3642

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3653
  ret ptr %3, !dbg !3654
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3655 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %1, metadata !3340, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3664
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3667
  %4 = icmp eq ptr %3, null, !dbg !3669
  br i1 %4, label %5, label %6, !dbg !3670

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3671
  unreachable, !dbg !3671

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3674
  ret ptr %3, !dbg !3675
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3676 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3683
  %3 = add nsw i64 %1, 1, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %3, metadata !3340, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %3, metadata !3342, metadata !DIExpression()), !dbg !3687
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3689
  call void @llvm.dbg.value(metadata ptr %4, metadata !3302, metadata !DIExpression()), !dbg !3690
  %5 = icmp eq ptr %4, null, !dbg !3692
  br i1 %5, label %6, label %7, !dbg !3693

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3694
  unreachable, !dbg !3694

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3682, metadata !DIExpression()), !dbg !3683
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3695
  store i8 0, ptr %8, align 1, !dbg !3696, !tbaa !980
  call void @llvm.dbg.value(metadata ptr %4, metadata !3643, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3699
  ret ptr %4, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3701 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3705
  %3 = add i64 %2, 1, !dbg !3706
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3633, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3326, metadata !DIExpression()), !dbg !3709
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3711
  call void @llvm.dbg.value(metadata ptr %4, metadata !3302, metadata !DIExpression()), !dbg !3712
  %5 = icmp eq ptr %4, null, !dbg !3714
  br i1 %5, label %6, label %7, !dbg !3715

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3716
  unreachable, !dbg !3716

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3643, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %3, metadata !3650, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3719
  ret ptr %4, !dbg !3720
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3721 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3726, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %1, metadata !3723, metadata !DIExpression()), !dbg !3727
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.139, ptr noundef nonnull @.str.2.140, i32 noundef 5) #37, !dbg !3726
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.141, ptr noundef %2) #37, !dbg !3726
  %3 = icmp eq i32 %1, 0, !dbg !3726
  tail call void @llvm.assume(i1 %3), !dbg !3726
  tail call void @abort() #39, !dbg !3728
  unreachable, !dbg !3728
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !3729 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3733, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %1, metadata !3734, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %2, metadata !3735, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %3, metadata !3736, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %4, metadata !3737, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %5, metadata !3738, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %6, metadata !3739, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %7, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #37, !dbg !3751
  call void @llvm.dbg.value(metadata ptr %9, metadata !3741, metadata !DIExpression(DW_OP_deref)), !dbg !3750
  %10 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #37, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %10, metadata !3743, metadata !DIExpression()), !dbg !3750
  %11 = icmp eq i32 %10, 4, !dbg !3753
  br i1 %11, label %41, label %12, !dbg !3755

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !3756, !tbaa !2581
  call void @llvm.dbg.value(metadata i64 %13, metadata !3741, metadata !DIExpression()), !dbg !3750
  %14 = icmp slt i64 %13, %2, !dbg !3759
  br i1 %14, label %15, label %20, !dbg !3760

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !3742, metadata !DIExpression()), !dbg !3750
  %16 = and i32 %7, 4, !dbg !3761
  %17 = icmp eq i32 %16, 0, !dbg !3763
  %18 = select i1 %17, i32 75, i32 34, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %18, metadata !3745, metadata !DIExpression()), !dbg !3750
  %19 = icmp eq i32 %10, 0, !dbg !3764
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3750
  br i1 %19, label %34, label %27, !dbg !3766

20:                                               ; preds = %12
  %21 = icmp sgt i64 %13, %3, !dbg !3767
  br i1 %21, label %22, label %27, !dbg !3769

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !3742, metadata !DIExpression()), !dbg !3750
  %23 = and i32 %7, 8, !dbg !3770
  %24 = icmp eq i32 %23, 0, !dbg !3772
  %25 = select i1 %24, i32 75, i32 34, !dbg !3772
  call void @llvm.dbg.value(metadata i32 %25, metadata !3745, metadata !DIExpression()), !dbg !3750
  %26 = icmp eq i32 %10, 0, !dbg !3773
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3750
  br i1 %26, label %34, label %27, !dbg !3775

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !3742, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %10, metadata !3743, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %28, metadata !3745, metadata !DIExpression()), !dbg !3750
  %30 = icmp eq i32 %10, 1, !dbg !3776
  %31 = select i1 %30, i32 %28, i32 0, !dbg !3777
  call void @llvm.dbg.value(metadata i32 %31, metadata !3746, metadata !DIExpression()), !dbg !3750
  %32 = icmp eq i32 %10, 0, !dbg !3778
  br i1 %32, label %46, label %33, !dbg !3779

33:                                               ; preds = %27
  br i1 %30, label %34, label %41, !dbg !3780

34:                                               ; preds = %22, %15, %33
  %35 = phi i64 [ %29, %33 ], [ %3, %22 ], [ %2, %15 ]
  %36 = phi i32 [ %28, %33 ], [ %25, %22 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3741, metadata !DIExpression()), !dbg !3750
  %37 = icmp slt i64 %13, 0, !dbg !3781
  %38 = select i1 %37, i32 1, i32 2, !dbg !3782
  %39 = and i32 %38, %7, !dbg !3783
  %40 = icmp eq i32 %39, 0, !dbg !3783
  br i1 %40, label %41, label %46, !dbg !3784

41:                                               ; preds = %8, %34, %33
  %42 = phi i32 [ %36, %34 ], [ 0, %33 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !3785
  %44 = select i1 %43, i32 1, i32 %6, !dbg !3785
  %45 = call ptr @quote(ptr noundef nonnull %0) #37, !dbg !3785
  call void (i32, i32, ptr, ...) @error(i32 noundef %44, i32 noundef %42, ptr noundef nonnull @.str.142, ptr noundef nonnull %5, ptr noundef %45) #37, !dbg !3785
  unreachable, !dbg !3785

46:                                               ; preds = %34, %27
  %47 = phi i32 [ %36, %34 ], [ %31, %27 ]
  %48 = phi i64 [ %35, %34 ], [ %29, %27 ]
  %49 = tail call ptr @__errno_location() #40, !dbg !3786
  store i32 %47, ptr %49, align 4, !dbg !3787, !tbaa !971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #37, !dbg !3788
  ret i64 %48, !dbg !3789
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !3790 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %1, metadata !3795, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %2, metadata !3796, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %3, metadata !3797, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %4, metadata !3798, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %5, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %0, metadata !3733, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 10, metadata !3734, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %1, metadata !3735, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %2, metadata !3736, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %3, metadata !3737, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %4, metadata !3738, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %5, metadata !3739, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3801
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #37, !dbg !3803
  call void @llvm.dbg.value(metadata ptr %7, metadata !3741, metadata !DIExpression(DW_OP_deref)), !dbg !3801
  %8 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #37, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %8, metadata !3743, metadata !DIExpression()), !dbg !3801
  %9 = icmp eq i32 %8, 4, !dbg !3805
  br i1 %9, label %22, label %10, !dbg !3806

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !3807, !tbaa !2581
  call void @llvm.dbg.value(metadata i64 %11, metadata !3741, metadata !DIExpression()), !dbg !3801
  %12 = icmp slt i64 %11, %1, !dbg !3808
  br i1 %12, label %13, label %15, !dbg !3809

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 75, metadata !3745, metadata !DIExpression()), !dbg !3801
  %14 = icmp eq i32 %8, 0, !dbg !3810
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3801
  br i1 %14, label %21, label %19, !dbg !3811

15:                                               ; preds = %10
  %16 = icmp sgt i64 %11, %2, !dbg !3812
  br i1 %16, label %17, label %19, !dbg !3813

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !3742, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 75, metadata !3745, metadata !DIExpression()), !dbg !3801
  %18 = icmp eq i32 %8, 0, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3801
  br i1 %18, label %21, label %19, !dbg !3815

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !3742, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %8, metadata !3743, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 75, metadata !3745, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 poison, metadata !3746, metadata !DIExpression()), !dbg !3801
  switch i32 %8, label %22 [
    i32 0, label %27
    i32 1, label %21
  ], !dbg !3816

21:                                               ; preds = %19, %17, %13
  call void @llvm.dbg.value(metadata i64 %11, metadata !3741, metadata !DIExpression()), !dbg !3801
  br label %22

22:                                               ; preds = %19, %21, %6
  %23 = phi i32 [ 75, %21 ], [ 0, %6 ], [ 0, %19 ]
  %24 = icmp eq i32 %5, 0, !dbg !3817
  %25 = select i1 %24, i32 1, i32 %5, !dbg !3817
  %26 = call ptr @quote(ptr noundef nonnull %0) #37, !dbg !3817
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %23, ptr noundef nonnull @.str.142, ptr noundef nonnull %4, ptr noundef %26) #37, !dbg !3817
  unreachable, !dbg !3817

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !3746, metadata !DIExpression()), !dbg !3801
  %28 = tail call ptr @__errno_location() #40, !dbg !3818
  store i32 0, ptr %28, align 4, !dbg !3819, !tbaa !971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #37, !dbg !3820
  ret i64 %20, !dbg !3821
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3822 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3828, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %1, metadata !3829, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 %2, metadata !3830, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %3, metadata !3831, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %4, metadata !3832, metadata !DIExpression()), !dbg !3842
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #37, !dbg !3843
  %7 = icmp eq ptr %1, null, !dbg !3844
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3844
  call void @llvm.dbg.value(metadata ptr %8, metadata !3834, metadata !DIExpression()), !dbg !3842
  %9 = tail call ptr @__errno_location() #40, !dbg !3845
  store i32 0, ptr %9, align 4, !dbg !3846, !tbaa !971
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #37, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %10, metadata !3835, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 0, metadata !3836, metadata !DIExpression()), !dbg !3842
  %11 = load ptr, ptr %8, align 8, !dbg !3848, !tbaa !900
  %12 = icmp eq ptr %11, %0, !dbg !3850
  br i1 %12, label %13, label %22, !dbg !3851

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3852
  br i1 %14, label %990, label %15, !dbg !3855

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3856, !tbaa !980
  %17 = icmp eq i8 %16, 0, !dbg !3856
  br i1 %17, label %990, label %18, !dbg !3857

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !3856
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #38, !dbg !3858
  %21 = icmp eq ptr %20, null, !dbg !3858
  br i1 %21, label %990, label %29, !dbg !3859

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3860, !tbaa !971
  switch i32 %23, label %990 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3862

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !3836, metadata !DIExpression()), !dbg !3842
  br label %25, !dbg !3863

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3842
  call void @llvm.dbg.value(metadata i32 %26, metadata !3836, metadata !DIExpression()), !dbg !3842
  %27 = icmp eq ptr %4, null, !dbg !3865
  br i1 %27, label %28, label %29, !dbg !3867

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !3835, metadata !DIExpression()), !dbg !3842
  store i64 %10, ptr %3, align 8, !dbg !3868, !tbaa !2581
  br label %990, !dbg !3870

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3871, !tbaa !980
  %33 = icmp eq i8 %32, 0, !dbg !3872
  br i1 %33, label %987, label %34, !dbg !3873

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !3871
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #38, !dbg !3874
  %37 = icmp eq ptr %36, null, !dbg !3874
  br i1 %37, label %38, label %40, !dbg !3876

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %10, metadata !3835, metadata !DIExpression()), !dbg !3842
  store i64 %31, ptr %3, align 8, !dbg !3877, !tbaa !2581
  %39 = or i32 %30, 2, !dbg !3879
  br label %990, !dbg !3880

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 1024, metadata !3837, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32 1, metadata !3840, metadata !DIExpression()), !dbg !3881
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
  ], !dbg !3882

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #38, !dbg !3883
  %43 = icmp eq ptr %42, null, !dbg !3883
  br i1 %43, label %53, label %44, !dbg !3886

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3887
  %46 = load i8, ptr %45, align 1, !dbg !3887, !tbaa !980
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !3888

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3889
  %49 = load i8, ptr %48, align 1, !dbg !3889, !tbaa !980
  %50 = icmp eq i8 %49, 66, !dbg !3892
  %51 = select i1 %50, i64 3, i64 1, !dbg !3893
  br label %53, !dbg !3893

52:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !3837, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32 2, metadata !3840, metadata !DIExpression()), !dbg !3881
  br label %53, !dbg !3894

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ]
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3840, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32 poison, metadata !3837, metadata !DIExpression()), !dbg !3881
  switch i8 %32, label %985 [
    i8 98, label %68
    i8 66, label %76
    i8 99, label %976
    i8 69, label %66
    i8 71, label %180
    i8 103, label %180
    i8 107, label %230
    i8 75, label %230
    i8 77, label %243
    i8 109, label %243
    i8 80, label %64
    i8 81, label %62
    i8 82, label %60
    i8 84, label %661
    i8 116, label %661
    i8 119, label %727
    i8 89, label %58
    i8 90, label %56
  ], !dbg !3895

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 7, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 6, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3914
  %57 = icmp slt i64 %31, 0, !dbg !3916
  br i1 %57, label %864, label %870, !dbg !3916

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 8, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 7, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %59 = icmp slt i64 %31, 0, !dbg !3922
  br i1 %59, label %736, label %742, !dbg !3922

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 9, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 8, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %61 = icmp slt i64 %31, 0, !dbg !3927
  br i1 %61, label %517, label %523, !dbg !3927

62:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 10, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 9, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %63 = icmp slt i64 %31, 0, !dbg !3932
  br i1 %63, label %357, label %363, !dbg !3932

64:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 5, metadata !3903, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 4, metadata !3903, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3935
  %65 = icmp slt i64 %31, 0, !dbg !3937
  br i1 %65, label %277, label %283, !dbg !3937

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 6, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 5, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3940
  %67 = icmp slt i64 %31, 0, !dbg !3942
  br i1 %67, label %84, label %90, !dbg !3942

68:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i32 512, metadata !3912, metadata !DIExpression()), !dbg !3943
  %69 = icmp slt i64 %31, 0, !dbg !3945
  br i1 %69, label %70, label %72, !dbg !3945

70:                                               ; preds = %68
  %71 = icmp ult i64 %31, -18014398509481984, !dbg !3945
  br i1 %71, label %976, label %74, !dbg !3945

72:                                               ; preds = %68
  %73 = icmp ugt i64 %31, 18014398509481983, !dbg !3945
  br i1 %73, label %976, label %74, !dbg !3945

74:                                               ; preds = %70, %72
  %75 = shl nsw i64 %31, 9, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %75, metadata !3913, metadata !DIExpression()), !dbg !3943
  br label %976, !dbg !3946

76:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 1024, metadata !3912, metadata !DIExpression()), !dbg !3947
  %77 = icmp slt i64 %31, 0, !dbg !3949
  br i1 %77, label %78, label %80, !dbg !3949

78:                                               ; preds = %76
  %79 = icmp ult i64 %31, -9007199254740992, !dbg !3949
  br i1 %79, label %976, label %82, !dbg !3949

80:                                               ; preds = %76
  %81 = icmp ugt i64 %31, 9007199254740991, !dbg !3949
  br i1 %81, label %976, label %82, !dbg !3949

82:                                               ; preds = %78, %80
  %83 = shl nsw i64 %31, 10, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %83, metadata !3913, metadata !DIExpression()), !dbg !3947
  br label %976, !dbg !3950

84:                                               ; preds = %66
  %85 = icmp eq i64 %31, -1, !dbg !3942
  br i1 %85, label %93, label %86, !dbg !3942

86:                                               ; preds = %84
  %87 = sub i64 0, %31, !dbg !3942
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3942
  %89 = icmp ult i64 %88, %54, !dbg !3942
  br i1 %89, label %101, label %93, !dbg !3942

90:                                               ; preds = %66
  %91 = udiv i64 9223372036854775807, %54, !dbg !3942
  %92 = icmp ult i64 %91, %31, !dbg !3942
  br i1 %92, label %96, label %93, !dbg !3942

93:                                               ; preds = %84, %86, %90
  %94 = mul i64 %31, %54, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %94, metadata !3913, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 4, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3940
  %95 = icmp slt i64 %94, 0, !dbg !3942
  br i1 %95, label %101, label %96, !dbg !3942

96:                                               ; preds = %90, %93
  %97 = phi i32 [ 0, %93 ], [ 1, %90 ]
  %98 = phi i64 [ %94, %93 ], [ 9223372036854775807, %90 ]
  %99 = udiv i64 9223372036854775807, %54, !dbg !3942
  %100 = icmp ult i64 %99, %98, !dbg !3942
  br i1 %100, label %112, label %107, !dbg !3942

101:                                              ; preds = %86, %93
  %102 = phi i32 [ 0, %93 ], [ 1, %86 ]
  %103 = phi i64 [ %94, %93 ], [ -9223372036854775808, %86 ]
  %104 = sub i64 0, %103, !dbg !3942
  %105 = udiv i64 -9223372036854775808, %104, !dbg !3942
  %106 = icmp ult i64 %105, %54, !dbg !3942
  br i1 %106, label %117, label %107, !dbg !3942

107:                                              ; preds = %96, %101
  %108 = phi i32 [ %102, %101 ], [ %97, %96 ]
  %109 = phi i64 [ %103, %101 ], [ %98, %96 ]
  %110 = mul i64 %109, %54, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %110, metadata !3913, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 %108, metadata !3896, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 3, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3940
  %111 = icmp slt i64 %110, 0, !dbg !3942
  br i1 %111, label %117, label %112, !dbg !3942

112:                                              ; preds = %96, %107
  %113 = phi i32 [ %108, %107 ], [ 1, %96 ]
  %114 = phi i64 [ %110, %107 ], [ 9223372036854775807, %96 ]
  %115 = udiv i64 9223372036854775807, %54, !dbg !3942
  %116 = icmp ult i64 %115, %114, !dbg !3942
  br i1 %116, label %128, label %123, !dbg !3942

117:                                              ; preds = %101, %107
  %118 = phi i32 [ %108, %107 ], [ 1, %101 ]
  %119 = phi i64 [ %110, %107 ], [ -9223372036854775808, %101 ]
  %120 = sub i64 0, %119, !dbg !3942
  %121 = udiv i64 -9223372036854775808, %120, !dbg !3942
  %122 = icmp ult i64 %121, %54, !dbg !3942
  br i1 %122, label %133, label %123, !dbg !3942

123:                                              ; preds = %112, %117
  %124 = phi i32 [ %118, %117 ], [ %113, %112 ]
  %125 = phi i64 [ %119, %117 ], [ %114, %112 ]
  %126 = mul i64 %125, %54, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %126, metadata !3913, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 %124, metadata !3896, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3940
  %127 = icmp slt i64 %126, 0, !dbg !3942
  br i1 %127, label %133, label %128, !dbg !3942

128:                                              ; preds = %112, %123
  %129 = phi i32 [ %124, %123 ], [ 1, %112 ]
  %130 = phi i64 [ %126, %123 ], [ 9223372036854775807, %112 ]
  %131 = udiv i64 9223372036854775807, %54, !dbg !3942
  %132 = icmp ult i64 %131, %130, !dbg !3942
  br i1 %132, label %144, label %139, !dbg !3942

133:                                              ; preds = %117, %123
  %134 = phi i32 [ %124, %123 ], [ 1, %117 ]
  %135 = phi i64 [ %126, %123 ], [ -9223372036854775808, %117 ]
  %136 = sub i64 0, %135, !dbg !3942
  %137 = udiv i64 -9223372036854775808, %136, !dbg !3942
  %138 = icmp ult i64 %137, %54, !dbg !3942
  br i1 %138, label %149, label %139, !dbg !3942

139:                                              ; preds = %128, %133
  %140 = phi i32 [ %134, %133 ], [ %129, %128 ]
  %141 = phi i64 [ %135, %133 ], [ %130, %128 ]
  %142 = mul i64 %141, %54, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %142, metadata !3913, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 %140, metadata !3896, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3940
  %143 = icmp slt i64 %142, 0, !dbg !3942
  br i1 %143, label %149, label %144, !dbg !3942

144:                                              ; preds = %128, %139
  %145 = phi i32 [ %140, %139 ], [ 1, %128 ]
  %146 = phi i64 [ %142, %139 ], [ 9223372036854775807, %128 ]
  %147 = udiv i64 9223372036854775807, %54, !dbg !3942
  %148 = icmp ult i64 %147, %146, !dbg !3942
  br i1 %148, label %160, label %155, !dbg !3942

149:                                              ; preds = %133, %139
  %150 = phi i32 [ %140, %139 ], [ 1, %133 ]
  %151 = phi i64 [ %142, %139 ], [ -9223372036854775808, %133 ]
  %152 = sub i64 0, %151, !dbg !3942
  %153 = udiv i64 -9223372036854775808, %152, !dbg !3942
  %154 = icmp ult i64 %153, %54, !dbg !3942
  br i1 %154, label %165, label %155, !dbg !3942

155:                                              ; preds = %144, %149
  %156 = phi i32 [ %150, %149 ], [ %145, %144 ]
  %157 = phi i64 [ %151, %149 ], [ %146, %144 ]
  %158 = mul i64 %157, %54, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %158, metadata !3913, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 %156, metadata !3896, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3940
  %159 = icmp slt i64 %158, 0, !dbg !3942
  br i1 %159, label %165, label %160, !dbg !3942

160:                                              ; preds = %144, %155
  %161 = phi i32 [ %156, %155 ], [ 1, %144 ]
  %162 = phi i64 [ %158, %155 ], [ 9223372036854775807, %144 ]
  %163 = udiv i64 9223372036854775807, %54, !dbg !3942
  %164 = icmp ult i64 %163, %162, !dbg !3942
  br i1 %164, label %175, label %171, !dbg !3942

165:                                              ; preds = %149, %155
  %166 = phi i32 [ %156, %155 ], [ 1, %149 ]
  %167 = phi i64 [ %158, %155 ], [ -9223372036854775808, %149 ]
  %168 = sub i64 0, %167, !dbg !3942
  %169 = udiv i64 -9223372036854775808, %168, !dbg !3942
  %170 = icmp ult i64 %169, %54, !dbg !3942
  br i1 %170, label %175, label %171, !dbg !3942

171:                                              ; preds = %165, %160
  %172 = phi i32 [ %166, %165 ], [ %161, %160 ]
  %173 = phi i64 [ %167, %165 ], [ %162, %160 ]
  %174 = mul i64 %173, %54, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %174, metadata !3913, metadata !DIExpression()), !dbg !3940
  br label %175, !dbg !3951

175:                                              ; preds = %171, %165, %160
  %176 = phi i32 [ %172, %171 ], [ %161, %160 ], [ %166, %165 ]
  %177 = phi i64 [ %174, %171 ], [ 9223372036854775807, %160 ], [ -9223372036854775808, %165 ], !dbg !3940
  %178 = phi i32 [ 0, %171 ], [ 1, %160 ], [ 1, %165 ], !dbg !3940
  %179 = or i32 %178, %176, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %179, metadata !3896, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3938
  br label %976, !dbg !3953

180:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3901, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 poison, metadata !3902, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3956
  %181 = icmp slt i64 %31, 0, !dbg !3958
  br i1 %181, label %182, label %188, !dbg !3958

182:                                              ; preds = %180
  %183 = icmp eq i64 %31, -1, !dbg !3958
  br i1 %183, label %191, label %184, !dbg !3958

184:                                              ; preds = %182
  %185 = sub i64 0, %31, !dbg !3958
  %186 = udiv i64 -9223372036854775808, %185, !dbg !3958
  %187 = icmp ult i64 %186, %54, !dbg !3958
  br i1 %187, label %199, label %191, !dbg !3958

188:                                              ; preds = %180
  %189 = udiv i64 9223372036854775807, %54, !dbg !3958
  %190 = icmp ult i64 %189, %31, !dbg !3958
  br i1 %190, label %194, label %191, !dbg !3958

191:                                              ; preds = %182, %184, %188
  %192 = mul i64 %31, %54, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %192, metadata !3913, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3956
  %193 = icmp slt i64 %192, 0, !dbg !3958
  br i1 %193, label %199, label %194, !dbg !3958

194:                                              ; preds = %188, %191
  %195 = phi i32 [ 0, %191 ], [ 1, %188 ]
  %196 = phi i64 [ %192, %191 ], [ 9223372036854775807, %188 ]
  %197 = udiv i64 9223372036854775807, %54, !dbg !3958
  %198 = icmp ult i64 %197, %196, !dbg !3958
  br i1 %198, label %210, label %205, !dbg !3958

199:                                              ; preds = %184, %191
  %200 = phi i32 [ 0, %191 ], [ 1, %184 ]
  %201 = phi i64 [ %192, %191 ], [ -9223372036854775808, %184 ]
  %202 = sub i64 0, %201, !dbg !3958
  %203 = udiv i64 -9223372036854775808, %202, !dbg !3958
  %204 = icmp ult i64 %203, %54, !dbg !3958
  br i1 %204, label %215, label %205, !dbg !3958

205:                                              ; preds = %194, %199
  %206 = phi i32 [ %200, %199 ], [ %195, %194 ]
  %207 = phi i64 [ %201, %199 ], [ %196, %194 ]
  %208 = mul i64 %207, %54, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %208, metadata !3913, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %206, metadata !3896, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3956
  %209 = icmp slt i64 %208, 0, !dbg !3958
  br i1 %209, label %215, label %210, !dbg !3958

210:                                              ; preds = %194, %205
  %211 = phi i32 [ %206, %205 ], [ 1, %194 ]
  %212 = phi i64 [ %208, %205 ], [ 9223372036854775807, %194 ]
  %213 = udiv i64 9223372036854775807, %54, !dbg !3958
  %214 = icmp ult i64 %213, %212, !dbg !3958
  br i1 %214, label %225, label %221, !dbg !3958

215:                                              ; preds = %199, %205
  %216 = phi i32 [ %206, %205 ], [ 1, %199 ]
  %217 = phi i64 [ %208, %205 ], [ -9223372036854775808, %199 ]
  %218 = sub i64 0, %217, !dbg !3958
  %219 = udiv i64 -9223372036854775808, %218, !dbg !3958
  %220 = icmp ult i64 %219, %54, !dbg !3958
  br i1 %220, label %225, label %221, !dbg !3958

221:                                              ; preds = %215, %210
  %222 = phi i32 [ %216, %215 ], [ %211, %210 ]
  %223 = phi i64 [ %217, %215 ], [ %212, %210 ]
  %224 = mul i64 %223, %54, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %224, metadata !3913, metadata !DIExpression()), !dbg !3956
  br label %225, !dbg !3959

225:                                              ; preds = %221, %215, %210
  %226 = phi i32 [ %222, %221 ], [ %211, %210 ], [ %216, %215 ]
  %227 = phi i64 [ %224, %221 ], [ 9223372036854775807, %210 ], [ -9223372036854775808, %215 ], !dbg !3956
  %228 = phi i32 [ 0, %221 ], [ 1, %210 ], [ 1, %215 ], !dbg !3956
  %229 = or i32 %228, %226, !dbg !3960
  call void @llvm.dbg.value(metadata i32 %229, metadata !3896, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3954
  br label %976, !dbg !3953

230:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3901, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 poison, metadata !3902, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3963
  %231 = icmp slt i64 %31, 0, !dbg !3965
  br i1 %231, label %232, label %238, !dbg !3965

232:                                              ; preds = %230
  %233 = icmp eq i64 %31, -1, !dbg !3965
  br i1 %233, label %241, label %234, !dbg !3965

234:                                              ; preds = %232
  %235 = sub i64 0, %31, !dbg !3965
  %236 = udiv i64 -9223372036854775808, %235, !dbg !3965
  %237 = icmp ult i64 %236, %54, !dbg !3965
  br i1 %237, label %976, label %241, !dbg !3965

238:                                              ; preds = %230
  %239 = udiv i64 9223372036854775807, %54, !dbg !3965
  %240 = icmp ult i64 %239, %31, !dbg !3965
  br i1 %240, label %976, label %241, !dbg !3965

241:                                              ; preds = %238, %234, %232
  %242 = mul i64 %31, %54, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %242, metadata !3913, metadata !DIExpression()), !dbg !3963
  br label %976, !dbg !3966

243:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3901, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 poison, metadata !3902, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3969
  %244 = icmp slt i64 %31, 0, !dbg !3971
  br i1 %244, label %245, label %251, !dbg !3971

245:                                              ; preds = %243
  %246 = icmp eq i64 %31, -1, !dbg !3971
  br i1 %246, label %254, label %247, !dbg !3971

247:                                              ; preds = %245
  %248 = sub i64 0, %31, !dbg !3971
  %249 = udiv i64 -9223372036854775808, %248, !dbg !3971
  %250 = icmp ult i64 %249, %54, !dbg !3971
  br i1 %250, label %262, label %254, !dbg !3971

251:                                              ; preds = %243
  %252 = udiv i64 9223372036854775807, %54, !dbg !3971
  %253 = icmp ult i64 %252, %31, !dbg !3971
  br i1 %253, label %257, label %254, !dbg !3971

254:                                              ; preds = %245, %247, %251
  %255 = mul i64 %31, %54, !dbg !3971
  call void @llvm.dbg.value(metadata i64 %255, metadata !3913, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3969
  %256 = icmp slt i64 %255, 0, !dbg !3971
  br i1 %256, label %262, label %257, !dbg !3971

257:                                              ; preds = %251, %254
  %258 = phi i32 [ 0, %254 ], [ 1, %251 ]
  %259 = phi i64 [ %255, %254 ], [ 9223372036854775807, %251 ]
  %260 = udiv i64 9223372036854775807, %54, !dbg !3971
  %261 = icmp ult i64 %260, %259, !dbg !3971
  br i1 %261, label %272, label %268, !dbg !3971

262:                                              ; preds = %247, %254
  %263 = phi i32 [ 0, %254 ], [ 1, %247 ]
  %264 = phi i64 [ %255, %254 ], [ -9223372036854775808, %247 ]
  %265 = sub i64 0, %264, !dbg !3971
  %266 = udiv i64 -9223372036854775808, %265, !dbg !3971
  %267 = icmp ult i64 %266, %54, !dbg !3971
  br i1 %267, label %272, label %268, !dbg !3971

268:                                              ; preds = %262, %257
  %269 = phi i32 [ %263, %262 ], [ %258, %257 ]
  %270 = phi i64 [ %264, %262 ], [ %259, %257 ]
  %271 = mul i64 %270, %54, !dbg !3971
  call void @llvm.dbg.value(metadata i64 %271, metadata !3913, metadata !DIExpression()), !dbg !3969
  br label %272, !dbg !3972

272:                                              ; preds = %268, %262, %257
  %273 = phi i32 [ %269, %268 ], [ %258, %257 ], [ %263, %262 ]
  %274 = phi i64 [ %271, %268 ], [ 9223372036854775807, %257 ], [ -9223372036854775808, %262 ], !dbg !3969
  %275 = phi i32 [ 0, %268 ], [ 1, %257 ], [ 1, %262 ], !dbg !3969
  %276 = or i32 %275, %273, !dbg !3973
  call void @llvm.dbg.value(metadata i32 %276, metadata !3896, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3967
  br label %976, !dbg !3953

277:                                              ; preds = %64
  %278 = icmp eq i64 %31, -1, !dbg !3937
  br i1 %278, label %286, label %279, !dbg !3937

279:                                              ; preds = %277
  %280 = sub i64 0, %31, !dbg !3937
  %281 = udiv i64 -9223372036854775808, %280, !dbg !3937
  %282 = icmp ult i64 %281, %54, !dbg !3937
  br i1 %282, label %294, label %286, !dbg !3937

283:                                              ; preds = %64
  %284 = udiv i64 9223372036854775807, %54, !dbg !3937
  %285 = icmp ult i64 %284, %31, !dbg !3937
  br i1 %285, label %289, label %286, !dbg !3937

286:                                              ; preds = %277, %279, %283
  %287 = mul i64 %31, %54, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %287, metadata !3913, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 3, metadata !3903, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3935
  %288 = icmp slt i64 %287, 0, !dbg !3937
  br i1 %288, label %294, label %289, !dbg !3937

289:                                              ; preds = %283, %286
  %290 = phi i32 [ 0, %286 ], [ 1, %283 ]
  %291 = phi i64 [ %287, %286 ], [ 9223372036854775807, %283 ]
  %292 = udiv i64 9223372036854775807, %54, !dbg !3937
  %293 = icmp ult i64 %292, %291, !dbg !3937
  br i1 %293, label %305, label %300, !dbg !3937

294:                                              ; preds = %279, %286
  %295 = phi i32 [ 0, %286 ], [ 1, %279 ]
  %296 = phi i64 [ %287, %286 ], [ -9223372036854775808, %279 ]
  %297 = sub i64 0, %296, !dbg !3937
  %298 = udiv i64 -9223372036854775808, %297, !dbg !3937
  %299 = icmp ult i64 %298, %54, !dbg !3937
  br i1 %299, label %310, label %300, !dbg !3937

300:                                              ; preds = %289, %294
  %301 = phi i32 [ %295, %294 ], [ %290, %289 ]
  %302 = phi i64 [ %296, %294 ], [ %291, %289 ]
  %303 = mul i64 %302, %54, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %303, metadata !3913, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %301, metadata !3896, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3935
  %304 = icmp slt i64 %303, 0, !dbg !3937
  br i1 %304, label %310, label %305, !dbg !3937

305:                                              ; preds = %289, %300
  %306 = phi i32 [ %301, %300 ], [ 1, %289 ]
  %307 = phi i64 [ %303, %300 ], [ 9223372036854775807, %289 ]
  %308 = udiv i64 9223372036854775807, %54, !dbg !3937
  %309 = icmp ult i64 %308, %307, !dbg !3937
  br i1 %309, label %321, label %316, !dbg !3937

310:                                              ; preds = %294, %300
  %311 = phi i32 [ %301, %300 ], [ 1, %294 ]
  %312 = phi i64 [ %303, %300 ], [ -9223372036854775808, %294 ]
  %313 = sub i64 0, %312, !dbg !3937
  %314 = udiv i64 -9223372036854775808, %313, !dbg !3937
  %315 = icmp ult i64 %314, %54, !dbg !3937
  br i1 %315, label %326, label %316, !dbg !3937

316:                                              ; preds = %305, %310
  %317 = phi i32 [ %311, %310 ], [ %306, %305 ]
  %318 = phi i64 [ %312, %310 ], [ %307, %305 ]
  %319 = mul i64 %318, %54, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %319, metadata !3913, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %317, metadata !3896, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3935
  %320 = icmp slt i64 %319, 0, !dbg !3937
  br i1 %320, label %326, label %321, !dbg !3937

321:                                              ; preds = %305, %316
  %322 = phi i32 [ %317, %316 ], [ 1, %305 ]
  %323 = phi i64 [ %319, %316 ], [ 9223372036854775807, %305 ]
  %324 = udiv i64 9223372036854775807, %54, !dbg !3937
  %325 = icmp ult i64 %324, %323, !dbg !3937
  br i1 %325, label %337, label %332, !dbg !3937

326:                                              ; preds = %310, %316
  %327 = phi i32 [ %317, %316 ], [ 1, %310 ]
  %328 = phi i64 [ %319, %316 ], [ -9223372036854775808, %310 ]
  %329 = sub i64 0, %328, !dbg !3937
  %330 = udiv i64 -9223372036854775808, %329, !dbg !3937
  %331 = icmp ult i64 %330, %54, !dbg !3937
  br i1 %331, label %342, label %332, !dbg !3937

332:                                              ; preds = %321, %326
  %333 = phi i32 [ %327, %326 ], [ %322, %321 ]
  %334 = phi i64 [ %328, %326 ], [ %323, %321 ]
  %335 = mul i64 %334, %54, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %335, metadata !3913, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %333, metadata !3896, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3935
  %336 = icmp slt i64 %335, 0, !dbg !3937
  br i1 %336, label %342, label %337, !dbg !3937

337:                                              ; preds = %321, %332
  %338 = phi i32 [ %333, %332 ], [ 1, %321 ]
  %339 = phi i64 [ %335, %332 ], [ 9223372036854775807, %321 ]
  %340 = udiv i64 9223372036854775807, %54, !dbg !3937
  %341 = icmp ult i64 %340, %339, !dbg !3937
  br i1 %341, label %352, label %348, !dbg !3937

342:                                              ; preds = %326, %332
  %343 = phi i32 [ %333, %332 ], [ 1, %326 ]
  %344 = phi i64 [ %335, %332 ], [ -9223372036854775808, %326 ]
  %345 = sub i64 0, %344, !dbg !3937
  %346 = udiv i64 -9223372036854775808, %345, !dbg !3937
  %347 = icmp ult i64 %346, %54, !dbg !3937
  br i1 %347, label %352, label %348, !dbg !3937

348:                                              ; preds = %342, %337
  %349 = phi i32 [ %343, %342 ], [ %338, %337 ]
  %350 = phi i64 [ %344, %342 ], [ %339, %337 ]
  %351 = mul i64 %350, %54, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %351, metadata !3913, metadata !DIExpression()), !dbg !3935
  br label %352, !dbg !3974

352:                                              ; preds = %348, %342, %337
  %353 = phi i32 [ %349, %348 ], [ %338, %337 ], [ %343, %342 ]
  %354 = phi i64 [ %351, %348 ], [ 9223372036854775807, %337 ], [ -9223372036854775808, %342 ], !dbg !3935
  %355 = phi i32 [ 0, %348 ], [ 1, %337 ], [ 1, %342 ], !dbg !3935
  %356 = or i32 %355, %353, !dbg !3975
  call void @llvm.dbg.value(metadata i32 %356, metadata !3896, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3933
  br label %976, !dbg !3953

357:                                              ; preds = %62
  %358 = icmp eq i64 %31, -1, !dbg !3932
  br i1 %358, label %366, label %359, !dbg !3932

359:                                              ; preds = %357
  %360 = sub i64 0, %31, !dbg !3932
  %361 = udiv i64 -9223372036854775808, %360, !dbg !3932
  %362 = icmp ult i64 %361, %54, !dbg !3932
  br i1 %362, label %374, label %366, !dbg !3932

363:                                              ; preds = %62
  %364 = udiv i64 9223372036854775807, %54, !dbg !3932
  %365 = icmp ult i64 %364, %31, !dbg !3932
  br i1 %365, label %369, label %366, !dbg !3932

366:                                              ; preds = %357, %359, %363
  %367 = mul i64 %31, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %367, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 8, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %368 = icmp slt i64 %367, 0, !dbg !3932
  br i1 %368, label %374, label %369, !dbg !3932

369:                                              ; preds = %363, %366
  %370 = phi i32 [ 0, %366 ], [ 1, %363 ]
  %371 = phi i64 [ %367, %366 ], [ 9223372036854775807, %363 ]
  %372 = udiv i64 9223372036854775807, %54, !dbg !3932
  %373 = icmp ult i64 %372, %371, !dbg !3932
  br i1 %373, label %385, label %380, !dbg !3932

374:                                              ; preds = %359, %366
  %375 = phi i32 [ 0, %366 ], [ 1, %359 ]
  %376 = phi i64 [ %367, %366 ], [ -9223372036854775808, %359 ]
  %377 = sub i64 0, %376, !dbg !3932
  %378 = udiv i64 -9223372036854775808, %377, !dbg !3932
  %379 = icmp ult i64 %378, %54, !dbg !3932
  br i1 %379, label %390, label %380, !dbg !3932

380:                                              ; preds = %369, %374
  %381 = phi i32 [ %375, %374 ], [ %370, %369 ]
  %382 = phi i64 [ %376, %374 ], [ %371, %369 ]
  %383 = mul i64 %382, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %383, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %381, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 7, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %384 = icmp slt i64 %383, 0, !dbg !3932
  br i1 %384, label %390, label %385, !dbg !3932

385:                                              ; preds = %369, %380
  %386 = phi i32 [ %381, %380 ], [ 1, %369 ]
  %387 = phi i64 [ %383, %380 ], [ 9223372036854775807, %369 ]
  %388 = udiv i64 9223372036854775807, %54, !dbg !3932
  %389 = icmp ult i64 %388, %387, !dbg !3932
  br i1 %389, label %401, label %396, !dbg !3932

390:                                              ; preds = %374, %380
  %391 = phi i32 [ %381, %380 ], [ 1, %374 ]
  %392 = phi i64 [ %383, %380 ], [ -9223372036854775808, %374 ]
  %393 = sub i64 0, %392, !dbg !3932
  %394 = udiv i64 -9223372036854775808, %393, !dbg !3932
  %395 = icmp ult i64 %394, %54, !dbg !3932
  br i1 %395, label %406, label %396, !dbg !3932

396:                                              ; preds = %385, %390
  %397 = phi i32 [ %391, %390 ], [ %386, %385 ]
  %398 = phi i64 [ %392, %390 ], [ %387, %385 ]
  %399 = mul i64 %398, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %399, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %397, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 6, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %400 = icmp slt i64 %399, 0, !dbg !3932
  br i1 %400, label %406, label %401, !dbg !3932

401:                                              ; preds = %385, %396
  %402 = phi i32 [ %397, %396 ], [ 1, %385 ]
  %403 = phi i64 [ %399, %396 ], [ 9223372036854775807, %385 ]
  %404 = udiv i64 9223372036854775807, %54, !dbg !3932
  %405 = icmp ult i64 %404, %403, !dbg !3932
  br i1 %405, label %417, label %412, !dbg !3932

406:                                              ; preds = %390, %396
  %407 = phi i32 [ %397, %396 ], [ 1, %390 ]
  %408 = phi i64 [ %399, %396 ], [ -9223372036854775808, %390 ]
  %409 = sub i64 0, %408, !dbg !3932
  %410 = udiv i64 -9223372036854775808, %409, !dbg !3932
  %411 = icmp ult i64 %410, %54, !dbg !3932
  br i1 %411, label %422, label %412, !dbg !3932

412:                                              ; preds = %401, %406
  %413 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %414 = phi i64 [ %408, %406 ], [ %403, %401 ]
  %415 = mul i64 %414, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %415, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %413, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 5, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %416 = icmp slt i64 %415, 0, !dbg !3932
  br i1 %416, label %422, label %417, !dbg !3932

417:                                              ; preds = %401, %412
  %418 = phi i32 [ %413, %412 ], [ 1, %401 ]
  %419 = phi i64 [ %415, %412 ], [ 9223372036854775807, %401 ]
  %420 = udiv i64 9223372036854775807, %54, !dbg !3932
  %421 = icmp ult i64 %420, %419, !dbg !3932
  br i1 %421, label %433, label %428, !dbg !3932

422:                                              ; preds = %406, %412
  %423 = phi i32 [ %413, %412 ], [ 1, %406 ]
  %424 = phi i64 [ %415, %412 ], [ -9223372036854775808, %406 ]
  %425 = sub i64 0, %424, !dbg !3932
  %426 = udiv i64 -9223372036854775808, %425, !dbg !3932
  %427 = icmp ult i64 %426, %54, !dbg !3932
  br i1 %427, label %438, label %428, !dbg !3932

428:                                              ; preds = %417, %422
  %429 = phi i32 [ %423, %422 ], [ %418, %417 ]
  %430 = phi i64 [ %424, %422 ], [ %419, %417 ]
  %431 = mul i64 %430, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %431, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %429, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 4, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %432 = icmp slt i64 %431, 0, !dbg !3932
  br i1 %432, label %438, label %433, !dbg !3932

433:                                              ; preds = %417, %428
  %434 = phi i32 [ %429, %428 ], [ 1, %417 ]
  %435 = phi i64 [ %431, %428 ], [ 9223372036854775807, %417 ]
  %436 = udiv i64 9223372036854775807, %54, !dbg !3932
  %437 = icmp ult i64 %436, %435, !dbg !3932
  br i1 %437, label %449, label %444, !dbg !3932

438:                                              ; preds = %422, %428
  %439 = phi i32 [ %429, %428 ], [ 1, %422 ]
  %440 = phi i64 [ %431, %428 ], [ -9223372036854775808, %422 ]
  %441 = sub i64 0, %440, !dbg !3932
  %442 = udiv i64 -9223372036854775808, %441, !dbg !3932
  %443 = icmp ult i64 %442, %54, !dbg !3932
  br i1 %443, label %454, label %444, !dbg !3932

444:                                              ; preds = %433, %438
  %445 = phi i32 [ %439, %438 ], [ %434, %433 ]
  %446 = phi i64 [ %440, %438 ], [ %435, %433 ]
  %447 = mul i64 %446, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %447, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %445, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 3, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %448 = icmp slt i64 %447, 0, !dbg !3932
  br i1 %448, label %454, label %449, !dbg !3932

449:                                              ; preds = %433, %444
  %450 = phi i32 [ %445, %444 ], [ 1, %433 ]
  %451 = phi i64 [ %447, %444 ], [ 9223372036854775807, %433 ]
  %452 = udiv i64 9223372036854775807, %54, !dbg !3932
  %453 = icmp ult i64 %452, %451, !dbg !3932
  br i1 %453, label %465, label %460, !dbg !3932

454:                                              ; preds = %438, %444
  %455 = phi i32 [ %445, %444 ], [ 1, %438 ]
  %456 = phi i64 [ %447, %444 ], [ -9223372036854775808, %438 ]
  %457 = sub i64 0, %456, !dbg !3932
  %458 = udiv i64 -9223372036854775808, %457, !dbg !3932
  %459 = icmp ult i64 %458, %54, !dbg !3932
  br i1 %459, label %470, label %460, !dbg !3932

460:                                              ; preds = %449, %454
  %461 = phi i32 [ %455, %454 ], [ %450, %449 ]
  %462 = phi i64 [ %456, %454 ], [ %451, %449 ]
  %463 = mul i64 %462, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %463, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %461, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %464 = icmp slt i64 %463, 0, !dbg !3932
  br i1 %464, label %470, label %465, !dbg !3932

465:                                              ; preds = %449, %460
  %466 = phi i32 [ %461, %460 ], [ 1, %449 ]
  %467 = phi i64 [ %463, %460 ], [ 9223372036854775807, %449 ]
  %468 = udiv i64 9223372036854775807, %54, !dbg !3932
  %469 = icmp ult i64 %468, %467, !dbg !3932
  br i1 %469, label %481, label %476, !dbg !3932

470:                                              ; preds = %454, %460
  %471 = phi i32 [ %461, %460 ], [ 1, %454 ]
  %472 = phi i64 [ %463, %460 ], [ -9223372036854775808, %454 ]
  %473 = sub i64 0, %472, !dbg !3932
  %474 = udiv i64 -9223372036854775808, %473, !dbg !3932
  %475 = icmp ult i64 %474, %54, !dbg !3932
  br i1 %475, label %486, label %476, !dbg !3932

476:                                              ; preds = %465, %470
  %477 = phi i32 [ %471, %470 ], [ %466, %465 ]
  %478 = phi i64 [ %472, %470 ], [ %467, %465 ]
  %479 = mul i64 %478, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %479, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %477, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %480 = icmp slt i64 %479, 0, !dbg !3932
  br i1 %480, label %486, label %481, !dbg !3932

481:                                              ; preds = %465, %476
  %482 = phi i32 [ %477, %476 ], [ 1, %465 ]
  %483 = phi i64 [ %479, %476 ], [ 9223372036854775807, %465 ]
  %484 = udiv i64 9223372036854775807, %54, !dbg !3932
  %485 = icmp ult i64 %484, %483, !dbg !3932
  br i1 %485, label %497, label %492, !dbg !3932

486:                                              ; preds = %470, %476
  %487 = phi i32 [ %477, %476 ], [ 1, %470 ]
  %488 = phi i64 [ %479, %476 ], [ -9223372036854775808, %470 ]
  %489 = sub i64 0, %488, !dbg !3932
  %490 = udiv i64 -9223372036854775808, %489, !dbg !3932
  %491 = icmp ult i64 %490, %54, !dbg !3932
  br i1 %491, label %502, label %492, !dbg !3932

492:                                              ; preds = %481, %486
  %493 = phi i32 [ %487, %486 ], [ %482, %481 ]
  %494 = phi i64 [ %488, %486 ], [ %483, %481 ]
  %495 = mul i64 %494, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %495, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %493, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3930
  %496 = icmp slt i64 %495, 0, !dbg !3932
  br i1 %496, label %502, label %497, !dbg !3932

497:                                              ; preds = %481, %492
  %498 = phi i32 [ %493, %492 ], [ 1, %481 ]
  %499 = phi i64 [ %495, %492 ], [ 9223372036854775807, %481 ]
  %500 = udiv i64 9223372036854775807, %54, !dbg !3932
  %501 = icmp ult i64 %500, %499, !dbg !3932
  br i1 %501, label %512, label %508, !dbg !3932

502:                                              ; preds = %486, %492
  %503 = phi i32 [ %493, %492 ], [ 1, %486 ]
  %504 = phi i64 [ %495, %492 ], [ -9223372036854775808, %486 ]
  %505 = sub i64 0, %504, !dbg !3932
  %506 = udiv i64 -9223372036854775808, %505, !dbg !3932
  %507 = icmp ult i64 %506, %54, !dbg !3932
  br i1 %507, label %512, label %508, !dbg !3932

508:                                              ; preds = %502, %497
  %509 = phi i32 [ %503, %502 ], [ %498, %497 ]
  %510 = phi i64 [ %504, %502 ], [ %499, %497 ]
  %511 = mul i64 %510, %54, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %511, metadata !3913, metadata !DIExpression()), !dbg !3930
  br label %512, !dbg !3976

512:                                              ; preds = %508, %502, %497
  %513 = phi i32 [ %509, %508 ], [ %498, %497 ], [ %503, %502 ]
  %514 = phi i64 [ %511, %508 ], [ 9223372036854775807, %497 ], [ -9223372036854775808, %502 ], !dbg !3930
  %515 = phi i32 [ 0, %508 ], [ 1, %497 ], [ 1, %502 ], !dbg !3930
  %516 = or i32 %515, %513, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %516, metadata !3896, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3928
  br label %976, !dbg !3953

517:                                              ; preds = %60
  %518 = icmp eq i64 %31, -1, !dbg !3927
  br i1 %518, label %526, label %519, !dbg !3927

519:                                              ; preds = %517
  %520 = sub i64 0, %31, !dbg !3927
  %521 = udiv i64 -9223372036854775808, %520, !dbg !3927
  %522 = icmp ult i64 %521, %54, !dbg !3927
  br i1 %522, label %534, label %526, !dbg !3927

523:                                              ; preds = %60
  %524 = udiv i64 9223372036854775807, %54, !dbg !3927
  %525 = icmp ult i64 %524, %31, !dbg !3927
  br i1 %525, label %529, label %526, !dbg !3927

526:                                              ; preds = %517, %519, %523
  %527 = mul i64 %31, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %527, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 7, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %528 = icmp slt i64 %527, 0, !dbg !3927
  br i1 %528, label %534, label %529, !dbg !3927

529:                                              ; preds = %523, %526
  %530 = phi i32 [ 0, %526 ], [ 1, %523 ]
  %531 = phi i64 [ %527, %526 ], [ 9223372036854775807, %523 ]
  %532 = udiv i64 9223372036854775807, %54, !dbg !3927
  %533 = icmp ult i64 %532, %531, !dbg !3927
  br i1 %533, label %545, label %540, !dbg !3927

534:                                              ; preds = %519, %526
  %535 = phi i32 [ 0, %526 ], [ 1, %519 ]
  %536 = phi i64 [ %527, %526 ], [ -9223372036854775808, %519 ]
  %537 = sub i64 0, %536, !dbg !3927
  %538 = udiv i64 -9223372036854775808, %537, !dbg !3927
  %539 = icmp ult i64 %538, %54, !dbg !3927
  br i1 %539, label %550, label %540, !dbg !3927

540:                                              ; preds = %529, %534
  %541 = phi i32 [ %535, %534 ], [ %530, %529 ]
  %542 = phi i64 [ %536, %534 ], [ %531, %529 ]
  %543 = mul i64 %542, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %543, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %541, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 6, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %544 = icmp slt i64 %543, 0, !dbg !3927
  br i1 %544, label %550, label %545, !dbg !3927

545:                                              ; preds = %529, %540
  %546 = phi i32 [ %541, %540 ], [ 1, %529 ]
  %547 = phi i64 [ %543, %540 ], [ 9223372036854775807, %529 ]
  %548 = udiv i64 9223372036854775807, %54, !dbg !3927
  %549 = icmp ult i64 %548, %547, !dbg !3927
  br i1 %549, label %561, label %556, !dbg !3927

550:                                              ; preds = %534, %540
  %551 = phi i32 [ %541, %540 ], [ 1, %534 ]
  %552 = phi i64 [ %543, %540 ], [ -9223372036854775808, %534 ]
  %553 = sub i64 0, %552, !dbg !3927
  %554 = udiv i64 -9223372036854775808, %553, !dbg !3927
  %555 = icmp ult i64 %554, %54, !dbg !3927
  br i1 %555, label %566, label %556, !dbg !3927

556:                                              ; preds = %545, %550
  %557 = phi i32 [ %551, %550 ], [ %546, %545 ]
  %558 = phi i64 [ %552, %550 ], [ %547, %545 ]
  %559 = mul i64 %558, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %559, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %557, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 5, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %560 = icmp slt i64 %559, 0, !dbg !3927
  br i1 %560, label %566, label %561, !dbg !3927

561:                                              ; preds = %545, %556
  %562 = phi i32 [ %557, %556 ], [ 1, %545 ]
  %563 = phi i64 [ %559, %556 ], [ 9223372036854775807, %545 ]
  %564 = udiv i64 9223372036854775807, %54, !dbg !3927
  %565 = icmp ult i64 %564, %563, !dbg !3927
  br i1 %565, label %577, label %572, !dbg !3927

566:                                              ; preds = %550, %556
  %567 = phi i32 [ %557, %556 ], [ 1, %550 ]
  %568 = phi i64 [ %559, %556 ], [ -9223372036854775808, %550 ]
  %569 = sub i64 0, %568, !dbg !3927
  %570 = udiv i64 -9223372036854775808, %569, !dbg !3927
  %571 = icmp ult i64 %570, %54, !dbg !3927
  br i1 %571, label %582, label %572, !dbg !3927

572:                                              ; preds = %561, %566
  %573 = phi i32 [ %567, %566 ], [ %562, %561 ]
  %574 = phi i64 [ %568, %566 ], [ %563, %561 ]
  %575 = mul i64 %574, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %575, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %573, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 4, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %576 = icmp slt i64 %575, 0, !dbg !3927
  br i1 %576, label %582, label %577, !dbg !3927

577:                                              ; preds = %561, %572
  %578 = phi i32 [ %573, %572 ], [ 1, %561 ]
  %579 = phi i64 [ %575, %572 ], [ 9223372036854775807, %561 ]
  %580 = udiv i64 9223372036854775807, %54, !dbg !3927
  %581 = icmp ult i64 %580, %579, !dbg !3927
  br i1 %581, label %593, label %588, !dbg !3927

582:                                              ; preds = %566, %572
  %583 = phi i32 [ %573, %572 ], [ 1, %566 ]
  %584 = phi i64 [ %575, %572 ], [ -9223372036854775808, %566 ]
  %585 = sub i64 0, %584, !dbg !3927
  %586 = udiv i64 -9223372036854775808, %585, !dbg !3927
  %587 = icmp ult i64 %586, %54, !dbg !3927
  br i1 %587, label %598, label %588, !dbg !3927

588:                                              ; preds = %577, %582
  %589 = phi i32 [ %583, %582 ], [ %578, %577 ]
  %590 = phi i64 [ %584, %582 ], [ %579, %577 ]
  %591 = mul i64 %590, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %591, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %589, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 3, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %592 = icmp slt i64 %591, 0, !dbg !3927
  br i1 %592, label %598, label %593, !dbg !3927

593:                                              ; preds = %577, %588
  %594 = phi i32 [ %589, %588 ], [ 1, %577 ]
  %595 = phi i64 [ %591, %588 ], [ 9223372036854775807, %577 ]
  %596 = udiv i64 9223372036854775807, %54, !dbg !3927
  %597 = icmp ult i64 %596, %595, !dbg !3927
  br i1 %597, label %609, label %604, !dbg !3927

598:                                              ; preds = %582, %588
  %599 = phi i32 [ %589, %588 ], [ 1, %582 ]
  %600 = phi i64 [ %591, %588 ], [ -9223372036854775808, %582 ]
  %601 = sub i64 0, %600, !dbg !3927
  %602 = udiv i64 -9223372036854775808, %601, !dbg !3927
  %603 = icmp ult i64 %602, %54, !dbg !3927
  br i1 %603, label %614, label %604, !dbg !3927

604:                                              ; preds = %593, %598
  %605 = phi i32 [ %599, %598 ], [ %594, %593 ]
  %606 = phi i64 [ %600, %598 ], [ %595, %593 ]
  %607 = mul i64 %606, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %607, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %605, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %608 = icmp slt i64 %607, 0, !dbg !3927
  br i1 %608, label %614, label %609, !dbg !3927

609:                                              ; preds = %593, %604
  %610 = phi i32 [ %605, %604 ], [ 1, %593 ]
  %611 = phi i64 [ %607, %604 ], [ 9223372036854775807, %593 ]
  %612 = udiv i64 9223372036854775807, %54, !dbg !3927
  %613 = icmp ult i64 %612, %611, !dbg !3927
  br i1 %613, label %625, label %620, !dbg !3927

614:                                              ; preds = %598, %604
  %615 = phi i32 [ %605, %604 ], [ 1, %598 ]
  %616 = phi i64 [ %607, %604 ], [ -9223372036854775808, %598 ]
  %617 = sub i64 0, %616, !dbg !3927
  %618 = udiv i64 -9223372036854775808, %617, !dbg !3927
  %619 = icmp ult i64 %618, %54, !dbg !3927
  br i1 %619, label %630, label %620, !dbg !3927

620:                                              ; preds = %609, %614
  %621 = phi i32 [ %615, %614 ], [ %610, %609 ]
  %622 = phi i64 [ %616, %614 ], [ %611, %609 ]
  %623 = mul i64 %622, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %623, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %621, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %624 = icmp slt i64 %623, 0, !dbg !3927
  br i1 %624, label %630, label %625, !dbg !3927

625:                                              ; preds = %609, %620
  %626 = phi i32 [ %621, %620 ], [ 1, %609 ]
  %627 = phi i64 [ %623, %620 ], [ 9223372036854775807, %609 ]
  %628 = udiv i64 9223372036854775807, %54, !dbg !3927
  %629 = icmp ult i64 %628, %627, !dbg !3927
  br i1 %629, label %641, label %636, !dbg !3927

630:                                              ; preds = %614, %620
  %631 = phi i32 [ %621, %620 ], [ 1, %614 ]
  %632 = phi i64 [ %623, %620 ], [ -9223372036854775808, %614 ]
  %633 = sub i64 0, %632, !dbg !3927
  %634 = udiv i64 -9223372036854775808, %633, !dbg !3927
  %635 = icmp ult i64 %634, %54, !dbg !3927
  br i1 %635, label %646, label %636, !dbg !3927

636:                                              ; preds = %625, %630
  %637 = phi i32 [ %631, %630 ], [ %626, %625 ]
  %638 = phi i64 [ %632, %630 ], [ %627, %625 ]
  %639 = mul i64 %638, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %639, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %637, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3925
  %640 = icmp slt i64 %639, 0, !dbg !3927
  br i1 %640, label %646, label %641, !dbg !3927

641:                                              ; preds = %625, %636
  %642 = phi i32 [ %637, %636 ], [ 1, %625 ]
  %643 = phi i64 [ %639, %636 ], [ 9223372036854775807, %625 ]
  %644 = udiv i64 9223372036854775807, %54, !dbg !3927
  %645 = icmp ult i64 %644, %643, !dbg !3927
  br i1 %645, label %656, label %652, !dbg !3927

646:                                              ; preds = %630, %636
  %647 = phi i32 [ %637, %636 ], [ 1, %630 ]
  %648 = phi i64 [ %639, %636 ], [ -9223372036854775808, %630 ]
  %649 = sub i64 0, %648, !dbg !3927
  %650 = udiv i64 -9223372036854775808, %649, !dbg !3927
  %651 = icmp ult i64 %650, %54, !dbg !3927
  br i1 %651, label %656, label %652, !dbg !3927

652:                                              ; preds = %646, %641
  %653 = phi i32 [ %647, %646 ], [ %642, %641 ]
  %654 = phi i64 [ %648, %646 ], [ %643, %641 ]
  %655 = mul i64 %654, %54, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %655, metadata !3913, metadata !DIExpression()), !dbg !3925
  br label %656, !dbg !3978

656:                                              ; preds = %652, %646, %641
  %657 = phi i32 [ %653, %652 ], [ %642, %641 ], [ %647, %646 ]
  %658 = phi i64 [ %655, %652 ], [ 9223372036854775807, %641 ], [ -9223372036854775808, %646 ], !dbg !3925
  %659 = phi i32 [ 0, %652 ], [ 1, %641 ], [ 1, %646 ], !dbg !3925
  %660 = or i32 %659, %657, !dbg !3979
  call void @llvm.dbg.value(metadata i32 %660, metadata !3896, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3923
  br label %976, !dbg !3953

661:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3901, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 poison, metadata !3902, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 3, metadata !3903, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3982
  %662 = icmp slt i64 %31, 0, !dbg !3984
  br i1 %662, label %663, label %669, !dbg !3984

663:                                              ; preds = %661
  %664 = icmp eq i64 %31, -1, !dbg !3984
  br i1 %664, label %672, label %665, !dbg !3984

665:                                              ; preds = %663
  %666 = sub i64 0, %31, !dbg !3984
  %667 = udiv i64 -9223372036854775808, %666, !dbg !3984
  %668 = icmp ult i64 %667, %54, !dbg !3984
  br i1 %668, label %680, label %672, !dbg !3984

669:                                              ; preds = %661
  %670 = udiv i64 9223372036854775807, %54, !dbg !3984
  %671 = icmp ult i64 %670, %31, !dbg !3984
  br i1 %671, label %675, label %672, !dbg !3984

672:                                              ; preds = %663, %665, %669
  %673 = mul i64 %31, %54, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %673, metadata !3913, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3982
  %674 = icmp slt i64 %673, 0, !dbg !3984
  br i1 %674, label %680, label %675, !dbg !3984

675:                                              ; preds = %669, %672
  %676 = phi i32 [ 0, %672 ], [ 1, %669 ]
  %677 = phi i64 [ %673, %672 ], [ 9223372036854775807, %669 ]
  %678 = udiv i64 9223372036854775807, %54, !dbg !3984
  %679 = icmp ult i64 %678, %677, !dbg !3984
  br i1 %679, label %691, label %686, !dbg !3984

680:                                              ; preds = %665, %672
  %681 = phi i32 [ 0, %672 ], [ 1, %665 ]
  %682 = phi i64 [ %673, %672 ], [ -9223372036854775808, %665 ]
  %683 = sub i64 0, %682, !dbg !3984
  %684 = udiv i64 -9223372036854775808, %683, !dbg !3984
  %685 = icmp ult i64 %684, %54, !dbg !3984
  br i1 %685, label %696, label %686, !dbg !3984

686:                                              ; preds = %675, %680
  %687 = phi i32 [ %681, %680 ], [ %676, %675 ]
  %688 = phi i64 [ %682, %680 ], [ %677, %675 ]
  %689 = mul i64 %688, %54, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %689, metadata !3913, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 %687, metadata !3896, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3982
  %690 = icmp slt i64 %689, 0, !dbg !3984
  br i1 %690, label %696, label %691, !dbg !3984

691:                                              ; preds = %675, %686
  %692 = phi i32 [ %687, %686 ], [ 1, %675 ]
  %693 = phi i64 [ %689, %686 ], [ 9223372036854775807, %675 ]
  %694 = udiv i64 9223372036854775807, %54, !dbg !3984
  %695 = icmp ult i64 %694, %693, !dbg !3984
  br i1 %695, label %707, label %702, !dbg !3984

696:                                              ; preds = %680, %686
  %697 = phi i32 [ %687, %686 ], [ 1, %680 ]
  %698 = phi i64 [ %689, %686 ], [ -9223372036854775808, %680 ]
  %699 = sub i64 0, %698, !dbg !3984
  %700 = udiv i64 -9223372036854775808, %699, !dbg !3984
  %701 = icmp ult i64 %700, %54, !dbg !3984
  br i1 %701, label %712, label %702, !dbg !3984

702:                                              ; preds = %691, %696
  %703 = phi i32 [ %697, %696 ], [ %692, %691 ]
  %704 = phi i64 [ %698, %696 ], [ %693, %691 ]
  %705 = mul i64 %704, %54, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %705, metadata !3913, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 %703, metadata !3896, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3982
  %706 = icmp slt i64 %705, 0, !dbg !3984
  br i1 %706, label %712, label %707, !dbg !3984

707:                                              ; preds = %691, %702
  %708 = phi i32 [ %703, %702 ], [ 1, %691 ]
  %709 = phi i64 [ %705, %702 ], [ 9223372036854775807, %691 ]
  %710 = udiv i64 9223372036854775807, %54, !dbg !3984
  %711 = icmp ult i64 %710, %709, !dbg !3984
  br i1 %711, label %722, label %718, !dbg !3984

712:                                              ; preds = %696, %702
  %713 = phi i32 [ %703, %702 ], [ 1, %696 ]
  %714 = phi i64 [ %705, %702 ], [ -9223372036854775808, %696 ]
  %715 = sub i64 0, %714, !dbg !3984
  %716 = udiv i64 -9223372036854775808, %715, !dbg !3984
  %717 = icmp ult i64 %716, %54, !dbg !3984
  br i1 %717, label %722, label %718, !dbg !3984

718:                                              ; preds = %712, %707
  %719 = phi i32 [ %713, %712 ], [ %708, %707 ]
  %720 = phi i64 [ %714, %712 ], [ %709, %707 ]
  %721 = mul i64 %720, %54, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %721, metadata !3913, metadata !DIExpression()), !dbg !3982
  br label %722, !dbg !3985

722:                                              ; preds = %718, %712, %707
  %723 = phi i32 [ %719, %718 ], [ %708, %707 ], [ %713, %712 ]
  %724 = phi i64 [ %721, %718 ], [ 9223372036854775807, %707 ], [ -9223372036854775808, %712 ], !dbg !3982
  %725 = phi i32 [ 0, %718 ], [ 1, %707 ], [ 1, %712 ], !dbg !3982
  %726 = or i32 %725, %723, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %726, metadata !3896, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3980
  br label %976, !dbg !3953

727:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i32 2, metadata !3912, metadata !DIExpression()), !dbg !3987
  %728 = icmp slt i64 %31, 0, !dbg !3989
  br i1 %728, label %729, label %732, !dbg !3989

729:                                              ; preds = %727
  %730 = add i64 %31, -1, !dbg !3989
  %731 = icmp ult i64 %730, -4611686018427387905, !dbg !3989
  br i1 %731, label %976, label %734, !dbg !3989

732:                                              ; preds = %727
  %733 = icmp ugt i64 %31, 4611686018427387903, !dbg !3989
  br i1 %733, label %976, label %734, !dbg !3989

734:                                              ; preds = %729, %732
  %735 = shl nsw i64 %31, 1, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %735, metadata !3913, metadata !DIExpression()), !dbg !3987
  br label %976, !dbg !3990

736:                                              ; preds = %58
  %737 = icmp eq i64 %31, -1, !dbg !3922
  br i1 %737, label %745, label %738, !dbg !3922

738:                                              ; preds = %736
  %739 = sub i64 0, %31, !dbg !3922
  %740 = udiv i64 -9223372036854775808, %739, !dbg !3922
  %741 = icmp ult i64 %740, %54, !dbg !3922
  br i1 %741, label %753, label %745, !dbg !3922

742:                                              ; preds = %58
  %743 = udiv i64 9223372036854775807, %54, !dbg !3922
  %744 = icmp ult i64 %743, %31, !dbg !3922
  br i1 %744, label %748, label %745, !dbg !3922

745:                                              ; preds = %736, %738, %742
  %746 = mul i64 %31, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %746, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 6, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %747 = icmp slt i64 %746, 0, !dbg !3922
  br i1 %747, label %753, label %748, !dbg !3922

748:                                              ; preds = %742, %745
  %749 = phi i32 [ 0, %745 ], [ 1, %742 ]
  %750 = phi i64 [ %746, %745 ], [ 9223372036854775807, %742 ]
  %751 = udiv i64 9223372036854775807, %54, !dbg !3922
  %752 = icmp ult i64 %751, %750, !dbg !3922
  br i1 %752, label %764, label %759, !dbg !3922

753:                                              ; preds = %738, %745
  %754 = phi i32 [ 0, %745 ], [ 1, %738 ]
  %755 = phi i64 [ %746, %745 ], [ -9223372036854775808, %738 ]
  %756 = sub i64 0, %755, !dbg !3922
  %757 = udiv i64 -9223372036854775808, %756, !dbg !3922
  %758 = icmp ult i64 %757, %54, !dbg !3922
  br i1 %758, label %769, label %759, !dbg !3922

759:                                              ; preds = %748, %753
  %760 = phi i32 [ %754, %753 ], [ %749, %748 ]
  %761 = phi i64 [ %755, %753 ], [ %750, %748 ]
  %762 = mul i64 %761, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %762, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %760, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 5, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %763 = icmp slt i64 %762, 0, !dbg !3922
  br i1 %763, label %769, label %764, !dbg !3922

764:                                              ; preds = %748, %759
  %765 = phi i32 [ %760, %759 ], [ 1, %748 ]
  %766 = phi i64 [ %762, %759 ], [ 9223372036854775807, %748 ]
  %767 = udiv i64 9223372036854775807, %54, !dbg !3922
  %768 = icmp ult i64 %767, %766, !dbg !3922
  br i1 %768, label %780, label %775, !dbg !3922

769:                                              ; preds = %753, %759
  %770 = phi i32 [ %760, %759 ], [ 1, %753 ]
  %771 = phi i64 [ %762, %759 ], [ -9223372036854775808, %753 ]
  %772 = sub i64 0, %771, !dbg !3922
  %773 = udiv i64 -9223372036854775808, %772, !dbg !3922
  %774 = icmp ult i64 %773, %54, !dbg !3922
  br i1 %774, label %785, label %775, !dbg !3922

775:                                              ; preds = %764, %769
  %776 = phi i32 [ %770, %769 ], [ %765, %764 ]
  %777 = phi i64 [ %771, %769 ], [ %766, %764 ]
  %778 = mul i64 %777, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %778, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %776, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 4, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %779 = icmp slt i64 %778, 0, !dbg !3922
  br i1 %779, label %785, label %780, !dbg !3922

780:                                              ; preds = %764, %775
  %781 = phi i32 [ %776, %775 ], [ 1, %764 ]
  %782 = phi i64 [ %778, %775 ], [ 9223372036854775807, %764 ]
  %783 = udiv i64 9223372036854775807, %54, !dbg !3922
  %784 = icmp ult i64 %783, %782, !dbg !3922
  br i1 %784, label %796, label %791, !dbg !3922

785:                                              ; preds = %769, %775
  %786 = phi i32 [ %776, %775 ], [ 1, %769 ]
  %787 = phi i64 [ %778, %775 ], [ -9223372036854775808, %769 ]
  %788 = sub i64 0, %787, !dbg !3922
  %789 = udiv i64 -9223372036854775808, %788, !dbg !3922
  %790 = icmp ult i64 %789, %54, !dbg !3922
  br i1 %790, label %801, label %791, !dbg !3922

791:                                              ; preds = %780, %785
  %792 = phi i32 [ %786, %785 ], [ %781, %780 ]
  %793 = phi i64 [ %787, %785 ], [ %782, %780 ]
  %794 = mul i64 %793, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %794, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %792, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 3, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %795 = icmp slt i64 %794, 0, !dbg !3922
  br i1 %795, label %801, label %796, !dbg !3922

796:                                              ; preds = %780, %791
  %797 = phi i32 [ %792, %791 ], [ 1, %780 ]
  %798 = phi i64 [ %794, %791 ], [ 9223372036854775807, %780 ]
  %799 = udiv i64 9223372036854775807, %54, !dbg !3922
  %800 = icmp ult i64 %799, %798, !dbg !3922
  br i1 %800, label %812, label %807, !dbg !3922

801:                                              ; preds = %785, %791
  %802 = phi i32 [ %792, %791 ], [ 1, %785 ]
  %803 = phi i64 [ %794, %791 ], [ -9223372036854775808, %785 ]
  %804 = sub i64 0, %803, !dbg !3922
  %805 = udiv i64 -9223372036854775808, %804, !dbg !3922
  %806 = icmp ult i64 %805, %54, !dbg !3922
  br i1 %806, label %817, label %807, !dbg !3922

807:                                              ; preds = %796, %801
  %808 = phi i32 [ %802, %801 ], [ %797, %796 ]
  %809 = phi i64 [ %803, %801 ], [ %798, %796 ]
  %810 = mul i64 %809, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %810, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %808, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %811 = icmp slt i64 %810, 0, !dbg !3922
  br i1 %811, label %817, label %812, !dbg !3922

812:                                              ; preds = %796, %807
  %813 = phi i32 [ %808, %807 ], [ 1, %796 ]
  %814 = phi i64 [ %810, %807 ], [ 9223372036854775807, %796 ]
  %815 = udiv i64 9223372036854775807, %54, !dbg !3922
  %816 = icmp ult i64 %815, %814, !dbg !3922
  br i1 %816, label %828, label %823, !dbg !3922

817:                                              ; preds = %801, %807
  %818 = phi i32 [ %808, %807 ], [ 1, %801 ]
  %819 = phi i64 [ %810, %807 ], [ -9223372036854775808, %801 ]
  %820 = sub i64 0, %819, !dbg !3922
  %821 = udiv i64 -9223372036854775808, %820, !dbg !3922
  %822 = icmp ult i64 %821, %54, !dbg !3922
  br i1 %822, label %833, label %823, !dbg !3922

823:                                              ; preds = %812, %817
  %824 = phi i32 [ %818, %817 ], [ %813, %812 ]
  %825 = phi i64 [ %819, %817 ], [ %814, %812 ]
  %826 = mul i64 %825, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %826, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %824, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %827 = icmp slt i64 %826, 0, !dbg !3922
  br i1 %827, label %833, label %828, !dbg !3922

828:                                              ; preds = %812, %823
  %829 = phi i32 [ %824, %823 ], [ 1, %812 ]
  %830 = phi i64 [ %826, %823 ], [ 9223372036854775807, %812 ]
  %831 = udiv i64 9223372036854775807, %54, !dbg !3922
  %832 = icmp ult i64 %831, %830, !dbg !3922
  br i1 %832, label %844, label %839, !dbg !3922

833:                                              ; preds = %817, %823
  %834 = phi i32 [ %824, %823 ], [ 1, %817 ]
  %835 = phi i64 [ %826, %823 ], [ -9223372036854775808, %817 ]
  %836 = sub i64 0, %835, !dbg !3922
  %837 = udiv i64 -9223372036854775808, %836, !dbg !3922
  %838 = icmp ult i64 %837, %54, !dbg !3922
  br i1 %838, label %849, label %839, !dbg !3922

839:                                              ; preds = %828, %833
  %840 = phi i32 [ %834, %833 ], [ %829, %828 ]
  %841 = phi i64 [ %835, %833 ], [ %830, %828 ]
  %842 = mul i64 %841, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %842, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %840, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3920
  %843 = icmp slt i64 %842, 0, !dbg !3922
  br i1 %843, label %849, label %844, !dbg !3922

844:                                              ; preds = %828, %839
  %845 = phi i32 [ %840, %839 ], [ 1, %828 ]
  %846 = phi i64 [ %842, %839 ], [ 9223372036854775807, %828 ]
  %847 = udiv i64 9223372036854775807, %54, !dbg !3922
  %848 = icmp ult i64 %847, %846, !dbg !3922
  br i1 %848, label %859, label %855, !dbg !3922

849:                                              ; preds = %833, %839
  %850 = phi i32 [ %840, %839 ], [ 1, %833 ]
  %851 = phi i64 [ %842, %839 ], [ -9223372036854775808, %833 ]
  %852 = sub i64 0, %851, !dbg !3922
  %853 = udiv i64 -9223372036854775808, %852, !dbg !3922
  %854 = icmp ult i64 %853, %54, !dbg !3922
  br i1 %854, label %859, label %855, !dbg !3922

855:                                              ; preds = %849, %844
  %856 = phi i32 [ %850, %849 ], [ %845, %844 ]
  %857 = phi i64 [ %851, %849 ], [ %846, %844 ]
  %858 = mul i64 %857, %54, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %858, metadata !3913, metadata !DIExpression()), !dbg !3920
  br label %859, !dbg !3991

859:                                              ; preds = %855, %849, %844
  %860 = phi i32 [ %856, %855 ], [ %845, %844 ], [ %850, %849 ]
  %861 = phi i64 [ %858, %855 ], [ 9223372036854775807, %844 ], [ -9223372036854775808, %849 ], !dbg !3920
  %862 = phi i32 [ 0, %855 ], [ 1, %844 ], [ 1, %849 ], !dbg !3920
  %863 = or i32 %862, %860, !dbg !3992
  call void @llvm.dbg.value(metadata i32 %863, metadata !3896, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3918
  br label %976, !dbg !3953

864:                                              ; preds = %56
  %865 = icmp eq i64 %31, -1, !dbg !3916
  br i1 %865, label %873, label %866, !dbg !3916

866:                                              ; preds = %864
  %867 = sub i64 0, %31, !dbg !3916
  %868 = udiv i64 -9223372036854775808, %867, !dbg !3916
  %869 = icmp ult i64 %868, %54, !dbg !3916
  br i1 %869, label %881, label %873, !dbg !3916

870:                                              ; preds = %56
  %871 = udiv i64 9223372036854775807, %54, !dbg !3916
  %872 = icmp ult i64 %871, %31, !dbg !3916
  br i1 %872, label %876, label %873, !dbg !3916

873:                                              ; preds = %864, %866, %870
  %874 = mul i64 %31, %54, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %874, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 5, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3914
  %875 = icmp slt i64 %874, 0, !dbg !3916
  br i1 %875, label %881, label %876, !dbg !3916

876:                                              ; preds = %870, %873
  %877 = phi i32 [ 0, %873 ], [ 1, %870 ]
  %878 = phi i64 [ %874, %873 ], [ 9223372036854775807, %870 ]
  %879 = udiv i64 9223372036854775807, %54, !dbg !3916
  %880 = icmp ult i64 %879, %878, !dbg !3916
  br i1 %880, label %892, label %887, !dbg !3916

881:                                              ; preds = %866, %873
  %882 = phi i32 [ 0, %873 ], [ 1, %866 ]
  %883 = phi i64 [ %874, %873 ], [ -9223372036854775808, %866 ]
  %884 = sub i64 0, %883, !dbg !3916
  %885 = udiv i64 -9223372036854775808, %884, !dbg !3916
  %886 = icmp ult i64 %885, %54, !dbg !3916
  br i1 %886, label %897, label %887, !dbg !3916

887:                                              ; preds = %876, %881
  %888 = phi i32 [ %882, %881 ], [ %877, %876 ]
  %889 = phi i64 [ %883, %881 ], [ %878, %876 ]
  %890 = mul i64 %889, %54, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %890, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %888, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 4, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3914
  %891 = icmp slt i64 %890, 0, !dbg !3916
  br i1 %891, label %897, label %892, !dbg !3916

892:                                              ; preds = %876, %887
  %893 = phi i32 [ %888, %887 ], [ 1, %876 ]
  %894 = phi i64 [ %890, %887 ], [ 9223372036854775807, %876 ]
  %895 = udiv i64 9223372036854775807, %54, !dbg !3916
  %896 = icmp ult i64 %895, %894, !dbg !3916
  br i1 %896, label %908, label %903, !dbg !3916

897:                                              ; preds = %881, %887
  %898 = phi i32 [ %888, %887 ], [ 1, %881 ]
  %899 = phi i64 [ %890, %887 ], [ -9223372036854775808, %881 ]
  %900 = sub i64 0, %899, !dbg !3916
  %901 = udiv i64 -9223372036854775808, %900, !dbg !3916
  %902 = icmp ult i64 %901, %54, !dbg !3916
  br i1 %902, label %913, label %903, !dbg !3916

903:                                              ; preds = %892, %897
  %904 = phi i32 [ %898, %897 ], [ %893, %892 ]
  %905 = phi i64 [ %899, %897 ], [ %894, %892 ]
  %906 = mul i64 %905, %54, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %906, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %904, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 3, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3914
  %907 = icmp slt i64 %906, 0, !dbg !3916
  br i1 %907, label %913, label %908, !dbg !3916

908:                                              ; preds = %892, %903
  %909 = phi i32 [ %904, %903 ], [ 1, %892 ]
  %910 = phi i64 [ %906, %903 ], [ 9223372036854775807, %892 ]
  %911 = udiv i64 9223372036854775807, %54, !dbg !3916
  %912 = icmp ult i64 %911, %910, !dbg !3916
  br i1 %912, label %924, label %919, !dbg !3916

913:                                              ; preds = %897, %903
  %914 = phi i32 [ %904, %903 ], [ 1, %897 ]
  %915 = phi i64 [ %906, %903 ], [ -9223372036854775808, %897 ]
  %916 = sub i64 0, %915, !dbg !3916
  %917 = udiv i64 -9223372036854775808, %916, !dbg !3916
  %918 = icmp ult i64 %917, %54, !dbg !3916
  br i1 %918, label %929, label %919, !dbg !3916

919:                                              ; preds = %908, %913
  %920 = phi i32 [ %914, %913 ], [ %909, %908 ]
  %921 = phi i64 [ %915, %913 ], [ %910, %908 ]
  %922 = mul i64 %921, %54, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %922, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %920, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 2, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3914
  %923 = icmp slt i64 %922, 0, !dbg !3916
  br i1 %923, label %929, label %924, !dbg !3916

924:                                              ; preds = %908, %919
  %925 = phi i32 [ %920, %919 ], [ 1, %908 ]
  %926 = phi i64 [ %922, %919 ], [ 9223372036854775807, %908 ]
  %927 = udiv i64 9223372036854775807, %54, !dbg !3916
  %928 = icmp ult i64 %927, %926, !dbg !3916
  br i1 %928, label %940, label %935, !dbg !3916

929:                                              ; preds = %913, %919
  %930 = phi i32 [ %920, %919 ], [ 1, %913 ]
  %931 = phi i64 [ %922, %919 ], [ -9223372036854775808, %913 ]
  %932 = sub i64 0, %931, !dbg !3916
  %933 = udiv i64 -9223372036854775808, %932, !dbg !3916
  %934 = icmp ult i64 %933, %54, !dbg !3916
  br i1 %934, label %945, label %935, !dbg !3916

935:                                              ; preds = %924, %929
  %936 = phi i32 [ %930, %929 ], [ %925, %924 ]
  %937 = phi i64 [ %931, %929 ], [ %926, %924 ]
  %938 = mul i64 %937, %54, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %938, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %936, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 1, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3914
  %939 = icmp slt i64 %938, 0, !dbg !3916
  br i1 %939, label %945, label %940, !dbg !3916

940:                                              ; preds = %924, %935
  %941 = phi i32 [ %936, %935 ], [ 1, %924 ]
  %942 = phi i64 [ %938, %935 ], [ 9223372036854775807, %924 ]
  %943 = udiv i64 9223372036854775807, %54, !dbg !3916
  %944 = icmp ult i64 %943, %942, !dbg !3916
  br i1 %944, label %956, label %951, !dbg !3916

945:                                              ; preds = %929, %935
  %946 = phi i32 [ %936, %935 ], [ 1, %929 ]
  %947 = phi i64 [ %938, %935 ], [ -9223372036854775808, %929 ]
  %948 = sub i64 0, %947, !dbg !3916
  %949 = udiv i64 -9223372036854775808, %948, !dbg !3916
  %950 = icmp ult i64 %949, %54, !dbg !3916
  br i1 %950, label %961, label %951, !dbg !3916

951:                                              ; preds = %940, %945
  %952 = phi i32 [ %946, %945 ], [ %941, %940 ]
  %953 = phi i64 [ %947, %945 ], [ %942, %940 ]
  %954 = mul i64 %953, %54, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %954, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %952, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr undef, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 poison, metadata !3912, metadata !DIExpression()), !dbg !3914
  %955 = icmp slt i64 %954, 0, !dbg !3916
  br i1 %955, label %961, label %956, !dbg !3916

956:                                              ; preds = %940, %951
  %957 = phi i32 [ %952, %951 ], [ 1, %940 ]
  %958 = phi i64 [ %954, %951 ], [ 9223372036854775807, %940 ]
  %959 = udiv i64 9223372036854775807, %54, !dbg !3916
  %960 = icmp ult i64 %959, %958, !dbg !3916
  br i1 %960, label %971, label %967, !dbg !3916

961:                                              ; preds = %945, %951
  %962 = phi i32 [ %952, %951 ], [ 1, %945 ]
  %963 = phi i64 [ %954, %951 ], [ -9223372036854775808, %945 ]
  %964 = sub i64 0, %963, !dbg !3916
  %965 = udiv i64 -9223372036854775808, %964, !dbg !3916
  %966 = icmp ult i64 %965, %54, !dbg !3916
  br i1 %966, label %971, label %967, !dbg !3916

967:                                              ; preds = %961, %956
  %968 = phi i32 [ %962, %961 ], [ %957, %956 ]
  %969 = phi i64 [ %963, %961 ], [ %958, %956 ]
  %970 = mul i64 %969, %54, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %970, metadata !3913, metadata !DIExpression()), !dbg !3914
  br label %971, !dbg !3993

971:                                              ; preds = %967, %961, %956
  %972 = phi i32 [ %968, %967 ], [ %957, %956 ], [ %962, %961 ]
  %973 = phi i64 [ %970, %967 ], [ 9223372036854775807, %956 ], [ -9223372036854775808, %961 ], !dbg !3914
  %974 = phi i32 [ 0, %967 ], [ 1, %956 ], [ 1, %961 ], !dbg !3914
  %975 = or i32 %974, %972, !dbg !3994
  call void @llvm.dbg.value(metadata i32 %975, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3904
  br label %976, !dbg !3953

976:                                              ; preds = %234, %238, %241, %971, %859, %722, %656, %512, %352, %272, %225, %175, %729, %78, %70, %53, %72, %74, %80, %82, %732, %734
  %977 = phi i64 [ %31, %53 ], [ %75, %74 ], [ 9223372036854775807, %72 ], [ %83, %82 ], [ 9223372036854775807, %80 ], [ %735, %734 ], [ 9223372036854775807, %732 ], [ -9223372036854775808, %70 ], [ -9223372036854775808, %78 ], [ -9223372036854775808, %729 ], [ %177, %175 ], [ %227, %225 ], [ %274, %272 ], [ %354, %352 ], [ %514, %512 ], [ %658, %656 ], [ %724, %722 ], [ %861, %859 ], [ %973, %971 ], [ %242, %241 ], [ 9223372036854775807, %238 ], [ -9223372036854775808, %234 ], !dbg !3842
  %978 = phi i32 [ 0, %53 ], [ 0, %74 ], [ 1, %72 ], [ 0, %82 ], [ 1, %80 ], [ 0, %734 ], [ 1, %732 ], [ 1, %70 ], [ 1, %78 ], [ 1, %729 ], [ %179, %175 ], [ %229, %225 ], [ %276, %272 ], [ %356, %352 ], [ %516, %512 ], [ %660, %656 ], [ %726, %722 ], [ %863, %859 ], [ %975, %971 ], [ 0, %241 ], [ 1, %238 ], [ 1, %234 ], !dbg !3995
  call void @llvm.dbg.value(metadata i32 %978, metadata !3841, metadata !DIExpression()), !dbg !3881
  %979 = or i32 %978, %30, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %979, metadata !3836, metadata !DIExpression()), !dbg !3842
  %980 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !3996
  store ptr %980, ptr %8, align 8, !dbg !3996, !tbaa !900
  %981 = load i8, ptr %980, align 1, !dbg !3997, !tbaa !980
  %982 = icmp eq i8 %981, 0, !dbg !3997
  %983 = or i32 %979, 2
  %984 = select i1 %982, i32 %979, i32 %983, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %984, metadata !3836, metadata !DIExpression()), !dbg !3842
  br label %987

985:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %10, metadata !3835, metadata !DIExpression()), !dbg !3842
  store i64 %31, ptr %3, align 8, !dbg !4000, !tbaa !2581
  %986 = or i32 %30, 2, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %30, metadata !3836, metadata !DIExpression()), !dbg !3842
  br label %990

987:                                              ; preds = %976, %29
  %988 = phi i64 [ %31, %29 ], [ %977, %976 ], !dbg !4002
  %989 = phi i32 [ %30, %29 ], [ %984, %976 ], !dbg !4003
  call void @llvm.dbg.value(metadata i32 %989, metadata !3836, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i64 %988, metadata !3835, metadata !DIExpression()), !dbg !3842
  store i64 %988, ptr %3, align 8, !dbg !4004, !tbaa !2581
  br label %990, !dbg !4005

990:                                              ; preds = %985, %22, %13, %15, %18, %987, %38, %28
  %991 = phi i32 [ %989, %987 ], [ %986, %985 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3842
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #37, !dbg !4006
  ret i32 %991, !dbg !4006
}

; Function Attrs: nounwind
declare !dbg !4007 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4012 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4050, metadata !DIExpression()), !dbg !4055
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !4056
  call void @llvm.dbg.value(metadata i1 poison, metadata !4051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %0, metadata !4057, metadata !DIExpression()), !dbg !4060
  %3 = load i32, ptr %0, align 8, !dbg !4062, !tbaa !4063
  %4 = and i32 %3, 32, !dbg !4064
  %5 = icmp eq i32 %4, 0, !dbg !4064
  call void @llvm.dbg.value(metadata i1 %5, metadata !4053, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4055
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !4065
  %7 = icmp eq i32 %6, 0, !dbg !4066
  call void @llvm.dbg.value(metadata i1 %7, metadata !4054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4055
  br i1 %5, label %8, label %18, !dbg !4067

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4069
  call void @llvm.dbg.value(metadata i1 %9, metadata !4051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4055
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4070
  %11 = xor i1 %7, true, !dbg !4070
  %12 = sext i1 %11 to i32, !dbg !4070
  br i1 %10, label %21, label %13, !dbg !4070

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !4071
  %15 = load i32, ptr %14, align 4, !dbg !4071, !tbaa !971
  %16 = icmp ne i32 %15, 9, !dbg !4072
  %17 = sext i1 %16 to i32, !dbg !4073
  br label %21, !dbg !4073

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4074

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !4076
  store i32 0, ptr %20, align 4, !dbg !4078, !tbaa !971
  br label %21, !dbg !4076

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4055
  ret i32 %22, !dbg !4079
}

; Function Attrs: nounwind
declare !dbg !4080 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4084 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4122, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i32 0, metadata !4123, metadata !DIExpression()), !dbg !4126
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4127
  call void @llvm.dbg.value(metadata i32 %2, metadata !4124, metadata !DIExpression()), !dbg !4126
  %3 = icmp slt i32 %2, 0, !dbg !4128
  br i1 %3, label %4, label %6, !dbg !4130

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4131
  br label %24, !dbg !4132

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4133
  %8 = icmp eq i32 %7, 0, !dbg !4133
  br i1 %8, label %13, label %9, !dbg !4135

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4136
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !4137
  %12 = icmp eq i64 %11, -1, !dbg !4138
  br i1 %12, label %16, label %13, !dbg !4139

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !4140
  %15 = icmp eq i32 %14, 0, !dbg !4140
  br i1 %15, label %16, label %18, !dbg !4141

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4123, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i32 0, metadata !4125, metadata !DIExpression()), !dbg !4126
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4142
  call void @llvm.dbg.value(metadata i32 %17, metadata !4125, metadata !DIExpression()), !dbg !4126
  br label %24, !dbg !4143

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !4144
  %20 = load i32, ptr %19, align 4, !dbg !4144, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %20, metadata !4123, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i32 0, metadata !4125, metadata !DIExpression()), !dbg !4126
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4142
  call void @llvm.dbg.value(metadata i32 %21, metadata !4125, metadata !DIExpression()), !dbg !4126
  %22 = icmp eq i32 %20, 0, !dbg !4145
  br i1 %22, label %24, label %23, !dbg !4143

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4147, !tbaa !971
  call void @llvm.dbg.value(metadata i32 -1, metadata !4125, metadata !DIExpression()), !dbg !4126
  br label %24, !dbg !4149

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4126
  ret i32 %25, !dbg !4150
}

; Function Attrs: nofree nounwind
declare !dbg !4151 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4152 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4153 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4154 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4192, metadata !DIExpression()), !dbg !4193
  %2 = icmp eq ptr %0, null, !dbg !4194
  br i1 %2, label %6, label %3, !dbg !4196

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4197
  %5 = icmp eq i32 %4, 0, !dbg !4197
  br i1 %5, label %6, label %8, !dbg !4198

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4199
  br label %16, !dbg !4200

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4206
  %9 = load i32, ptr %0, align 8, !dbg !4208, !tbaa !4063
  %10 = and i32 %9, 256, !dbg !4210
  %11 = icmp eq i32 %10, 0, !dbg !4210
  br i1 %11, label %14, label %12, !dbg !4211

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !4212
  br label %14, !dbg !4212

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4213
  br label %16, !dbg !4214

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4193
  ret i32 %17, !dbg !4215
}

; Function Attrs: nofree nounwind
declare !dbg !4216 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4217 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4255, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i32 %2, metadata !4257, metadata !DIExpression()), !dbg !4261
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4262
  %5 = load ptr, ptr %4, align 8, !dbg !4262, !tbaa !4263
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4264
  %7 = load ptr, ptr %6, align 8, !dbg !4264, !tbaa !4265
  %8 = icmp eq ptr %5, %7, !dbg !4266
  br i1 %8, label %9, label %27, !dbg !4267

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4268
  %11 = load ptr, ptr %10, align 8, !dbg !4268, !tbaa !1666
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4269
  %13 = load ptr, ptr %12, align 8, !dbg !4269, !tbaa !4270
  %14 = icmp eq ptr %11, %13, !dbg !4271
  br i1 %14, label %15, label %27, !dbg !4272

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4273
  %17 = load ptr, ptr %16, align 8, !dbg !4273, !tbaa !4274
  %18 = icmp eq ptr %17, null, !dbg !4275
  br i1 %18, label %19, label %27, !dbg !4276

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4277
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %21, metadata !4258, metadata !DIExpression()), !dbg !4279
  %22 = icmp eq i64 %21, -1, !dbg !4280
  br i1 %22, label %29, label %23, !dbg !4282

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4283, !tbaa !4063
  %25 = and i32 %24, -17, !dbg !4283
  store i32 %25, ptr %0, align 8, !dbg !4283, !tbaa !4063
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4284
  store i64 %21, ptr %26, align 8, !dbg !4285, !tbaa !4286
  br label %29, !dbg !4287

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4288
  br label %29, !dbg !4289

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4261
  ret i32 %30, !dbg !4290
}

; Function Attrs: nofree nounwind
declare !dbg !4291 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr %1, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %2, metadata !4301, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr %3, metadata !4302, metadata !DIExpression()), !dbg !4304
  %5 = icmp eq ptr %1, null, !dbg !4305
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4307
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4307
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4307
  call void @llvm.dbg.value(metadata i64 %8, metadata !4301, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr %7, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr %6, metadata !4299, metadata !DIExpression()), !dbg !4304
  %9 = icmp eq ptr %3, null, !dbg !4308
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4310
  call void @llvm.dbg.value(metadata ptr %10, metadata !4302, metadata !DIExpression()), !dbg !4304
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !4311
  call void @llvm.dbg.value(metadata i64 %11, metadata !4303, metadata !DIExpression()), !dbg !4304
  %12 = icmp ult i64 %11, -3, !dbg !4312
  br i1 %12, label %13, label %17, !dbg !4314

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !4315
  %15 = icmp eq i32 %14, 0, !dbg !4315
  br i1 %15, label %16, label %29, !dbg !4316

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4317, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr %10, metadata !4324, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i32 0, metadata !4327, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 8, metadata !4328, metadata !DIExpression()), !dbg !4329
  store i64 0, ptr %10, align 1, !dbg !4331
  br label %29, !dbg !4332

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4333
  br i1 %18, label %19, label %20, !dbg !4335

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4336
  unreachable, !dbg !4336

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4337

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4339
  br i1 %23, label %29, label %24, !dbg !4340

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4341
  br i1 %25, label %29, label %26, !dbg !4344

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4345, !tbaa !980
  %28 = zext i8 %27 to i32, !dbg !4346
  store i32 %28, ptr %6, align 4, !dbg !4347, !tbaa !971
  br label %29, !dbg !4348

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4304
  ret i64 %30, !dbg !4349
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4350 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4358, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %1, metadata !4359, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %2, metadata !4360, metadata !DIExpression()), !dbg !4362
  %4 = icmp eq i64 %2, 0, !dbg !4363
  br i1 %4, label %8, label %5, !dbg !4363

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4363
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4363
  br i1 %7, label %13, label %8, !dbg !4363

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4362
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4362
  %9 = mul i64 %2, %1, !dbg !4363
  call void @llvm.dbg.value(metadata i64 %9, metadata !4361, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr %0, metadata !4365, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %9, metadata !4368, metadata !DIExpression()), !dbg !4369
  %10 = icmp eq i64 %9, 0, !dbg !4371
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4371
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #43, !dbg !4372
  br label %15, !dbg !4373

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4362
  %14 = tail call ptr @__errno_location() #40, !dbg !4374
  store i32 12, ptr %14, align 4, !dbg !4376, !tbaa !971
  br label %15, !dbg !4377

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4362
  ret ptr %16, !dbg !4378
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4379 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4383, metadata !DIExpression()), !dbg !4388
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4389
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4384, metadata !DIExpression()), !dbg !4390
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4391
  %4 = icmp eq i32 %3, 0, !dbg !4391
  br i1 %4, label %5, label %12, !dbg !4393

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4394, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !4397, metadata !DIExpression()), !dbg !4398
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.162, i64 2), !dbg !4401
  %7 = icmp eq i32 %6, 0, !dbg !4402
  br i1 %7, label %11, label %8, !dbg !4403

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr @.str.1.163, metadata !4397, metadata !DIExpression()), !dbg !4404
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.163, i64 6), !dbg !4406
  %10 = icmp eq i32 %9, 0, !dbg !4407
  br i1 %10, label %11, label %12, !dbg !4408

11:                                               ; preds = %8, %5
  br label %12, !dbg !4409

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4388
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4410
  ret i1 %13, !dbg !4410
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4415, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %1, metadata !4416, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %2, metadata !4417, metadata !DIExpression()), !dbg !4418
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4419
  ret i32 %4, !dbg !4420
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4425, metadata !DIExpression()), !dbg !4426
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4427
  ret ptr %2, !dbg !4428
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4431, metadata !DIExpression()), !dbg !4433
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4434
  call void @llvm.dbg.value(metadata ptr %2, metadata !4432, metadata !DIExpression()), !dbg !4433
  ret ptr %2, !dbg !4435
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4438, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata ptr %1, metadata !4439, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 %2, metadata !4440, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 %0, metadata !4431, metadata !DIExpression()), !dbg !4446
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4448
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata ptr %4, metadata !4441, metadata !DIExpression()), !dbg !4445
  %5 = icmp eq ptr %4, null, !dbg !4449
  br i1 %5, label %6, label %9, !dbg !4450

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4451
  br i1 %7, label %19, label %8, !dbg !4454

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4455, !tbaa !980
  br label %19, !dbg !4456

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4457
  call void @llvm.dbg.value(metadata i64 %10, metadata !4442, metadata !DIExpression()), !dbg !4458
  %11 = icmp ult i64 %10, %2, !dbg !4459
  br i1 %11, label %12, label %14, !dbg !4461

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4462
  call void @llvm.dbg.value(metadata ptr %1, metadata !4464, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata ptr %4, metadata !4467, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %13, metadata !4468, metadata !DIExpression()), !dbg !4469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4471
  br label %19, !dbg !4472

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4473
  br i1 %15, label %19, label %16, !dbg !4476

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4477
  call void @llvm.dbg.value(metadata ptr %1, metadata !4464, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata ptr %4, metadata !4467, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %17, metadata !4468, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4481
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4482
  store i8 0, ptr %18, align 1, !dbg !4483, !tbaa !980
  br label %19, !dbg !4484

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4485
  ret i32 %20, !dbg !4486
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
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!76, !460, !464, !479, !759, !796, !532, !546, !597, !798, !751, !805, !839, !841, !860, !864, !866, !868, !870, !778, !872, !875, !877, !879}
!llvm.ident = !{!881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881, !881}
!llvm.module.flags = !{!882, !883, !884, !885, !886, !887, !888}

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
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !122, globals: !141, splitDebugInlining: false, nameTableKind: None)
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
!122 = !{!104, !123, !124, !129, !130, !131, !134, !136, !137, !128, !133, !138}
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !125, line: 63, baseType: !126)
!125 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !127, line: 152, baseType: !128)
!127 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!128 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 46, baseType: !133)
!132 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!136 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !139, line: 101, baseType: !140)
!139 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !127, line: 72, baseType: !128)
!141 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44, !49, !54, !59, !64, !69, !142, !147, !152, !157, !162, !167, !169, !171, !176, !178, !183, !185, !190, !192, !197, !199, !204, !209, !214, !216, !218, !220, !225, !304, !309, !311, !316, !321, !326, !328, !330, !335, !337, !339, !341, !343, !348, !350, !352, !354, !356, !358, !360, !362, !367, !369, !374, !376, !378, !380, !382, !387, !389, !394, !396, !398, !403, !405, !410, !412, !414, !416, !418, !420, !422, !74, !424, !426, !431, !436, !441}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 38)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 271, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 16)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 15)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 17)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 14)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !164, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !154, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 33)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !71, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 12)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !3, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 32)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !180, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 21)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !154, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 26)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 27)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 19)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "no_create", scope: !76, file: !2, line: 39, type: !137, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "block_mode", scope: !76, file: !2, line: 42, type: !137, isLocal: true, isDefinition: true)
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
!236 = !DILocalVariable(name: "double_space", scope: !227, file: !103, line: 594, type: !137)
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
!361 = distinct !DIGlobalVariable(scope: null, file: !103, line: 669, type: !159, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !103, line: 669, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 40)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !103, line: 676, type: !154, isLocal: true, isDefinition: true)
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
!388 = distinct !DIGlobalVariable(scope: null, file: !103, line: 839, type: !149, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !103, line: 840, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 22)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !103, line: 841, type: !154, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !103, line: 862, type: !313, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !103, line: 868, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 71)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !103, line: 875, type: !206, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !103, line: 877, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 51)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !103, line: 877, type: !180, isLocal: true, isDefinition: true)
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
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !149, isLocal: true, isDefinition: true)
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
!453 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!454 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !457, line: 3, type: !154, isLocal: true, isDefinition: true)
!457 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "Version", scope: !460, file: !457, line: 3, type: !134, isLocal: false, isDefinition: true)
!460 = distinct !DICompileUnit(language: DW_LANG_C11, file: !457, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !461, splitDebugInlining: false, nameTableKind: None)
!461 = !{!455, !458}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "file_name", scope: !464, file: !465, line: 45, type: !134, isLocal: true, isDefinition: true)
!464 = distinct !DICompileUnit(language: DW_LANG_C11, file: !465, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !466, splitDebugInlining: false, nameTableKind: None)
!465 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!466 = !{!467, !469, !471, !473, !462, !475}
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !465, line: 121, type: !71, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !465, line: 121, type: !180, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !465, line: 123, type: !71, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !465, line: 126, type: !332, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !464, file: !465, line: 55, type: !137, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !479, file: !480, line: 66, type: !527, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!481 = !{!130, !136}
!482 = !{!483, !485, !509, !511, !513, !515, !477, !517, !519, !521, !523, !525}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !480, line: 272, type: !306, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "old_file_name", scope: !487, file: !480, line: 304, type: !134, isLocal: true, isDefinition: true)
!487 = distinct !DISubprogram(name: "verror_at_line", scope: !480, file: !480, line: 298, type: !488, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !502)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !104, !104, !134, !79, !134, !490}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !492, line: 14, baseType: !493)
!492 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !494, baseType: !495)
!494 = !DIFile(filename: "lib/error.c", directory: "/src")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !496)
!496 = !{!497, !498, !499, !500, !501}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !495, file: !494, baseType: !130, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !495, file: !494, baseType: !130, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !495, file: !494, baseType: !130, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !495, file: !494, baseType: !104, size: 32, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !495, file: !494, baseType: !104, size: 32, offset: 224)
!502 = !{!503, !504, !505, !506, !507, !508}
!503 = !DILocalVariable(name: "status", arg: 1, scope: !487, file: !480, line: 298, type: !104)
!504 = !DILocalVariable(name: "errnum", arg: 2, scope: !487, file: !480, line: 298, type: !104)
!505 = !DILocalVariable(name: "file_name", arg: 3, scope: !487, file: !480, line: 298, type: !134)
!506 = !DILocalVariable(name: "line_number", arg: 4, scope: !487, file: !480, line: 298, type: !79)
!507 = !DILocalVariable(name: "message", arg: 5, scope: !487, file: !480, line: 298, type: !134)
!508 = !DILocalVariable(name: "args", arg: 6, scope: !487, file: !480, line: 298, type: !490)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "old_line_number", scope: !487, file: !480, line: 305, type: !79, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !480, line: 338, type: !313, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !345, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !323, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "error_message_count", scope: !479, file: !480, line: 69, type: !79, isLocal: false, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !479, file: !480, line: 295, type: !104, isLocal: false, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !71, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !194, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !480, line: 214, type: !306, isLocal: true, isDefinition: true)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null}
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "program_name", scope: !532, file: !533, line: 31, type: !134, isLocal: false, isDefinition: true)
!532 = distinct !DICompileUnit(language: DW_LANG_C11, file: !533, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !534, globals: !535, splitDebugInlining: false, nameTableKind: None)
!533 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!534 = !{!129}
!535 = !{!530, !536, !538}
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !533, line: 46, type: !345, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !533, line: 49, type: !313, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "utf07FF", scope: !542, file: !543, line: 46, type: !570, isLocal: true, isDefinition: true)
!542 = distinct !DISubprogram(name: "proper_name_lite", scope: !543, file: !543, line: 38, type: !544, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !548)
!543 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!544 = !DISubroutineType(types: !545)
!545 = !{!134, !134, !134}
!546 = distinct !DICompileUnit(language: DW_LANG_C11, file: !543, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !547, splitDebugInlining: false, nameTableKind: None)
!547 = !{!540}
!548 = !{!549, !550, !551, !552, !557}
!549 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !542, file: !543, line: 38, type: !134)
!550 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !542, file: !543, line: 38, type: !134)
!551 = !DILocalVariable(name: "translation", scope: !542, file: !543, line: 40, type: !134)
!552 = !DILocalVariable(name: "w", scope: !542, file: !543, line: 47, type: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !554, line: 37, baseType: !555)
!554 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !127, line: 57, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !127, line: 42, baseType: !79)
!557 = !DILocalVariable(name: "mbs", scope: !542, file: !543, line: 48, type: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !559, line: 6, baseType: !560)
!559 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !561, line: 21, baseType: !562)
!561 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 13, size: 64, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !562, file: !561, line: 15, baseType: !104, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !562, file: !561, line: 20, baseType: !566, size: 32, offset: 32)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !561, line: 16, size: 32, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !566, file: !561, line: 18, baseType: !79, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !566, file: !561, line: 19, baseType: !313, size: 32)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16, elements: !324)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !573, line: 78, type: !345, isLocal: true, isDefinition: true)
!573 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !573, line: 79, type: !318, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !573, line: 80, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 13)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !573, line: 81, type: !578, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !573, line: 82, type: !295, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !573, line: 83, type: !323, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !573, line: 84, type: !345, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !573, line: 85, type: !71, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !573, line: 86, type: !71, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !573, line: 87, type: !345, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !597, file: !573, line: 76, type: !669, isLocal: false, isDefinition: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C11, file: !573, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !598, retainedTypes: !604, globals: !605, splitDebugInlining: false, nameTableKind: None)
!598 = !{!108, !599, !87}
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !109, line: 254, baseType: !79, size: 32, elements: !600)
!600 = !{!601, !602, !603}
!601 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!602 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!603 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!604 = !{!104, !123, !131}
!605 = !{!571, !574, !576, !581, !583, !585, !587, !589, !591, !593, !595, !606, !610, !620, !622, !627, !629, !631, !633, !635, !658, !665, !667}
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !597, file: !573, line: 92, type: !608, isLocal: false, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 320, elements: !62)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !597, file: !573, line: 1040, type: !612, isLocal: false, isDefinition: true)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !573, line: 56, size: 448, elements: !613)
!613 = !{!614, !615, !616, !618, !619}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !612, file: !573, line: 59, baseType: !108, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !573, line: 62, baseType: !104, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !612, file: !573, line: 66, baseType: !617, size: 256, offset: 64)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !346)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !612, file: !573, line: 69, baseType: !134, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !612, file: !573, line: 72, baseType: !134, size: 64, offset: 384)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !597, file: !573, line: 107, type: !612, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "slot0", scope: !597, file: !573, line: 831, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 256)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !573, line: 321, type: !323, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !573, line: 357, type: !323, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !573, line: 358, type: !323, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !573, line: 199, type: !71, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "quote", scope: !637, file: !573, line: 228, type: !656, isLocal: true, isDefinition: true)
!637 = distinct !DISubprogram(name: "gettext_quote", scope: !573, file: !573, line: 197, type: !638, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!134, !134, !108}
!640 = !{!641, !642, !643, !644, !645}
!641 = !DILocalVariable(name: "msgid", arg: 1, scope: !637, file: !573, line: 197, type: !134)
!642 = !DILocalVariable(name: "s", arg: 2, scope: !637, file: !573, line: 197, type: !108)
!643 = !DILocalVariable(name: "translation", scope: !637, file: !573, line: 199, type: !134)
!644 = !DILocalVariable(name: "w", scope: !637, file: !573, line: 229, type: !553)
!645 = !DILocalVariable(name: "mbs", scope: !637, file: !573, line: 230, type: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !559, line: 6, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !561, line: 21, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 13, size: 64, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !648, file: !561, line: 15, baseType: !104, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !648, file: !561, line: 20, baseType: !652, size: 32, offset: 32)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !561, line: 16, size: 32, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !652, file: !561, line: 18, baseType: !79, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !652, file: !561, line: 19, baseType: !313, size: 32)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !657)
!657 = !{!325, !315}
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "slotvec", scope: !597, file: !573, line: 834, type: !660, isLocal: true, isDefinition: true)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !573, line: 823, size: 128, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !661, file: !573, line: 825, baseType: !131, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !661, file: !573, line: 826, baseType: !129, size: 64, offset: 64)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "nslots", scope: !597, file: !573, line: 832, type: !104, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "slotvec0", scope: !597, file: !573, line: 833, type: !661, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 704, elements: !671)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!671 = !{!672}
!672 = !DISubrange(count: 11)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !675, line: 67, type: !180, isLocal: true, isDefinition: true)
!675 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !675, line: 69, type: !71, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !675, line: 83, type: !71, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !675, line: 83, type: !313, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !675, line: 85, type: !323, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !675, line: 88, type: !686, isLocal: true, isDefinition: true)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 171)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !675, line: 88, type: !691, isLocal: true, isDefinition: true)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 34)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !675, line: 105, type: !149, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !675, line: 109, type: !698, isLocal: true, isDefinition: true)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 23)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !675, line: 113, type: !703, isLocal: true, isDefinition: true)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 28)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !675, line: 120, type: !187, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !675, line: 127, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 36)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !675, line: 134, type: !364, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !675, line: 142, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 44)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !675, line: 150, type: !722, isLocal: true, isDefinition: true)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 48)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !675, line: 159, type: !727, isLocal: true, isDefinition: true)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 52)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !675, line: 170, type: !732, isLocal: true, isDefinition: true)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 60)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !675, line: 248, type: !295, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !675, line: 248, type: !391, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !675, line: 254, type: !295, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !675, line: 254, type: !164, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !675, line: 254, type: !364, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !675, line: 259, type: !3, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !675, line: 259, type: !9, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !751, file: !752, line: 26, type: !754, isLocal: false, isDefinition: true)
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !753, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!753 = !{!749}
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 47)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "exit_failure", scope: !759, file: !760, line: 24, type: !762, isLocal: false, isDefinition: true)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !761, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!761 = !{!757}
!762 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !765, line: 34, type: !332, isLocal: true, isDefinition: true)
!765 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !765, line: 34, type: !71, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !765, line: 34, type: !159, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !772, line: 80, type: !71, isLocal: true, isDefinition: true)
!772 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !775, line: 108, type: !56, isLocal: true, isDefinition: true)
!775 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "internal_state", scope: !778, file: !775, line: 97, type: !781, isLocal: true, isDefinition: true)
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !779, globals: !780, splitDebugInlining: false, nameTableKind: None)
!779 = !{!130, !131, !136}
!780 = !{!773, !776}
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !559, line: 6, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !561, line: 21, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 13, size: 64, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !783, file: !561, line: 15, baseType: !104, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !783, file: !561, line: 20, baseType: !787, size: 32, offset: 32)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !561, line: 16, size: 32, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !787, file: !561, line: 18, baseType: !79, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !787, file: !561, line: 19, baseType: !313, size: 32)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !793, line: 35, type: !323, isLocal: true, isDefinition: true)
!793 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !793, line: 35, type: !318, isLocal: true, isDefinition: true)
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !799, retainedTypes: !803, globals: !804, splitDebugInlining: false, nameTableKind: None)
!799 = !{!800}
!800 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !675, line: 40, baseType: !79, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!803 = !{!130}
!804 = !{!673, !676, !678, !680, !682, !684, !689, !694, !696, !701, !706, !708, !713, !715, !720, !725, !730, !735, !737, !739, !741, !743, !745, !747}
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !807, retainedTypes: !838, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!807 = !{!808, !820}
!808 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !809, file: !806, line: 188, baseType: !79, size: 32, elements: !818)
!809 = distinct !DISubprogram(name: "x2nrealloc", scope: !806, file: !806, line: 176, type: !810, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !813)
!810 = !DISubroutineType(types: !811)
!811 = !{!130, !130, !812, !131}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!813 = !{!814, !815, !816, !817}
!814 = !DILocalVariable(name: "p", arg: 1, scope: !809, file: !806, line: 176, type: !130)
!815 = !DILocalVariable(name: "pn", arg: 2, scope: !809, file: !806, line: 176, type: !812)
!816 = !DILocalVariable(name: "s", arg: 3, scope: !809, file: !806, line: 176, type: !131)
!817 = !DILocalVariable(name: "n", scope: !809, file: !806, line: 178, type: !131)
!818 = !{!819}
!819 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!820 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !821, file: !806, line: 228, baseType: !79, size: 32, elements: !818)
!821 = distinct !DISubprogram(name: "xpalloc", scope: !806, file: !806, line: 223, type: !822, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !828)
!822 = !DISubroutineType(types: !823)
!823 = !{!130, !130, !824, !825, !827, !825}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !826, line: 130, baseType: !827)
!826 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !132, line: 35, baseType: !128)
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !837}
!829 = !DILocalVariable(name: "pa", arg: 1, scope: !821, file: !806, line: 223, type: !130)
!830 = !DILocalVariable(name: "pn", arg: 2, scope: !821, file: !806, line: 223, type: !824)
!831 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !821, file: !806, line: 223, type: !825)
!832 = !DILocalVariable(name: "n_max", arg: 4, scope: !821, file: !806, line: 223, type: !827)
!833 = !DILocalVariable(name: "s", arg: 5, scope: !821, file: !806, line: 223, type: !825)
!834 = !DILocalVariable(name: "n0", scope: !821, file: !806, line: 230, type: !825)
!835 = !DILocalVariable(name: "n", scope: !821, file: !806, line: 237, type: !825)
!836 = !DILocalVariable(name: "nbytes", scope: !821, file: !806, line: 248, type: !825)
!837 = !DILocalVariable(name: "adjusted_nbytes", scope: !821, file: !806, line: 252, type: !825)
!838 = !{!129, !130, !137, !128, !133}
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !840, splitDebugInlining: false, nameTableKind: None)
!840 = !{!763, !766, !768}
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !843, globals: !859, splitDebugInlining: false, nameTableKind: None)
!842 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!843 = !{!844, !852}
!844 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !845, line: 30, baseType: !79, size: 32, elements: !846)
!845 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!846 = !{!847, !848, !849, !850, !851}
!847 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!848 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!849 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!850 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!851 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!852 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !853, line: 24, baseType: !79, size: 32, elements: !854)
!853 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!854 = !{!855, !856, !857, !858}
!855 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!856 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!857 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!858 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!859 = !{!770}
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !862, retainedTypes: !863, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!862 = !{!844}
!863 = !{!137, !128, !133, !138}
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !865, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!865 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !803, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !803, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !874, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!874 = !{!137, !133, !130}
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !876, splitDebugInlining: false, nameTableKind: None)
!876 = !{!791, !794}
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!879 = distinct !DICompileUnit(language: DW_LANG_C11, file: !880, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !803, splitDebugInlining: false, nameTableKind: None)
!880 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!881 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!882 = !{i32 7, !"Dwarf Version", i32 5}
!883 = !{i32 2, !"Debug Info Version", i32 3}
!884 = !{i32 1, !"wchar_size", i32 4}
!885 = !{i32 8, !"PIC Level", i32 2}
!886 = !{i32 7, !"PIE Level", i32 2}
!887 = !{i32 7, !"uwtable", i32 2}
!888 = !{i32 7, !"frame-pointer", i32 1}
!889 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 62, type: !890, scopeLine: 63, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !104}
!892 = !{!893}
!893 = !DILocalVariable(name: "status", arg: 1, scope: !889, file: !2, line: 62, type: !104)
!894 = !DILocation(line: 0, scope: !889)
!895 = !DILocation(line: 64, column: 14, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !2, line: 64, column: 7)
!897 = !DILocation(line: 64, column: 7, scope: !889)
!898 = !DILocation(line: 65, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !2, line: 65, column: 5)
!900 = !{!901, !901, i64 0}
!901 = !{!"any pointer", !902, i64 0}
!902 = !{!"omnipotent char", !903, i64 0}
!903 = !{!"Simple C/C++ TBAA"}
!904 = !DILocation(line: 68, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !896, file: !2, line: 67, column: 5)
!906 = !DILocation(line: 69, column: 7, scope: !905)
!907 = !DILocation(line: 736, column: 3, scope: !908, inlinedAt: !910)
!908 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !103, file: !103, line: 734, type: !528, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !909)
!909 = !{}
!910 = distinct !DILocation(line: 79, column: 7, scope: !905)
!911 = !DILocation(line: 81, column: 7, scope: !905)
!912 = !DILocation(line: 84, column: 7, scope: !905)
!913 = !DILocation(line: 87, column: 7, scope: !905)
!914 = !DILocation(line: 90, column: 7, scope: !905)
!915 = !DILocation(line: 93, column: 7, scope: !905)
!916 = !DILocation(line: 94, column: 7, scope: !905)
!917 = !DILocation(line: 744, column: 3, scope: !918, inlinedAt: !919)
!918 = distinct !DISubprogram(name: "emit_size_note", scope: !103, file: !103, line: 742, type: !528, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !909)
!919 = distinct !DILocation(line: 95, column: 7, scope: !905)
!920 = !DILocation(line: 96, column: 7, scope: !905)
!921 = !DILocalVariable(name: "program", arg: 1, scope: !922, file: !103, line: 836, type: !134)
!922 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !103, file: !103, line: 836, type: !923, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !134}
!925 = !{!921, !926, !933, !934, !936, !937}
!926 = !DILocalVariable(name: "infomap", scope: !922, file: !103, line: 838, type: !927)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 896, elements: !72)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !922, file: !103, line: 838, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !929, file: !103, line: 838, baseType: !134, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !929, file: !103, line: 838, baseType: !134, size: 64, offset: 64)
!933 = !DILocalVariable(name: "node", scope: !922, file: !103, line: 848, type: !134)
!934 = !DILocalVariable(name: "map_prog", scope: !922, file: !103, line: 849, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!936 = !DILocalVariable(name: "lc_messages", scope: !922, file: !103, line: 861, type: !134)
!937 = !DILocalVariable(name: "url_program", scope: !922, file: !103, line: 874, type: !134)
!938 = !DILocation(line: 0, scope: !922, inlinedAt: !939)
!939 = distinct !DILocation(line: 100, column: 7, scope: !905)
!940 = !DILocation(line: 857, column: 3, scope: !922, inlinedAt: !939)
!941 = !DILocation(line: 861, column: 29, scope: !922, inlinedAt: !939)
!942 = !DILocation(line: 862, column: 7, scope: !943, inlinedAt: !939)
!943 = distinct !DILexicalBlock(scope: !922, file: !103, line: 862, column: 7)
!944 = !DILocation(line: 862, column: 19, scope: !943, inlinedAt: !939)
!945 = !DILocation(line: 862, column: 22, scope: !943, inlinedAt: !939)
!946 = !DILocation(line: 862, column: 7, scope: !922, inlinedAt: !939)
!947 = !DILocation(line: 868, column: 7, scope: !948, inlinedAt: !939)
!948 = distinct !DILexicalBlock(scope: !943, file: !103, line: 863, column: 5)
!949 = !DILocation(line: 870, column: 5, scope: !948, inlinedAt: !939)
!950 = !DILocation(line: 875, column: 3, scope: !922, inlinedAt: !939)
!951 = !DILocation(line: 877, column: 3, scope: !922, inlinedAt: !939)
!952 = !DILocation(line: 102, column: 3, scope: !889)
!953 = !DISubprogram(name: "dcgettext", scope: !954, file: !954, line: 51, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!954 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!955 = !DISubroutineType(types: !956)
!956 = !{!129, !134, !134, !104}
!957 = !DISubprogram(name: "__fprintf_chk", scope: !958, file: !958, line: 93, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!958 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!959 = !DISubroutineType(types: !960)
!960 = !{!104, !961, !104, !962, null}
!961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !249)
!962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!963 = !DISubprogram(name: "__printf_chk", scope: !958, file: !958, line: 95, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!964 = !DISubroutineType(types: !965)
!965 = !{!104, !104, !962, null}
!966 = !DISubprogram(name: "fputs_unlocked", scope: !125, file: !125, line: 691, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!967 = !DISubroutineType(types: !968)
!968 = !{!104, !962, !961}
!969 = !DILocation(line: 0, scope: !227)
!970 = !DILocation(line: 581, column: 7, scope: !235)
!971 = !{!972, !972, i64 0}
!972 = !{!"int", !902, i64 0}
!973 = !DILocation(line: 581, column: 19, scope: !235)
!974 = !DILocation(line: 581, column: 7, scope: !227)
!975 = !DILocation(line: 585, column: 26, scope: !234)
!976 = !DILocation(line: 0, scope: !234)
!977 = !DILocation(line: 586, column: 23, scope: !234)
!978 = !DILocation(line: 586, column: 28, scope: !234)
!979 = !DILocation(line: 586, column: 32, scope: !234)
!980 = !{!902, !902, i64 0}
!981 = !DILocation(line: 586, column: 38, scope: !234)
!982 = !DILocalVariable(name: "__s1", arg: 1, scope: !983, file: !984, line: 1359, type: !134)
!983 = distinct !DISubprogram(name: "streq", scope: !984, file: !984, line: 1359, type: !985, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !987)
!984 = !DIFile(filename: "./lib/string.h", directory: "/src")
!985 = !DISubroutineType(types: !986)
!986 = !{!137, !134, !134}
!987 = !{!982, !988}
!988 = !DILocalVariable(name: "__s2", arg: 2, scope: !983, file: !984, line: 1359, type: !134)
!989 = !DILocation(line: 0, scope: !983, inlinedAt: !990)
!990 = distinct !DILocation(line: 586, column: 41, scope: !234)
!991 = !DILocation(line: 1361, column: 11, scope: !983, inlinedAt: !990)
!992 = !DILocation(line: 1361, column: 10, scope: !983, inlinedAt: !990)
!993 = !DILocation(line: 586, column: 19, scope: !234)
!994 = !DILocation(line: 587, column: 5, scope: !234)
!995 = !DILocation(line: 588, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !227, file: !103, line: 588, column: 7)
!997 = !DILocation(line: 588, column: 7, scope: !227)
!998 = !DILocation(line: 590, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !103, line: 589, column: 5)
!1000 = !DILocation(line: 591, column: 7, scope: !999)
!1001 = !DILocation(line: 595, column: 37, scope: !227)
!1002 = !DILocation(line: 595, column: 35, scope: !227)
!1003 = !DILocation(line: 596, column: 29, scope: !227)
!1004 = !DILocation(line: 597, column: 8, scope: !242)
!1005 = !DILocation(line: 597, column: 7, scope: !227)
!1006 = !DILocation(line: 604, column: 24, scope: !241)
!1007 = !DILocation(line: 604, column: 12, scope: !242)
!1008 = !DILocation(line: 0, scope: !240)
!1009 = !DILocation(line: 610, column: 16, scope: !240)
!1010 = !DILocation(line: 610, column: 7, scope: !240)
!1011 = !DILocation(line: 611, column: 21, scope: !240)
!1012 = !{!1013, !1013, i64 0}
!1013 = !{!"short", !902, i64 0}
!1014 = !DILocation(line: 611, column: 19, scope: !240)
!1015 = !DILocation(line: 611, column: 16, scope: !240)
!1016 = !DILocation(line: 610, column: 30, scope: !240)
!1017 = distinct !{!1017, !1010, !1011, !1018}
!1018 = !{!"llvm.loop.mustprogress"}
!1019 = !DILocation(line: 612, column: 18, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !240, file: !103, line: 612, column: 11)
!1021 = !DILocation(line: 612, column: 11, scope: !240)
!1022 = !DILocation(line: 620, column: 23, scope: !227)
!1023 = !DILocation(line: 625, column: 39, scope: !227)
!1024 = !DILocation(line: 626, column: 3, scope: !227)
!1025 = !DILocation(line: 626, column: 10, scope: !227)
!1026 = !DILocation(line: 626, column: 21, scope: !227)
!1027 = !DILocation(line: 628, column: 44, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !103, line: 628, column: 11)
!1029 = distinct !DILexicalBlock(scope: !227, file: !103, line: 627, column: 5)
!1030 = !DILocation(line: 628, column: 32, scope: !1028)
!1031 = !DILocation(line: 628, column: 49, scope: !1028)
!1032 = !DILocation(line: 628, column: 11, scope: !1029)
!1033 = !DILocation(line: 630, column: 11, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !103, line: 630, column: 11)
!1035 = !DILocation(line: 630, column: 11, scope: !1029)
!1036 = !DILocation(line: 632, column: 26, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !103, line: 632, column: 15)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !103, line: 631, column: 9)
!1039 = !DILocation(line: 632, column: 34, scope: !1037)
!1040 = !DILocation(line: 632, column: 37, scope: !1037)
!1041 = !DILocation(line: 632, column: 15, scope: !1038)
!1042 = !DILocation(line: 640, column: 16, scope: !1029)
!1043 = distinct !{!1043, !1024, !1044, !1018}
!1044 = !DILocation(line: 641, column: 5, scope: !227)
!1045 = !DILocation(line: 644, column: 3, scope: !227)
!1046 = !DILocation(line: 0, scope: !983, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 648, column: 31, scope: !227)
!1048 = !DILocation(line: 0, scope: !983, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 649, column: 31, scope: !227)
!1050 = !DILocation(line: 0, scope: !983, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 650, column: 31, scope: !227)
!1052 = !DILocation(line: 0, scope: !983, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 651, column: 31, scope: !227)
!1054 = !DILocation(line: 0, scope: !983, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 652, column: 31, scope: !227)
!1056 = !DILocation(line: 0, scope: !983, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 653, column: 31, scope: !227)
!1058 = !DILocation(line: 0, scope: !983, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 654, column: 31, scope: !227)
!1060 = !DILocation(line: 0, scope: !983, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 655, column: 31, scope: !227)
!1062 = !DILocation(line: 0, scope: !983, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 656, column: 31, scope: !227)
!1064 = !DILocation(line: 0, scope: !983, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 657, column: 31, scope: !227)
!1066 = !DILocation(line: 663, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !227, file: !103, line: 663, column: 7)
!1068 = !DILocation(line: 664, column: 7, scope: !1067)
!1069 = !DILocation(line: 664, column: 10, scope: !1067)
!1070 = !DILocation(line: 663, column: 7, scope: !227)
!1071 = !DILocation(line: 669, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !103, line: 665, column: 5)
!1073 = !DILocation(line: 671, column: 5, scope: !1072)
!1074 = !DILocation(line: 676, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1067, file: !103, line: 673, column: 5)
!1076 = !DILocation(line: 679, column: 3, scope: !227)
!1077 = !DILocation(line: 683, column: 3, scope: !227)
!1078 = !DILocation(line: 686, column: 3, scope: !227)
!1079 = !DILocation(line: 688, column: 3, scope: !227)
!1080 = !DILocation(line: 691, column: 3, scope: !227)
!1081 = !DILocation(line: 695, column: 3, scope: !227)
!1082 = !DILocation(line: 696, column: 1, scope: !227)
!1083 = !DISubprogram(name: "setlocale", scope: !1084, file: !1084, line: 122, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1084 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!129, !104, !134}
!1087 = !DISubprogram(name: "strncmp", scope: !1088, file: !1088, line: 159, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1088 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!104, !134, !134, !131}
!1091 = !DISubprogram(name: "exit", scope: !1092, file: !1092, line: 624, type: !890, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1092 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1093 = !DISubprogram(name: "getenv", scope: !1092, file: !1092, line: 641, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!129, !134}
!1096 = !DISubprogram(name: "strcmp", scope: !1088, file: !1088, line: 156, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!104, !134, !134}
!1099 = !DISubprogram(name: "strspn", scope: !1088, file: !1088, line: 297, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!133, !134, !134}
!1102 = !DISubprogram(name: "strchr", scope: !1088, file: !1088, line: 246, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!129, !134, !104}
!1105 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1111 = !DISubprogram(name: "strcspn", scope: !1088, file: !1088, line: 293, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1112 = !DISubprogram(name: "fwrite_unlocked", scope: !125, file: !125, line: 704, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!131, !1115, !131, !131, !961}
!1115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1118 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 201, type: !1119, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1122)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!104, !104, !1121}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1130, !1131, !1169, !1170, !1173, !1176, !1177, !1178, !1179, !1181}
!1123 = !DILocalVariable(name: "argc", arg: 1, scope: !1118, file: !2, line: 201, type: !104)
!1124 = !DILocalVariable(name: "argv", arg: 2, scope: !1118, file: !2, line: 201, type: !1121)
!1125 = !DILocalVariable(name: "got_size", scope: !1118, file: !2, line: 203, type: !137)
!1126 = !DILocalVariable(name: "size", scope: !1118, file: !2, line: 204, type: !124)
!1127 = !DILocalVariable(name: "rsize", scope: !1118, file: !2, line: 205, type: !124)
!1128 = !DILocalVariable(name: "rel_mode", scope: !1118, file: !2, line: 206, type: !1129)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !2, line: 59, baseType: !78)
!1130 = !DILocalVariable(name: "c", scope: !1118, file: !2, line: 207, type: !104)
!1131 = !DILocalVariable(name: "sb", scope: !1132, file: !2, line: 321, type: !1134)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 320, column: 5)
!1133 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 319, column: 7)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1135, line: 44, size: 1024, elements: !1136)
!1135 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1136 = !{!1137, !1139, !1141, !1143, !1145, !1147, !1149, !1150, !1151, !1152, !1154, !1155, !1157, !1165, !1166, !1167}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1134, file: !1135, line: 46, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !127, line: 145, baseType: !133)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1134, file: !1135, line: 47, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !127, line: 148, baseType: !133)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1134, file: !1135, line: 48, baseType: !1142, size: 32, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !127, line: 150, baseType: !79)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1134, file: !1135, line: 49, baseType: !1144, size: 32, offset: 160)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !127, line: 151, baseType: !79)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1134, file: !1135, line: 50, baseType: !1146, size: 32, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !127, line: 146, baseType: !79)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1134, file: !1135, line: 51, baseType: !1148, size: 32, offset: 224)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !127, line: 147, baseType: !79)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1134, file: !1135, line: 52, baseType: !1138, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1134, file: !1135, line: 53, baseType: !1138, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1134, file: !1135, line: 54, baseType: !126, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1134, file: !1135, line: 55, baseType: !1153, size: 32, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !127, line: 175, baseType: !104)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1134, file: !1135, line: 56, baseType: !104, size: 32, offset: 480)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1134, file: !1135, line: 57, baseType: !1156, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !127, line: 180, baseType: !128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1134, file: !1135, line: 65, baseType: !1158, size: 128, offset: 576)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1159, line: 11, size: 128, elements: !1160)
!1159 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1160 = !{!1161, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1158, file: !1159, line: 16, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !127, line: 160, baseType: !128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1158, file: !1159, line: 21, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !127, line: 197, baseType: !128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1134, file: !1135, line: 66, baseType: !1158, size: 128, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1134, file: !1135, line: 67, baseType: !1158, size: 128, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1134, file: !1135, line: 79, baseType: !1168, size: 64, offset: 960)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !324)
!1169 = !DILocalVariable(name: "file_size", scope: !1132, file: !2, line: 322, type: !124)
!1170 = !DILocalVariable(name: "ref_fd", scope: !1171, file: !2, line: 329, type: !104)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 328, column: 9)
!1172 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 325, column: 11)
!1173 = !DILocalVariable(name: "file_end", scope: !1174, file: !2, line: 332, type: !124)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 331, column: 13)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 330, column: 15)
!1176 = !DILocalVariable(name: "saved_errno", scope: !1174, file: !2, line: 333, type: !104)
!1177 = !DILocalVariable(name: "oflags", scope: !1118, file: !2, line: 353, type: !104)
!1178 = !DILocalVariable(name: "errors", scope: !1118, file: !2, line: 354, type: !137)
!1179 = !DILocalVariable(name: "fname", scope: !1180, file: !2, line: 356, type: !134)
!1180 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 356, column: 3)
!1181 = !DILocalVariable(name: "fd", scope: !1182, file: !2, line: 358, type: !104)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 357, column: 5)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 356, column: 3)
!1184 = !DILocation(line: 0, scope: !1118)
!1185 = !DILocation(line: 210, column: 21, scope: !1118)
!1186 = !DILocation(line: 210, column: 3, scope: !1118)
!1187 = !DILocation(line: 211, column: 3, scope: !1118)
!1188 = !DILocation(line: 212, column: 3, scope: !1118)
!1189 = !DILocation(line: 213, column: 3, scope: !1118)
!1190 = !DILocation(line: 215, column: 3, scope: !1118)
!1191 = !DILocation(line: 217, column: 3, scope: !1118)
!1192 = !DILocation(line: 217, column: 15, scope: !1118)
!1193 = !DILocation(line: 235, column: 18, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 220, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 218, column: 5)
!1196 = !DILocation(line: 235, column: 11, scope: !1194)
!1197 = !DILocation(line: 222, column: 21, scope: !1194)
!1198 = !DILocation(line: 223, column: 11, scope: !1194)
!1199 = !DILocation(line: 226, column: 22, scope: !1194)
!1200 = !DILocation(line: 227, column: 11, scope: !1194)
!1201 = !DILocation(line: 230, column: 22, scope: !1194)
!1202 = !DILocation(line: 230, column: 20, scope: !1194)
!1203 = !DILocation(line: 231, column: 11, scope: !1194)
!1204 = distinct !{!1204, !1191, !1205, !1018}
!1205 = !DILocation(line: 286, column: 5, scope: !1118)
!1206 = !DILocation(line: 236, column: 19, scope: !1194)
!1207 = distinct !{!1207, !1196, !1206, !1018}
!1208 = !DILocation(line: 237, column: 11, scope: !1194)
!1209 = !DILocation(line: 246, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 238, column: 13)
!1211 = !DILocation(line: 250, column: 15, scope: !1210)
!1212 = !DILocation(line: 254, column: 15, scope: !1210)
!1213 = !DILocation(line: 0, scope: !1210)
!1214 = !DILocation(line: 257, column: 18, scope: !1194)
!1215 = !DILocation(line: 257, column: 11, scope: !1194)
!1216 = !DILocation(line: 258, column: 19, scope: !1194)
!1217 = distinct !{!1217, !1215, !1216, !1018}
!1218 = !DILocation(line: 259, column: 30, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 259, column: 15)
!1220 = !DILocation(line: 261, column: 19, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 261, column: 19)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 260, column: 13)
!1223 = !DILocation(line: 261, column: 19, scope: !1222)
!1224 = !DILocation(line: 263, column: 19, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 262, column: 17)
!1226 = !DILocation(line: 265, column: 19, scope: !1225)
!1227 = !DILocation(line: 272, column: 30, scope: !1194)
!1228 = !DILocation(line: 271, column: 18, scope: !1194)
!1229 = !DILocation(line: 274, column: 35, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 274, column: 15)
!1231 = !DILocation(line: 275, column: 13, scope: !1230)
!1232 = !DILocation(line: 279, column: 9, scope: !1194)
!1233 = !DILocation(line: 281, column: 9, scope: !1194)
!1234 = !DILocation(line: 284, column: 11, scope: !1194)
!1235 = !DILocation(line: 288, column: 11, scope: !1118)
!1236 = !DILocation(line: 288, column: 8, scope: !1118)
!1237 = !DILocation(line: 292, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 292, column: 7)
!1239 = !DILocation(line: 292, column: 17, scope: !1238)
!1240 = !DILocation(line: 294, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 293, column: 5)
!1242 = !DILocation(line: 296, column: 7, scope: !1241)
!1243 = !DILocation(line: 299, column: 16, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 299, column: 7)
!1245 = !DILocation(line: 301, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 300, column: 5)
!1247 = !DILocation(line: 303, column: 7, scope: !1246)
!1248 = !DILocation(line: 306, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 306, column: 7)
!1250 = !DILocation(line: 306, column: 18, scope: !1249)
!1251 = !DILocation(line: 308, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 307, column: 5)
!1253 = !DILocation(line: 310, column: 7, scope: !1252)
!1254 = !DILocation(line: 313, column: 12, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 313, column: 7)
!1256 = !DILocation(line: 313, column: 7, scope: !1118)
!1257 = !DILocation(line: 315, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 314, column: 5)
!1259 = !DILocation(line: 316, column: 7, scope: !1258)
!1260 = !DILocation(line: 319, column: 7, scope: !1118)
!1261 = !DILocation(line: 321, column: 7, scope: !1132)
!1262 = !DILocation(line: 321, column: 19, scope: !1132)
!1263 = !DILocation(line: 0, scope: !1132)
!1264 = !DILocation(line: 323, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 323, column: 11)
!1266 = !DILocation(line: 323, column: 32, scope: !1265)
!1267 = !DILocation(line: 323, column: 11, scope: !1132)
!1268 = !DILocation(line: 324, column: 9, scope: !1265)
!1269 = !DILocalVariable(name: "sb", arg: 1, scope: !1270, file: !103, line: 911, type: !1273)
!1270 = distinct !DISubprogram(name: "usable_st_size", scope: !103, file: !103, line: 911, type: !1271, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1275)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!137, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1134)
!1275 = !{!1269}
!1276 = !DILocation(line: 0, scope: !1270, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 325, column: 11, scope: !1172)
!1278 = !DILocation(line: 913, column: 11, scope: !1270, inlinedAt: !1277)
!1279 = !{!1280, !972, i64 16}
!1280 = !{!"stat", !1281, i64 0, !1281, i64 8, !972, i64 16, !972, i64 20, !972, i64 24, !972, i64 28, !1281, i64 32, !1281, i64 40, !1281, i64 48, !972, i64 56, !972, i64 60, !1281, i64 64, !1282, i64 72, !1282, i64 88, !1282, i64 104, !902, i64 120}
!1281 = !{!"long", !902, i64 0}
!1282 = !{!"timespec", !1281, i64 0, !1281, i64 8}
!1283 = !DILocation(line: 913, column: 33, scope: !1270, inlinedAt: !1277)
!1284 = !DILocation(line: 325, column: 11, scope: !1132)
!1285 = !DILocation(line: 329, column: 30, scope: !1171)
!1286 = !DILocation(line: 329, column: 24, scope: !1171)
!1287 = !DILocation(line: 0, scope: !1171)
!1288 = !DILocation(line: 330, column: 17, scope: !1175)
!1289 = !DILocation(line: 330, column: 15, scope: !1171)
!1290 = !DILocation(line: 332, column: 32, scope: !1174)
!1291 = !DILocation(line: 0, scope: !1174)
!1292 = !DILocation(line: 333, column: 33, scope: !1174)
!1293 = !DILocation(line: 334, column: 15, scope: !1174)
!1294 = !DILocation(line: 335, column: 21, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 335, column: 19)
!1296 = !DILocation(line: 335, column: 19, scope: !1174)
!1297 = !DILocation(line: 340, column: 25, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 338, column: 17)
!1299 = !DILocation(line: 326, column: 24, scope: !1172)
!1300 = !{!1280, !1281, i64 48}
!1301 = !DILocation(line: 344, column: 21, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 344, column: 11)
!1303 = !DILocation(line: 344, column: 11, scope: !1132)
!1304 = !DILocation(line: 345, column: 9, scope: !1302)
!1305 = !DILocation(line: 351, column: 5, scope: !1133)
!1306 = !DILocation(line: 351, column: 5, scope: !1132)
!1307 = !DILocation(line: 353, column: 28, scope: !1118)
!1308 = !DILocation(line: 353, column: 53, scope: !1118)
!1309 = !DILocation(line: 356, column: 36, scope: !1183)
!1310 = !DILocation(line: 0, scope: !1180)
!1311 = !DILocation(line: 356, column: 3, scope: !1180)
!1312 = !DILocation(line: 383, column: 10, scope: !1118)
!1313 = !DILocation(line: 383, column: 3, scope: !1118)
!1314 = !DILocation(line: 358, column: 16, scope: !1182)
!1315 = !DILocation(line: 0, scope: !1182)
!1316 = !DILocation(line: 359, column: 14, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 359, column: 11)
!1318 = !DILocation(line: 359, column: 11, scope: !1182)
!1319 = !DILocation(line: 365, column: 17, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 365, column: 15)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 360, column: 9)
!1322 = !DILocation(line: 0, scope: !1320)
!1323 = !DILocation(line: 365, column: 27, scope: !1320)
!1324 = !DILocation(line: 365, column: 30, scope: !1320)
!1325 = !DILocation(line: 365, column: 36, scope: !1320)
!1326 = !DILocation(line: 365, column: 15, scope: !1321)
!1327 = !DILocalVariable(name: "fd", arg: 1, scope: !1328, file: !2, line: 107, type: !104)
!1328 = distinct !DISubprogram(name: "do_ftruncate", scope: !2, file: !2, line: 107, type: !1329, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1331)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!137, !104, !134, !124, !124, !1129}
!1331 = !{!1327, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1341, !1342, !1345}
!1332 = !DILocalVariable(name: "fname", arg: 2, scope: !1328, file: !2, line: 107, type: !134)
!1333 = !DILocalVariable(name: "ssize", arg: 3, scope: !1328, file: !2, line: 107, type: !124)
!1334 = !DILocalVariable(name: "rsize", arg: 4, scope: !1328, file: !2, line: 107, type: !124)
!1335 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !1328, file: !2, line: 108, type: !1129)
!1336 = !DILocalVariable(name: "sb", scope: !1328, file: !2, line: 110, type: !1134)
!1337 = !DILocalVariable(name: "nsize", scope: !1328, file: !2, line: 111, type: !124)
!1338 = !DILocalVariable(name: "blksize", scope: !1339, file: !2, line: 120, type: !827)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 119, column: 5)
!1340 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 118, column: 7)
!1341 = !DILocalVariable(name: "ssize0", scope: !1339, file: !2, line: 121, type: !138)
!1342 = !DILocalVariable(name: "fsize", scope: !1343, file: !2, line: 132, type: !124)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 131, column: 5)
!1344 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 130, column: 7)
!1345 = !DILocalVariable(name: "r", scope: !1346, file: !2, line: 174, type: !124)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 172, column: 13)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 171, column: 15)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 170, column: 9)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 166, column: 16)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 164, column: 16)
!1351 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 162, column: 11)
!1352 = !DILocation(line: 0, scope: !1328, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 374, column: 22, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 373, column: 9)
!1355 = !DILocation(line: 110, column: 3, scope: !1328, inlinedAt: !1353)
!1356 = !DILocation(line: 110, column: 15, scope: !1328, inlinedAt: !1353)
!1357 = !DILocation(line: 113, column: 8, scope: !1358, inlinedAt: !1353)
!1358 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 113, column: 7)
!1359 = !DILocation(line: 113, column: 19, scope: !1358, inlinedAt: !1353)
!1360 = !DILocation(line: 113, column: 50, scope: !1358, inlinedAt: !1353)
!1361 = !DILocation(line: 113, column: 66, scope: !1358, inlinedAt: !1353)
!1362 = !DILocation(line: 113, column: 7, scope: !1328, inlinedAt: !1353)
!1363 = !DILocation(line: 115, column: 7, scope: !1364, inlinedAt: !1353)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 114, column: 5)
!1365 = !DILocation(line: 116, column: 7, scope: !1364, inlinedAt: !1353)
!1366 = !DILocation(line: 118, column: 7, scope: !1340, inlinedAt: !1353)
!1367 = !DILocation(line: 118, column: 7, scope: !1328, inlinedAt: !1353)
!1368 = !DILocation(line: 120, column: 27, scope: !1339, inlinedAt: !1353)
!1369 = !{!1280, !972, i64 56}
!1370 = !DILocation(line: 0, scope: !1339, inlinedAt: !1353)
!1371 = !DILocation(line: 122, column: 11, scope: !1372, inlinedAt: !1353)
!1372 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 122, column: 11)
!1373 = !DILocation(line: 122, column: 11, scope: !1339, inlinedAt: !1353)
!1374 = !DILocation(line: 124, column: 11, scope: !1375, inlinedAt: !1353)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 123, column: 9)
!1376 = !DILocation(line: 130, column: 7, scope: !1328, inlinedAt: !1353)
!1377 = !DILocation(line: 134, column: 11, scope: !1343, inlinedAt: !1353)
!1378 = !DILocation(line: 0, scope: !1270, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 138, column: 15, scope: !1380, inlinedAt: !1353)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 138, column: 15)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 137, column: 9)
!1382 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 134, column: 11)
!1383 = !DILocation(line: 913, column: 11, scope: !1270, inlinedAt: !1379)
!1384 = !DILocation(line: 913, column: 33, scope: !1270, inlinedAt: !1379)
!1385 = !DILocation(line: 138, column: 15, scope: !1381, inlinedAt: !1353)
!1386 = !DILocation(line: 140, column: 26, scope: !1387, inlinedAt: !1353)
!1387 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 139, column: 13)
!1388 = !DILocation(line: 0, scope: !1343, inlinedAt: !1353)
!1389 = !DILocation(line: 141, column: 25, scope: !1390, inlinedAt: !1353)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 141, column: 19)
!1391 = !DILocation(line: 141, column: 19, scope: !1387, inlinedAt: !1353)
!1392 = !DILocation(line: 145, column: 19, scope: !1393, inlinedAt: !1353)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 142, column: 17)
!1394 = !DILocation(line: 147, column: 19, scope: !1393, inlinedAt: !1353)
!1395 = !DILocation(line: 152, column: 23, scope: !1396, inlinedAt: !1353)
!1396 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 151, column: 13)
!1397 = !DILocation(line: 153, column: 25, scope: !1398, inlinedAt: !1353)
!1398 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 153, column: 19)
!1399 = !DILocation(line: 153, column: 19, scope: !1396, inlinedAt: !1353)
!1400 = !DILocation(line: 155, column: 19, scope: !1401, inlinedAt: !1353)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 154, column: 17)
!1402 = !DILocation(line: 157, column: 19, scope: !1401, inlinedAt: !1353)
!1403 = !DILocation(line: 0, scope: !1382, inlinedAt: !1353)
!1404 = !DILocation(line: 162, column: 11, scope: !1343, inlinedAt: !1353)
!1405 = !DILocation(line: 163, column: 17, scope: !1351, inlinedAt: !1353)
!1406 = !DILocation(line: 163, column: 9, scope: !1351, inlinedAt: !1353)
!1407 = !DILocation(line: 165, column: 17, scope: !1350, inlinedAt: !1353)
!1408 = !DILocation(line: 165, column: 9, scope: !1350, inlinedAt: !1353)
!1409 = !DILocation(line: 168, column: 31, scope: !1349, inlinedAt: !1353)
!1410 = !DILocation(line: 168, column: 23, scope: !1349, inlinedAt: !1353)
!1411 = !DILocation(line: 168, column: 9, scope: !1349, inlinedAt: !1353)
!1412 = !DILocation(line: 174, column: 31, scope: !1346, inlinedAt: !1353)
!1413 = !DILocation(line: 0, scope: !1346, inlinedAt: !1353)
!1414 = !DILocation(line: 175, column: 25, scope: !1346, inlinedAt: !1353)
!1415 = !DILocation(line: 175, column: 23, scope: !1346, inlinedAt: !1353)
!1416 = !DILocation(line: 176, column: 13, scope: !1346, inlinedAt: !1353)
!1417 = !DILocation(line: 177, column: 15, scope: !1418, inlinedAt: !1353)
!1418 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 177, column: 15)
!1419 = !DILocation(line: 177, column: 15, scope: !1348, inlinedAt: !1353)
!1420 = !DILocation(line: 179, column: 15, scope: !1421, inlinedAt: !1353)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 178, column: 13)
!1422 = !DILocation(line: 181, column: 15, scope: !1421, inlinedAt: !1353)
!1423 = !DILocation(line: 0, scope: !1344, inlinedAt: !1353)
!1424 = !DILocation(line: 187, column: 7, scope: !1328, inlinedAt: !1353)
!1425 = !DILocation(line: 190, column: 7, scope: !1426, inlinedAt: !1353)
!1426 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 190, column: 7)
!1427 = !DILocation(line: 190, column: 29, scope: !1426, inlinedAt: !1353)
!1428 = !DILocation(line: 190, column: 7, scope: !1328, inlinedAt: !1353)
!1429 = !DILocation(line: 192, column: 7, scope: !1430, inlinedAt: !1353)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 191, column: 5)
!1431 = !DILocation(line: 194, column: 7, scope: !1430, inlinedAt: !1353)
!1432 = !DILocation(line: 198, column: 1, scope: !1328, inlinedAt: !1353)
!1433 = !DILocation(line: 374, column: 18, scope: !1354)
!1434 = !DILocation(line: 375, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 375, column: 15)
!1436 = !DILocation(line: 375, column: 26, scope: !1435)
!1437 = !DILocation(line: 375, column: 15, scope: !1354)
!1438 = !DILocation(line: 377, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 376, column: 13)
!1440 = !DILocation(line: 379, column: 13, scope: !1439)
!1441 = !DILocation(line: 0, scope: !1317)
!1442 = !DILocation(line: 356, column: 48, scope: !1183)
!1443 = distinct !{!1443, !1311, !1444, !1018}
!1444 = !DILocation(line: 381, column: 5, scope: !1180)
!1445 = !DISubprogram(name: "bindtextdomain", scope: !954, file: !954, line: 86, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!129, !134, !134}
!1448 = !DISubprogram(name: "textdomain", scope: !954, file: !954, line: 82, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1449 = !DISubprogram(name: "atexit", scope: !1092, file: !1092, line: 602, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!104, !527}
!1452 = !DISubprogram(name: "getopt_long", scope: !446, file: !446, line: 66, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!104, !104, !1455, !134, !1457, !451}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1458 = !DISubprogram(name: "stat", scope: !1459, file: !1459, line: 205, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1459 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!104, !962, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1464 = !DISubprogram(name: "__errno_location", scope: !1465, file: !1465, line: 37, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1465 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!451}
!1468 = !DISubprogram(name: "open", scope: !1469, file: !1469, line: 181, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1469 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!104, !134, !104, null}
!1472 = !DISubprogram(name: "lseek", scope: !1473, file: !1473, line: 339, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1473 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!126, !104, !126, !104}
!1476 = !DISubprogram(name: "close", scope: !1473, file: !1473, line: 358, type: !1477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!104, !104}
!1479 = !DISubprogram(name: "fstat", scope: !1459, file: !1459, line: 210, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!104, !104, !1463}
!1482 = !DISubprogram(name: "ftruncate", scope: !1473, file: !1473, line: 1049, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!104, !104, !126}
!1485 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !465, file: !465, line: 50, type: !923, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1486)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "file", arg: 1, scope: !1485, file: !465, line: 50, type: !134)
!1488 = !DILocation(line: 0, scope: !1485)
!1489 = !DILocation(line: 52, column: 13, scope: !1485)
!1490 = !DILocation(line: 53, column: 1, scope: !1485)
!1491 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !465, file: !465, line: 87, type: !1492, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !137}
!1494 = !{!1495}
!1495 = !DILocalVariable(name: "ignore", arg: 1, scope: !1491, file: !465, line: 87, type: !137)
!1496 = !DILocation(line: 0, scope: !1491)
!1497 = !DILocation(line: 89, column: 16, scope: !1491)
!1498 = !{!1499, !1499, i64 0}
!1499 = !{!"_Bool", !902, i64 0}
!1500 = !DILocation(line: 90, column: 1, scope: !1491)
!1501 = distinct !DISubprogram(name: "close_stdout", scope: !465, file: !465, line: 116, type: !528, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1502)
!1502 = !{!1503}
!1503 = !DILocalVariable(name: "write_error", scope: !1504, file: !465, line: 121, type: !134)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !465, line: 120, column: 5)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !465, line: 118, column: 7)
!1506 = !DILocation(line: 118, column: 21, scope: !1505)
!1507 = !DILocation(line: 118, column: 7, scope: !1505)
!1508 = !DILocation(line: 118, column: 29, scope: !1505)
!1509 = !DILocation(line: 119, column: 7, scope: !1505)
!1510 = !DILocation(line: 119, column: 12, scope: !1505)
!1511 = !{i8 0, i8 2}
!1512 = !DILocation(line: 119, column: 25, scope: !1505)
!1513 = !DILocation(line: 119, column: 28, scope: !1505)
!1514 = !DILocation(line: 119, column: 34, scope: !1505)
!1515 = !DILocation(line: 118, column: 7, scope: !1501)
!1516 = !DILocation(line: 121, column: 33, scope: !1504)
!1517 = !DILocation(line: 0, scope: !1504)
!1518 = !DILocation(line: 122, column: 11, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1504, file: !465, line: 122, column: 11)
!1520 = !DILocation(line: 0, scope: !1519)
!1521 = !DILocation(line: 122, column: 11, scope: !1504)
!1522 = !DILocation(line: 123, column: 9, scope: !1519)
!1523 = !DILocation(line: 126, column: 9, scope: !1519)
!1524 = !DILocation(line: 128, column: 14, scope: !1504)
!1525 = !DILocation(line: 128, column: 7, scope: !1504)
!1526 = !DILocation(line: 133, column: 42, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1501, file: !465, line: 133, column: 7)
!1528 = !DILocation(line: 133, column: 28, scope: !1527)
!1529 = !DILocation(line: 133, column: 50, scope: !1527)
!1530 = !DILocation(line: 133, column: 7, scope: !1501)
!1531 = !DILocation(line: 134, column: 12, scope: !1527)
!1532 = !DILocation(line: 134, column: 5, scope: !1527)
!1533 = !DILocation(line: 135, column: 1, scope: !1501)
!1534 = !DISubprogram(name: "_exit", scope: !1473, file: !1473, line: 624, type: !890, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1535 = distinct !DISubprogram(name: "verror", scope: !480, file: !480, line: 251, type: !1536, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !104, !104, !134, !490}
!1538 = !{!1539, !1540, !1541, !1542}
!1539 = !DILocalVariable(name: "status", arg: 1, scope: !1535, file: !480, line: 251, type: !104)
!1540 = !DILocalVariable(name: "errnum", arg: 2, scope: !1535, file: !480, line: 251, type: !104)
!1541 = !DILocalVariable(name: "message", arg: 3, scope: !1535, file: !480, line: 251, type: !134)
!1542 = !DILocalVariable(name: "args", arg: 4, scope: !1535, file: !480, line: 251, type: !490)
!1543 = !DILocation(line: 0, scope: !1535)
!1544 = !DILocation(line: 251, column: 1, scope: !1535)
!1545 = !DILocation(line: 261, column: 3, scope: !1535)
!1546 = !DILocation(line: 265, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1535, file: !480, line: 265, column: 7)
!1548 = !DILocation(line: 265, column: 7, scope: !1535)
!1549 = !DILocation(line: 266, column: 5, scope: !1547)
!1550 = !DILocation(line: 272, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !480, line: 268, column: 5)
!1552 = !DILocation(line: 276, column: 3, scope: !1535)
!1553 = !{i64 0, i64 8, !900, i64 8, i64 8, !900, i64 16, i64 8, !900, i64 24, i64 4, !971, i64 28, i64 4, !971}
!1554 = !DILocation(line: 282, column: 1, scope: !1535)
!1555 = distinct !DISubprogram(name: "flush_stdout", scope: !480, file: !480, line: 163, type: !528, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1556)
!1556 = !{!1557}
!1557 = !DILocalVariable(name: "stdout_fd", scope: !1555, file: !480, line: 166, type: !104)
!1558 = !DILocation(line: 0, scope: !1555)
!1559 = !DILocalVariable(name: "fd", arg: 1, scope: !1560, file: !480, line: 145, type: !104)
!1560 = distinct !DISubprogram(name: "is_open", scope: !480, file: !480, line: 145, type: !1477, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1561)
!1561 = !{!1559}
!1562 = !DILocation(line: 0, scope: !1560, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 182, column: 25, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !480, line: 182, column: 7)
!1565 = !DILocation(line: 157, column: 15, scope: !1560, inlinedAt: !1563)
!1566 = !DILocation(line: 157, column: 12, scope: !1560, inlinedAt: !1563)
!1567 = !DILocation(line: 182, column: 7, scope: !1555)
!1568 = !DILocation(line: 184, column: 5, scope: !1564)
!1569 = !DILocation(line: 185, column: 1, scope: !1555)
!1570 = distinct !DISubprogram(name: "error_tail", scope: !480, file: !480, line: 219, type: !1536, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1571)
!1571 = !{!1572, !1573, !1574, !1575}
!1572 = !DILocalVariable(name: "status", arg: 1, scope: !1570, file: !480, line: 219, type: !104)
!1573 = !DILocalVariable(name: "errnum", arg: 2, scope: !1570, file: !480, line: 219, type: !104)
!1574 = !DILocalVariable(name: "message", arg: 3, scope: !1570, file: !480, line: 219, type: !134)
!1575 = !DILocalVariable(name: "args", arg: 4, scope: !1570, file: !480, line: 219, type: !490)
!1576 = !DILocation(line: 0, scope: !1570)
!1577 = !DILocation(line: 219, column: 1, scope: !1570)
!1578 = !DILocation(line: 229, column: 13, scope: !1570)
!1579 = !DILocation(line: 135, column: 10, scope: !1580, inlinedAt: !1622)
!1580 = distinct !DISubprogram(name: "vfprintf", scope: !958, file: !958, line: 132, type: !1581, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1618)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!104, !1583, !962, !491}
!1583 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1586, file: !253, line: 51, baseType: !104, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1586, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1586, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1586, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1586, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1586, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1586, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1586, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1586, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1586, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1586, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1586, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1586, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1586, file: !253, line: 70, baseType: !1602, size: 64, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1586, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1586, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1586, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1586, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1586, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1586, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1586, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1586, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1586, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1586, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1586, file: !253, line: 93, baseType: !1602, size: 64, offset: 1344)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1586, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1586, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1586, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1586, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!1618 = !{!1619, !1620, !1621}
!1619 = !DILocalVariable(name: "__stream", arg: 1, scope: !1580, file: !958, line: 132, type: !1583)
!1620 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1580, file: !958, line: 133, type: !962)
!1621 = !DILocalVariable(name: "__ap", arg: 3, scope: !1580, file: !958, line: 133, type: !491)
!1622 = distinct !DILocation(line: 229, column: 3, scope: !1570)
!1623 = !{!1624, !1626}
!1624 = distinct !{!1624, !1625, !"vfprintf.inline: argument 0"}
!1625 = distinct !{!1625, !"vfprintf.inline"}
!1626 = distinct !{!1626, !1625, !"vfprintf.inline: argument 1"}
!1627 = !DILocation(line: 229, column: 3, scope: !1570)
!1628 = !DILocation(line: 0, scope: !1580, inlinedAt: !1622)
!1629 = !DILocation(line: 133, column: 49, scope: !1580, inlinedAt: !1622)
!1630 = !DILocation(line: 232, column: 3, scope: !1570)
!1631 = !DILocation(line: 233, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1570, file: !480, line: 233, column: 7)
!1633 = !DILocation(line: 233, column: 7, scope: !1570)
!1634 = !DILocalVariable(name: "errnum", arg: 1, scope: !1635, file: !480, line: 188, type: !104)
!1635 = distinct !DISubprogram(name: "print_errno_message", scope: !480, file: !480, line: 188, type: !890, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1636)
!1636 = !{!1634, !1637, !1638}
!1637 = !DILocalVariable(name: "s", scope: !1635, file: !480, line: 190, type: !134)
!1638 = !DILocalVariable(name: "errbuf", scope: !1635, file: !480, line: 193, type: !1639)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1640)
!1640 = !{!1641}
!1641 = !DISubrange(count: 1024)
!1642 = !DILocation(line: 0, scope: !1635, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 234, column: 5, scope: !1632)
!1644 = !DILocation(line: 193, column: 3, scope: !1635, inlinedAt: !1643)
!1645 = !DILocation(line: 193, column: 8, scope: !1635, inlinedAt: !1643)
!1646 = !DILocation(line: 195, column: 7, scope: !1635, inlinedAt: !1643)
!1647 = !DILocation(line: 207, column: 9, scope: !1648, inlinedAt: !1643)
!1648 = distinct !DILexicalBlock(scope: !1635, file: !480, line: 207, column: 7)
!1649 = !DILocation(line: 207, column: 7, scope: !1635, inlinedAt: !1643)
!1650 = !DILocation(line: 208, column: 9, scope: !1648, inlinedAt: !1643)
!1651 = !DILocation(line: 208, column: 5, scope: !1648, inlinedAt: !1643)
!1652 = !DILocation(line: 214, column: 3, scope: !1635, inlinedAt: !1643)
!1653 = !DILocation(line: 216, column: 1, scope: !1635, inlinedAt: !1643)
!1654 = !DILocation(line: 234, column: 5, scope: !1632)
!1655 = !DILocation(line: 238, column: 3, scope: !1570)
!1656 = !DILocalVariable(name: "__c", arg: 1, scope: !1657, file: !1658, line: 101, type: !104)
!1657 = distinct !DISubprogram(name: "putc_unlocked", scope: !1658, file: !1658, line: 101, type: !1659, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1661)
!1658 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!104, !104, !1584}
!1661 = !{!1656, !1662}
!1662 = !DILocalVariable(name: "__stream", arg: 2, scope: !1657, file: !1658, line: 101, type: !1584)
!1663 = !DILocation(line: 0, scope: !1657, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 238, column: 3, scope: !1570)
!1665 = !DILocation(line: 103, column: 10, scope: !1657, inlinedAt: !1664)
!1666 = !{!1667, !901, i64 40}
!1667 = !{!"_IO_FILE", !972, i64 0, !901, i64 8, !901, i64 16, !901, i64 24, !901, i64 32, !901, i64 40, !901, i64 48, !901, i64 56, !901, i64 64, !901, i64 72, !901, i64 80, !901, i64 88, !901, i64 96, !901, i64 104, !972, i64 112, !972, i64 116, !1281, i64 120, !1013, i64 128, !902, i64 130, !902, i64 131, !901, i64 136, !1281, i64 144, !901, i64 152, !901, i64 160, !901, i64 168, !901, i64 176, !1281, i64 184, !972, i64 192, !902, i64 196}
!1668 = !{!1667, !901, i64 48}
!1669 = !{!"branch_weights", i32 2000, i32 1}
!1670 = !DILocation(line: 240, column: 3, scope: !1570)
!1671 = !DILocation(line: 241, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1570, file: !480, line: 241, column: 7)
!1673 = !DILocation(line: 241, column: 7, scope: !1570)
!1674 = !DILocation(line: 242, column: 5, scope: !1672)
!1675 = !DILocation(line: 243, column: 1, scope: !1570)
!1676 = !DISubprogram(name: "__vfprintf_chk", scope: !958, file: !958, line: 96, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!104, !1583, !104, !962, !491}
!1679 = !DISubprogram(name: "strerror_r", scope: !1088, file: !1088, line: 444, type: !1680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!129, !104, !129, !131}
!1682 = !DISubprogram(name: "__overflow", scope: !125, file: !125, line: 886, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!104, !1584, !104}
!1685 = !DISubprogram(name: "fflush_unlocked", scope: !125, file: !125, line: 239, type: !1686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!104, !1584}
!1688 = !DISubprogram(name: "fcntl", scope: !1469, file: !1469, line: 149, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
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
!1699 = !DILocation(line: 0, scope: !1691)
!1700 = !DILocation(line: 287, column: 3, scope: !1691)
!1701 = !DILocation(line: 287, column: 11, scope: !1691)
!1702 = !DILocation(line: 288, column: 3, scope: !1691)
!1703 = !DILocation(line: 289, column: 3, scope: !1691)
!1704 = !DILocation(line: 290, column: 3, scope: !1691)
!1705 = !DILocation(line: 291, column: 1, scope: !1691)
!1706 = !DILocation(line: 0, scope: !487)
!1707 = !DILocation(line: 298, column: 1, scope: !487)
!1708 = !DILocation(line: 302, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !487, file: !480, line: 302, column: 7)
!1710 = !DILocation(line: 302, column: 7, scope: !487)
!1711 = !DILocation(line: 307, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !480, line: 307, column: 11)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !480, line: 303, column: 5)
!1714 = !DILocation(line: 307, column: 27, scope: !1712)
!1715 = !DILocation(line: 308, column: 11, scope: !1712)
!1716 = !DILocation(line: 308, column: 28, scope: !1712)
!1717 = !DILocation(line: 308, column: 25, scope: !1712)
!1718 = !DILocation(line: 309, column: 15, scope: !1712)
!1719 = !DILocation(line: 309, column: 33, scope: !1712)
!1720 = !DILocation(line: 310, column: 19, scope: !1712)
!1721 = !DILocation(line: 311, column: 22, scope: !1712)
!1722 = !DILocation(line: 311, column: 56, scope: !1712)
!1723 = !DILocation(line: 307, column: 11, scope: !1713)
!1724 = !DILocation(line: 316, column: 21, scope: !1713)
!1725 = !DILocation(line: 317, column: 23, scope: !1713)
!1726 = !DILocation(line: 318, column: 5, scope: !1713)
!1727 = !DILocation(line: 327, column: 3, scope: !487)
!1728 = !DILocation(line: 331, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !487, file: !480, line: 331, column: 7)
!1730 = !DILocation(line: 331, column: 7, scope: !487)
!1731 = !DILocation(line: 332, column: 5, scope: !1729)
!1732 = !DILocation(line: 338, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !480, line: 334, column: 5)
!1734 = !DILocation(line: 346, column: 3, scope: !487)
!1735 = !DILocation(line: 350, column: 3, scope: !487)
!1736 = !DILocation(line: 356, column: 1, scope: !487)
!1737 = distinct !DISubprogram(name: "error_at_line", scope: !480, file: !480, line: 359, type: !1738, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !104, !104, !134, !79, !134, null}
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746}
!1741 = !DILocalVariable(name: "status", arg: 1, scope: !1737, file: !480, line: 359, type: !104)
!1742 = !DILocalVariable(name: "errnum", arg: 2, scope: !1737, file: !480, line: 359, type: !104)
!1743 = !DILocalVariable(name: "file_name", arg: 3, scope: !1737, file: !480, line: 359, type: !134)
!1744 = !DILocalVariable(name: "line_number", arg: 4, scope: !1737, file: !480, line: 360, type: !79)
!1745 = !DILocalVariable(name: "message", arg: 5, scope: !1737, file: !480, line: 360, type: !134)
!1746 = !DILocalVariable(name: "ap", scope: !1737, file: !480, line: 362, type: !490)
!1747 = !DILocation(line: 0, scope: !1737)
!1748 = !DILocation(line: 362, column: 3, scope: !1737)
!1749 = !DILocation(line: 362, column: 11, scope: !1737)
!1750 = !DILocation(line: 363, column: 3, scope: !1737)
!1751 = !DILocation(line: 364, column: 3, scope: !1737)
!1752 = !DILocation(line: 366, column: 3, scope: !1737)
!1753 = !DILocation(line: 367, column: 1, scope: !1737)
!1754 = distinct !DISubprogram(name: "getprogname", scope: !797, file: !797, line: 54, type: !1755, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !909)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!134}
!1757 = !DILocation(line: 58, column: 10, scope: !1754)
!1758 = !DILocation(line: 58, column: 3, scope: !1754)
!1759 = distinct !DISubprogram(name: "set_program_name", scope: !533, file: !533, line: 37, type: !923, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1760)
!1760 = !{!1761, !1762, !1763}
!1761 = !DILocalVariable(name: "argv0", arg: 1, scope: !1759, file: !533, line: 37, type: !134)
!1762 = !DILocalVariable(name: "slash", scope: !1759, file: !533, line: 44, type: !134)
!1763 = !DILocalVariable(name: "base", scope: !1759, file: !533, line: 45, type: !134)
!1764 = !DILocation(line: 0, scope: !1759)
!1765 = !DILocation(line: 44, column: 23, scope: !1759)
!1766 = !DILocation(line: 45, column: 22, scope: !1759)
!1767 = !DILocation(line: 46, column: 17, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1759, file: !533, line: 46, column: 7)
!1769 = !DILocation(line: 46, column: 9, scope: !1768)
!1770 = !DILocation(line: 46, column: 25, scope: !1768)
!1771 = !DILocation(line: 46, column: 40, scope: !1768)
!1772 = !DILocalVariable(name: "__s1", arg: 1, scope: !1773, file: !984, line: 974, type: !1116)
!1773 = distinct !DISubprogram(name: "memeq", scope: !984, file: !984, line: 974, type: !1774, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!137, !1116, !1116, !131}
!1776 = !{!1772, !1777, !1778}
!1777 = !DILocalVariable(name: "__s2", arg: 2, scope: !1773, file: !984, line: 974, type: !1116)
!1778 = !DILocalVariable(name: "__n", arg: 3, scope: !1773, file: !984, line: 974, type: !131)
!1779 = !DILocation(line: 0, scope: !1773, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 46, column: 28, scope: !1768)
!1781 = !DILocation(line: 976, column: 11, scope: !1773, inlinedAt: !1780)
!1782 = !DILocation(line: 976, column: 10, scope: !1773, inlinedAt: !1780)
!1783 = !DILocation(line: 46, column: 7, scope: !1759)
!1784 = !DILocation(line: 49, column: 11, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !533, line: 49, column: 11)
!1786 = distinct !DILexicalBlock(scope: !1768, file: !533, line: 47, column: 5)
!1787 = !DILocation(line: 49, column: 36, scope: !1785)
!1788 = !DILocation(line: 49, column: 11, scope: !1786)
!1789 = !DILocation(line: 65, column: 16, scope: !1759)
!1790 = !DILocation(line: 71, column: 27, scope: !1759)
!1791 = !DILocation(line: 74, column: 33, scope: !1759)
!1792 = !DILocation(line: 76, column: 1, scope: !1759)
!1793 = !DISubprogram(name: "strrchr", scope: !1088, file: !1088, line: 273, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1794 = !DILocation(line: 0, scope: !542)
!1795 = !DILocation(line: 40, column: 29, scope: !542)
!1796 = !DILocation(line: 41, column: 19, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !542, file: !543, line: 41, column: 7)
!1798 = !DILocation(line: 41, column: 7, scope: !542)
!1799 = !DILocation(line: 47, column: 3, scope: !542)
!1800 = !DILocation(line: 48, column: 3, scope: !542)
!1801 = !DILocation(line: 48, column: 13, scope: !542)
!1802 = !DILocalVariable(name: "ps", arg: 1, scope: !1803, file: !1804, line: 1135, type: !1807)
!1803 = distinct !DISubprogram(name: "mbszero", scope: !1804, file: !1804, line: 1135, type: !1805, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !1808)
!1804 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!1808 = !{!1802}
!1809 = !DILocation(line: 0, scope: !1803, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 48, column: 18, scope: !542)
!1811 = !DILocalVariable(name: "__dest", arg: 1, scope: !1812, file: !1813, line: 57, type: !130)
!1812 = distinct !DISubprogram(name: "memset", scope: !1813, file: !1813, line: 57, type: !1814, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !1816)
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
!1823 = distinct !DILexicalBlock(scope: !542, file: !543, line: 49, column: 7)
!1824 = !DILocation(line: 49, column: 39, scope: !1823)
!1825 = !DILocation(line: 49, column: 44, scope: !1823)
!1826 = !DILocation(line: 54, column: 1, scope: !542)
!1827 = !DISubprogram(name: "mbrtoc32", scope: !554, file: !554, line: 57, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!131, !1830, !962, !131, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1807)
!1833 = distinct !DISubprogram(name: "clone_quoting_options", scope: !573, file: !573, line: 113, type: !1834, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1837)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1836, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "o", arg: 1, scope: !1833, file: !573, line: 113, type: !1836)
!1839 = !DILocalVariable(name: "saved_errno", scope: !1833, file: !573, line: 115, type: !104)
!1840 = !DILocalVariable(name: "p", scope: !1833, file: !573, line: 116, type: !1836)
!1841 = !DILocation(line: 0, scope: !1833)
!1842 = !DILocation(line: 115, column: 21, scope: !1833)
!1843 = !DILocation(line: 116, column: 40, scope: !1833)
!1844 = !DILocation(line: 116, column: 31, scope: !1833)
!1845 = !DILocation(line: 118, column: 9, scope: !1833)
!1846 = !DILocation(line: 119, column: 3, scope: !1833)
!1847 = distinct !DISubprogram(name: "get_quoting_style", scope: !573, file: !573, line: 124, type: !1848, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1852)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!108, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!1852 = !{!1853}
!1853 = !DILocalVariable(name: "o", arg: 1, scope: !1847, file: !573, line: 124, type: !1850)
!1854 = !DILocation(line: 0, scope: !1847)
!1855 = !DILocation(line: 126, column: 11, scope: !1847)
!1856 = !DILocation(line: 126, column: 46, scope: !1847)
!1857 = !{!1858, !902, i64 0}
!1858 = !{!"quoting_options", !902, i64 0, !972, i64 4, !902, i64 8, !901, i64 40, !901, i64 48}
!1859 = !DILocation(line: 126, column: 3, scope: !1847)
!1860 = distinct !DISubprogram(name: "set_quoting_style", scope: !573, file: !573, line: 132, type: !1861, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1836, !108}
!1863 = !{!1864, !1865}
!1864 = !DILocalVariable(name: "o", arg: 1, scope: !1860, file: !573, line: 132, type: !1836)
!1865 = !DILocalVariable(name: "s", arg: 2, scope: !1860, file: !573, line: 132, type: !108)
!1866 = !DILocation(line: 0, scope: !1860)
!1867 = !DILocation(line: 134, column: 4, scope: !1860)
!1868 = !DILocation(line: 134, column: 45, scope: !1860)
!1869 = !DILocation(line: 135, column: 1, scope: !1860)
!1870 = distinct !DISubprogram(name: "set_char_quoting", scope: !573, file: !573, line: 143, type: !1871, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!104, !1836, !4, !104}
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1880, !1881}
!1874 = !DILocalVariable(name: "o", arg: 1, scope: !1870, file: !573, line: 143, type: !1836)
!1875 = !DILocalVariable(name: "c", arg: 2, scope: !1870, file: !573, line: 143, type: !4)
!1876 = !DILocalVariable(name: "i", arg: 3, scope: !1870, file: !573, line: 143, type: !104)
!1877 = !DILocalVariable(name: "uc", scope: !1870, file: !573, line: 145, type: !136)
!1878 = !DILocalVariable(name: "p", scope: !1870, file: !573, line: 146, type: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1880 = !DILocalVariable(name: "shift", scope: !1870, file: !573, line: 148, type: !104)
!1881 = !DILocalVariable(name: "r", scope: !1870, file: !573, line: 149, type: !79)
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
!1895 = distinct !DISubprogram(name: "set_quoting_flags", scope: !573, file: !573, line: 159, type: !1896, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!104, !1836, !104}
!1898 = !{!1899, !1900, !1901}
!1899 = !DILocalVariable(name: "o", arg: 1, scope: !1895, file: !573, line: 159, type: !1836)
!1900 = !DILocalVariable(name: "i", arg: 2, scope: !1895, file: !573, line: 159, type: !104)
!1901 = !DILocalVariable(name: "r", scope: !1895, file: !573, line: 163, type: !104)
!1902 = !DILocation(line: 0, scope: !1895)
!1903 = !DILocation(line: 161, column: 8, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !573, line: 161, column: 7)
!1905 = !DILocation(line: 161, column: 7, scope: !1895)
!1906 = !DILocation(line: 163, column: 14, scope: !1895)
!1907 = !{!1858, !972, i64 4}
!1908 = !DILocation(line: 164, column: 12, scope: !1895)
!1909 = !DILocation(line: 165, column: 3, scope: !1895)
!1910 = distinct !DISubprogram(name: "set_custom_quoting", scope: !573, file: !573, line: 169, type: !1911, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1836, !134, !134}
!1913 = !{!1914, !1915, !1916}
!1914 = !DILocalVariable(name: "o", arg: 1, scope: !1910, file: !573, line: 169, type: !1836)
!1915 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1910, file: !573, line: 170, type: !134)
!1916 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1910, file: !573, line: 170, type: !134)
!1917 = !DILocation(line: 0, scope: !1910)
!1918 = !DILocation(line: 172, column: 8, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1910, file: !573, line: 172, column: 7)
!1920 = !DILocation(line: 172, column: 7, scope: !1910)
!1921 = !DILocation(line: 174, column: 12, scope: !1910)
!1922 = !DILocation(line: 175, column: 8, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1910, file: !573, line: 175, column: 7)
!1924 = !DILocation(line: 175, column: 19, scope: !1923)
!1925 = !DILocation(line: 176, column: 5, scope: !1923)
!1926 = !DILocation(line: 177, column: 6, scope: !1910)
!1927 = !DILocation(line: 177, column: 17, scope: !1910)
!1928 = !{!1858, !901, i64 40}
!1929 = !DILocation(line: 178, column: 6, scope: !1910)
!1930 = !DILocation(line: 178, column: 18, scope: !1910)
!1931 = !{!1858, !901, i64 48}
!1932 = !DILocation(line: 179, column: 1, scope: !1910)
!1933 = !DISubprogram(name: "abort", scope: !1092, file: !1092, line: 598, type: !528, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !909)
!1934 = distinct !DISubprogram(name: "quotearg_buffer", scope: !573, file: !573, line: 774, type: !1935, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!131, !129, !131, !134, !131, !1850}
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1938 = !DILocalVariable(name: "buffer", arg: 1, scope: !1934, file: !573, line: 774, type: !129)
!1939 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1934, file: !573, line: 774, type: !131)
!1940 = !DILocalVariable(name: "arg", arg: 3, scope: !1934, file: !573, line: 775, type: !134)
!1941 = !DILocalVariable(name: "argsize", arg: 4, scope: !1934, file: !573, line: 775, type: !131)
!1942 = !DILocalVariable(name: "o", arg: 5, scope: !1934, file: !573, line: 776, type: !1850)
!1943 = !DILocalVariable(name: "p", scope: !1934, file: !573, line: 778, type: !1850)
!1944 = !DILocalVariable(name: "saved_errno", scope: !1934, file: !573, line: 779, type: !104)
!1945 = !DILocalVariable(name: "r", scope: !1934, file: !573, line: 780, type: !131)
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
!1957 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !573, file: !573, line: 251, type: !1958, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !1962)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!131, !129, !131, !134, !131, !108, !104, !1960, !134, !134}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1987, !1989, !1992, !1993, !1994, !1995, !1998, !1999, !2002, !2006, !2007, !2015, !2018, !2019, !2021, !2022, !2023, !2024}
!1963 = !DILocalVariable(name: "buffer", arg: 1, scope: !1957, file: !573, line: 251, type: !129)
!1964 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1957, file: !573, line: 251, type: !131)
!1965 = !DILocalVariable(name: "arg", arg: 3, scope: !1957, file: !573, line: 252, type: !134)
!1966 = !DILocalVariable(name: "argsize", arg: 4, scope: !1957, file: !573, line: 252, type: !131)
!1967 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1957, file: !573, line: 253, type: !108)
!1968 = !DILocalVariable(name: "flags", arg: 6, scope: !1957, file: !573, line: 253, type: !104)
!1969 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1957, file: !573, line: 254, type: !1960)
!1970 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1957, file: !573, line: 255, type: !134)
!1971 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1957, file: !573, line: 256, type: !134)
!1972 = !DILocalVariable(name: "unibyte_locale", scope: !1957, file: !573, line: 258, type: !137)
!1973 = !DILocalVariable(name: "len", scope: !1957, file: !573, line: 260, type: !131)
!1974 = !DILocalVariable(name: "orig_buffersize", scope: !1957, file: !573, line: 261, type: !131)
!1975 = !DILocalVariable(name: "quote_string", scope: !1957, file: !573, line: 262, type: !134)
!1976 = !DILocalVariable(name: "quote_string_len", scope: !1957, file: !573, line: 263, type: !131)
!1977 = !DILocalVariable(name: "backslash_escapes", scope: !1957, file: !573, line: 264, type: !137)
!1978 = !DILocalVariable(name: "elide_outer_quotes", scope: !1957, file: !573, line: 265, type: !137)
!1979 = !DILocalVariable(name: "encountered_single_quote", scope: !1957, file: !573, line: 266, type: !137)
!1980 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1957, file: !573, line: 267, type: !137)
!1981 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1957, file: !573, line: 309, type: !137)
!1982 = !DILocalVariable(name: "lq", scope: !1983, file: !573, line: 361, type: !134)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !573, line: 361, column: 11)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !573, line: 360, column: 13)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !573, line: 333, column: 7)
!1986 = distinct !DILexicalBlock(scope: !1957, file: !573, line: 312, column: 5)
!1987 = !DILocalVariable(name: "i", scope: !1988, file: !573, line: 395, type: !131)
!1988 = distinct !DILexicalBlock(scope: !1957, file: !573, line: 395, column: 3)
!1989 = !DILocalVariable(name: "is_right_quote", scope: !1990, file: !573, line: 397, type: !137)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !573, line: 396, column: 5)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !573, line: 395, column: 3)
!1992 = !DILocalVariable(name: "escaping", scope: !1990, file: !573, line: 398, type: !137)
!1993 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1990, file: !573, line: 399, type: !137)
!1994 = !DILocalVariable(name: "c", scope: !1990, file: !573, line: 417, type: !136)
!1995 = !DILocalVariable(name: "m", scope: !1996, file: !573, line: 598, type: !131)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 596, column: 11)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !573, line: 419, column: 9)
!1998 = !DILocalVariable(name: "printable", scope: !1996, file: !573, line: 600, type: !137)
!1999 = !DILocalVariable(name: "mbs", scope: !2000, file: !573, line: 609, type: !646)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !573, line: 608, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !573, line: 602, column: 17)
!2002 = !DILocalVariable(name: "w", scope: !2003, file: !573, line: 618, type: !553)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !573, line: 617, column: 19)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !573, line: 616, column: 17)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !573, line: 616, column: 17)
!2006 = !DILocalVariable(name: "bytes", scope: !2003, file: !573, line: 619, type: !131)
!2007 = !DILocalVariable(name: "j", scope: !2008, file: !573, line: 648, type: !131)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !573, line: 648, column: 29)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !573, line: 647, column: 27)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !573, line: 645, column: 29)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !573, line: 636, column: 23)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !573, line: 628, column: 30)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !573, line: 623, column: 30)
!2014 = distinct !DILexicalBlock(scope: !2003, file: !573, line: 621, column: 25)
!2015 = !DILocalVariable(name: "ilim", scope: !2016, file: !573, line: 674, type: !131)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !573, line: 671, column: 15)
!2017 = distinct !DILexicalBlock(scope: !1996, file: !573, line: 670, column: 17)
!2018 = !DILabel(scope: !1957, name: "process_input", file: !573, line: 308)
!2019 = !DILabel(scope: !2020, name: "c_and_shell_escape", file: !573, line: 502)
!2020 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 478, column: 9)
!2021 = !DILabel(scope: !2020, name: "c_escape", file: !573, line: 507)
!2022 = !DILabel(scope: !1990, name: "store_escape", file: !573, line: 709)
!2023 = !DILabel(scope: !1990, name: "store_c", file: !573, line: 712)
!2024 = !DILabel(scope: !1957, name: "force_outer_quoting_style", file: !573, line: 753)
!2025 = !DILocation(line: 0, scope: !1957)
!2026 = !DILocation(line: 258, column: 25, scope: !1957)
!2027 = !DILocation(line: 258, column: 36, scope: !1957)
!2028 = !DILocation(line: 267, column: 3, scope: !1957)
!2029 = !DILocation(line: 261, column: 10, scope: !1957)
!2030 = !DILocation(line: 262, column: 15, scope: !1957)
!2031 = !DILocation(line: 263, column: 10, scope: !1957)
!2032 = !DILocation(line: 308, column: 2, scope: !1957)
!2033 = !DILocation(line: 311, column: 3, scope: !1957)
!2034 = !DILocation(line: 318, column: 11, scope: !1986)
!2035 = !DILocation(line: 319, column: 9, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !573, line: 319, column: 9)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !573, line: 319, column: 9)
!2038 = distinct !DILexicalBlock(scope: !1986, file: !573, line: 318, column: 11)
!2039 = !DILocation(line: 319, column: 9, scope: !2037)
!2040 = !DILocation(line: 0, scope: !637, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 357, column: 26, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !573, line: 335, column: 11)
!2043 = distinct !DILexicalBlock(scope: !1985, file: !573, line: 334, column: 13)
!2044 = !DILocation(line: 199, column: 29, scope: !637, inlinedAt: !2041)
!2045 = !DILocation(line: 201, column: 19, scope: !2046, inlinedAt: !2041)
!2046 = distinct !DILexicalBlock(scope: !637, file: !573, line: 201, column: 7)
!2047 = !DILocation(line: 201, column: 7, scope: !637, inlinedAt: !2041)
!2048 = !DILocation(line: 229, column: 3, scope: !637, inlinedAt: !2041)
!2049 = !DILocation(line: 230, column: 3, scope: !637, inlinedAt: !2041)
!2050 = !DILocation(line: 230, column: 13, scope: !637, inlinedAt: !2041)
!2051 = !DILocalVariable(name: "ps", arg: 1, scope: !2052, file: !1804, line: 1135, type: !2055)
!2052 = distinct !DISubprogram(name: "mbszero", scope: !1804, file: !1804, line: 1135, type: !2053, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2056)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!2056 = !{!2051}
!2057 = !DILocation(line: 0, scope: !2052, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 230, column: 18, scope: !637, inlinedAt: !2041)
!2059 = !DILocalVariable(name: "__dest", arg: 1, scope: !2060, file: !1813, line: 57, type: !130)
!2060 = distinct !DISubprogram(name: "memset", scope: !1813, file: !1813, line: 57, type: !1814, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2061)
!2061 = !{!2059, !2062, !2063}
!2062 = !DILocalVariable(name: "__ch", arg: 2, scope: !2060, file: !1813, line: 57, type: !104)
!2063 = !DILocalVariable(name: "__len", arg: 3, scope: !2060, file: !1813, line: 57, type: !131)
!2064 = !DILocation(line: 0, scope: !2060, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2058)
!2066 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2065)
!2067 = !DILocation(line: 231, column: 7, scope: !2068, inlinedAt: !2041)
!2068 = distinct !DILexicalBlock(scope: !637, file: !573, line: 231, column: 7)
!2069 = !DILocation(line: 231, column: 40, scope: !2068, inlinedAt: !2041)
!2070 = !DILocation(line: 231, column: 45, scope: !2068, inlinedAt: !2041)
!2071 = !DILocation(line: 235, column: 1, scope: !637, inlinedAt: !2041)
!2072 = !DILocation(line: 0, scope: !637, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 358, column: 27, scope: !2042)
!2074 = !DILocation(line: 199, column: 29, scope: !637, inlinedAt: !2073)
!2075 = !DILocation(line: 201, column: 19, scope: !2046, inlinedAt: !2073)
!2076 = !DILocation(line: 201, column: 7, scope: !637, inlinedAt: !2073)
!2077 = !DILocation(line: 229, column: 3, scope: !637, inlinedAt: !2073)
!2078 = !DILocation(line: 230, column: 3, scope: !637, inlinedAt: !2073)
!2079 = !DILocation(line: 230, column: 13, scope: !637, inlinedAt: !2073)
!2080 = !DILocation(line: 0, scope: !2052, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 230, column: 18, scope: !637, inlinedAt: !2073)
!2082 = !DILocation(line: 0, scope: !2060, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2081)
!2084 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2083)
!2085 = !DILocation(line: 231, column: 7, scope: !2068, inlinedAt: !2073)
!2086 = !DILocation(line: 231, column: 40, scope: !2068, inlinedAt: !2073)
!2087 = !DILocation(line: 231, column: 45, scope: !2068, inlinedAt: !2073)
!2088 = !DILocation(line: 235, column: 1, scope: !637, inlinedAt: !2073)
!2089 = !DILocation(line: 360, column: 13, scope: !1985)
!2090 = !DILocation(line: 0, scope: !1983)
!2091 = !DILocation(line: 361, column: 45, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1983, file: !573, line: 361, column: 11)
!2093 = !DILocation(line: 361, column: 11, scope: !1983)
!2094 = !DILocation(line: 362, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !573, line: 362, column: 13)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !573, line: 362, column: 13)
!2097 = !DILocation(line: 362, column: 13, scope: !2096)
!2098 = !DILocation(line: 361, column: 52, scope: !2092)
!2099 = distinct !{!2099, !2093, !2100, !1018}
!2100 = !DILocation(line: 362, column: 13, scope: !1983)
!2101 = !DILocation(line: 260, column: 10, scope: !1957)
!2102 = !DILocation(line: 365, column: 28, scope: !1985)
!2103 = !DILocation(line: 367, column: 7, scope: !1986)
!2104 = !DILocation(line: 370, column: 7, scope: !1986)
!2105 = !DILocation(line: 376, column: 11, scope: !1986)
!2106 = !DILocation(line: 381, column: 11, scope: !1986)
!2107 = !DILocation(line: 382, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !573, line: 382, column: 9)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !573, line: 382, column: 9)
!2110 = distinct !DILexicalBlock(scope: !1986, file: !573, line: 381, column: 11)
!2111 = !DILocation(line: 382, column: 9, scope: !2109)
!2112 = !DILocation(line: 389, column: 7, scope: !1986)
!2113 = !DILocation(line: 392, column: 7, scope: !1986)
!2114 = !DILocation(line: 0, scope: !1988)
!2115 = !DILocation(line: 395, column: 8, scope: !1988)
!2116 = !DILocation(line: 395, scope: !1988)
!2117 = !DILocation(line: 395, column: 34, scope: !1991)
!2118 = !DILocation(line: 395, column: 26, scope: !1991)
!2119 = !DILocation(line: 395, column: 48, scope: !1991)
!2120 = !DILocation(line: 395, column: 55, scope: !1991)
!2121 = !DILocation(line: 395, column: 3, scope: !1988)
!2122 = !DILocation(line: 395, column: 67, scope: !1991)
!2123 = !DILocation(line: 0, scope: !1990)
!2124 = !DILocation(line: 402, column: 11, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1990, file: !573, line: 401, column: 11)
!2126 = !DILocation(line: 404, column: 17, scope: !2125)
!2127 = !DILocation(line: 405, column: 39, scope: !2125)
!2128 = !DILocation(line: 409, column: 32, scope: !2125)
!2129 = !DILocation(line: 405, column: 19, scope: !2125)
!2130 = !DILocation(line: 405, column: 15, scope: !2125)
!2131 = !DILocation(line: 410, column: 11, scope: !2125)
!2132 = !DILocation(line: 410, column: 25, scope: !2125)
!2133 = !DILocalVariable(name: "__s1", arg: 1, scope: !2134, file: !984, line: 974, type: !1116)
!2134 = distinct !DISubprogram(name: "memeq", scope: !984, file: !984, line: 974, type: !1774, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2135)
!2135 = !{!2133, !2136, !2137}
!2136 = !DILocalVariable(name: "__s2", arg: 2, scope: !2134, file: !984, line: 974, type: !1116)
!2137 = !DILocalVariable(name: "__n", arg: 3, scope: !2134, file: !984, line: 974, type: !131)
!2138 = !DILocation(line: 0, scope: !2134, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 410, column: 14, scope: !2125)
!2140 = !DILocation(line: 976, column: 11, scope: !2134, inlinedAt: !2139)
!2141 = !DILocation(line: 976, column: 10, scope: !2134, inlinedAt: !2139)
!2142 = !DILocation(line: 401, column: 11, scope: !1990)
!2143 = !DILocation(line: 417, column: 25, scope: !1990)
!2144 = !DILocation(line: 418, column: 7, scope: !1990)
!2145 = !DILocation(line: 421, column: 15, scope: !1997)
!2146 = !DILocation(line: 423, column: 15, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !573, line: 423, column: 15)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !573, line: 422, column: 13)
!2149 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 421, column: 15)
!2150 = !DILocation(line: 423, column: 15, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !573, line: 423, column: 15)
!2152 = !DILocation(line: 423, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !573, line: 423, column: 15)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !573, line: 423, column: 15)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !573, line: 423, column: 15)
!2156 = !DILocation(line: 423, column: 15, scope: !2154)
!2157 = !DILocation(line: 423, column: 15, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !573, line: 423, column: 15)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !573, line: 423, column: 15)
!2160 = !DILocation(line: 423, column: 15, scope: !2159)
!2161 = !DILocation(line: 423, column: 15, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !573, line: 423, column: 15)
!2163 = distinct !DILexicalBlock(scope: !2155, file: !573, line: 423, column: 15)
!2164 = !DILocation(line: 423, column: 15, scope: !2163)
!2165 = !DILocation(line: 423, column: 15, scope: !2155)
!2166 = !DILocation(line: 423, column: 15, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !573, line: 423, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2147, file: !573, line: 423, column: 15)
!2169 = !DILocation(line: 423, column: 15, scope: !2168)
!2170 = !DILocation(line: 431, column: 19, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2148, file: !573, line: 430, column: 19)
!2172 = !DILocation(line: 431, column: 24, scope: !2171)
!2173 = !DILocation(line: 431, column: 28, scope: !2171)
!2174 = !DILocation(line: 431, column: 38, scope: !2171)
!2175 = !DILocation(line: 431, column: 48, scope: !2171)
!2176 = !DILocation(line: 431, column: 59, scope: !2171)
!2177 = !DILocation(line: 433, column: 19, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !573, line: 433, column: 19)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !573, line: 433, column: 19)
!2180 = distinct !DILexicalBlock(scope: !2171, file: !573, line: 432, column: 17)
!2181 = !DILocation(line: 433, column: 19, scope: !2179)
!2182 = !DILocation(line: 434, column: 19, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !573, line: 434, column: 19)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !573, line: 434, column: 19)
!2185 = !DILocation(line: 434, column: 19, scope: !2184)
!2186 = !DILocation(line: 435, column: 17, scope: !2180)
!2187 = !DILocation(line: 442, column: 20, scope: !2149)
!2188 = !DILocation(line: 447, column: 11, scope: !1997)
!2189 = !DILocation(line: 450, column: 19, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 448, column: 13)
!2191 = !DILocation(line: 456, column: 19, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2190, file: !573, line: 455, column: 19)
!2193 = !DILocation(line: 456, column: 24, scope: !2192)
!2194 = !DILocation(line: 456, column: 28, scope: !2192)
!2195 = !DILocation(line: 456, column: 38, scope: !2192)
!2196 = !DILocation(line: 456, column: 47, scope: !2192)
!2197 = !DILocation(line: 456, column: 41, scope: !2192)
!2198 = !DILocation(line: 456, column: 52, scope: !2192)
!2199 = !DILocation(line: 455, column: 19, scope: !2190)
!2200 = !DILocation(line: 457, column: 25, scope: !2192)
!2201 = !DILocation(line: 457, column: 17, scope: !2192)
!2202 = !DILocation(line: 464, column: 25, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2192, file: !573, line: 458, column: 19)
!2204 = !DILocation(line: 468, column: 21, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !573, line: 468, column: 21)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !573, line: 468, column: 21)
!2207 = !DILocation(line: 468, column: 21, scope: !2206)
!2208 = !DILocation(line: 469, column: 21, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !573, line: 469, column: 21)
!2210 = distinct !DILexicalBlock(scope: !2203, file: !573, line: 469, column: 21)
!2211 = !DILocation(line: 469, column: 21, scope: !2210)
!2212 = !DILocation(line: 470, column: 21, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !573, line: 470, column: 21)
!2214 = distinct !DILexicalBlock(scope: !2203, file: !573, line: 470, column: 21)
!2215 = !DILocation(line: 470, column: 21, scope: !2214)
!2216 = !DILocation(line: 471, column: 21, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !573, line: 471, column: 21)
!2218 = distinct !DILexicalBlock(scope: !2203, file: !573, line: 471, column: 21)
!2219 = !DILocation(line: 471, column: 21, scope: !2218)
!2220 = !DILocation(line: 472, column: 21, scope: !2203)
!2221 = !DILocation(line: 482, column: 33, scope: !2020)
!2222 = !DILocation(line: 483, column: 33, scope: !2020)
!2223 = !DILocation(line: 485, column: 33, scope: !2020)
!2224 = !DILocation(line: 486, column: 33, scope: !2020)
!2225 = !DILocation(line: 487, column: 33, scope: !2020)
!2226 = !DILocation(line: 490, column: 17, scope: !2020)
!2227 = !DILocation(line: 492, column: 21, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !573, line: 491, column: 15)
!2229 = distinct !DILexicalBlock(scope: !2020, file: !573, line: 490, column: 17)
!2230 = !DILocation(line: 499, column: 35, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2020, file: !573, line: 499, column: 17)
!2232 = !DILocation(line: 0, scope: !2020)
!2233 = !DILocation(line: 502, column: 11, scope: !2020)
!2234 = !DILocation(line: 504, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2020, file: !573, line: 503, column: 17)
!2236 = !DILocation(line: 507, column: 11, scope: !2020)
!2237 = !DILocation(line: 508, column: 17, scope: !2020)
!2238 = !DILocation(line: 517, column: 15, scope: !1997)
!2239 = !DILocation(line: 517, column: 40, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 517, column: 15)
!2241 = !DILocation(line: 517, column: 47, scope: !2240)
!2242 = !DILocation(line: 517, column: 18, scope: !2240)
!2243 = !DILocation(line: 521, column: 17, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 521, column: 15)
!2245 = !DILocation(line: 521, column: 15, scope: !1997)
!2246 = !DILocation(line: 525, column: 11, scope: !1997)
!2247 = !DILocation(line: 537, column: 15, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 536, column: 15)
!2249 = !DILocation(line: 536, column: 15, scope: !1997)
!2250 = !DILocation(line: 544, column: 15, scope: !1997)
!2251 = !DILocation(line: 546, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !573, line: 545, column: 13)
!2253 = distinct !DILexicalBlock(scope: !1997, file: !573, line: 544, column: 15)
!2254 = !DILocation(line: 549, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !573, line: 549, column: 19)
!2256 = !DILocation(line: 549, column: 30, scope: !2255)
!2257 = !DILocation(line: 558, column: 15, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !573, line: 558, column: 15)
!2259 = distinct !DILexicalBlock(scope: !2252, file: !573, line: 558, column: 15)
!2260 = !DILocation(line: 558, column: 15, scope: !2259)
!2261 = !DILocation(line: 559, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !573, line: 559, column: 15)
!2263 = distinct !DILexicalBlock(scope: !2252, file: !573, line: 559, column: 15)
!2264 = !DILocation(line: 559, column: 15, scope: !2263)
!2265 = !DILocation(line: 560, column: 15, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !573, line: 560, column: 15)
!2267 = distinct !DILexicalBlock(scope: !2252, file: !573, line: 560, column: 15)
!2268 = !DILocation(line: 560, column: 15, scope: !2267)
!2269 = !DILocation(line: 562, column: 13, scope: !2252)
!2270 = !DILocation(line: 602, column: 17, scope: !1996)
!2271 = !DILocation(line: 0, scope: !1996)
!2272 = !DILocation(line: 605, column: 29, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2001, file: !573, line: 603, column: 15)
!2274 = !DILocation(line: 605, column: 41, scope: !2273)
!2275 = !DILocation(line: 606, column: 15, scope: !2273)
!2276 = !DILocation(line: 609, column: 17, scope: !2000)
!2277 = !DILocation(line: 609, column: 27, scope: !2000)
!2278 = !DILocation(line: 0, scope: !2052, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 609, column: 32, scope: !2000)
!2280 = !DILocation(line: 0, scope: !2060, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2279)
!2282 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2281)
!2283 = !DILocation(line: 613, column: 29, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2000, file: !573, line: 613, column: 21)
!2285 = !DILocation(line: 613, column: 21, scope: !2000)
!2286 = !DILocation(line: 614, column: 29, scope: !2284)
!2287 = !DILocation(line: 614, column: 19, scope: !2284)
!2288 = !DILocation(line: 618, column: 21, scope: !2003)
!2289 = !DILocation(line: 620, column: 54, scope: !2003)
!2290 = !DILocation(line: 0, scope: !2003)
!2291 = !DILocation(line: 619, column: 36, scope: !2003)
!2292 = !DILocation(line: 621, column: 25, scope: !2003)
!2293 = !DILocation(line: 631, column: 38, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2012, file: !573, line: 629, column: 23)
!2295 = !DILocation(line: 631, column: 48, scope: !2294)
!2296 = !DILocation(line: 626, column: 25, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2013, file: !573, line: 624, column: 23)
!2298 = !DILocation(line: 631, column: 51, scope: !2294)
!2299 = !DILocation(line: 631, column: 25, scope: !2294)
!2300 = !DILocation(line: 632, column: 28, scope: !2294)
!2301 = !DILocation(line: 631, column: 34, scope: !2294)
!2302 = distinct !{!2302, !2299, !2300, !1018}
!2303 = !DILocation(line: 646, column: 29, scope: !2010)
!2304 = !DILocation(line: 0, scope: !2008)
!2305 = !DILocation(line: 649, column: 49, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2008, file: !573, line: 648, column: 29)
!2307 = !DILocation(line: 649, column: 39, scope: !2306)
!2308 = !DILocation(line: 649, column: 31, scope: !2306)
!2309 = !DILocation(line: 648, column: 60, scope: !2306)
!2310 = !DILocation(line: 648, column: 50, scope: !2306)
!2311 = !DILocation(line: 648, column: 29, scope: !2008)
!2312 = distinct !{!2312, !2311, !2313, !1018}
!2313 = !DILocation(line: 654, column: 33, scope: !2008)
!2314 = !DILocation(line: 657, column: 43, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2011, file: !573, line: 657, column: 29)
!2316 = !DILocalVariable(name: "wc", arg: 1, scope: !2317, file: !2318, line: 865, type: !2321)
!2317 = distinct !DISubprogram(name: "c32isprint", scope: !2318, file: !2318, line: 865, type: !2319, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2323)
!2318 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!104, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2322, line: 20, baseType: !79)
!2322 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2323 = !{!2316}
!2324 = !DILocation(line: 0, scope: !2317, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 657, column: 31, scope: !2315)
!2326 = !DILocation(line: 871, column: 10, scope: !2317, inlinedAt: !2325)
!2327 = !DILocation(line: 657, column: 31, scope: !2315)
!2328 = !DILocation(line: 664, column: 23, scope: !2003)
!2329 = !DILocation(line: 665, column: 19, scope: !2004)
!2330 = !DILocation(line: 666, column: 15, scope: !2001)
!2331 = !DILocation(line: 753, column: 2, scope: !1957)
!2332 = !DILocation(line: 756, column: 51, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1957, file: !573, line: 756, column: 7)
!2334 = !DILocation(line: 0, scope: !2001)
!2335 = !DILocation(line: 670, column: 19, scope: !2017)
!2336 = !DILocation(line: 670, column: 23, scope: !2017)
!2337 = !DILocation(line: 674, column: 33, scope: !2016)
!2338 = !DILocation(line: 0, scope: !2016)
!2339 = !DILocation(line: 676, column: 17, scope: !2016)
!2340 = !DILocation(line: 398, column: 12, scope: !1990)
!2341 = !DILocation(line: 678, column: 43, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !573, line: 678, column: 25)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !573, line: 677, column: 19)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !573, line: 676, column: 17)
!2345 = distinct !DILexicalBlock(scope: !2016, file: !573, line: 676, column: 17)
!2346 = !DILocation(line: 680, column: 25, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !573, line: 680, column: 25)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !573, line: 679, column: 23)
!2349 = !DILocation(line: 680, column: 25, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !573, line: 680, column: 25)
!2351 = !DILocation(line: 680, column: 25, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !573, line: 680, column: 25)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !573, line: 680, column: 25)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !573, line: 680, column: 25)
!2355 = !DILocation(line: 680, column: 25, scope: !2353)
!2356 = !DILocation(line: 680, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !573, line: 680, column: 25)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !573, line: 680, column: 25)
!2359 = !DILocation(line: 680, column: 25, scope: !2358)
!2360 = !DILocation(line: 680, column: 25, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !573, line: 680, column: 25)
!2362 = distinct !DILexicalBlock(scope: !2354, file: !573, line: 680, column: 25)
!2363 = !DILocation(line: 680, column: 25, scope: !2362)
!2364 = !DILocation(line: 680, column: 25, scope: !2354)
!2365 = !DILocation(line: 680, column: 25, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !573, line: 680, column: 25)
!2367 = distinct !DILexicalBlock(scope: !2347, file: !573, line: 680, column: 25)
!2368 = !DILocation(line: 680, column: 25, scope: !2367)
!2369 = !DILocation(line: 681, column: 25, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !573, line: 681, column: 25)
!2371 = distinct !DILexicalBlock(scope: !2348, file: !573, line: 681, column: 25)
!2372 = !DILocation(line: 681, column: 25, scope: !2371)
!2373 = !DILocation(line: 682, column: 25, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !573, line: 682, column: 25)
!2375 = distinct !DILexicalBlock(scope: !2348, file: !573, line: 682, column: 25)
!2376 = !DILocation(line: 682, column: 25, scope: !2375)
!2377 = !DILocation(line: 683, column: 38, scope: !2348)
!2378 = !DILocation(line: 683, column: 33, scope: !2348)
!2379 = !DILocation(line: 684, column: 23, scope: !2348)
!2380 = !DILocation(line: 685, column: 30, scope: !2342)
!2381 = !DILocation(line: 687, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !573, line: 687, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !573, line: 687, column: 25)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !573, line: 686, column: 23)
!2385 = distinct !DILexicalBlock(scope: !2342, file: !573, line: 685, column: 30)
!2386 = !DILocation(line: 687, column: 25, scope: !2383)
!2387 = !DILocation(line: 689, column: 23, scope: !2384)
!2388 = !DILocation(line: 690, column: 35, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2343, file: !573, line: 690, column: 25)
!2390 = !DILocation(line: 690, column: 30, scope: !2389)
!2391 = !DILocation(line: 690, column: 25, scope: !2343)
!2392 = !DILocation(line: 692, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !573, line: 692, column: 21)
!2394 = distinct !DILexicalBlock(scope: !2343, file: !573, line: 692, column: 21)
!2395 = !DILocation(line: 692, column: 21, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !573, line: 692, column: 21)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !573, line: 692, column: 21)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !573, line: 692, column: 21)
!2399 = !DILocation(line: 692, column: 21, scope: !2397)
!2400 = !DILocation(line: 692, column: 21, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !573, line: 692, column: 21)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !573, line: 692, column: 21)
!2403 = !DILocation(line: 692, column: 21, scope: !2402)
!2404 = !DILocation(line: 692, column: 21, scope: !2398)
!2405 = !DILocation(line: 0, scope: !2343)
!2406 = !DILocation(line: 693, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !573, line: 693, column: 21)
!2408 = distinct !DILexicalBlock(scope: !2343, file: !573, line: 693, column: 21)
!2409 = !DILocation(line: 693, column: 21, scope: !2408)
!2410 = !DILocation(line: 694, column: 25, scope: !2343)
!2411 = !DILocation(line: 676, column: 17, scope: !2344)
!2412 = distinct !{!2412, !2413, !2414}
!2413 = !DILocation(line: 676, column: 17, scope: !2345)
!2414 = !DILocation(line: 695, column: 19, scope: !2345)
!2415 = !DILocation(line: 409, column: 30, scope: !2125)
!2416 = !DILocation(line: 702, column: 34, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !1990, file: !573, line: 702, column: 11)
!2418 = !DILocation(line: 704, column: 14, scope: !2417)
!2419 = !DILocation(line: 705, column: 14, scope: !2417)
!2420 = !DILocation(line: 705, column: 35, scope: !2417)
!2421 = !DILocation(line: 705, column: 17, scope: !2417)
!2422 = !DILocation(line: 705, column: 47, scope: !2417)
!2423 = !DILocation(line: 705, column: 65, scope: !2417)
!2424 = !DILocation(line: 706, column: 11, scope: !2417)
!2425 = !DILocation(line: 702, column: 11, scope: !1990)
!2426 = !DILocation(line: 395, column: 15, scope: !1988)
!2427 = !DILocation(line: 709, column: 5, scope: !1990)
!2428 = !DILocation(line: 710, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !1990, file: !573, line: 710, column: 7)
!2430 = !DILocation(line: 710, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2429, file: !573, line: 710, column: 7)
!2432 = !DILocation(line: 710, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !573, line: 710, column: 7)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !573, line: 710, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !573, line: 710, column: 7)
!2436 = !DILocation(line: 710, column: 7, scope: !2434)
!2437 = !DILocation(line: 710, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !573, line: 710, column: 7)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !573, line: 710, column: 7)
!2440 = !DILocation(line: 710, column: 7, scope: !2439)
!2441 = !DILocation(line: 710, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !573, line: 710, column: 7)
!2443 = distinct !DILexicalBlock(scope: !2435, file: !573, line: 710, column: 7)
!2444 = !DILocation(line: 710, column: 7, scope: !2443)
!2445 = !DILocation(line: 710, column: 7, scope: !2435)
!2446 = !DILocation(line: 710, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !573, line: 710, column: 7)
!2448 = distinct !DILexicalBlock(scope: !2429, file: !573, line: 710, column: 7)
!2449 = !DILocation(line: 710, column: 7, scope: !2448)
!2450 = !DILocation(line: 712, column: 5, scope: !1990)
!2451 = !DILocation(line: 713, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !573, line: 713, column: 7)
!2453 = distinct !DILexicalBlock(scope: !1990, file: !573, line: 713, column: 7)
!2454 = !DILocation(line: 417, column: 21, scope: !1990)
!2455 = !DILocation(line: 713, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !573, line: 713, column: 7)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !573, line: 713, column: 7)
!2458 = distinct !DILexicalBlock(scope: !2452, file: !573, line: 713, column: 7)
!2459 = !DILocation(line: 713, column: 7, scope: !2457)
!2460 = !DILocation(line: 713, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !573, line: 713, column: 7)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !573, line: 713, column: 7)
!2463 = !DILocation(line: 713, column: 7, scope: !2462)
!2464 = !DILocation(line: 713, column: 7, scope: !2458)
!2465 = !DILocation(line: 714, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !573, line: 714, column: 7)
!2467 = distinct !DILexicalBlock(scope: !1990, file: !573, line: 714, column: 7)
!2468 = !DILocation(line: 714, column: 7, scope: !2467)
!2469 = !DILocation(line: 716, column: 11, scope: !1990)
!2470 = !DILocation(line: 718, column: 5, scope: !1991)
!2471 = !DILocation(line: 395, column: 82, scope: !1991)
!2472 = !DILocation(line: 395, column: 3, scope: !1991)
!2473 = distinct !{!2473, !2121, !2474, !1018}
!2474 = !DILocation(line: 718, column: 5, scope: !1988)
!2475 = !DILocation(line: 720, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !1957, file: !573, line: 720, column: 7)
!2477 = !DILocation(line: 720, column: 16, scope: !2476)
!2478 = !DILocation(line: 728, column: 51, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !1957, file: !573, line: 728, column: 7)
!2480 = !DILocation(line: 731, column: 11, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2479, file: !573, line: 730, column: 5)
!2482 = !DILocation(line: 732, column: 16, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2481, file: !573, line: 731, column: 11)
!2484 = !DILocation(line: 732, column: 9, scope: !2483)
!2485 = !DILocation(line: 736, column: 18, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !573, line: 736, column: 16)
!2487 = !DILocation(line: 736, column: 29, scope: !2486)
!2488 = !DILocation(line: 745, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !1957, file: !573, line: 745, column: 7)
!2490 = !DILocation(line: 745, column: 20, scope: !2489)
!2491 = !DILocation(line: 746, column: 12, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !573, line: 746, column: 5)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !573, line: 746, column: 5)
!2494 = !DILocation(line: 746, column: 5, scope: !2493)
!2495 = !DILocation(line: 747, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !573, line: 747, column: 7)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !573, line: 747, column: 7)
!2498 = !DILocation(line: 747, column: 7, scope: !2497)
!2499 = !DILocation(line: 746, column: 39, scope: !2492)
!2500 = distinct !{!2500, !2494, !2501, !1018}
!2501 = !DILocation(line: 747, column: 7, scope: !2493)
!2502 = !DILocation(line: 749, column: 11, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !1957, file: !573, line: 749, column: 7)
!2504 = !DILocation(line: 749, column: 7, scope: !1957)
!2505 = !DILocation(line: 750, column: 5, scope: !2503)
!2506 = !DILocation(line: 750, column: 17, scope: !2503)
!2507 = !DILocation(line: 756, column: 21, scope: !2333)
!2508 = !DILocation(line: 760, column: 42, scope: !1957)
!2509 = !DILocation(line: 758, column: 10, scope: !1957)
!2510 = !DILocation(line: 758, column: 3, scope: !1957)
!2511 = !DILocation(line: 762, column: 1, scope: !1957)
!2512 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1092, file: !1092, line: 98, type: !2513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!131}
!2515 = !DISubprogram(name: "strlen", scope: !1088, file: !1088, line: 407, type: !2516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!133, !134}
!2518 = !DISubprogram(name: "iswprint", scope: !2519, file: !2519, line: 120, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!2519 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2520 = distinct !DISubprogram(name: "quotearg_alloc", scope: !573, file: !573, line: 788, type: !2521, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!129, !134, !131, !1850}
!2523 = !{!2524, !2525, !2526}
!2524 = !DILocalVariable(name: "arg", arg: 1, scope: !2520, file: !573, line: 788, type: !134)
!2525 = !DILocalVariable(name: "argsize", arg: 2, scope: !2520, file: !573, line: 788, type: !131)
!2526 = !DILocalVariable(name: "o", arg: 3, scope: !2520, file: !573, line: 789, type: !1850)
!2527 = !DILocation(line: 0, scope: !2520)
!2528 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !573, line: 801, type: !134)
!2529 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !573, file: !573, line: 801, type: !2530, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!129, !134, !131, !812, !1850}
!2532 = !{!2528, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2533 = !DILocalVariable(name: "argsize", arg: 2, scope: !2529, file: !573, line: 801, type: !131)
!2534 = !DILocalVariable(name: "size", arg: 3, scope: !2529, file: !573, line: 801, type: !812)
!2535 = !DILocalVariable(name: "o", arg: 4, scope: !2529, file: !573, line: 802, type: !1850)
!2536 = !DILocalVariable(name: "p", scope: !2529, file: !573, line: 804, type: !1850)
!2537 = !DILocalVariable(name: "saved_errno", scope: !2529, file: !573, line: 805, type: !104)
!2538 = !DILocalVariable(name: "flags", scope: !2529, file: !573, line: 807, type: !104)
!2539 = !DILocalVariable(name: "bufsize", scope: !2529, file: !573, line: 808, type: !131)
!2540 = !DILocalVariable(name: "buf", scope: !2529, file: !573, line: 812, type: !129)
!2541 = !DILocation(line: 0, scope: !2529, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 791, column: 10, scope: !2520)
!2543 = !DILocation(line: 804, column: 37, scope: !2529, inlinedAt: !2542)
!2544 = !DILocation(line: 805, column: 21, scope: !2529, inlinedAt: !2542)
!2545 = !DILocation(line: 807, column: 18, scope: !2529, inlinedAt: !2542)
!2546 = !DILocation(line: 807, column: 24, scope: !2529, inlinedAt: !2542)
!2547 = !DILocation(line: 808, column: 72, scope: !2529, inlinedAt: !2542)
!2548 = !DILocation(line: 809, column: 56, scope: !2529, inlinedAt: !2542)
!2549 = !DILocation(line: 810, column: 49, scope: !2529, inlinedAt: !2542)
!2550 = !DILocation(line: 811, column: 49, scope: !2529, inlinedAt: !2542)
!2551 = !DILocation(line: 808, column: 20, scope: !2529, inlinedAt: !2542)
!2552 = !DILocation(line: 811, column: 62, scope: !2529, inlinedAt: !2542)
!2553 = !DILocation(line: 812, column: 15, scope: !2529, inlinedAt: !2542)
!2554 = !DILocation(line: 813, column: 60, scope: !2529, inlinedAt: !2542)
!2555 = !DILocation(line: 815, column: 32, scope: !2529, inlinedAt: !2542)
!2556 = !DILocation(line: 815, column: 47, scope: !2529, inlinedAt: !2542)
!2557 = !DILocation(line: 813, column: 3, scope: !2529, inlinedAt: !2542)
!2558 = !DILocation(line: 816, column: 9, scope: !2529, inlinedAt: !2542)
!2559 = !DILocation(line: 791, column: 3, scope: !2520)
!2560 = !DILocation(line: 0, scope: !2529)
!2561 = !DILocation(line: 804, column: 37, scope: !2529)
!2562 = !DILocation(line: 805, column: 21, scope: !2529)
!2563 = !DILocation(line: 807, column: 18, scope: !2529)
!2564 = !DILocation(line: 807, column: 27, scope: !2529)
!2565 = !DILocation(line: 807, column: 24, scope: !2529)
!2566 = !DILocation(line: 808, column: 72, scope: !2529)
!2567 = !DILocation(line: 809, column: 56, scope: !2529)
!2568 = !DILocation(line: 810, column: 49, scope: !2529)
!2569 = !DILocation(line: 811, column: 49, scope: !2529)
!2570 = !DILocation(line: 808, column: 20, scope: !2529)
!2571 = !DILocation(line: 811, column: 62, scope: !2529)
!2572 = !DILocation(line: 812, column: 15, scope: !2529)
!2573 = !DILocation(line: 813, column: 60, scope: !2529)
!2574 = !DILocation(line: 815, column: 32, scope: !2529)
!2575 = !DILocation(line: 815, column: 47, scope: !2529)
!2576 = !DILocation(line: 813, column: 3, scope: !2529)
!2577 = !DILocation(line: 816, column: 9, scope: !2529)
!2578 = !DILocation(line: 817, column: 7, scope: !2529)
!2579 = !DILocation(line: 818, column: 11, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2529, file: !573, line: 817, column: 7)
!2581 = !{!1281, !1281, i64 0}
!2582 = !DILocation(line: 818, column: 5, scope: !2580)
!2583 = !DILocation(line: 819, column: 3, scope: !2529)
!2584 = distinct !DISubprogram(name: "quotearg_free", scope: !573, file: !573, line: 837, type: !528, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2585)
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "sv", scope: !2584, file: !573, line: 839, type: !660)
!2587 = !DILocalVariable(name: "i", scope: !2588, file: !573, line: 840, type: !104)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !573, line: 840, column: 3)
!2589 = !DILocation(line: 839, column: 24, scope: !2584)
!2590 = !DILocation(line: 0, scope: !2584)
!2591 = !DILocation(line: 0, scope: !2588)
!2592 = !DILocation(line: 840, column: 21, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !573, line: 840, column: 3)
!2594 = !DILocation(line: 840, column: 3, scope: !2588)
!2595 = !DILocation(line: 842, column: 13, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2584, file: !573, line: 842, column: 7)
!2597 = !{!2598, !901, i64 8}
!2598 = !{!"slotvec", !1281, i64 0, !901, i64 8}
!2599 = !DILocation(line: 842, column: 17, scope: !2596)
!2600 = !DILocation(line: 842, column: 7, scope: !2584)
!2601 = !DILocation(line: 841, column: 17, scope: !2593)
!2602 = !DILocation(line: 841, column: 5, scope: !2593)
!2603 = !DILocation(line: 840, column: 32, scope: !2593)
!2604 = distinct !{!2604, !2594, !2605, !1018}
!2605 = !DILocation(line: 841, column: 20, scope: !2588)
!2606 = !DILocation(line: 844, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2596, file: !573, line: 843, column: 5)
!2608 = !DILocation(line: 845, column: 21, scope: !2607)
!2609 = !{!2598, !1281, i64 0}
!2610 = !DILocation(line: 846, column: 20, scope: !2607)
!2611 = !DILocation(line: 847, column: 5, scope: !2607)
!2612 = !DILocation(line: 848, column: 10, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2584, file: !573, line: 848, column: 7)
!2614 = !DILocation(line: 848, column: 7, scope: !2584)
!2615 = !DILocation(line: 850, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2613, file: !573, line: 849, column: 5)
!2617 = !DILocation(line: 851, column: 15, scope: !2616)
!2618 = !DILocation(line: 852, column: 5, scope: !2616)
!2619 = !DILocation(line: 853, column: 10, scope: !2584)
!2620 = !DILocation(line: 854, column: 1, scope: !2584)
!2621 = !DISubprogram(name: "free", scope: !1804, file: !1804, line: 786, type: !2622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !130}
!2624 = distinct !DISubprogram(name: "quotearg_n", scope: !573, file: !573, line: 919, type: !1085, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2625)
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !573, line: 919, type: !104)
!2627 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !573, line: 919, type: !134)
!2628 = !DILocation(line: 0, scope: !2624)
!2629 = !DILocation(line: 921, column: 10, scope: !2624)
!2630 = !DILocation(line: 921, column: 3, scope: !2624)
!2631 = distinct !DISubprogram(name: "quotearg_n_options", scope: !573, file: !573, line: 866, type: !2632, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!129, !104, !134, !131, !1850}
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2645, !2646, !2648, !2649, !2650}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !573, line: 866, type: !104)
!2636 = !DILocalVariable(name: "arg", arg: 2, scope: !2631, file: !573, line: 866, type: !134)
!2637 = !DILocalVariable(name: "argsize", arg: 3, scope: !2631, file: !573, line: 866, type: !131)
!2638 = !DILocalVariable(name: "options", arg: 4, scope: !2631, file: !573, line: 867, type: !1850)
!2639 = !DILocalVariable(name: "saved_errno", scope: !2631, file: !573, line: 869, type: !104)
!2640 = !DILocalVariable(name: "sv", scope: !2631, file: !573, line: 871, type: !660)
!2641 = !DILocalVariable(name: "nslots_max", scope: !2631, file: !573, line: 873, type: !104)
!2642 = !DILocalVariable(name: "preallocated", scope: !2643, file: !573, line: 879, type: !137)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !573, line: 878, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2631, file: !573, line: 877, column: 7)
!2645 = !DILocalVariable(name: "new_nslots", scope: !2643, file: !573, line: 880, type: !825)
!2646 = !DILocalVariable(name: "size", scope: !2647, file: !573, line: 891, type: !131)
!2647 = distinct !DILexicalBlock(scope: !2631, file: !573, line: 890, column: 3)
!2648 = !DILocalVariable(name: "val", scope: !2647, file: !573, line: 892, type: !129)
!2649 = !DILocalVariable(name: "flags", scope: !2647, file: !573, line: 894, type: !104)
!2650 = !DILocalVariable(name: "qsize", scope: !2647, file: !573, line: 895, type: !131)
!2651 = !DILocation(line: 0, scope: !2631)
!2652 = !DILocation(line: 869, column: 21, scope: !2631)
!2653 = !DILocation(line: 871, column: 24, scope: !2631)
!2654 = !DILocation(line: 874, column: 17, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2631, file: !573, line: 874, column: 7)
!2656 = !DILocation(line: 875, column: 5, scope: !2655)
!2657 = !DILocation(line: 877, column: 7, scope: !2644)
!2658 = !DILocation(line: 877, column: 14, scope: !2644)
!2659 = !DILocation(line: 877, column: 7, scope: !2631)
!2660 = !DILocation(line: 879, column: 31, scope: !2643)
!2661 = !DILocation(line: 0, scope: !2643)
!2662 = !DILocation(line: 880, column: 7, scope: !2643)
!2663 = !DILocation(line: 880, column: 26, scope: !2643)
!2664 = !DILocation(line: 880, column: 13, scope: !2643)
!2665 = !DILocation(line: 882, column: 31, scope: !2643)
!2666 = !DILocation(line: 883, column: 33, scope: !2643)
!2667 = !DILocation(line: 883, column: 42, scope: !2643)
!2668 = !DILocation(line: 883, column: 31, scope: !2643)
!2669 = !DILocation(line: 882, column: 22, scope: !2643)
!2670 = !DILocation(line: 882, column: 15, scope: !2643)
!2671 = !DILocation(line: 884, column: 11, scope: !2643)
!2672 = !DILocation(line: 885, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2643, file: !573, line: 884, column: 11)
!2674 = !{i64 0, i64 8, !2581, i64 8, i64 8, !900}
!2675 = !DILocation(line: 885, column: 9, scope: !2673)
!2676 = !DILocation(line: 886, column: 20, scope: !2643)
!2677 = !DILocation(line: 886, column: 18, scope: !2643)
!2678 = !DILocation(line: 886, column: 32, scope: !2643)
!2679 = !DILocation(line: 886, column: 43, scope: !2643)
!2680 = !DILocation(line: 886, column: 53, scope: !2643)
!2681 = !DILocation(line: 0, scope: !2060, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 886, column: 7, scope: !2643)
!2683 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2682)
!2684 = !DILocation(line: 887, column: 16, scope: !2643)
!2685 = !DILocation(line: 887, column: 14, scope: !2643)
!2686 = !DILocation(line: 888, column: 5, scope: !2644)
!2687 = !DILocation(line: 888, column: 5, scope: !2643)
!2688 = !DILocation(line: 891, column: 19, scope: !2647)
!2689 = !DILocation(line: 891, column: 25, scope: !2647)
!2690 = !DILocation(line: 0, scope: !2647)
!2691 = !DILocation(line: 892, column: 23, scope: !2647)
!2692 = !DILocation(line: 894, column: 26, scope: !2647)
!2693 = !DILocation(line: 894, column: 32, scope: !2647)
!2694 = !DILocation(line: 896, column: 55, scope: !2647)
!2695 = !DILocation(line: 897, column: 55, scope: !2647)
!2696 = !DILocation(line: 898, column: 55, scope: !2647)
!2697 = !DILocation(line: 899, column: 55, scope: !2647)
!2698 = !DILocation(line: 895, column: 20, scope: !2647)
!2699 = !DILocation(line: 901, column: 14, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2647, file: !573, line: 901, column: 9)
!2701 = !DILocation(line: 901, column: 9, scope: !2647)
!2702 = !DILocation(line: 903, column: 35, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !573, line: 902, column: 7)
!2704 = !DILocation(line: 903, column: 20, scope: !2703)
!2705 = !DILocation(line: 904, column: 17, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !573, line: 904, column: 13)
!2707 = !DILocation(line: 904, column: 13, scope: !2703)
!2708 = !DILocation(line: 905, column: 11, scope: !2706)
!2709 = !DILocation(line: 906, column: 27, scope: !2703)
!2710 = !DILocation(line: 906, column: 19, scope: !2703)
!2711 = !DILocation(line: 907, column: 69, scope: !2703)
!2712 = !DILocation(line: 909, column: 44, scope: !2703)
!2713 = !DILocation(line: 910, column: 44, scope: !2703)
!2714 = !DILocation(line: 907, column: 9, scope: !2703)
!2715 = !DILocation(line: 911, column: 7, scope: !2703)
!2716 = !DILocation(line: 913, column: 11, scope: !2647)
!2717 = !DILocation(line: 914, column: 5, scope: !2647)
!2718 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !573, file: !573, line: 925, type: !2719, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!129, !104, !134, !131}
!2721 = !{!2722, !2723, !2724}
!2722 = !DILocalVariable(name: "n", arg: 1, scope: !2718, file: !573, line: 925, type: !104)
!2723 = !DILocalVariable(name: "arg", arg: 2, scope: !2718, file: !573, line: 925, type: !134)
!2724 = !DILocalVariable(name: "argsize", arg: 3, scope: !2718, file: !573, line: 925, type: !131)
!2725 = !DILocation(line: 0, scope: !2718)
!2726 = !DILocation(line: 927, column: 10, scope: !2718)
!2727 = !DILocation(line: 927, column: 3, scope: !2718)
!2728 = distinct !DISubprogram(name: "quotearg", scope: !573, file: !573, line: 931, type: !1094, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2729)
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2728, file: !573, line: 931, type: !134)
!2731 = !DILocation(line: 0, scope: !2728)
!2732 = !DILocation(line: 0, scope: !2624, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 933, column: 10, scope: !2728)
!2734 = !DILocation(line: 921, column: 10, scope: !2624, inlinedAt: !2733)
!2735 = !DILocation(line: 933, column: 3, scope: !2728)
!2736 = distinct !DISubprogram(name: "quotearg_mem", scope: !573, file: !573, line: 937, type: !2737, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!129, !134, !131}
!2739 = !{!2740, !2741}
!2740 = !DILocalVariable(name: "arg", arg: 1, scope: !2736, file: !573, line: 937, type: !134)
!2741 = !DILocalVariable(name: "argsize", arg: 2, scope: !2736, file: !573, line: 937, type: !131)
!2742 = !DILocation(line: 0, scope: !2736)
!2743 = !DILocation(line: 0, scope: !2718, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 939, column: 10, scope: !2736)
!2745 = !DILocation(line: 927, column: 10, scope: !2718, inlinedAt: !2744)
!2746 = !DILocation(line: 939, column: 3, scope: !2736)
!2747 = distinct !DISubprogram(name: "quotearg_n_style", scope: !573, file: !573, line: 943, type: !2748, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!129, !104, !108, !134}
!2750 = !{!2751, !2752, !2753, !2754}
!2751 = !DILocalVariable(name: "n", arg: 1, scope: !2747, file: !573, line: 943, type: !104)
!2752 = !DILocalVariable(name: "s", arg: 2, scope: !2747, file: !573, line: 943, type: !108)
!2753 = !DILocalVariable(name: "arg", arg: 3, scope: !2747, file: !573, line: 943, type: !134)
!2754 = !DILocalVariable(name: "o", scope: !2747, file: !573, line: 945, type: !1851)
!2755 = !DILocation(line: 0, scope: !2747)
!2756 = !DILocation(line: 945, column: 3, scope: !2747)
!2757 = !DILocation(line: 945, column: 32, scope: !2747)
!2758 = !{!2759}
!2759 = distinct !{!2759, !2760, !"quoting_options_from_style: argument 0"}
!2760 = distinct !{!2760, !"quoting_options_from_style"}
!2761 = !DILocation(line: 945, column: 36, scope: !2747)
!2762 = !DILocalVariable(name: "style", arg: 1, scope: !2763, file: !573, line: 183, type: !108)
!2763 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !573, file: !573, line: 183, type: !2764, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!612, !108}
!2766 = !{!2762, !2767}
!2767 = !DILocalVariable(name: "o", scope: !2763, file: !573, line: 185, type: !612)
!2768 = !DILocation(line: 0, scope: !2763, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 945, column: 36, scope: !2747)
!2770 = !DILocation(line: 185, column: 26, scope: !2763, inlinedAt: !2769)
!2771 = !DILocation(line: 186, column: 13, scope: !2772, inlinedAt: !2769)
!2772 = distinct !DILexicalBlock(scope: !2763, file: !573, line: 186, column: 7)
!2773 = !DILocation(line: 186, column: 7, scope: !2763, inlinedAt: !2769)
!2774 = !DILocation(line: 187, column: 5, scope: !2772, inlinedAt: !2769)
!2775 = !DILocation(line: 188, column: 11, scope: !2763, inlinedAt: !2769)
!2776 = !DILocation(line: 946, column: 10, scope: !2747)
!2777 = !DILocation(line: 947, column: 1, scope: !2747)
!2778 = !DILocation(line: 946, column: 3, scope: !2747)
!2779 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !573, file: !573, line: 950, type: !2780, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!129, !104, !108, !134, !131}
!2782 = !{!2783, !2784, !2785, !2786, !2787}
!2783 = !DILocalVariable(name: "n", arg: 1, scope: !2779, file: !573, line: 950, type: !104)
!2784 = !DILocalVariable(name: "s", arg: 2, scope: !2779, file: !573, line: 950, type: !108)
!2785 = !DILocalVariable(name: "arg", arg: 3, scope: !2779, file: !573, line: 951, type: !134)
!2786 = !DILocalVariable(name: "argsize", arg: 4, scope: !2779, file: !573, line: 951, type: !131)
!2787 = !DILocalVariable(name: "o", scope: !2779, file: !573, line: 953, type: !1851)
!2788 = !DILocation(line: 0, scope: !2779)
!2789 = !DILocation(line: 953, column: 3, scope: !2779)
!2790 = !DILocation(line: 953, column: 32, scope: !2779)
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"quoting_options_from_style: argument 0"}
!2793 = distinct !{!2793, !"quoting_options_from_style"}
!2794 = !DILocation(line: 953, column: 36, scope: !2779)
!2795 = !DILocation(line: 0, scope: !2763, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 953, column: 36, scope: !2779)
!2797 = !DILocation(line: 185, column: 26, scope: !2763, inlinedAt: !2796)
!2798 = !DILocation(line: 186, column: 13, scope: !2772, inlinedAt: !2796)
!2799 = !DILocation(line: 186, column: 7, scope: !2763, inlinedAt: !2796)
!2800 = !DILocation(line: 187, column: 5, scope: !2772, inlinedAt: !2796)
!2801 = !DILocation(line: 188, column: 11, scope: !2763, inlinedAt: !2796)
!2802 = !DILocation(line: 954, column: 10, scope: !2779)
!2803 = !DILocation(line: 955, column: 1, scope: !2779)
!2804 = !DILocation(line: 954, column: 3, scope: !2779)
!2805 = distinct !DISubprogram(name: "quotearg_style", scope: !573, file: !573, line: 958, type: !2806, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!129, !108, !134}
!2808 = !{!2809, !2810}
!2809 = !DILocalVariable(name: "s", arg: 1, scope: !2805, file: !573, line: 958, type: !108)
!2810 = !DILocalVariable(name: "arg", arg: 2, scope: !2805, file: !573, line: 958, type: !134)
!2811 = !DILocation(line: 0, scope: !2805)
!2812 = !DILocation(line: 0, scope: !2747, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 960, column: 10, scope: !2805)
!2814 = !DILocation(line: 945, column: 3, scope: !2747, inlinedAt: !2813)
!2815 = !DILocation(line: 945, column: 32, scope: !2747, inlinedAt: !2813)
!2816 = !{!2817}
!2817 = distinct !{!2817, !2818, !"quoting_options_from_style: argument 0"}
!2818 = distinct !{!2818, !"quoting_options_from_style"}
!2819 = !DILocation(line: 945, column: 36, scope: !2747, inlinedAt: !2813)
!2820 = !DILocation(line: 0, scope: !2763, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 945, column: 36, scope: !2747, inlinedAt: !2813)
!2822 = !DILocation(line: 185, column: 26, scope: !2763, inlinedAt: !2821)
!2823 = !DILocation(line: 186, column: 13, scope: !2772, inlinedAt: !2821)
!2824 = !DILocation(line: 186, column: 7, scope: !2763, inlinedAt: !2821)
!2825 = !DILocation(line: 187, column: 5, scope: !2772, inlinedAt: !2821)
!2826 = !DILocation(line: 188, column: 11, scope: !2763, inlinedAt: !2821)
!2827 = !DILocation(line: 946, column: 10, scope: !2747, inlinedAt: !2813)
!2828 = !DILocation(line: 947, column: 1, scope: !2747, inlinedAt: !2813)
!2829 = !DILocation(line: 960, column: 3, scope: !2805)
!2830 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !573, file: !573, line: 964, type: !2831, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!129, !108, !134, !131}
!2833 = !{!2834, !2835, !2836}
!2834 = !DILocalVariable(name: "s", arg: 1, scope: !2830, file: !573, line: 964, type: !108)
!2835 = !DILocalVariable(name: "arg", arg: 2, scope: !2830, file: !573, line: 964, type: !134)
!2836 = !DILocalVariable(name: "argsize", arg: 3, scope: !2830, file: !573, line: 964, type: !131)
!2837 = !DILocation(line: 0, scope: !2830)
!2838 = !DILocation(line: 0, scope: !2779, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 966, column: 10, scope: !2830)
!2840 = !DILocation(line: 953, column: 3, scope: !2779, inlinedAt: !2839)
!2841 = !DILocation(line: 953, column: 32, scope: !2779, inlinedAt: !2839)
!2842 = !{!2843}
!2843 = distinct !{!2843, !2844, !"quoting_options_from_style: argument 0"}
!2844 = distinct !{!2844, !"quoting_options_from_style"}
!2845 = !DILocation(line: 953, column: 36, scope: !2779, inlinedAt: !2839)
!2846 = !DILocation(line: 0, scope: !2763, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 953, column: 36, scope: !2779, inlinedAt: !2839)
!2848 = !DILocation(line: 185, column: 26, scope: !2763, inlinedAt: !2847)
!2849 = !DILocation(line: 186, column: 13, scope: !2772, inlinedAt: !2847)
!2850 = !DILocation(line: 186, column: 7, scope: !2763, inlinedAt: !2847)
!2851 = !DILocation(line: 187, column: 5, scope: !2772, inlinedAt: !2847)
!2852 = !DILocation(line: 188, column: 11, scope: !2763, inlinedAt: !2847)
!2853 = !DILocation(line: 954, column: 10, scope: !2779, inlinedAt: !2839)
!2854 = !DILocation(line: 955, column: 1, scope: !2779, inlinedAt: !2839)
!2855 = !DILocation(line: 966, column: 3, scope: !2830)
!2856 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !573, file: !573, line: 970, type: !2857, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!129, !134, !131, !4}
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "arg", arg: 1, scope: !2856, file: !573, line: 970, type: !134)
!2861 = !DILocalVariable(name: "argsize", arg: 2, scope: !2856, file: !573, line: 970, type: !131)
!2862 = !DILocalVariable(name: "ch", arg: 3, scope: !2856, file: !573, line: 970, type: !4)
!2863 = !DILocalVariable(name: "options", scope: !2856, file: !573, line: 972, type: !612)
!2864 = !DILocation(line: 0, scope: !2856)
!2865 = !DILocation(line: 972, column: 3, scope: !2856)
!2866 = !DILocation(line: 972, column: 26, scope: !2856)
!2867 = !DILocation(line: 973, column: 13, scope: !2856)
!2868 = !{i64 0, i64 4, !980, i64 4, i64 4, !971, i64 8, i64 32, !980, i64 40, i64 8, !900, i64 48, i64 8, !900}
!2869 = !DILocation(line: 0, scope: !1870, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 974, column: 3, scope: !2856)
!2871 = !DILocation(line: 147, column: 41, scope: !1870, inlinedAt: !2870)
!2872 = !DILocation(line: 147, column: 62, scope: !1870, inlinedAt: !2870)
!2873 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2870)
!2874 = !DILocation(line: 148, column: 15, scope: !1870, inlinedAt: !2870)
!2875 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2870)
!2876 = !DILocation(line: 149, column: 24, scope: !1870, inlinedAt: !2870)
!2877 = !DILocation(line: 150, column: 19, scope: !1870, inlinedAt: !2870)
!2878 = !DILocation(line: 150, column: 24, scope: !1870, inlinedAt: !2870)
!2879 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2870)
!2880 = !DILocation(line: 975, column: 10, scope: !2856)
!2881 = !DILocation(line: 976, column: 1, scope: !2856)
!2882 = !DILocation(line: 975, column: 3, scope: !2856)
!2883 = distinct !DISubprogram(name: "quotearg_char", scope: !573, file: !573, line: 979, type: !2884, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!129, !134, !4}
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !573, line: 979, type: !134)
!2888 = !DILocalVariable(name: "ch", arg: 2, scope: !2883, file: !573, line: 979, type: !4)
!2889 = !DILocation(line: 0, scope: !2883)
!2890 = !DILocation(line: 0, scope: !2856, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 981, column: 10, scope: !2883)
!2892 = !DILocation(line: 972, column: 3, scope: !2856, inlinedAt: !2891)
!2893 = !DILocation(line: 972, column: 26, scope: !2856, inlinedAt: !2891)
!2894 = !DILocation(line: 973, column: 13, scope: !2856, inlinedAt: !2891)
!2895 = !DILocation(line: 0, scope: !1870, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 974, column: 3, scope: !2856, inlinedAt: !2891)
!2897 = !DILocation(line: 147, column: 41, scope: !1870, inlinedAt: !2896)
!2898 = !DILocation(line: 147, column: 62, scope: !1870, inlinedAt: !2896)
!2899 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2896)
!2900 = !DILocation(line: 148, column: 15, scope: !1870, inlinedAt: !2896)
!2901 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2896)
!2902 = !DILocation(line: 149, column: 24, scope: !1870, inlinedAt: !2896)
!2903 = !DILocation(line: 150, column: 19, scope: !1870, inlinedAt: !2896)
!2904 = !DILocation(line: 150, column: 24, scope: !1870, inlinedAt: !2896)
!2905 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2896)
!2906 = !DILocation(line: 975, column: 10, scope: !2856, inlinedAt: !2891)
!2907 = !DILocation(line: 976, column: 1, scope: !2856, inlinedAt: !2891)
!2908 = !DILocation(line: 981, column: 3, scope: !2883)
!2909 = distinct !DISubprogram(name: "quotearg_colon", scope: !573, file: !573, line: 985, type: !1094, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2910)
!2910 = !{!2911}
!2911 = !DILocalVariable(name: "arg", arg: 1, scope: !2909, file: !573, line: 985, type: !134)
!2912 = !DILocation(line: 0, scope: !2909)
!2913 = !DILocation(line: 0, scope: !2883, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 987, column: 10, scope: !2909)
!2915 = !DILocation(line: 0, scope: !2856, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 981, column: 10, scope: !2883, inlinedAt: !2914)
!2917 = !DILocation(line: 972, column: 3, scope: !2856, inlinedAt: !2916)
!2918 = !DILocation(line: 972, column: 26, scope: !2856, inlinedAt: !2916)
!2919 = !DILocation(line: 973, column: 13, scope: !2856, inlinedAt: !2916)
!2920 = !DILocation(line: 0, scope: !1870, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 974, column: 3, scope: !2856, inlinedAt: !2916)
!2922 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2921)
!2923 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2921)
!2924 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2921)
!2925 = !DILocation(line: 975, column: 10, scope: !2856, inlinedAt: !2916)
!2926 = !DILocation(line: 976, column: 1, scope: !2856, inlinedAt: !2916)
!2927 = !DILocation(line: 987, column: 3, scope: !2909)
!2928 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !573, file: !573, line: 991, type: !2737, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2929)
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !573, line: 991, type: !134)
!2931 = !DILocalVariable(name: "argsize", arg: 2, scope: !2928, file: !573, line: 991, type: !131)
!2932 = !DILocation(line: 0, scope: !2928)
!2933 = !DILocation(line: 0, scope: !2856, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 993, column: 10, scope: !2928)
!2935 = !DILocation(line: 972, column: 3, scope: !2856, inlinedAt: !2934)
!2936 = !DILocation(line: 972, column: 26, scope: !2856, inlinedAt: !2934)
!2937 = !DILocation(line: 973, column: 13, scope: !2856, inlinedAt: !2934)
!2938 = !DILocation(line: 0, scope: !1870, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 974, column: 3, scope: !2856, inlinedAt: !2934)
!2940 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2939)
!2941 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2939)
!2942 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2939)
!2943 = !DILocation(line: 975, column: 10, scope: !2856, inlinedAt: !2934)
!2944 = !DILocation(line: 976, column: 1, scope: !2856, inlinedAt: !2934)
!2945 = !DILocation(line: 993, column: 3, scope: !2928)
!2946 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !573, file: !573, line: 997, type: !2748, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2947)
!2947 = !{!2948, !2949, !2950, !2951}
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2946, file: !573, line: 997, type: !104)
!2949 = !DILocalVariable(name: "s", arg: 2, scope: !2946, file: !573, line: 997, type: !108)
!2950 = !DILocalVariable(name: "arg", arg: 3, scope: !2946, file: !573, line: 997, type: !134)
!2951 = !DILocalVariable(name: "options", scope: !2946, file: !573, line: 999, type: !612)
!2952 = !DILocation(line: 185, column: 26, scope: !2763, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 1000, column: 13, scope: !2946)
!2954 = !DILocation(line: 0, scope: !2946)
!2955 = !DILocation(line: 999, column: 3, scope: !2946)
!2956 = !DILocation(line: 999, column: 26, scope: !2946)
!2957 = !DILocation(line: 0, scope: !2763, inlinedAt: !2953)
!2958 = !DILocation(line: 186, column: 13, scope: !2772, inlinedAt: !2953)
!2959 = !DILocation(line: 186, column: 7, scope: !2763, inlinedAt: !2953)
!2960 = !DILocation(line: 187, column: 5, scope: !2772, inlinedAt: !2953)
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"quoting_options_from_style: argument 0"}
!2963 = distinct !{!2963, !"quoting_options_from_style"}
!2964 = !DILocation(line: 1000, column: 13, scope: !2946)
!2965 = !DILocation(line: 0, scope: !1870, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1001, column: 3, scope: !2946)
!2967 = !DILocation(line: 147, column: 57, scope: !1870, inlinedAt: !2966)
!2968 = !DILocation(line: 149, column: 21, scope: !1870, inlinedAt: !2966)
!2969 = !DILocation(line: 150, column: 6, scope: !1870, inlinedAt: !2966)
!2970 = !DILocation(line: 1002, column: 10, scope: !2946)
!2971 = !DILocation(line: 1003, column: 1, scope: !2946)
!2972 = !DILocation(line: 1002, column: 3, scope: !2946)
!2973 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !573, file: !573, line: 1006, type: !2974, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!129, !104, !134, !134, !134}
!2976 = !{!2977, !2978, !2979, !2980}
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2973, file: !573, line: 1006, type: !104)
!2978 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2973, file: !573, line: 1006, type: !134)
!2979 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2973, file: !573, line: 1007, type: !134)
!2980 = !DILocalVariable(name: "arg", arg: 4, scope: !2973, file: !573, line: 1007, type: !134)
!2981 = !DILocation(line: 0, scope: !2973)
!2982 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !573, line: 1014, type: !104)
!2983 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !573, file: !573, line: 1014, type: !2984, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!129, !104, !134, !134, !134, !131}
!2986 = !{!2982, !2987, !2988, !2989, !2990, !2991}
!2987 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2983, file: !573, line: 1014, type: !134)
!2988 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2983, file: !573, line: 1015, type: !134)
!2989 = !DILocalVariable(name: "arg", arg: 4, scope: !2983, file: !573, line: 1016, type: !134)
!2990 = !DILocalVariable(name: "argsize", arg: 5, scope: !2983, file: !573, line: 1016, type: !131)
!2991 = !DILocalVariable(name: "o", scope: !2983, file: !573, line: 1018, type: !612)
!2992 = !DILocation(line: 0, scope: !2983, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 1009, column: 10, scope: !2973)
!2994 = !DILocation(line: 1018, column: 3, scope: !2983, inlinedAt: !2993)
!2995 = !DILocation(line: 1018, column: 26, scope: !2983, inlinedAt: !2993)
!2996 = !DILocation(line: 1018, column: 30, scope: !2983, inlinedAt: !2993)
!2997 = !DILocation(line: 0, scope: !1910, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 1019, column: 3, scope: !2983, inlinedAt: !2993)
!2999 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !2998)
!3000 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !2998)
!3001 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !2998)
!3002 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !2998)
!3003 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !2998)
!3004 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !2998)
!3005 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !2998)
!3006 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !2998)
!3007 = !DILocation(line: 1020, column: 10, scope: !2983, inlinedAt: !2993)
!3008 = !DILocation(line: 1021, column: 1, scope: !2983, inlinedAt: !2993)
!3009 = !DILocation(line: 1009, column: 3, scope: !2973)
!3010 = !DILocation(line: 0, scope: !2983)
!3011 = !DILocation(line: 1018, column: 3, scope: !2983)
!3012 = !DILocation(line: 1018, column: 26, scope: !2983)
!3013 = !DILocation(line: 1018, column: 30, scope: !2983)
!3014 = !DILocation(line: 0, scope: !1910, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1019, column: 3, scope: !2983)
!3016 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !3015)
!3017 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !3015)
!3018 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !3015)
!3019 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !3015)
!3020 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !3015)
!3021 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !3015)
!3022 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !3015)
!3023 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !3015)
!3024 = !DILocation(line: 1020, column: 10, scope: !2983)
!3025 = !DILocation(line: 1021, column: 1, scope: !2983)
!3026 = !DILocation(line: 1020, column: 3, scope: !2983)
!3027 = distinct !DISubprogram(name: "quotearg_custom", scope: !573, file: !573, line: 1024, type: !3028, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!129, !134, !134, !134}
!3030 = !{!3031, !3032, !3033}
!3031 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3027, file: !573, line: 1024, type: !134)
!3032 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3027, file: !573, line: 1024, type: !134)
!3033 = !DILocalVariable(name: "arg", arg: 3, scope: !3027, file: !573, line: 1025, type: !134)
!3034 = !DILocation(line: 0, scope: !3027)
!3035 = !DILocation(line: 0, scope: !2973, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 1027, column: 10, scope: !3027)
!3037 = !DILocation(line: 0, scope: !2983, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1009, column: 10, scope: !2973, inlinedAt: !3036)
!3039 = !DILocation(line: 1018, column: 3, scope: !2983, inlinedAt: !3038)
!3040 = !DILocation(line: 1018, column: 26, scope: !2983, inlinedAt: !3038)
!3041 = !DILocation(line: 1018, column: 30, scope: !2983, inlinedAt: !3038)
!3042 = !DILocation(line: 0, scope: !1910, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1019, column: 3, scope: !2983, inlinedAt: !3038)
!3044 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !3043)
!3045 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !3043)
!3046 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !3043)
!3047 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !3043)
!3048 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !3043)
!3049 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !3043)
!3050 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !3043)
!3051 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !3043)
!3052 = !DILocation(line: 1020, column: 10, scope: !2983, inlinedAt: !3038)
!3053 = !DILocation(line: 1021, column: 1, scope: !2983, inlinedAt: !3038)
!3054 = !DILocation(line: 1027, column: 3, scope: !3027)
!3055 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !573, file: !573, line: 1031, type: !3056, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!129, !134, !134, !134, !131}
!3058 = !{!3059, !3060, !3061, !3062}
!3059 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3055, file: !573, line: 1031, type: !134)
!3060 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3055, file: !573, line: 1031, type: !134)
!3061 = !DILocalVariable(name: "arg", arg: 3, scope: !3055, file: !573, line: 1032, type: !134)
!3062 = !DILocalVariable(name: "argsize", arg: 4, scope: !3055, file: !573, line: 1032, type: !131)
!3063 = !DILocation(line: 0, scope: !3055)
!3064 = !DILocation(line: 0, scope: !2983, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1034, column: 10, scope: !3055)
!3066 = !DILocation(line: 1018, column: 3, scope: !2983, inlinedAt: !3065)
!3067 = !DILocation(line: 1018, column: 26, scope: !2983, inlinedAt: !3065)
!3068 = !DILocation(line: 1018, column: 30, scope: !2983, inlinedAt: !3065)
!3069 = !DILocation(line: 0, scope: !1910, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1019, column: 3, scope: !2983, inlinedAt: !3065)
!3071 = !DILocation(line: 174, column: 12, scope: !1910, inlinedAt: !3070)
!3072 = !DILocation(line: 175, column: 8, scope: !1923, inlinedAt: !3070)
!3073 = !DILocation(line: 175, column: 19, scope: !1923, inlinedAt: !3070)
!3074 = !DILocation(line: 176, column: 5, scope: !1923, inlinedAt: !3070)
!3075 = !DILocation(line: 177, column: 6, scope: !1910, inlinedAt: !3070)
!3076 = !DILocation(line: 177, column: 17, scope: !1910, inlinedAt: !3070)
!3077 = !DILocation(line: 178, column: 6, scope: !1910, inlinedAt: !3070)
!3078 = !DILocation(line: 178, column: 18, scope: !1910, inlinedAt: !3070)
!3079 = !DILocation(line: 1020, column: 10, scope: !2983, inlinedAt: !3065)
!3080 = !DILocation(line: 1021, column: 1, scope: !2983, inlinedAt: !3065)
!3081 = !DILocation(line: 1034, column: 3, scope: !3055)
!3082 = distinct !DISubprogram(name: "quote_n_mem", scope: !573, file: !573, line: 1049, type: !3083, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!134, !104, !134, !131}
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "n", arg: 1, scope: !3082, file: !573, line: 1049, type: !104)
!3087 = !DILocalVariable(name: "arg", arg: 2, scope: !3082, file: !573, line: 1049, type: !134)
!3088 = !DILocalVariable(name: "argsize", arg: 3, scope: !3082, file: !573, line: 1049, type: !131)
!3089 = !DILocation(line: 0, scope: !3082)
!3090 = !DILocation(line: 1051, column: 10, scope: !3082)
!3091 = !DILocation(line: 1051, column: 3, scope: !3082)
!3092 = distinct !DISubprogram(name: "quote_mem", scope: !573, file: !573, line: 1055, type: !3093, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!134, !134, !131}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "arg", arg: 1, scope: !3092, file: !573, line: 1055, type: !134)
!3097 = !DILocalVariable(name: "argsize", arg: 2, scope: !3092, file: !573, line: 1055, type: !131)
!3098 = !DILocation(line: 0, scope: !3092)
!3099 = !DILocation(line: 0, scope: !3082, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1057, column: 10, scope: !3092)
!3101 = !DILocation(line: 1051, column: 10, scope: !3082, inlinedAt: !3100)
!3102 = !DILocation(line: 1057, column: 3, scope: !3092)
!3103 = distinct !DISubprogram(name: "quote_n", scope: !573, file: !573, line: 1061, type: !3104, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!134, !104, !134}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !573, line: 1061, type: !104)
!3108 = !DILocalVariable(name: "arg", arg: 2, scope: !3103, file: !573, line: 1061, type: !134)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !3082, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1063, column: 10, scope: !3103)
!3112 = !DILocation(line: 1051, column: 10, scope: !3082, inlinedAt: !3111)
!3113 = !DILocation(line: 1063, column: 3, scope: !3103)
!3114 = distinct !DISubprogram(name: "quote", scope: !573, file: !573, line: 1067, type: !3115, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!134, !134}
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3114, file: !573, line: 1067, type: !134)
!3119 = !DILocation(line: 0, scope: !3114)
!3120 = !DILocation(line: 0, scope: !3103, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 1069, column: 10, scope: !3114)
!3122 = !DILocation(line: 0, scope: !3082, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 1063, column: 10, scope: !3103, inlinedAt: !3121)
!3124 = !DILocation(line: 1051, column: 10, scope: !3082, inlinedAt: !3123)
!3125 = !DILocation(line: 1069, column: 3, scope: !3114)
!3126 = distinct !DISubprogram(name: "version_etc_arn", scope: !675, file: !675, line: 61, type: !3127, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !3164)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !3129, !134, !134, !134, !3163, !131}
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !3131)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3131, file: !253, line: 51, baseType: !104, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3131, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3131, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3131, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3131, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3131, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3131, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3131, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3131, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3131, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3131, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3131, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3131, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3131, file: !253, line: 70, baseType: !3147, size: 64, offset: 832)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3131, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3131, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3131, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3131, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3131, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3131, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3131, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3131, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3131, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3131, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3131, file: !253, line: 93, baseType: !3147, size: 64, offset: 1344)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3131, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3131, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3131, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3131, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3170}
!3165 = !DILocalVariable(name: "stream", arg: 1, scope: !3126, file: !675, line: 61, type: !3129)
!3166 = !DILocalVariable(name: "command_name", arg: 2, scope: !3126, file: !675, line: 62, type: !134)
!3167 = !DILocalVariable(name: "package", arg: 3, scope: !3126, file: !675, line: 62, type: !134)
!3168 = !DILocalVariable(name: "version", arg: 4, scope: !3126, file: !675, line: 63, type: !134)
!3169 = !DILocalVariable(name: "authors", arg: 5, scope: !3126, file: !675, line: 64, type: !3163)
!3170 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3126, file: !675, line: 64, type: !131)
!3171 = !DILocation(line: 0, scope: !3126)
!3172 = !DILocation(line: 66, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3126, file: !675, line: 66, column: 7)
!3174 = !DILocation(line: 66, column: 7, scope: !3126)
!3175 = !DILocation(line: 67, column: 5, scope: !3173)
!3176 = !DILocation(line: 69, column: 5, scope: !3173)
!3177 = !DILocation(line: 83, column: 3, scope: !3126)
!3178 = !DILocation(line: 85, column: 3, scope: !3126)
!3179 = !DILocation(line: 88, column: 3, scope: !3126)
!3180 = !DILocation(line: 95, column: 3, scope: !3126)
!3181 = !DILocation(line: 97, column: 3, scope: !3126)
!3182 = !DILocation(line: 105, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3126, file: !675, line: 98, column: 5)
!3184 = !DILocation(line: 106, column: 7, scope: !3183)
!3185 = !DILocation(line: 109, column: 7, scope: !3183)
!3186 = !DILocation(line: 110, column: 7, scope: !3183)
!3187 = !DILocation(line: 113, column: 7, scope: !3183)
!3188 = !DILocation(line: 115, column: 7, scope: !3183)
!3189 = !DILocation(line: 120, column: 7, scope: !3183)
!3190 = !DILocation(line: 122, column: 7, scope: !3183)
!3191 = !DILocation(line: 127, column: 7, scope: !3183)
!3192 = !DILocation(line: 129, column: 7, scope: !3183)
!3193 = !DILocation(line: 134, column: 7, scope: !3183)
!3194 = !DILocation(line: 137, column: 7, scope: !3183)
!3195 = !DILocation(line: 142, column: 7, scope: !3183)
!3196 = !DILocation(line: 145, column: 7, scope: !3183)
!3197 = !DILocation(line: 150, column: 7, scope: !3183)
!3198 = !DILocation(line: 154, column: 7, scope: !3183)
!3199 = !DILocation(line: 159, column: 7, scope: !3183)
!3200 = !DILocation(line: 163, column: 7, scope: !3183)
!3201 = !DILocation(line: 170, column: 7, scope: !3183)
!3202 = !DILocation(line: 174, column: 7, scope: !3183)
!3203 = !DILocation(line: 176, column: 1, scope: !3126)
!3204 = distinct !DISubprogram(name: "version_etc_ar", scope: !675, file: !675, line: 183, type: !3205, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !3129, !134, !134, !134, !3163}
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213}
!3208 = !DILocalVariable(name: "stream", arg: 1, scope: !3204, file: !675, line: 183, type: !3129)
!3209 = !DILocalVariable(name: "command_name", arg: 2, scope: !3204, file: !675, line: 184, type: !134)
!3210 = !DILocalVariable(name: "package", arg: 3, scope: !3204, file: !675, line: 184, type: !134)
!3211 = !DILocalVariable(name: "version", arg: 4, scope: !3204, file: !675, line: 185, type: !134)
!3212 = !DILocalVariable(name: "authors", arg: 5, scope: !3204, file: !675, line: 185, type: !3163)
!3213 = !DILocalVariable(name: "n_authors", scope: !3204, file: !675, line: 187, type: !131)
!3214 = !DILocation(line: 0, scope: !3204)
!3215 = !DILocation(line: 189, column: 8, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3204, file: !675, line: 189, column: 3)
!3217 = !DILocation(line: 189, scope: !3216)
!3218 = !DILocation(line: 189, column: 23, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3216, file: !675, line: 189, column: 3)
!3220 = !DILocation(line: 189, column: 3, scope: !3216)
!3221 = !DILocation(line: 189, column: 52, scope: !3219)
!3222 = distinct !{!3222, !3220, !3223, !1018}
!3223 = !DILocation(line: 190, column: 5, scope: !3216)
!3224 = !DILocation(line: 191, column: 3, scope: !3204)
!3225 = !DILocation(line: 192, column: 1, scope: !3204)
!3226 = distinct !DISubprogram(name: "version_etc_va", scope: !675, file: !675, line: 199, type: !3227, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !3240)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !3129, !134, !134, !134, !3229}
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !3230)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !492, line: 14, baseType: !3231)
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3232, baseType: !3233)
!3232 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3234)
!3234 = !{!3235, !3236, !3237, !3238, !3239}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3233, file: !3232, line: 192, baseType: !130, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3233, file: !3232, line: 192, baseType: !130, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3233, file: !3232, line: 192, baseType: !130, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3233, file: !3232, line: 192, baseType: !104, size: 32, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3233, file: !3232, line: 192, baseType: !104, size: 32, offset: 224)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247}
!3241 = !DILocalVariable(name: "stream", arg: 1, scope: !3226, file: !675, line: 199, type: !3129)
!3242 = !DILocalVariable(name: "command_name", arg: 2, scope: !3226, file: !675, line: 200, type: !134)
!3243 = !DILocalVariable(name: "package", arg: 3, scope: !3226, file: !675, line: 200, type: !134)
!3244 = !DILocalVariable(name: "version", arg: 4, scope: !3226, file: !675, line: 201, type: !134)
!3245 = !DILocalVariable(name: "authors", arg: 5, scope: !3226, file: !675, line: 201, type: !3229)
!3246 = !DILocalVariable(name: "n_authors", scope: !3226, file: !675, line: 203, type: !131)
!3247 = !DILocalVariable(name: "authtab", scope: !3226, file: !675, line: 204, type: !3248)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !62)
!3249 = !DILocation(line: 0, scope: !3226)
!3250 = !DILocation(line: 201, column: 46, scope: !3226)
!3251 = !DILocation(line: 204, column: 3, scope: !3226)
!3252 = !DILocation(line: 204, column: 15, scope: !3226)
!3253 = !DILocation(line: 208, column: 35, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !675, line: 206, column: 3)
!3255 = distinct !DILexicalBlock(scope: !3226, file: !675, line: 206, column: 3)
!3256 = !DILocation(line: 208, column: 33, scope: !3254)
!3257 = !DILocation(line: 208, column: 67, scope: !3254)
!3258 = !DILocation(line: 206, column: 3, scope: !3255)
!3259 = !DILocation(line: 208, column: 14, scope: !3254)
!3260 = !DILocation(line: 0, scope: !3255)
!3261 = !DILocation(line: 211, column: 3, scope: !3226)
!3262 = !DILocation(line: 213, column: 1, scope: !3226)
!3263 = distinct !DISubprogram(name: "version_etc", scope: !675, file: !675, line: 230, type: !3264, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !3129, !134, !134, !134, null}
!3266 = !{!3267, !3268, !3269, !3270, !3271}
!3267 = !DILocalVariable(name: "stream", arg: 1, scope: !3263, file: !675, line: 230, type: !3129)
!3268 = !DILocalVariable(name: "command_name", arg: 2, scope: !3263, file: !675, line: 231, type: !134)
!3269 = !DILocalVariable(name: "package", arg: 3, scope: !3263, file: !675, line: 231, type: !134)
!3270 = !DILocalVariable(name: "version", arg: 4, scope: !3263, file: !675, line: 232, type: !134)
!3271 = !DILocalVariable(name: "authors", scope: !3263, file: !675, line: 234, type: !3229)
!3272 = !DILocation(line: 0, scope: !3263)
!3273 = !DILocation(line: 234, column: 3, scope: !3263)
!3274 = !DILocation(line: 234, column: 11, scope: !3263)
!3275 = !DILocation(line: 235, column: 3, scope: !3263)
!3276 = !DILocation(line: 236, column: 3, scope: !3263)
!3277 = !DILocation(line: 237, column: 3, scope: !3263)
!3278 = !DILocation(line: 238, column: 1, scope: !3263)
!3279 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !675, file: !675, line: 241, type: !528, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !909)
!3280 = !DILocation(line: 243, column: 3, scope: !3279)
!3281 = !DILocation(line: 248, column: 3, scope: !3279)
!3282 = !DILocation(line: 254, column: 3, scope: !3279)
!3283 = !DILocation(line: 259, column: 3, scope: !3279)
!3284 = !DILocation(line: 261, column: 1, scope: !3279)
!3285 = distinct !DISubprogram(name: "xnrealloc", scope: !3286, file: !3286, line: 147, type: !3287, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3289)
!3286 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!130, !130, !131, !131}
!3289 = !{!3290, !3291, !3292}
!3290 = !DILocalVariable(name: "p", arg: 1, scope: !3285, file: !3286, line: 147, type: !130)
!3291 = !DILocalVariable(name: "n", arg: 2, scope: !3285, file: !3286, line: 147, type: !131)
!3292 = !DILocalVariable(name: "s", arg: 3, scope: !3285, file: !3286, line: 147, type: !131)
!3293 = !DILocation(line: 0, scope: !3285)
!3294 = !DILocalVariable(name: "p", arg: 1, scope: !3295, file: !806, line: 83, type: !130)
!3295 = distinct !DISubprogram(name: "xreallocarray", scope: !806, file: !806, line: 83, type: !3287, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3296)
!3296 = !{!3294, !3297, !3298}
!3297 = !DILocalVariable(name: "n", arg: 2, scope: !3295, file: !806, line: 83, type: !131)
!3298 = !DILocalVariable(name: "s", arg: 3, scope: !3295, file: !806, line: 83, type: !131)
!3299 = !DILocation(line: 0, scope: !3295, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 149, column: 10, scope: !3285)
!3301 = !DILocation(line: 85, column: 25, scope: !3295, inlinedAt: !3300)
!3302 = !DILocalVariable(name: "p", arg: 1, scope: !3303, file: !806, line: 37, type: !130)
!3303 = distinct !DISubprogram(name: "check_nonnull", scope: !806, file: !806, line: 37, type: !3304, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!130, !130}
!3306 = !{!3302}
!3307 = !DILocation(line: 0, scope: !3303, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 85, column: 10, scope: !3295, inlinedAt: !3300)
!3309 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3308)
!3310 = distinct !DILexicalBlock(scope: !3303, file: !806, line: 39, column: 7)
!3311 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3308)
!3312 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3308)
!3313 = !DILocation(line: 149, column: 3, scope: !3285)
!3314 = !DILocation(line: 0, scope: !3295)
!3315 = !DILocation(line: 85, column: 25, scope: !3295)
!3316 = !DILocation(line: 0, scope: !3303, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 85, column: 10, scope: !3295)
!3318 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3317)
!3319 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3317)
!3320 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3317)
!3321 = !DILocation(line: 85, column: 3, scope: !3295)
!3322 = distinct !DISubprogram(name: "xmalloc", scope: !806, file: !806, line: 47, type: !3323, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!130, !131}
!3325 = !{!3326}
!3326 = !DILocalVariable(name: "s", arg: 1, scope: !3322, file: !806, line: 47, type: !131)
!3327 = !DILocation(line: 0, scope: !3322)
!3328 = !DILocation(line: 49, column: 25, scope: !3322)
!3329 = !DILocation(line: 0, scope: !3303, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 49, column: 10, scope: !3322)
!3331 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3330)
!3332 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3330)
!3333 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3330)
!3334 = !DILocation(line: 49, column: 3, scope: !3322)
!3335 = !DISubprogram(name: "malloc", scope: !1092, file: !1092, line: 540, type: !3323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!3336 = distinct !DISubprogram(name: "ximalloc", scope: !806, file: !806, line: 53, type: !3337, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!130, !825}
!3339 = !{!3340}
!3340 = !DILocalVariable(name: "s", arg: 1, scope: !3336, file: !806, line: 53, type: !825)
!3341 = !DILocation(line: 0, scope: !3336)
!3342 = !DILocalVariable(name: "s", arg: 1, scope: !3343, file: !3344, line: 55, type: !825)
!3343 = distinct !DISubprogram(name: "imalloc", scope: !3344, file: !3344, line: 55, type: !3337, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3345)
!3344 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3345 = !{!3342}
!3346 = !DILocation(line: 0, scope: !3343, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 55, column: 25, scope: !3336)
!3348 = !DILocation(line: 57, column: 26, scope: !3343, inlinedAt: !3347)
!3349 = !DILocation(line: 0, scope: !3303, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 55, column: 10, scope: !3336)
!3351 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3350)
!3352 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3350)
!3353 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3350)
!3354 = !DILocation(line: 55, column: 3, scope: !3336)
!3355 = distinct !DISubprogram(name: "xcharalloc", scope: !806, file: !806, line: 59, type: !3356, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!129, !131}
!3358 = !{!3359}
!3359 = !DILocalVariable(name: "n", arg: 1, scope: !3355, file: !806, line: 59, type: !131)
!3360 = !DILocation(line: 0, scope: !3355)
!3361 = !DILocation(line: 0, scope: !3322, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 61, column: 10, scope: !3355)
!3363 = !DILocation(line: 49, column: 25, scope: !3322, inlinedAt: !3362)
!3364 = !DILocation(line: 0, scope: !3303, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 49, column: 10, scope: !3322, inlinedAt: !3362)
!3366 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3365)
!3367 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3365)
!3368 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3365)
!3369 = !DILocation(line: 61, column: 3, scope: !3355)
!3370 = distinct !DISubprogram(name: "xrealloc", scope: !806, file: !806, line: 68, type: !3371, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!130, !130, !131}
!3373 = !{!3374, !3375}
!3374 = !DILocalVariable(name: "p", arg: 1, scope: !3370, file: !806, line: 68, type: !130)
!3375 = !DILocalVariable(name: "s", arg: 2, scope: !3370, file: !806, line: 68, type: !131)
!3376 = !DILocation(line: 0, scope: !3370)
!3377 = !DILocalVariable(name: "ptr", arg: 1, scope: !3378, file: !3379, line: 2057, type: !130)
!3378 = distinct !DISubprogram(name: "rpl_realloc", scope: !3379, file: !3379, line: 2057, type: !3371, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3380)
!3379 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3380 = !{!3377, !3381}
!3381 = !DILocalVariable(name: "size", arg: 2, scope: !3378, file: !3379, line: 2057, type: !131)
!3382 = !DILocation(line: 0, scope: !3378, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 70, column: 25, scope: !3370)
!3384 = !DILocation(line: 2059, column: 24, scope: !3378, inlinedAt: !3383)
!3385 = !DILocation(line: 2059, column: 10, scope: !3378, inlinedAt: !3383)
!3386 = !DILocation(line: 0, scope: !3303, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 70, column: 10, scope: !3370)
!3388 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3387)
!3389 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3387)
!3390 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3387)
!3391 = !DILocation(line: 70, column: 3, scope: !3370)
!3392 = !DISubprogram(name: "realloc", scope: !1092, file: !1092, line: 551, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!3393 = distinct !DISubprogram(name: "xirealloc", scope: !806, file: !806, line: 74, type: !3394, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!130, !130, !825}
!3396 = !{!3397, !3398}
!3397 = !DILocalVariable(name: "p", arg: 1, scope: !3393, file: !806, line: 74, type: !130)
!3398 = !DILocalVariable(name: "s", arg: 2, scope: !3393, file: !806, line: 74, type: !825)
!3399 = !DILocation(line: 0, scope: !3393)
!3400 = !DILocalVariable(name: "p", arg: 1, scope: !3401, file: !3344, line: 66, type: !130)
!3401 = distinct !DISubprogram(name: "irealloc", scope: !3344, file: !3344, line: 66, type: !3394, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3402)
!3402 = !{!3400, !3403}
!3403 = !DILocalVariable(name: "s", arg: 2, scope: !3401, file: !3344, line: 66, type: !825)
!3404 = !DILocation(line: 0, scope: !3401, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 76, column: 25, scope: !3393)
!3406 = !DILocation(line: 0, scope: !3378, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 68, column: 26, scope: !3401, inlinedAt: !3405)
!3408 = !DILocation(line: 2059, column: 24, scope: !3378, inlinedAt: !3407)
!3409 = !DILocation(line: 2059, column: 10, scope: !3378, inlinedAt: !3407)
!3410 = !DILocation(line: 0, scope: !3303, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 76, column: 10, scope: !3393)
!3412 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3411)
!3413 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3411)
!3414 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3411)
!3415 = !DILocation(line: 76, column: 3, scope: !3393)
!3416 = distinct !DISubprogram(name: "xireallocarray", scope: !806, file: !806, line: 89, type: !3417, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!130, !130, !825, !825}
!3419 = !{!3420, !3421, !3422}
!3420 = !DILocalVariable(name: "p", arg: 1, scope: !3416, file: !806, line: 89, type: !130)
!3421 = !DILocalVariable(name: "n", arg: 2, scope: !3416, file: !806, line: 89, type: !825)
!3422 = !DILocalVariable(name: "s", arg: 3, scope: !3416, file: !806, line: 89, type: !825)
!3423 = !DILocation(line: 0, scope: !3416)
!3424 = !DILocalVariable(name: "p", arg: 1, scope: !3425, file: !3344, line: 98, type: !130)
!3425 = distinct !DISubprogram(name: "ireallocarray", scope: !3344, file: !3344, line: 98, type: !3417, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3426)
!3426 = !{!3424, !3427, !3428}
!3427 = !DILocalVariable(name: "n", arg: 2, scope: !3425, file: !3344, line: 98, type: !825)
!3428 = !DILocalVariable(name: "s", arg: 3, scope: !3425, file: !3344, line: 98, type: !825)
!3429 = !DILocation(line: 0, scope: !3425, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 91, column: 25, scope: !3416)
!3431 = !DILocation(line: 101, column: 13, scope: !3425, inlinedAt: !3430)
!3432 = !DILocation(line: 0, scope: !3303, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 91, column: 10, scope: !3416)
!3434 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3433)
!3435 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3433)
!3436 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3433)
!3437 = !DILocation(line: 91, column: 3, scope: !3416)
!3438 = distinct !DISubprogram(name: "xnmalloc", scope: !806, file: !806, line: 98, type: !3439, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!130, !131, !131}
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "n", arg: 1, scope: !3438, file: !806, line: 98, type: !131)
!3443 = !DILocalVariable(name: "s", arg: 2, scope: !3438, file: !806, line: 98, type: !131)
!3444 = !DILocation(line: 0, scope: !3438)
!3445 = !DILocation(line: 0, scope: !3295, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 100, column: 10, scope: !3438)
!3447 = !DILocation(line: 85, column: 25, scope: !3295, inlinedAt: !3446)
!3448 = !DILocation(line: 0, scope: !3303, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 85, column: 10, scope: !3295, inlinedAt: !3446)
!3450 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3449)
!3451 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3449)
!3452 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3449)
!3453 = !DILocation(line: 100, column: 3, scope: !3438)
!3454 = distinct !DISubprogram(name: "xinmalloc", scope: !806, file: !806, line: 104, type: !3455, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!130, !825, !825}
!3457 = !{!3458, !3459}
!3458 = !DILocalVariable(name: "n", arg: 1, scope: !3454, file: !806, line: 104, type: !825)
!3459 = !DILocalVariable(name: "s", arg: 2, scope: !3454, file: !806, line: 104, type: !825)
!3460 = !DILocation(line: 0, scope: !3454)
!3461 = !DILocation(line: 0, scope: !3416, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 106, column: 10, scope: !3454)
!3463 = !DILocation(line: 0, scope: !3425, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 91, column: 25, scope: !3416, inlinedAt: !3462)
!3465 = !DILocation(line: 101, column: 13, scope: !3425, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !3303, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 91, column: 10, scope: !3416, inlinedAt: !3462)
!3468 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3467)
!3469 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3467)
!3470 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3467)
!3471 = !DILocation(line: 106, column: 3, scope: !3454)
!3472 = distinct !DISubprogram(name: "x2realloc", scope: !806, file: !806, line: 116, type: !3473, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!130, !130, !812}
!3475 = !{!3476, !3477}
!3476 = !DILocalVariable(name: "p", arg: 1, scope: !3472, file: !806, line: 116, type: !130)
!3477 = !DILocalVariable(name: "ps", arg: 2, scope: !3472, file: !806, line: 116, type: !812)
!3478 = !DILocation(line: 0, scope: !3472)
!3479 = !DILocation(line: 0, scope: !809, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 118, column: 10, scope: !3472)
!3481 = !DILocation(line: 178, column: 14, scope: !809, inlinedAt: !3480)
!3482 = !DILocation(line: 180, column: 9, scope: !3483, inlinedAt: !3480)
!3483 = distinct !DILexicalBlock(scope: !809, file: !806, line: 180, column: 7)
!3484 = !DILocation(line: 180, column: 7, scope: !809, inlinedAt: !3480)
!3485 = !DILocation(line: 182, column: 13, scope: !3486, inlinedAt: !3480)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !806, line: 182, column: 11)
!3487 = distinct !DILexicalBlock(scope: !3483, file: !806, line: 181, column: 5)
!3488 = !DILocation(line: 182, column: 11, scope: !3487, inlinedAt: !3480)
!3489 = !DILocation(line: 197, column: 11, scope: !3490, inlinedAt: !3480)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !806, line: 197, column: 11)
!3491 = distinct !DILexicalBlock(scope: !3483, file: !806, line: 195, column: 5)
!3492 = !DILocation(line: 197, column: 11, scope: !3491, inlinedAt: !3480)
!3493 = !DILocation(line: 198, column: 9, scope: !3490, inlinedAt: !3480)
!3494 = !DILocation(line: 0, scope: !3295, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 201, column: 7, scope: !809, inlinedAt: !3480)
!3496 = !DILocation(line: 85, column: 25, scope: !3295, inlinedAt: !3495)
!3497 = !DILocation(line: 0, scope: !3303, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 85, column: 10, scope: !3295, inlinedAt: !3495)
!3499 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3498)
!3500 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3498)
!3501 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3498)
!3502 = !DILocation(line: 202, column: 7, scope: !809, inlinedAt: !3480)
!3503 = !DILocation(line: 118, column: 3, scope: !3472)
!3504 = !DILocation(line: 0, scope: !809)
!3505 = !DILocation(line: 178, column: 14, scope: !809)
!3506 = !DILocation(line: 180, column: 9, scope: !3483)
!3507 = !DILocation(line: 180, column: 7, scope: !809)
!3508 = !DILocation(line: 182, column: 13, scope: !3486)
!3509 = !DILocation(line: 182, column: 11, scope: !3487)
!3510 = !DILocation(line: 190, column: 30, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3486, file: !806, line: 183, column: 9)
!3512 = !DILocation(line: 191, column: 16, scope: !3511)
!3513 = !DILocation(line: 191, column: 13, scope: !3511)
!3514 = !DILocation(line: 192, column: 9, scope: !3511)
!3515 = !DILocation(line: 197, column: 11, scope: !3490)
!3516 = !DILocation(line: 197, column: 11, scope: !3491)
!3517 = !DILocation(line: 198, column: 9, scope: !3490)
!3518 = !DILocation(line: 0, scope: !3295, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 201, column: 7, scope: !809)
!3520 = !DILocation(line: 85, column: 25, scope: !3295, inlinedAt: !3519)
!3521 = !DILocation(line: 0, scope: !3303, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 85, column: 10, scope: !3295, inlinedAt: !3519)
!3523 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3522)
!3524 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3522)
!3525 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3522)
!3526 = !DILocation(line: 202, column: 7, scope: !809)
!3527 = !DILocation(line: 203, column: 3, scope: !809)
!3528 = !DILocation(line: 0, scope: !821)
!3529 = !DILocation(line: 230, column: 14, scope: !821)
!3530 = !DILocation(line: 238, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !821, file: !806, line: 238, column: 7)
!3532 = !DILocation(line: 238, column: 7, scope: !821)
!3533 = !DILocation(line: 240, column: 9, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !821, file: !806, line: 240, column: 7)
!3535 = !DILocation(line: 240, column: 18, scope: !3534)
!3536 = !DILocation(line: 253, column: 8, scope: !821)
!3537 = !DILocation(line: 258, column: 27, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !806, line: 257, column: 5)
!3539 = distinct !DILexicalBlock(scope: !821, file: !806, line: 256, column: 7)
!3540 = !DILocation(line: 259, column: 32, scope: !3538)
!3541 = !DILocation(line: 260, column: 5, scope: !3538)
!3542 = !DILocation(line: 262, column: 9, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !821, file: !806, line: 262, column: 7)
!3544 = !DILocation(line: 262, column: 7, scope: !821)
!3545 = !DILocation(line: 263, column: 9, scope: !3543)
!3546 = !DILocation(line: 263, column: 5, scope: !3543)
!3547 = !DILocation(line: 264, column: 9, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !821, file: !806, line: 264, column: 7)
!3549 = !DILocation(line: 264, column: 14, scope: !3548)
!3550 = !DILocation(line: 265, column: 7, scope: !3548)
!3551 = !DILocation(line: 265, column: 11, scope: !3548)
!3552 = !DILocation(line: 266, column: 11, scope: !3548)
!3553 = !DILocation(line: 267, column: 14, scope: !3548)
!3554 = !DILocation(line: 264, column: 7, scope: !821)
!3555 = !DILocation(line: 268, column: 5, scope: !3548)
!3556 = !DILocation(line: 0, scope: !3370, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 269, column: 8, scope: !821)
!3558 = !DILocation(line: 0, scope: !3378, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 70, column: 25, scope: !3370, inlinedAt: !3557)
!3560 = !DILocation(line: 2059, column: 24, scope: !3378, inlinedAt: !3559)
!3561 = !DILocation(line: 2059, column: 10, scope: !3378, inlinedAt: !3559)
!3562 = !DILocation(line: 0, scope: !3303, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 70, column: 10, scope: !3370, inlinedAt: !3557)
!3564 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3563)
!3565 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3563)
!3566 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3563)
!3567 = !DILocation(line: 270, column: 7, scope: !821)
!3568 = !DILocation(line: 271, column: 3, scope: !821)
!3569 = distinct !DISubprogram(name: "xzalloc", scope: !806, file: !806, line: 279, type: !3323, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3570)
!3570 = !{!3571}
!3571 = !DILocalVariable(name: "s", arg: 1, scope: !3569, file: !806, line: 279, type: !131)
!3572 = !DILocation(line: 0, scope: !3569)
!3573 = !DILocalVariable(name: "n", arg: 1, scope: !3574, file: !806, line: 294, type: !131)
!3574 = distinct !DISubprogram(name: "xcalloc", scope: !806, file: !806, line: 294, type: !3439, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3575)
!3575 = !{!3573, !3576}
!3576 = !DILocalVariable(name: "s", arg: 2, scope: !3574, file: !806, line: 294, type: !131)
!3577 = !DILocation(line: 0, scope: !3574, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 281, column: 10, scope: !3569)
!3579 = !DILocation(line: 296, column: 25, scope: !3574, inlinedAt: !3578)
!3580 = !DILocation(line: 0, scope: !3303, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 296, column: 10, scope: !3574, inlinedAt: !3578)
!3582 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3581)
!3583 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3581)
!3584 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3581)
!3585 = !DILocation(line: 281, column: 3, scope: !3569)
!3586 = !DISubprogram(name: "calloc", scope: !1092, file: !1092, line: 543, type: !3439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!3587 = !DILocation(line: 0, scope: !3574)
!3588 = !DILocation(line: 296, column: 25, scope: !3574)
!3589 = !DILocation(line: 0, scope: !3303, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 296, column: 10, scope: !3574)
!3591 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3590)
!3592 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3590)
!3593 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3590)
!3594 = !DILocation(line: 296, column: 3, scope: !3574)
!3595 = distinct !DISubprogram(name: "xizalloc", scope: !806, file: !806, line: 285, type: !3337, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3596)
!3596 = !{!3597}
!3597 = !DILocalVariable(name: "s", arg: 1, scope: !3595, file: !806, line: 285, type: !825)
!3598 = !DILocation(line: 0, scope: !3595)
!3599 = !DILocalVariable(name: "n", arg: 1, scope: !3600, file: !806, line: 300, type: !825)
!3600 = distinct !DISubprogram(name: "xicalloc", scope: !806, file: !806, line: 300, type: !3455, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3601)
!3601 = !{!3599, !3602}
!3602 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !806, line: 300, type: !825)
!3603 = !DILocation(line: 0, scope: !3600, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 287, column: 10, scope: !3595)
!3605 = !DILocalVariable(name: "n", arg: 1, scope: !3606, file: !3344, line: 77, type: !825)
!3606 = distinct !DISubprogram(name: "icalloc", scope: !3344, file: !3344, line: 77, type: !3455, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3607)
!3607 = !{!3605, !3608}
!3608 = !DILocalVariable(name: "s", arg: 2, scope: !3606, file: !3344, line: 77, type: !825)
!3609 = !DILocation(line: 0, scope: !3606, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 302, column: 25, scope: !3600, inlinedAt: !3604)
!3611 = !DILocation(line: 91, column: 10, scope: !3606, inlinedAt: !3610)
!3612 = !DILocation(line: 0, scope: !3303, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 302, column: 10, scope: !3600, inlinedAt: !3604)
!3614 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3613)
!3615 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3613)
!3616 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3613)
!3617 = !DILocation(line: 287, column: 3, scope: !3595)
!3618 = !DILocation(line: 0, scope: !3600)
!3619 = !DILocation(line: 0, scope: !3606, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 302, column: 25, scope: !3600)
!3621 = !DILocation(line: 91, column: 10, scope: !3606, inlinedAt: !3620)
!3622 = !DILocation(line: 0, scope: !3303, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 302, column: 10, scope: !3600)
!3624 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3623)
!3625 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3623)
!3626 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3623)
!3627 = !DILocation(line: 302, column: 3, scope: !3600)
!3628 = distinct !DISubprogram(name: "xmemdup", scope: !806, file: !806, line: 310, type: !3629, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!130, !1116, !131}
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "p", arg: 1, scope: !3628, file: !806, line: 310, type: !1116)
!3633 = !DILocalVariable(name: "s", arg: 2, scope: !3628, file: !806, line: 310, type: !131)
!3634 = !DILocation(line: 0, scope: !3628)
!3635 = !DILocation(line: 0, scope: !3322, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 312, column: 18, scope: !3628)
!3637 = !DILocation(line: 49, column: 25, scope: !3322, inlinedAt: !3636)
!3638 = !DILocation(line: 0, scope: !3303, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 49, column: 10, scope: !3322, inlinedAt: !3636)
!3640 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3639)
!3641 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3639)
!3642 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3639)
!3643 = !DILocalVariable(name: "__dest", arg: 1, scope: !3644, file: !1813, line: 26, type: !3647)
!3644 = distinct !DISubprogram(name: "memcpy", scope: !1813, file: !1813, line: 26, type: !3645, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3648)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!130, !3647, !1115, !131}
!3647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!3648 = !{!3643, !3649, !3650}
!3649 = !DILocalVariable(name: "__src", arg: 2, scope: !3644, file: !1813, line: 26, type: !1115)
!3650 = !DILocalVariable(name: "__len", arg: 3, scope: !3644, file: !1813, line: 26, type: !131)
!3651 = !DILocation(line: 0, scope: !3644, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 312, column: 10, scope: !3628)
!3653 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3652)
!3654 = !DILocation(line: 312, column: 3, scope: !3628)
!3655 = distinct !DISubprogram(name: "ximemdup", scope: !806, file: !806, line: 316, type: !3656, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!130, !1116, !825}
!3658 = !{!3659, !3660}
!3659 = !DILocalVariable(name: "p", arg: 1, scope: !3655, file: !806, line: 316, type: !1116)
!3660 = !DILocalVariable(name: "s", arg: 2, scope: !3655, file: !806, line: 316, type: !825)
!3661 = !DILocation(line: 0, scope: !3655)
!3662 = !DILocation(line: 0, scope: !3336, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 318, column: 18, scope: !3655)
!3664 = !DILocation(line: 0, scope: !3343, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 55, column: 25, scope: !3336, inlinedAt: !3663)
!3666 = !DILocation(line: 57, column: 26, scope: !3343, inlinedAt: !3665)
!3667 = !DILocation(line: 0, scope: !3303, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 55, column: 10, scope: !3336, inlinedAt: !3663)
!3669 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3668)
!3670 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3668)
!3671 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3668)
!3672 = !DILocation(line: 0, scope: !3644, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 318, column: 10, scope: !3655)
!3674 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3673)
!3675 = !DILocation(line: 318, column: 3, scope: !3655)
!3676 = distinct !DISubprogram(name: "ximemdup0", scope: !806, file: !806, line: 325, type: !3677, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!129, !1116, !825}
!3679 = !{!3680, !3681, !3682}
!3680 = !DILocalVariable(name: "p", arg: 1, scope: !3676, file: !806, line: 325, type: !1116)
!3681 = !DILocalVariable(name: "s", arg: 2, scope: !3676, file: !806, line: 325, type: !825)
!3682 = !DILocalVariable(name: "result", scope: !3676, file: !806, line: 327, type: !129)
!3683 = !DILocation(line: 0, scope: !3676)
!3684 = !DILocation(line: 327, column: 30, scope: !3676)
!3685 = !DILocation(line: 0, scope: !3336, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 327, column: 18, scope: !3676)
!3687 = !DILocation(line: 0, scope: !3343, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 55, column: 25, scope: !3336, inlinedAt: !3686)
!3689 = !DILocation(line: 57, column: 26, scope: !3343, inlinedAt: !3688)
!3690 = !DILocation(line: 0, scope: !3303, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 55, column: 10, scope: !3336, inlinedAt: !3686)
!3692 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3691)
!3693 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3691)
!3694 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3691)
!3695 = !DILocation(line: 328, column: 3, scope: !3676)
!3696 = !DILocation(line: 328, column: 13, scope: !3676)
!3697 = !DILocation(line: 0, scope: !3644, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 329, column: 10, scope: !3676)
!3699 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3698)
!3700 = !DILocation(line: 329, column: 3, scope: !3676)
!3701 = distinct !DISubprogram(name: "xstrdup", scope: !806, file: !806, line: 335, type: !1094, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3702)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "string", arg: 1, scope: !3701, file: !806, line: 335, type: !134)
!3704 = !DILocation(line: 0, scope: !3701)
!3705 = !DILocation(line: 337, column: 27, scope: !3701)
!3706 = !DILocation(line: 337, column: 43, scope: !3701)
!3707 = !DILocation(line: 0, scope: !3628, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 337, column: 10, scope: !3701)
!3709 = !DILocation(line: 0, scope: !3322, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 312, column: 18, scope: !3628, inlinedAt: !3708)
!3711 = !DILocation(line: 49, column: 25, scope: !3322, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !3303, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 49, column: 10, scope: !3322, inlinedAt: !3710)
!3714 = !DILocation(line: 39, column: 8, scope: !3310, inlinedAt: !3713)
!3715 = !DILocation(line: 39, column: 7, scope: !3303, inlinedAt: !3713)
!3716 = !DILocation(line: 40, column: 5, scope: !3310, inlinedAt: !3713)
!3717 = !DILocation(line: 0, scope: !3644, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 312, column: 10, scope: !3628, inlinedAt: !3708)
!3719 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3718)
!3720 = !DILocation(line: 337, column: 3, scope: !3701)
!3721 = distinct !DISubprogram(name: "xalloc_die", scope: !765, file: !765, line: 32, type: !528, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3722)
!3722 = !{!3723}
!3723 = !DILocalVariable(name: "__errstatus", scope: !3724, file: !765, line: 34, type: !3725)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !765, line: 34, column: 3)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!3726 = !DILocation(line: 34, column: 3, scope: !3724)
!3727 = !DILocation(line: 0, scope: !3724)
!3728 = !DILocation(line: 40, column: 3, scope: !3721)
!3729 = distinct !DISubprogram(name: "xnumtoimax", scope: !772, file: !772, line: 42, type: !3730, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!138, !134, !104, !138, !138, !134, !134, !104, !104}
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3745, !3746, !3747}
!3733 = !DILocalVariable(name: "n_str", arg: 1, scope: !3729, file: !772, line: 42, type: !134)
!3734 = !DILocalVariable(name: "base", arg: 2, scope: !3729, file: !772, line: 42, type: !104)
!3735 = !DILocalVariable(name: "min", arg: 3, scope: !3729, file: !772, line: 42, type: !138)
!3736 = !DILocalVariable(name: "max", arg: 4, scope: !3729, file: !772, line: 42, type: !138)
!3737 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3729, file: !772, line: 43, type: !134)
!3738 = !DILocalVariable(name: "err", arg: 6, scope: !3729, file: !772, line: 43, type: !134)
!3739 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3729, file: !772, line: 43, type: !104)
!3740 = !DILocalVariable(name: "flags", arg: 8, scope: !3729, file: !772, line: 44, type: !104)
!3741 = !DILocalVariable(name: "tnum", scope: !3729, file: !772, line: 46, type: !138)
!3742 = !DILocalVariable(name: "r", scope: !3729, file: !772, line: 46, type: !138)
!3743 = !DILocalVariable(name: "s_err", scope: !3729, file: !772, line: 47, type: !3744)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !845, line: 43, baseType: !844)
!3745 = !DILocalVariable(name: "overflow_errno", scope: !3729, file: !772, line: 50, type: !104)
!3746 = !DILocalVariable(name: "e", scope: !3729, file: !772, line: 75, type: !104)
!3747 = !DILocalVariable(name: "__errstatus", scope: !3748, file: !772, line: 80, type: !3725)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !772, line: 80, column: 5)
!3749 = distinct !DILexicalBlock(scope: !3729, file: !772, line: 77, column: 7)
!3750 = !DILocation(line: 0, scope: !3729)
!3751 = !DILocation(line: 46, column: 3, scope: !3729)
!3752 = !DILocation(line: 47, column: 24, scope: !3729)
!3753 = !DILocation(line: 52, column: 13, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3729, file: !772, line: 52, column: 7)
!3755 = !DILocation(line: 52, column: 7, scope: !3729)
!3756 = !DILocation(line: 54, column: 11, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !772, line: 54, column: 11)
!3758 = distinct !DILexicalBlock(scope: !3754, file: !772, line: 53, column: 5)
!3759 = !DILocation(line: 54, column: 16, scope: !3757)
!3760 = !DILocation(line: 54, column: 11, scope: !3758)
!3761 = !DILocation(line: 57, column: 34, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3757, file: !772, line: 55, column: 9)
!3763 = !DILocation(line: 57, column: 28, scope: !3762)
!3764 = !DILocation(line: 58, column: 21, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !772, line: 58, column: 15)
!3766 = !DILocation(line: 0, scope: !3762)
!3767 = !DILocation(line: 61, column: 20, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3757, file: !772, line: 61, column: 16)
!3769 = !DILocation(line: 61, column: 16, scope: !3757)
!3770 = !DILocation(line: 64, column: 34, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !772, line: 62, column: 9)
!3772 = !DILocation(line: 64, column: 28, scope: !3771)
!3773 = !DILocation(line: 65, column: 21, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !772, line: 65, column: 15)
!3775 = !DILocation(line: 0, scope: !3771)
!3776 = !DILocation(line: 75, column: 17, scope: !3729)
!3777 = !DILocation(line: 75, column: 11, scope: !3729)
!3778 = !DILocation(line: 77, column: 16, scope: !3749)
!3779 = !DILocation(line: 78, column: 10, scope: !3749)
!3780 = !DILocation(line: 79, column: 14, scope: !3749)
!3781 = !DILocation(line: 79, column: 31, scope: !3749)
!3782 = !DILocation(line: 79, column: 26, scope: !3749)
!3783 = !DILocation(line: 79, column: 23, scope: !3749)
!3784 = !DILocation(line: 77, column: 7, scope: !3729)
!3785 = !DILocation(line: 80, column: 5, scope: !3749)
!3786 = !DILocation(line: 82, column: 3, scope: !3729)
!3787 = !DILocation(line: 82, column: 9, scope: !3729)
!3788 = !DILocation(line: 84, column: 1, scope: !3729)
!3789 = !DILocation(line: 83, column: 3, scope: !3729)
!3790 = distinct !DISubprogram(name: "xdectoimax", scope: !772, file: !772, line: 92, type: !3791, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!138, !134, !138, !138, !134, !134, !104}
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799}
!3794 = !DILocalVariable(name: "n_str", arg: 1, scope: !3790, file: !772, line: 92, type: !134)
!3795 = !DILocalVariable(name: "min", arg: 2, scope: !3790, file: !772, line: 92, type: !138)
!3796 = !DILocalVariable(name: "max", arg: 3, scope: !3790, file: !772, line: 92, type: !138)
!3797 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3790, file: !772, line: 93, type: !134)
!3798 = !DILocalVariable(name: "err", arg: 5, scope: !3790, file: !772, line: 93, type: !134)
!3799 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3790, file: !772, line: 93, type: !104)
!3800 = !DILocation(line: 0, scope: !3790)
!3801 = !DILocation(line: 0, scope: !3729, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 95, column: 10, scope: !3790)
!3803 = !DILocation(line: 46, column: 3, scope: !3729, inlinedAt: !3802)
!3804 = !DILocation(line: 47, column: 24, scope: !3729, inlinedAt: !3802)
!3805 = !DILocation(line: 52, column: 13, scope: !3754, inlinedAt: !3802)
!3806 = !DILocation(line: 52, column: 7, scope: !3729, inlinedAt: !3802)
!3807 = !DILocation(line: 54, column: 11, scope: !3757, inlinedAt: !3802)
!3808 = !DILocation(line: 54, column: 16, scope: !3757, inlinedAt: !3802)
!3809 = !DILocation(line: 54, column: 11, scope: !3758, inlinedAt: !3802)
!3810 = !DILocation(line: 58, column: 21, scope: !3765, inlinedAt: !3802)
!3811 = !DILocation(line: 0, scope: !3762, inlinedAt: !3802)
!3812 = !DILocation(line: 61, column: 20, scope: !3768, inlinedAt: !3802)
!3813 = !DILocation(line: 61, column: 16, scope: !3757, inlinedAt: !3802)
!3814 = !DILocation(line: 65, column: 21, scope: !3774, inlinedAt: !3802)
!3815 = !DILocation(line: 0, scope: !3771, inlinedAt: !3802)
!3816 = !DILocation(line: 78, column: 10, scope: !3749, inlinedAt: !3802)
!3817 = !DILocation(line: 80, column: 5, scope: !3749, inlinedAt: !3802)
!3818 = !DILocation(line: 82, column: 3, scope: !3729, inlinedAt: !3802)
!3819 = !DILocation(line: 82, column: 9, scope: !3729, inlinedAt: !3802)
!3820 = !DILocation(line: 84, column: 1, scope: !3729, inlinedAt: !3802)
!3821 = !DILocation(line: 95, column: 3, scope: !3790)
!3822 = distinct !DISubprogram(name: "xstrtoimax", scope: !3823, file: !3823, line: 71, type: !3824, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !3827)
!3823 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!3744, !134, !1121, !104, !3826, !134}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!3827 = !{!3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3840, !3841}
!3828 = !DILocalVariable(name: "nptr", arg: 1, scope: !3822, file: !3823, line: 71, type: !134)
!3829 = !DILocalVariable(name: "endptr", arg: 2, scope: !3822, file: !3823, line: 71, type: !1121)
!3830 = !DILocalVariable(name: "base", arg: 3, scope: !3822, file: !3823, line: 71, type: !104)
!3831 = !DILocalVariable(name: "val", arg: 4, scope: !3822, file: !3823, line: 72, type: !3826)
!3832 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3822, file: !3823, line: 72, type: !134)
!3833 = !DILocalVariable(name: "t_ptr", scope: !3822, file: !3823, line: 74, type: !129)
!3834 = !DILocalVariable(name: "p", scope: !3822, file: !3823, line: 75, type: !1121)
!3835 = !DILocalVariable(name: "tmp", scope: !3822, file: !3823, line: 91, type: !138)
!3836 = !DILocalVariable(name: "err", scope: !3822, file: !3823, line: 92, type: !3744)
!3837 = !DILocalVariable(name: "xbase", scope: !3838, file: !3823, line: 126, type: !104)
!3838 = distinct !DILexicalBlock(scope: !3839, file: !3823, line: 119, column: 5)
!3839 = distinct !DILexicalBlock(scope: !3822, file: !3823, line: 118, column: 7)
!3840 = !DILocalVariable(name: "suffixes", scope: !3838, file: !3823, line: 127, type: !104)
!3841 = !DILocalVariable(name: "overflow", scope: !3838, file: !3823, line: 156, type: !3744)
!3842 = !DILocation(line: 0, scope: !3822)
!3843 = !DILocation(line: 74, column: 3, scope: !3822)
!3844 = !DILocation(line: 75, column: 14, scope: !3822)
!3845 = !DILocation(line: 90, column: 3, scope: !3822)
!3846 = !DILocation(line: 90, column: 9, scope: !3822)
!3847 = !DILocation(line: 91, column: 20, scope: !3822)
!3848 = !DILocation(line: 94, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3822, file: !3823, line: 94, column: 7)
!3850 = !DILocation(line: 94, column: 10, scope: !3849)
!3851 = !DILocation(line: 94, column: 7, scope: !3822)
!3852 = !DILocation(line: 98, column: 14, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !3823, line: 98, column: 11)
!3854 = distinct !DILexicalBlock(scope: !3849, file: !3823, line: 95, column: 5)
!3855 = !DILocation(line: 98, column: 29, scope: !3853)
!3856 = !DILocation(line: 98, column: 32, scope: !3853)
!3857 = !DILocation(line: 98, column: 38, scope: !3853)
!3858 = !DILocation(line: 98, column: 41, scope: !3853)
!3859 = !DILocation(line: 98, column: 11, scope: !3854)
!3860 = !DILocation(line: 102, column: 12, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3849, file: !3823, line: 102, column: 12)
!3862 = !DILocation(line: 102, column: 12, scope: !3849)
!3863 = !DILocation(line: 107, column: 5, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3861, file: !3823, line: 103, column: 5)
!3865 = !DILocation(line: 112, column: 8, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3822, file: !3823, line: 112, column: 7)
!3867 = !DILocation(line: 112, column: 7, scope: !3822)
!3868 = !DILocation(line: 114, column: 12, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3866, file: !3823, line: 113, column: 5)
!3870 = !DILocation(line: 115, column: 7, scope: !3869)
!3871 = !DILocation(line: 118, column: 7, scope: !3839)
!3872 = !DILocation(line: 118, column: 11, scope: !3839)
!3873 = !DILocation(line: 118, column: 7, scope: !3822)
!3874 = !DILocation(line: 120, column: 12, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3838, file: !3823, line: 120, column: 11)
!3876 = !DILocation(line: 120, column: 11, scope: !3838)
!3877 = !DILocation(line: 122, column: 16, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3875, file: !3823, line: 121, column: 9)
!3879 = !DILocation(line: 123, column: 22, scope: !3878)
!3880 = !DILocation(line: 123, column: 11, scope: !3878)
!3881 = !DILocation(line: 0, scope: !3838)
!3882 = !DILocation(line: 128, column: 7, scope: !3838)
!3883 = !DILocation(line: 140, column: 15, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3823, line: 140, column: 15)
!3885 = distinct !DILexicalBlock(scope: !3838, file: !3823, line: 129, column: 9)
!3886 = !DILocation(line: 140, column: 15, scope: !3885)
!3887 = !DILocation(line: 141, column: 21, scope: !3884)
!3888 = !DILocation(line: 141, column: 13, scope: !3884)
!3889 = !DILocation(line: 144, column: 21, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3823, line: 144, column: 21)
!3891 = distinct !DILexicalBlock(scope: !3884, file: !3823, line: 142, column: 15)
!3892 = !DILocation(line: 144, column: 29, scope: !3890)
!3893 = !DILocation(line: 144, column: 21, scope: !3891)
!3894 = !DILocation(line: 152, column: 17, scope: !3891)
!3895 = !DILocation(line: 157, column: 7, scope: !3838)
!3896 = !DILocalVariable(name: "err", scope: !3897, file: !3823, line: 64, type: !3744)
!3897 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3823, file: !3823, line: 62, type: !3898, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!3744, !3826, !104, !104}
!3900 = !{!3901, !3902, !3903, !3896}
!3901 = !DILocalVariable(name: "x", arg: 1, scope: !3897, file: !3823, line: 62, type: !3826)
!3902 = !DILocalVariable(name: "base", arg: 2, scope: !3897, file: !3823, line: 62, type: !104)
!3903 = !DILocalVariable(name: "power", arg: 3, scope: !3897, file: !3823, line: 62, type: !104)
!3904 = !DILocation(line: 0, scope: !3897, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 219, column: 22, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3838, file: !3823, line: 158, column: 9)
!3907 = !DILocalVariable(name: "x", arg: 1, scope: !3908, file: !3823, line: 47, type: !3826)
!3908 = distinct !DISubprogram(name: "bkm_scale", scope: !3823, file: !3823, line: 47, type: !3909, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!3744, !3826, !104}
!3911 = !{!3907, !3912, !3913}
!3912 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3908, file: !3823, line: 47, type: !104)
!3913 = !DILocalVariable(name: "scaled", scope: !3908, file: !3823, line: 49, type: !138)
!3914 = !DILocation(line: 0, scope: !3908, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3905)
!3916 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3915)
!3917 = distinct !DILexicalBlock(scope: !3908, file: !3823, line: 50, column: 7)
!3918 = !DILocation(line: 0, scope: !3897, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 215, column: 22, scope: !3906)
!3920 = !DILocation(line: 0, scope: !3908, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3919)
!3922 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3921)
!3923 = !DILocation(line: 0, scope: !3897, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 202, column: 22, scope: !3906)
!3925 = !DILocation(line: 0, scope: !3908, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3924)
!3927 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3926)
!3928 = !DILocation(line: 0, scope: !3897, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 198, column: 22, scope: !3906)
!3930 = !DILocation(line: 0, scope: !3908, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3929)
!3932 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3931)
!3933 = !DILocation(line: 0, scope: !3897, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 194, column: 22, scope: !3906)
!3935 = !DILocation(line: 0, scope: !3908, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3934)
!3937 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3936)
!3938 = !DILocation(line: 0, scope: !3897, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 175, column: 22, scope: !3906)
!3940 = !DILocation(line: 0, scope: !3908, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3939)
!3942 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3941)
!3943 = !DILocation(line: 0, scope: !3908, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 160, column: 22, scope: !3906)
!3945 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3944)
!3946 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3944)
!3947 = !DILocation(line: 0, scope: !3908, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 167, column: 22, scope: !3906)
!3949 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3948)
!3950 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3948)
!3951 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3941)
!3952 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3939)
!3953 = !DILocation(line: 227, column: 11, scope: !3838)
!3954 = !DILocation(line: 0, scope: !3897, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 180, column: 22, scope: !3906)
!3956 = !DILocation(line: 0, scope: !3908, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3955)
!3958 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3957)
!3959 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3957)
!3960 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3955)
!3961 = !DILocation(line: 0, scope: !3897, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 185, column: 22, scope: !3906)
!3963 = !DILocation(line: 0, scope: !3908, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3962)
!3965 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3964)
!3966 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3964)
!3967 = !DILocation(line: 0, scope: !3897, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 190, column: 22, scope: !3906)
!3969 = !DILocation(line: 0, scope: !3908, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3968)
!3971 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3970)
!3972 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3970)
!3973 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3968)
!3974 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3936)
!3975 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3934)
!3976 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3931)
!3977 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3929)
!3978 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3926)
!3979 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3924)
!3980 = !DILocation(line: 0, scope: !3897, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 207, column: 22, scope: !3906)
!3982 = !DILocation(line: 0, scope: !3908, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 66, column: 12, scope: !3897, inlinedAt: !3981)
!3984 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3983)
!3985 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3983)
!3986 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3981)
!3987 = !DILocation(line: 0, scope: !3908, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 211, column: 22, scope: !3906)
!3989 = !DILocation(line: 50, column: 7, scope: !3917, inlinedAt: !3988)
!3990 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3988)
!3991 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3921)
!3992 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3919)
!3993 = !DILocation(line: 50, column: 7, scope: !3908, inlinedAt: !3915)
!3994 = !DILocation(line: 66, column: 9, scope: !3897, inlinedAt: !3905)
!3995 = !DILocation(line: 0, scope: !3906)
!3996 = !DILocation(line: 228, column: 10, scope: !3838)
!3997 = !DILocation(line: 229, column: 11, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3838, file: !3823, line: 229, column: 11)
!3999 = !DILocation(line: 229, column: 11, scope: !3838)
!4000 = !DILocation(line: 223, column: 16, scope: !3906)
!4001 = !DILocation(line: 224, column: 22, scope: !3906)
!4002 = !DILocation(line: 100, column: 11, scope: !3854)
!4003 = !DILocation(line: 92, column: 16, scope: !3822)
!4004 = !DILocation(line: 233, column: 8, scope: !3822)
!4005 = !DILocation(line: 234, column: 3, scope: !3822)
!4006 = !DILocation(line: 235, column: 1, scope: !3822)
!4007 = !DISubprogram(name: "strtoimax", scope: !4008, file: !4008, line: 297, type: !4009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4008 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!138, !962, !4011, !104}
!4011 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1121)
!4012 = distinct !DISubprogram(name: "close_stream", scope: !865, file: !865, line: 55, type: !4013, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4049)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!104, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4017)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4017, file: !253, line: 51, baseType: !104, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4017, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4017, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4017, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4017, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4017, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4017, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4017, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4017, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4017, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4017, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4017, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4017, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4017, file: !253, line: 70, baseType: !4033, size: 64, offset: 832)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4017, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4017, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4017, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4017, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4017, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4017, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4017, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4017, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4017, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4017, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4017, file: !253, line: 93, baseType: !4033, size: 64, offset: 1344)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4017, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4017, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4017, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4017, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4049 = !{!4050, !4051, !4053, !4054}
!4050 = !DILocalVariable(name: "stream", arg: 1, scope: !4012, file: !865, line: 55, type: !4015)
!4051 = !DILocalVariable(name: "some_pending", scope: !4012, file: !865, line: 57, type: !4052)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!4053 = !DILocalVariable(name: "prev_fail", scope: !4012, file: !865, line: 58, type: !4052)
!4054 = !DILocalVariable(name: "fclose_fail", scope: !4012, file: !865, line: 59, type: !4052)
!4055 = !DILocation(line: 0, scope: !4012)
!4056 = !DILocation(line: 57, column: 30, scope: !4012)
!4057 = !DILocalVariable(name: "__stream", arg: 1, scope: !4058, file: !1658, line: 135, type: !4015)
!4058 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1658, file: !1658, line: 135, type: !4013, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4059)
!4059 = !{!4057}
!4060 = !DILocation(line: 0, scope: !4058, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 58, column: 27, scope: !4012)
!4062 = !DILocation(line: 137, column: 10, scope: !4058, inlinedAt: !4061)
!4063 = !{!1667, !972, i64 0}
!4064 = !DILocation(line: 58, column: 43, scope: !4012)
!4065 = !DILocation(line: 59, column: 29, scope: !4012)
!4066 = !DILocation(line: 59, column: 45, scope: !4012)
!4067 = !DILocation(line: 69, column: 17, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4012, file: !865, line: 69, column: 7)
!4069 = !DILocation(line: 57, column: 50, scope: !4012)
!4070 = !DILocation(line: 69, column: 33, scope: !4068)
!4071 = !DILocation(line: 69, column: 53, scope: !4068)
!4072 = !DILocation(line: 69, column: 59, scope: !4068)
!4073 = !DILocation(line: 69, column: 7, scope: !4012)
!4074 = !DILocation(line: 71, column: 11, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4068, file: !865, line: 70, column: 5)
!4076 = !DILocation(line: 72, column: 9, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4075, file: !865, line: 71, column: 11)
!4078 = !DILocation(line: 72, column: 15, scope: !4077)
!4079 = !DILocation(line: 77, column: 1, scope: !4012)
!4080 = !DISubprogram(name: "__fpending", scope: !4081, file: !4081, line: 75, type: !4082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4081 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!131, !4015}
!4084 = distinct !DISubprogram(name: "rpl_fclose", scope: !867, file: !867, line: 58, type: !4085, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4121)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!104, !4087}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4089)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4089, file: !253, line: 51, baseType: !104, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4089, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4089, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4089, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4089, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4089, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4089, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4089, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4089, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4089, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4089, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4089, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4089, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4089, file: !253, line: 70, baseType: !4105, size: 64, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4089, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4089, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4089, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4089, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4089, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4089, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4089, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4089, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4089, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4089, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4089, file: !253, line: 93, baseType: !4105, size: 64, offset: 1344)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4089, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4089, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4089, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4089, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4121 = !{!4122, !4123, !4124, !4125}
!4122 = !DILocalVariable(name: "fp", arg: 1, scope: !4084, file: !867, line: 58, type: !4087)
!4123 = !DILocalVariable(name: "saved_errno", scope: !4084, file: !867, line: 60, type: !104)
!4124 = !DILocalVariable(name: "fd", scope: !4084, file: !867, line: 63, type: !104)
!4125 = !DILocalVariable(name: "result", scope: !4084, file: !867, line: 74, type: !104)
!4126 = !DILocation(line: 0, scope: !4084)
!4127 = !DILocation(line: 63, column: 12, scope: !4084)
!4128 = !DILocation(line: 64, column: 10, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4084, file: !867, line: 64, column: 7)
!4130 = !DILocation(line: 64, column: 7, scope: !4084)
!4131 = !DILocation(line: 65, column: 12, scope: !4129)
!4132 = !DILocation(line: 65, column: 5, scope: !4129)
!4133 = !DILocation(line: 70, column: 9, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4084, file: !867, line: 70, column: 7)
!4135 = !DILocation(line: 70, column: 23, scope: !4134)
!4136 = !DILocation(line: 70, column: 33, scope: !4134)
!4137 = !DILocation(line: 70, column: 26, scope: !4134)
!4138 = !DILocation(line: 70, column: 59, scope: !4134)
!4139 = !DILocation(line: 71, column: 7, scope: !4134)
!4140 = !DILocation(line: 71, column: 10, scope: !4134)
!4141 = !DILocation(line: 70, column: 7, scope: !4084)
!4142 = !DILocation(line: 100, column: 12, scope: !4084)
!4143 = !DILocation(line: 105, column: 7, scope: !4084)
!4144 = !DILocation(line: 72, column: 19, scope: !4134)
!4145 = !DILocation(line: 105, column: 19, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4084, file: !867, line: 105, column: 7)
!4147 = !DILocation(line: 107, column: 13, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4146, file: !867, line: 106, column: 5)
!4149 = !DILocation(line: 109, column: 5, scope: !4148)
!4150 = !DILocation(line: 112, column: 1, scope: !4084)
!4151 = !DISubprogram(name: "fileno", scope: !125, file: !125, line: 809, type: !4085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4152 = !DISubprogram(name: "fclose", scope: !125, file: !125, line: 178, type: !4085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4153 = !DISubprogram(name: "__freading", scope: !4081, file: !4081, line: 51, type: !4085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4154 = distinct !DISubprogram(name: "rpl_fflush", scope: !869, file: !869, line: 130, type: !4155, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4191)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!104, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4159, file: !253, line: 51, baseType: !104, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4159, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4159, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4159, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4159, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4159, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4159, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4159, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4159, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4159, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4159, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4159, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4159, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4159, file: !253, line: 70, baseType: !4175, size: 64, offset: 832)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4159, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4159, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4159, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4159, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4159, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4159, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4159, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4159, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4159, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4159, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4159, file: !253, line: 93, baseType: !4175, size: 64, offset: 1344)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4159, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4159, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4159, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4159, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "stream", arg: 1, scope: !4154, file: !869, line: 130, type: !4157)
!4193 = !DILocation(line: 0, scope: !4154)
!4194 = !DILocation(line: 151, column: 14, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4154, file: !869, line: 151, column: 7)
!4196 = !DILocation(line: 151, column: 22, scope: !4195)
!4197 = !DILocation(line: 151, column: 27, scope: !4195)
!4198 = !DILocation(line: 151, column: 7, scope: !4154)
!4199 = !DILocation(line: 152, column: 12, scope: !4195)
!4200 = !DILocation(line: 152, column: 5, scope: !4195)
!4201 = !DILocalVariable(name: "fp", arg: 1, scope: !4202, file: !869, line: 42, type: !4157)
!4202 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !869, file: !869, line: 42, type: !4203, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4157}
!4205 = !{!4201}
!4206 = !DILocation(line: 0, scope: !4202, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 157, column: 3, scope: !4154)
!4208 = !DILocation(line: 44, column: 12, scope: !4209, inlinedAt: !4207)
!4209 = distinct !DILexicalBlock(scope: !4202, file: !869, line: 44, column: 7)
!4210 = !DILocation(line: 44, column: 19, scope: !4209, inlinedAt: !4207)
!4211 = !DILocation(line: 44, column: 7, scope: !4202, inlinedAt: !4207)
!4212 = !DILocation(line: 46, column: 5, scope: !4209, inlinedAt: !4207)
!4213 = !DILocation(line: 159, column: 10, scope: !4154)
!4214 = !DILocation(line: 159, column: 3, scope: !4154)
!4215 = !DILocation(line: 236, column: 1, scope: !4154)
!4216 = !DISubprogram(name: "fflush", scope: !125, file: !125, line: 230, type: !4155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4217 = distinct !DISubprogram(name: "rpl_fseeko", scope: !871, file: !871, line: 28, type: !4218, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4254)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!104, !4220, !124, !104}
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4222)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4222, file: !253, line: 51, baseType: !104, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4222, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4222, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4222, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4222, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4222, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4222, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4222, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4222, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4222, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4222, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4222, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4222, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4222, file: !253, line: 70, baseType: !4238, size: 64, offset: 832)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4222, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4222, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4222, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4222, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4222, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4222, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4222, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4222, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4222, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4222, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4222, file: !253, line: 93, baseType: !4238, size: 64, offset: 1344)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4222, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4222, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4222, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4222, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4254 = !{!4255, !4256, !4257, !4258}
!4255 = !DILocalVariable(name: "fp", arg: 1, scope: !4217, file: !871, line: 28, type: !4220)
!4256 = !DILocalVariable(name: "offset", arg: 2, scope: !4217, file: !871, line: 28, type: !124)
!4257 = !DILocalVariable(name: "whence", arg: 3, scope: !4217, file: !871, line: 28, type: !104)
!4258 = !DILocalVariable(name: "pos", scope: !4259, file: !871, line: 123, type: !124)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !871, line: 119, column: 5)
!4260 = distinct !DILexicalBlock(scope: !4217, file: !871, line: 55, column: 7)
!4261 = !DILocation(line: 0, scope: !4217)
!4262 = !DILocation(line: 55, column: 12, scope: !4260)
!4263 = !{!1667, !901, i64 16}
!4264 = !DILocation(line: 55, column: 33, scope: !4260)
!4265 = !{!1667, !901, i64 8}
!4266 = !DILocation(line: 55, column: 25, scope: !4260)
!4267 = !DILocation(line: 56, column: 7, scope: !4260)
!4268 = !DILocation(line: 56, column: 15, scope: !4260)
!4269 = !DILocation(line: 56, column: 37, scope: !4260)
!4270 = !{!1667, !901, i64 32}
!4271 = !DILocation(line: 56, column: 29, scope: !4260)
!4272 = !DILocation(line: 57, column: 7, scope: !4260)
!4273 = !DILocation(line: 57, column: 15, scope: !4260)
!4274 = !{!1667, !901, i64 72}
!4275 = !DILocation(line: 57, column: 29, scope: !4260)
!4276 = !DILocation(line: 55, column: 7, scope: !4217)
!4277 = !DILocation(line: 123, column: 26, scope: !4259)
!4278 = !DILocation(line: 123, column: 19, scope: !4259)
!4279 = !DILocation(line: 0, scope: !4259)
!4280 = !DILocation(line: 124, column: 15, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4259, file: !871, line: 124, column: 11)
!4282 = !DILocation(line: 124, column: 11, scope: !4259)
!4283 = !DILocation(line: 135, column: 19, scope: !4259)
!4284 = !DILocation(line: 136, column: 12, scope: !4259)
!4285 = !DILocation(line: 136, column: 20, scope: !4259)
!4286 = !{!1667, !1281, i64 144}
!4287 = !DILocation(line: 167, column: 7, scope: !4259)
!4288 = !DILocation(line: 169, column: 10, scope: !4217)
!4289 = !DILocation(line: 169, column: 3, scope: !4217)
!4290 = !DILocation(line: 170, column: 1, scope: !4217)
!4291 = !DISubprogram(name: "fseeko", scope: !125, file: !125, line: 736, type: !4292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!104, !4220, !126, !104}
!4294 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !775, file: !775, line: 100, type: !4295, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4298)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!131, !1831, !134, !131, !4297}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!4298 = !{!4299, !4300, !4301, !4302, !4303}
!4299 = !DILocalVariable(name: "pwc", arg: 1, scope: !4294, file: !775, line: 100, type: !1831)
!4300 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !775, line: 100, type: !134)
!4301 = !DILocalVariable(name: "n", arg: 3, scope: !4294, file: !775, line: 100, type: !131)
!4302 = !DILocalVariable(name: "ps", arg: 4, scope: !4294, file: !775, line: 100, type: !4297)
!4303 = !DILocalVariable(name: "ret", scope: !4294, file: !775, line: 130, type: !131)
!4304 = !DILocation(line: 0, scope: !4294)
!4305 = !DILocation(line: 105, column: 9, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4294, file: !775, line: 105, column: 7)
!4307 = !DILocation(line: 105, column: 7, scope: !4294)
!4308 = !DILocation(line: 117, column: 10, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4294, file: !775, line: 117, column: 7)
!4310 = !DILocation(line: 117, column: 7, scope: !4294)
!4311 = !DILocation(line: 130, column: 16, scope: !4294)
!4312 = !DILocation(line: 135, column: 11, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4294, file: !775, line: 135, column: 7)
!4314 = !DILocation(line: 135, column: 25, scope: !4313)
!4315 = !DILocation(line: 135, column: 30, scope: !4313)
!4316 = !DILocation(line: 135, column: 7, scope: !4294)
!4317 = !DILocalVariable(name: "ps", arg: 1, scope: !4318, file: !1804, line: 1135, type: !4297)
!4318 = distinct !DISubprogram(name: "mbszero", scope: !1804, file: !1804, line: 1135, type: !4319, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4297}
!4321 = !{!4317}
!4322 = !DILocation(line: 0, scope: !4318, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 137, column: 5, scope: !4313)
!4324 = !DILocalVariable(name: "__dest", arg: 1, scope: !4325, file: !1813, line: 57, type: !130)
!4325 = distinct !DISubprogram(name: "memset", scope: !1813, file: !1813, line: 57, type: !1814, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4326)
!4326 = !{!4324, !4327, !4328}
!4327 = !DILocalVariable(name: "__ch", arg: 2, scope: !4325, file: !1813, line: 57, type: !104)
!4328 = !DILocalVariable(name: "__len", arg: 3, scope: !4325, file: !1813, line: 57, type: !131)
!4329 = !DILocation(line: 0, scope: !4325, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 1137, column: 3, scope: !4318, inlinedAt: !4323)
!4331 = !DILocation(line: 59, column: 10, scope: !4325, inlinedAt: !4330)
!4332 = !DILocation(line: 137, column: 5, scope: !4313)
!4333 = !DILocation(line: 138, column: 11, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4294, file: !775, line: 138, column: 7)
!4335 = !DILocation(line: 138, column: 7, scope: !4294)
!4336 = !DILocation(line: 139, column: 5, scope: !4334)
!4337 = !DILocation(line: 143, column: 26, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4294, file: !775, line: 143, column: 7)
!4339 = !DILocation(line: 143, column: 41, scope: !4338)
!4340 = !DILocation(line: 143, column: 7, scope: !4294)
!4341 = !DILocation(line: 145, column: 15, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !775, line: 145, column: 11)
!4343 = distinct !DILexicalBlock(scope: !4338, file: !775, line: 144, column: 5)
!4344 = !DILocation(line: 145, column: 11, scope: !4343)
!4345 = !DILocation(line: 146, column: 32, scope: !4342)
!4346 = !DILocation(line: 146, column: 16, scope: !4342)
!4347 = !DILocation(line: 146, column: 14, scope: !4342)
!4348 = !DILocation(line: 146, column: 9, scope: !4342)
!4349 = !DILocation(line: 286, column: 1, scope: !4294)
!4350 = !DISubprogram(name: "mbsinit", scope: !4351, file: !4351, line: 293, type: !4352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!4351 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!104, !4354}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!4356 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !873, file: !873, line: 27, type: !3287, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4357)
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DILocalVariable(name: "ptr", arg: 1, scope: !4356, file: !873, line: 27, type: !130)
!4359 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4356, file: !873, line: 27, type: !131)
!4360 = !DILocalVariable(name: "size", arg: 3, scope: !4356, file: !873, line: 27, type: !131)
!4361 = !DILocalVariable(name: "nbytes", scope: !4356, file: !873, line: 29, type: !131)
!4362 = !DILocation(line: 0, scope: !4356)
!4363 = !DILocation(line: 30, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4356, file: !873, line: 30, column: 7)
!4365 = !DILocalVariable(name: "ptr", arg: 1, scope: !4366, file: !3379, line: 2057, type: !130)
!4366 = distinct !DISubprogram(name: "rpl_realloc", scope: !3379, file: !3379, line: 2057, type: !3371, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4367)
!4367 = !{!4365, !4368}
!4368 = !DILocalVariable(name: "size", arg: 2, scope: !4366, file: !3379, line: 2057, type: !131)
!4369 = !DILocation(line: 0, scope: !4366, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 37, column: 10, scope: !4356)
!4371 = !DILocation(line: 2059, column: 24, scope: !4366, inlinedAt: !4370)
!4372 = !DILocation(line: 2059, column: 10, scope: !4366, inlinedAt: !4370)
!4373 = !DILocation(line: 37, column: 3, scope: !4356)
!4374 = !DILocation(line: 32, column: 7, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4364, file: !873, line: 31, column: 5)
!4376 = !DILocation(line: 32, column: 13, scope: !4375)
!4377 = !DILocation(line: 33, column: 7, scope: !4375)
!4378 = !DILocation(line: 38, column: 1, scope: !4356)
!4379 = distinct !DISubprogram(name: "hard_locale", scope: !793, file: !793, line: 28, type: !4380, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4382)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!137, !104}
!4382 = !{!4383, !4384}
!4383 = !DILocalVariable(name: "category", arg: 1, scope: !4379, file: !793, line: 28, type: !104)
!4384 = !DILocalVariable(name: "locale", scope: !4379, file: !793, line: 30, type: !4385)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4386)
!4386 = !{!4387}
!4387 = !DISubrange(count: 257)
!4388 = !DILocation(line: 0, scope: !4379)
!4389 = !DILocation(line: 30, column: 3, scope: !4379)
!4390 = !DILocation(line: 30, column: 8, scope: !4379)
!4391 = !DILocation(line: 32, column: 7, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4379, file: !793, line: 32, column: 7)
!4393 = !DILocation(line: 32, column: 7, scope: !4379)
!4394 = !DILocalVariable(name: "__s1", arg: 1, scope: !4395, file: !984, line: 1359, type: !134)
!4395 = distinct !DISubprogram(name: "streq", scope: !984, file: !984, line: 1359, type: !985, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4396)
!4396 = !{!4394, !4397}
!4397 = !DILocalVariable(name: "__s2", arg: 2, scope: !4395, file: !984, line: 1359, type: !134)
!4398 = !DILocation(line: 0, scope: !4395, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 35, column: 9, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4379, file: !793, line: 35, column: 7)
!4401 = !DILocation(line: 1361, column: 11, scope: !4395, inlinedAt: !4399)
!4402 = !DILocation(line: 1361, column: 10, scope: !4395, inlinedAt: !4399)
!4403 = !DILocation(line: 35, column: 29, scope: !4400)
!4404 = !DILocation(line: 0, scope: !4395, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 35, column: 32, scope: !4400)
!4406 = !DILocation(line: 1361, column: 11, scope: !4395, inlinedAt: !4405)
!4407 = !DILocation(line: 1361, column: 10, scope: !4395, inlinedAt: !4405)
!4408 = !DILocation(line: 35, column: 7, scope: !4379)
!4409 = !DILocation(line: 46, column: 3, scope: !4379)
!4410 = !DILocation(line: 47, column: 1, scope: !4379)
!4411 = distinct !DISubprogram(name: "setlocale_null_r", scope: !878, file: !878, line: 154, type: !4412, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4414)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!104, !104, !129, !131}
!4414 = !{!4415, !4416, !4417}
!4415 = !DILocalVariable(name: "category", arg: 1, scope: !4411, file: !878, line: 154, type: !104)
!4416 = !DILocalVariable(name: "buf", arg: 2, scope: !4411, file: !878, line: 154, type: !129)
!4417 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4411, file: !878, line: 154, type: !131)
!4418 = !DILocation(line: 0, scope: !4411)
!4419 = !DILocation(line: 159, column: 10, scope: !4411)
!4420 = !DILocation(line: 159, column: 3, scope: !4411)
!4421 = distinct !DISubprogram(name: "setlocale_null", scope: !878, file: !878, line: 186, type: !4422, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!134, !104}
!4424 = !{!4425}
!4425 = !DILocalVariable(name: "category", arg: 1, scope: !4421, file: !878, line: 186, type: !104)
!4426 = !DILocation(line: 0, scope: !4421)
!4427 = !DILocation(line: 189, column: 10, scope: !4421)
!4428 = !DILocation(line: 189, column: 3, scope: !4421)
!4429 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !880, file: !880, line: 35, type: !4422, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4430)
!4430 = !{!4431, !4432}
!4431 = !DILocalVariable(name: "category", arg: 1, scope: !4429, file: !880, line: 35, type: !104)
!4432 = !DILocalVariable(name: "result", scope: !4429, file: !880, line: 37, type: !134)
!4433 = !DILocation(line: 0, scope: !4429)
!4434 = !DILocation(line: 37, column: 24, scope: !4429)
!4435 = !DILocation(line: 62, column: 3, scope: !4429)
!4436 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !880, file: !880, line: 66, type: !4412, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4437)
!4437 = !{!4438, !4439, !4440, !4441, !4442}
!4438 = !DILocalVariable(name: "category", arg: 1, scope: !4436, file: !880, line: 66, type: !104)
!4439 = !DILocalVariable(name: "buf", arg: 2, scope: !4436, file: !880, line: 66, type: !129)
!4440 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4436, file: !880, line: 66, type: !131)
!4441 = !DILocalVariable(name: "result", scope: !4436, file: !880, line: 111, type: !134)
!4442 = !DILocalVariable(name: "length", scope: !4443, file: !880, line: 125, type: !131)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !880, line: 124, column: 5)
!4444 = distinct !DILexicalBlock(scope: !4436, file: !880, line: 113, column: 7)
!4445 = !DILocation(line: 0, scope: !4436)
!4446 = !DILocation(line: 0, scope: !4429, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 111, column: 24, scope: !4436)
!4448 = !DILocation(line: 37, column: 24, scope: !4429, inlinedAt: !4447)
!4449 = !DILocation(line: 113, column: 14, scope: !4444)
!4450 = !DILocation(line: 113, column: 7, scope: !4436)
!4451 = !DILocation(line: 116, column: 19, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !880, line: 116, column: 11)
!4453 = distinct !DILexicalBlock(scope: !4444, file: !880, line: 114, column: 5)
!4454 = !DILocation(line: 116, column: 11, scope: !4453)
!4455 = !DILocation(line: 120, column: 16, scope: !4452)
!4456 = !DILocation(line: 120, column: 9, scope: !4452)
!4457 = !DILocation(line: 125, column: 23, scope: !4443)
!4458 = !DILocation(line: 0, scope: !4443)
!4459 = !DILocation(line: 126, column: 18, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4443, file: !880, line: 126, column: 11)
!4461 = !DILocation(line: 126, column: 11, scope: !4443)
!4462 = !DILocation(line: 128, column: 39, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4460, file: !880, line: 127, column: 9)
!4464 = !DILocalVariable(name: "__dest", arg: 1, scope: !4465, file: !1813, line: 26, type: !3647)
!4465 = distinct !DISubprogram(name: "memcpy", scope: !1813, file: !1813, line: 26, type: !3645, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4466)
!4466 = !{!4464, !4467, !4468}
!4467 = !DILocalVariable(name: "__src", arg: 2, scope: !4465, file: !1813, line: 26, type: !1115)
!4468 = !DILocalVariable(name: "__len", arg: 3, scope: !4465, file: !1813, line: 26, type: !131)
!4469 = !DILocation(line: 0, scope: !4465, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 128, column: 11, scope: !4463)
!4471 = !DILocation(line: 29, column: 10, scope: !4465, inlinedAt: !4470)
!4472 = !DILocation(line: 129, column: 11, scope: !4463)
!4473 = !DILocation(line: 133, column: 23, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !880, line: 133, column: 15)
!4475 = distinct !DILexicalBlock(scope: !4460, file: !880, line: 132, column: 9)
!4476 = !DILocation(line: 133, column: 15, scope: !4475)
!4477 = !DILocation(line: 138, column: 44, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4474, file: !880, line: 134, column: 13)
!4479 = !DILocation(line: 0, scope: !4465, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 138, column: 15, scope: !4478)
!4481 = !DILocation(line: 29, column: 10, scope: !4465, inlinedAt: !4480)
!4482 = !DILocation(line: 139, column: 15, scope: !4478)
!4483 = !DILocation(line: 139, column: 32, scope: !4478)
!4484 = !DILocation(line: 140, column: 13, scope: !4478)
!4485 = !DILocation(line: 0, scope: !4444)
!4486 = !DILocation(line: 145, column: 1, scope: !4436)
