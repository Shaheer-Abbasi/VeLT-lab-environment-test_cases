; ModuleID = 'src/truncate.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !475
@.str.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !467
@.str.1.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !469
@.str.2.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !471
@.str.3.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !473
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !477
@stderr = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !483
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !515
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !485
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !505
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !507
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !509
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !511
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !513
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !517
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !519
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !521
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !526
@.str.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !532
@.str.1.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !534
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !536
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !567
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !570
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !572
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !577
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !579
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !581
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !583
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !585
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !587
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !589
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 16, !dbg !591
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !602
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !616
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !654
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !661
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !618
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !663
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !606
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !623
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !625
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !627
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !629
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !631
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !669
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !672
@.str.2.103 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !674
@.str.3.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !676
@.str.4.105 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !678
@.str.5.106 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !680
@.str.6.107 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !685
@.str.7.108 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !690
@.str.8.109 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !692
@.str.9.110 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !697
@.str.10.111 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !702
@.str.11.112 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !704
@.str.12.113 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !709
@.str.13.114 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !711
@.str.14.115 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !716
@.str.15.116 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !721
@.str.16.117 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !726
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.122 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !731
@.str.18.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !733
@.str.19.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !735
@.str.20.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !737
@.str.21.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !739
@.str.22.127 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !741
@.str.23.128 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !743
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !745
@exit_failure = dso_local global i32 1, align 4, !dbg !753
@.str.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !759
@.str.1.139 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !762
@.str.2.140 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !764
@.str.142 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !766
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !769
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !772
@.str.1.162 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !787

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !888, metadata !DIExpression()), !dbg !889
  %2 = icmp eq i32 %0, 0, !dbg !890
  br i1 %2, label %8, label %3, !dbg !892

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !893, !tbaa !895
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !893
  %6 = load ptr, ptr @program_name, align 8, !dbg !893, !tbaa !895
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !893
  br label %44, !dbg !893

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !899
  %10 = load ptr, ptr @program_name, align 8, !dbg !899, !tbaa !895
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !899
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !901
  %13 = load ptr, ptr @stdout, align 8, !dbg !901, !tbaa !895
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !901
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #37, !dbg !902
  %16 = load ptr, ptr @stdout, align 8, !dbg !902, !tbaa !895
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !902
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !906
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !906
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !907
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !907
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !908
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !908
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !909
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !909
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !910
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !910
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !911
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !911
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #37, !dbg !912
  %25 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !895
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !912
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !915
  %28 = load ptr, ptr @stdout, align 8, !dbg !915, !tbaa !895
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !915
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !916, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr poison, metadata !928, metadata !DIExpression()), !dbg !933
  tail call void @emit_bug_reporting_address() #37, !dbg !935
  %30 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !936
  call void @llvm.dbg.value(metadata ptr %30, metadata !931, metadata !DIExpression()), !dbg !933
  %31 = icmp eq ptr %30, null, !dbg !937
  br i1 %31, label %39, label %32, !dbg !939

32:                                               ; preds = %8
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #38, !dbg !940
  %34 = icmp eq i32 %33, 0, !dbg !940
  br i1 %34, label %39, label %35, !dbg !941

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !942
  %37 = load ptr, ptr @stdout, align 8, !dbg !942, !tbaa !895
  %38 = tail call i32 @fputs_unlocked(ptr noundef %36, ptr noundef %37), !dbg !942
  br label %39, !dbg !944

39:                                               ; preds = %8, %32, %35
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !933
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #37, !dbg !945
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #37, !dbg !945
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #37, !dbg !946
  %43 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #37, !dbg !946
  br label %44

44:                                               ; preds = %39, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !947
  unreachable, !dbg !947
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !948 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !952 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !958 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !961 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !227 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr %0, metadata !232, metadata !DIExpression()), !dbg !964
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !965, !tbaa !966
  %3 = icmp eq i32 %2, -1, !dbg !968
  br i1 %3, label %4, label %16, !dbg !969

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #37, !dbg !970
  call void @llvm.dbg.value(metadata ptr %5, metadata !233, metadata !DIExpression()), !dbg !971
  %6 = icmp eq ptr %5, null, !dbg !972
  br i1 %6, label %14, label %7, !dbg !973

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !974, !tbaa !975
  %9 = icmp eq i8 %8, 0, !dbg !974
  br i1 %9, label %14, label %10, !dbg !976

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !977, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !983, metadata !DIExpression()), !dbg !984
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #38, !dbg !986
  %12 = icmp eq i32 %11, 0, !dbg !987
  %13 = zext i1 %12 to i32, !dbg !976
  br label %14, !dbg !976

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !988, !tbaa !966
  br label %16, !dbg !989

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !990
  %18 = icmp eq i32 %17, 0, !dbg !990
  br i1 %18, label %22, label %19, !dbg !992

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !895
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !993
  br label %128, !dbg !995

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !236, metadata !DIExpression()), !dbg !964
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #38, !dbg !996
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !997
  call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !964
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !998
  call void @llvm.dbg.value(metadata ptr %25, metadata !238, metadata !DIExpression()), !dbg !964
  %26 = icmp eq ptr %25, null, !dbg !999
  br i1 %26, label %58, label %27, !dbg !1000

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1001
  br i1 %28, label %58, label %29, !dbg !1002

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !239, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()), !dbg !1003
  %30 = icmp ult ptr %24, %25, !dbg !1004
  br i1 %30, label %31, label %52, !dbg !1005

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !964
  %33 = load ptr, ptr %32, align 8, !tbaa !895
  br label %34, !dbg !1005

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !239, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %36, metadata !243, metadata !DIExpression()), !dbg !1003
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1006
  call void @llvm.dbg.value(metadata ptr %37, metadata !239, metadata !DIExpression()), !dbg !1003
  %38 = load i8, ptr %35, align 1, !dbg !1006, !tbaa !975
  %39 = sext i8 %38 to i64, !dbg !1006
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1006
  %41 = load i16, ptr %40, align 2, !dbg !1006, !tbaa !1007
  %42 = freeze i16 %41, !dbg !1009
  %43 = lshr i16 %42, 13, !dbg !1009
  %44 = and i16 %43, 1, !dbg !1009
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %46, metadata !243, metadata !DIExpression()), !dbg !1003
  %47 = icmp ult ptr %37, %25, !dbg !1004
  %48 = icmp ult i64 %46, 2, !dbg !1011
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1011
  br i1 %49, label %34, label %50, !dbg !1005, !llvm.loop !1012

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1014
  br i1 %51, label %52, label %54, !dbg !1016

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1016

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1016
  call void @llvm.dbg.value(metadata i8 %57, metadata !236, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr %56, metadata !238, metadata !DIExpression()), !dbg !964
  br label %58, !dbg !1017

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !964
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !964
  call void @llvm.dbg.value(metadata i8 %60, metadata !236, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr %59, metadata !238, metadata !DIExpression()), !dbg !964
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.37) #38, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %61, metadata !244, metadata !DIExpression()), !dbg !964
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1019
  call void @llvm.dbg.value(metadata ptr %62, metadata !245, metadata !DIExpression()), !dbg !964
  br label %63, !dbg !1020

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !964
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !964
  call void @llvm.dbg.value(metadata i8 %65, metadata !236, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr %64, metadata !245, metadata !DIExpression()), !dbg !964
  %66 = load i8, ptr %64, align 1, !dbg !1021, !tbaa !975
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1022

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1023
  %69 = load i8, ptr %68, align 1, !dbg !1026, !tbaa !975
  %70 = icmp eq i8 %69, 45, !dbg !1027
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1028
  br label %72, !dbg !1028

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !964
  call void @llvm.dbg.value(metadata i8 %73, metadata !236, metadata !DIExpression()), !dbg !964
  %74 = tail call ptr @__ctype_b_loc() #40, !dbg !1029
  %75 = load ptr, ptr %74, align 8, !dbg !1029, !tbaa !895
  %76 = sext i8 %66 to i64, !dbg !1029
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1029
  %78 = load i16, ptr %77, align 2, !dbg !1029, !tbaa !1007
  %79 = and i16 %78, 8192, !dbg !1029
  %80 = icmp eq i16 %79, 0, !dbg !1029
  br i1 %80, label %96, label %81, !dbg !1031

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1032
  br i1 %82, label %98, label %83, !dbg !1035

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1036
  %85 = load i8, ptr %84, align 1, !dbg !1036, !tbaa !975
  %86 = sext i8 %85 to i64, !dbg !1036
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1036
  %88 = load i16, ptr %87, align 2, !dbg !1036, !tbaa !1007
  %89 = and i16 %88, 8192, !dbg !1036
  %90 = icmp eq i16 %89, 0, !dbg !1036
  br i1 %90, label %91, label %98, !dbg !1037

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1038
  %93 = icmp ne i8 %92, 0, !dbg !1038
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1040
  br i1 %95, label %96, label %98, !dbg !1040

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1041
  call void @llvm.dbg.value(metadata ptr %97, metadata !245, metadata !DIExpression()), !dbg !964
  br label %63, !dbg !1020, !llvm.loop !1042

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1044
  %100 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !895
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1044
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !964
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #38, !dbg !1065
  %103 = icmp eq i32 %102, 0, !dbg !1065
  br i1 %103, label %107, label %104, !dbg !1067

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #38, !dbg !1068
  %106 = icmp eq i32 %105, 0, !dbg !1068
  br i1 %106, label %107, label %110, !dbg !1069

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1070
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #37, !dbg !1070
  br label %113, !dbg !1072

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1073
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #37, !dbg !1073
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1075, !tbaa !895
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %114), !dbg !1075
  %116 = load ptr, ptr @stdout, align 8, !dbg !1076, !tbaa !895
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %116), !dbg !1076
  %118 = ptrtoint ptr %64 to i64, !dbg !1077
  %119 = sub i64 %118, %99, !dbg !1077
  %120 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !895
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1077
  %122 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !895
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %122), !dbg !1078
  %124 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !895
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %124), !dbg !1079
  %126 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !895
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1080
  br label %128, !dbg !1081

128:                                              ; preds = %113, %19
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
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1117 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1122, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr %1, metadata !1123, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 0, metadata !1124, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 -1, metadata !1126, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 0, metadata !1127, metadata !DIExpression()), !dbg !1182
  %5 = load ptr, ptr %1, align 8, !dbg !1183, !tbaa !895
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1184
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #37, !dbg !1185
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #37, !dbg !1186
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #37, !dbg !1187
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1188
  br label %10, !dbg !1189

10:                                               ; preds = %78, %2
  %11 = phi i32 [ %79, %78 ], [ 0, %2 ]
  %12 = phi i64 [ %81, %78 ], [ undef, %2 ]
  %13 = phi i1 [ false, %78 ], [ true, %2 ]
  br label %14, !dbg !1189

14:                                               ; preds = %30, %10
  call void @llvm.dbg.value(metadata i8 poison, metadata !1124, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %12, metadata !1125, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %11, metadata !1127, metadata !DIExpression()), !dbg !1182
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %15, metadata !1129, metadata !DIExpression()), !dbg !1182
  switch i32 %15, label %93 [
    i32 -1, label %94
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -130, label %88
    i32 -131, label %89
  ], !dbg !1189

16:                                               ; preds = %14
  %17 = tail call ptr @__ctype_b_loc() #40, !dbg !1182
  %18 = load ptr, ptr %17, align 8, !dbg !1191, !tbaa !895
  %19 = load ptr, ptr @optarg, align 8, !dbg !1191, !tbaa !895
  %20 = load i8, ptr %19, align 1, !dbg !1191, !tbaa !975
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21, !dbg !1191
  %23 = load i16, ptr %22, align 2, !dbg !1191, !tbaa !1007
  %24 = and i16 %23, 8192, !dbg !1191
  %25 = icmp eq i16 %24, 0, !dbg !1194
  br i1 %25, label %41, label %31, !dbg !1194

26:                                               ; preds = %14
  store i1 true, ptr @no_create, align 1, !dbg !1195
  br label %30, !dbg !1196

27:                                               ; preds = %14
  store i1 true, ptr @block_mode, align 1, !dbg !1197
  br label %30, !dbg !1198

28:                                               ; preds = %14
  %29 = load ptr, ptr @optarg, align 8, !dbg !1199, !tbaa !895
  store ptr %29, ptr @ref_file, align 8, !dbg !1200, !tbaa !895
  br label %30, !dbg !1201

30:                                               ; preds = %28, %27, %26
  br label %14, !dbg !1182, !llvm.loop !1202

31:                                               ; preds = %16, %31
  %32 = phi ptr [ %33, %31 ], [ %19, %16 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1204
  store ptr %33, ptr @optarg, align 8, !dbg !1204, !tbaa !895
  %34 = load ptr, ptr %17, align 8, !dbg !1191, !tbaa !895
  %35 = load i8, ptr %33, align 1, !dbg !1191, !tbaa !975
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i16, ptr %34, i64 %36, !dbg !1191
  %38 = load i16, ptr %37, align 2, !dbg !1191, !tbaa !1007
  %39 = and i16 %38, 8192, !dbg !1191
  %40 = icmp eq i16 %39, 0, !dbg !1194
  br i1 %40, label %41, label %31, !dbg !1194, !llvm.loop !1205

41:                                               ; preds = %31, %16
  %42 = phi ptr [ %19, %16 ], [ %33, %31 ], !dbg !1191
  %43 = phi i8 [ %20, %16 ], [ %35, %31 ], !dbg !1191
  %44 = sext i8 %43 to i32, !dbg !1206
  switch i32 %44, label %51 [
    i32 60, label %48
    i32 62, label %45
    i32 47, label %46
    i32 37, label %47
  ], !dbg !1207

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 2, metadata !1127, metadata !DIExpression()), !dbg !1182
  br label %48, !dbg !1208

46:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 4, metadata !1127, metadata !DIExpression()), !dbg !1182
  br label %48, !dbg !1210

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 5, metadata !1127, metadata !DIExpression()), !dbg !1182
  br label %48, !dbg !1211

48:                                               ; preds = %41, %45, %46, %47
  %49 = phi i32 [ 5, %47 ], [ 4, %46 ], [ 2, %45 ], [ 3, %41 ]
  %50 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !1212
  store ptr %50, ptr @optarg, align 8, !dbg !1212, !tbaa !895
  br label %51, !dbg !1213

51:                                               ; preds = %48, %41
  %52 = phi ptr [ %42, %41 ], [ %50, %48 ], !dbg !1213
  %53 = phi i32 [ %11, %41 ], [ %49, %48 ], !dbg !1182
  call void @llvm.dbg.value(metadata i32 %53, metadata !1127, metadata !DIExpression()), !dbg !1182
  %54 = load ptr, ptr %17, align 8, !dbg !1213, !tbaa !895
  %55 = load i8, ptr %52, align 1, !dbg !1213, !tbaa !975
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds i16, ptr %54, i64 %56, !dbg !1213
  %58 = load i16, ptr %57, align 2, !dbg !1213, !tbaa !1007
  %59 = and i16 %58, 8192, !dbg !1213
  %60 = icmp eq i16 %59, 0, !dbg !1214
  br i1 %60, label %71, label %61, !dbg !1214

61:                                               ; preds = %51, %61
  %62 = phi ptr [ %63, %61 ], [ %52, %51 ]
  %63 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1215
  store ptr %63, ptr @optarg, align 8, !dbg !1215, !tbaa !895
  %64 = load ptr, ptr %17, align 8, !dbg !1213, !tbaa !895
  %65 = load i8, ptr %63, align 1, !dbg !1213, !tbaa !975
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i16, ptr %64, i64 %66, !dbg !1213
  %68 = load i16, ptr %67, align 2, !dbg !1213, !tbaa !1007
  %69 = and i16 %68, 8192, !dbg !1213
  %70 = icmp eq i16 %69, 0, !dbg !1214
  br i1 %70, label %71, label %61, !dbg !1214, !llvm.loop !1216

71:                                               ; preds = %61, %51
  %72 = phi ptr [ %52, %51 ], [ %63, %61 ], !dbg !1213
  %73 = phi i8 [ %55, %51 ], [ %65, %61 ], !dbg !1213
  switch i8 %73, label %78 [
    i8 43, label %74
    i8 45, label %74
  ], !dbg !1217

74:                                               ; preds = %71, %71
  %75 = icmp eq i32 %53, 0, !dbg !1219
  br i1 %75, label %78, label %76, !dbg !1222

76:                                               ; preds = %74
  %77 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1223
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %77) #37, !dbg !1223
  tail call void @usage(i32 noundef 1) #41, !dbg !1225
  unreachable, !dbg !1225

78:                                               ; preds = %74, %71
  %79 = phi i32 [ %53, %71 ], [ 1, %74 ], !dbg !1182
  call void @llvm.dbg.value(metadata i32 %79, metadata !1127, metadata !DIExpression()), !dbg !1182
  %80 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1226
  %81 = tail call i64 @xdectoimax(ptr noundef nonnull %72, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.16, ptr noundef %80, i32 noundef 0) #37, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %81, metadata !1125, metadata !DIExpression()), !dbg !1182
  %82 = and i32 %79, -2, !dbg !1228
  %83 = icmp eq i32 %82, 4, !dbg !1228
  %84 = icmp eq i64 %81, 0
  %85 = select i1 %83, i1 %84, i1 false, !dbg !1228
  br i1 %85, label %86, label %10, !dbg !1228, !llvm.loop !1202

86:                                               ; preds = %78
  %87 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #37, !dbg !1230
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %87) #37, !dbg !1230
  unreachable, !dbg !1230

88:                                               ; preds = %14
  tail call void @usage(i32 noundef 0) #41, !dbg !1231
  unreachable, !dbg !1231

89:                                               ; preds = %14
  %90 = load ptr, ptr @stdout, align 8, !dbg !1232, !tbaa !895
  %91 = load ptr, ptr @Version, align 8, !dbg !1232, !tbaa !895
  %92 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !1232
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %90, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, ptr noundef %91, ptr noundef %92, ptr noundef null) #37, !dbg !1232
  tail call void @exit(i32 noundef 0) #39, !dbg !1232
  unreachable, !dbg !1232

93:                                               ; preds = %14
  tail call void @usage(i32 noundef 1) #41, !dbg !1233
  unreachable, !dbg !1233

94:                                               ; preds = %14
  %95 = load i32, ptr @optind, align 4, !dbg !1234, !tbaa !966
  %96 = sext i32 %95 to i64, !dbg !1235
  %97 = getelementptr inbounds ptr, ptr %1, i64 %96, !dbg !1235
  call void @llvm.dbg.value(metadata ptr %97, metadata !1123, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %95), metadata !1122, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1182
  %98 = load ptr, ptr @ref_file, align 8, !dbg !1236, !tbaa !895
  %99 = icmp eq ptr %98, null, !dbg !1236
  %100 = and i1 %99, %13, !dbg !1238
  br i1 %100, label %101, label %105, !dbg !1238

101:                                              ; preds = %94
  %102 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !1239
  %103 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #37, !dbg !1239
  %104 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #37, !dbg !1239
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %102, ptr noundef %103, ptr noundef %104) #37, !dbg !1239
  tail call void @usage(i32 noundef 1) #41, !dbg !1241
  unreachable, !dbg !1241

105:                                              ; preds = %94
  %106 = icmp ne i32 %11, 0
  %107 = or i1 %99, %13, !dbg !1242
  %108 = select i1 %107, i1 true, i1 %106, !dbg !1242
  br i1 %108, label %113, label %109, !dbg !1242

109:                                              ; preds = %105
  %110 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #37, !dbg !1244
  %111 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #37, !dbg !1244
  %112 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #37, !dbg !1244
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %110, ptr noundef %111, ptr noundef %112) #37, !dbg !1244
  tail call void @usage(i32 noundef 1) #41, !dbg !1246
  unreachable, !dbg !1246

113:                                              ; preds = %105
  %114 = load i1, ptr @block_mode, align 1, !dbg !1247
  %115 = and i1 %114, %13, !dbg !1249
  br i1 %115, label %116, label %120, !dbg !1249

116:                                              ; preds = %113
  %117 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #37, !dbg !1250
  %118 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.27) #37, !dbg !1250
  %119 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.23) #37, !dbg !1250
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %117, ptr noundef %118, ptr noundef %119) #37, !dbg !1250
  tail call void @usage(i32 noundef 1) #41, !dbg !1252
  unreachable, !dbg !1252

120:                                              ; preds = %113
  %121 = icmp slt i32 %95, %0, !dbg !1253
  br i1 %121, label %124, label %122, !dbg !1255

122:                                              ; preds = %120
  %123 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #37, !dbg !1256
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %123) #37, !dbg !1256
  tail call void @usage(i32 noundef 1) #41, !dbg !1258
  unreachable, !dbg !1258

124:                                              ; preds = %120
  br i1 %99, label %164, label %125, !dbg !1259

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #37, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1130, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 -1, metadata !1167, metadata !DIExpression()), !dbg !1262
  %126 = call i32 @stat(ptr noundef nonnull %98, ptr noundef nonnull %4) #37, !dbg !1263
  %127 = icmp eq i32 %126, 0, !dbg !1265
  br i1 %127, label %134, label %128, !dbg !1266

128:                                              ; preds = %125
  %129 = tail call ptr @__errno_location() #40, !dbg !1267
  %130 = load i32, ptr %129, align 4, !dbg !1267, !tbaa !966
  %131 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #37, !dbg !1267
  %132 = load ptr, ptr @ref_file, align 8, !dbg !1267, !tbaa !895
  %133 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %132) #37, !dbg !1267
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %130, ptr noundef %131, ptr noundef %133) #37, !dbg !1267
  unreachable, !dbg !1267

134:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr %4, metadata !1268, metadata !DIExpression()), !dbg !1275
  %135 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3, !dbg !1277
  %136 = load i32, ptr %135, align 8, !dbg !1277, !tbaa !1278
  %137 = and i32 %136, 53248, !dbg !1282
  %138 = icmp eq i32 %137, 32768, !dbg !1282
  br i1 %138, label %150, label %139, !dbg !1283

139:                                              ; preds = %134
  %140 = load ptr, ptr @ref_file, align 8, !dbg !1284, !tbaa !895
  %141 = tail call i32 (ptr, i32, ...) @open(ptr noundef %140, i32 noundef 0) #37, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %141, metadata !1168, metadata !DIExpression()), !dbg !1286
  %142 = icmp sgt i32 %141, -1, !dbg !1287
  br i1 %142, label %143, label %154, !dbg !1288

143:                                              ; preds = %139
  %144 = tail call i64 @lseek(i32 noundef %141, i64 noundef 0, i32 noundef 2) #37, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %144, metadata !1171, metadata !DIExpression()), !dbg !1290
  %145 = tail call ptr @__errno_location() #40, !dbg !1291
  %146 = load i32, ptr %145, align 4, !dbg !1291, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %146, metadata !1174, metadata !DIExpression()), !dbg !1290
  %147 = tail call i32 @close(i32 noundef %141) #37, !dbg !1292
  %148 = icmp sgt i64 %144, -1, !dbg !1293
  br i1 %148, label %160, label %149, !dbg !1295

149:                                              ; preds = %143
  store i32 %146, ptr %145, align 4, !dbg !1296, !tbaa !966
  br label %154

150:                                              ; preds = %134
  %151 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8, !dbg !1298
  %152 = load i64, ptr %151, align 8, !dbg !1298, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %152, metadata !1167, metadata !DIExpression()), !dbg !1262
  %153 = icmp slt i64 %152, 0, !dbg !1300
  br i1 %153, label %154, label %160, !dbg !1302

154:                                              ; preds = %149, %139, %150
  %155 = tail call ptr @__errno_location() #40, !dbg !1303
  %156 = load i32, ptr %155, align 4, !dbg !1303, !tbaa !966
  %157 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #37, !dbg !1303
  %158 = load ptr, ptr @ref_file, align 8, !dbg !1303, !tbaa !895
  %159 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %158) #37, !dbg !1303
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %156, ptr noundef %157, ptr noundef %159) #37, !dbg !1303
  unreachable, !dbg !1303

160:                                              ; preds = %143, %150
  %161 = phi i64 [ %152, %150 ], [ %144, %143 ]
  %162 = select i1 %13, i64 -1, i64 %161
  %163 = select i1 %13, i64 %161, i64 %12
  call void @llvm.dbg.value(metadata i64 %163, metadata !1125, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %162, metadata !1126, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #37, !dbg !1304
  br label %164, !dbg !1305

164:                                              ; preds = %160, %124
  %165 = phi i64 [ %162, %160 ], [ -1, %124 ], !dbg !1182
  %166 = phi i64 [ %163, %160 ], [ %12, %124 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !1125, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %165, metadata !1126, metadata !DIExpression()), !dbg !1182
  %167 = load i1, ptr @no_create, align 1, !dbg !1306
  %168 = select i1 %167, i32 2049, i32 2113, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %168, metadata !1175, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 0, metadata !1176, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr %97, metadata !1123, metadata !DIExpression()), !dbg !1182
  %169 = load ptr, ptr %97, align 8, !dbg !1308, !tbaa !895
  call void @llvm.dbg.value(metadata ptr %169, metadata !1177, metadata !DIExpression()), !dbg !1309
  %170 = icmp eq ptr %169, null, !dbg !1310
  br i1 %170, label %182, label %171, !dbg !1310

171:                                              ; preds = %164
  %172 = icmp slt i64 %165, 0
  %173 = and i1 %106, %172
  %174 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 9
  %175 = icmp slt i64 %166, 0
  %176 = icmp eq i64 %166, -1
  %177 = sub i64 0, %166
  %178 = icmp eq i32 %11, 0
  %179 = icmp sgt i64 %165, -1
  %180 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %181 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  br label %186, !dbg !1310

182:                                              ; preds = %295, %164
  %183 = phi i8 [ 0, %164 ], [ %296, %295 ], !dbg !1311
  %184 = and i8 %183, 1, !dbg !1312
  %185 = zext i8 %184 to i32, !dbg !1312
  ret i32 %185, !dbg !1313

186:                                              ; preds = %171, %295
  %187 = phi ptr [ %169, %171 ], [ %298, %295 ]
  %188 = phi ptr [ %97, %171 ], [ %297, %295 ]
  %189 = phi i8 [ 0, %171 ], [ %296, %295 ]
  call void @llvm.dbg.value(metadata ptr %188, metadata !1123, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %189, metadata !1176, metadata !DIExpression()), !dbg !1182
  %190 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %187, i32 noundef %168, i32 noundef 438) #37, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %190, metadata !1179, metadata !DIExpression()), !dbg !1315
  %191 = icmp slt i32 %190, 0, !dbg !1316
  br i1 %191, label %192, label %198, !dbg !1318

192:                                              ; preds = %186
  %193 = load i1, ptr @no_create, align 1, !dbg !1319
  %194 = tail call ptr @__errno_location() #40, !dbg !1322
  br i1 %193, label %195, label %289, !dbg !1323

195:                                              ; preds = %192
  %196 = load i32, ptr %194, align 4, !dbg !1324, !tbaa !966
  %197 = icmp eq i32 %196, 2, !dbg !1325
  br i1 %197, label %295, label %289, !dbg !1326

198:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i32 %190, metadata !1327, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %187, metadata !1332, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %166, metadata !1333, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %165, metadata !1334, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %11, metadata !1335, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #37, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1336, metadata !DIExpression()), !dbg !1356
  %199 = load i1, ptr @block_mode, align 1, !dbg !1357
  %200 = select i1 %199, i1 true, i1 %173, !dbg !1359
  br i1 %200, label %201, label %228, !dbg !1359

201:                                              ; preds = %198
  %202 = call i32 @fstat(i32 noundef %190, ptr noundef nonnull %3) #37, !dbg !1360
  %203 = icmp eq i32 %202, 0, !dbg !1361
  br i1 %203, label %209, label %204, !dbg !1362

204:                                              ; preds = %201
  %205 = tail call ptr @__errno_location() #40, !dbg !1363
  %206 = load i32, ptr %205, align 4, !dbg !1363, !tbaa !966
  %207 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #37, !dbg !1363
  %208 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %187) #37, !dbg !1363
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %206, ptr noundef %207, ptr noundef %208) #37, !dbg !1363
  br label %281, !dbg !1365

209:                                              ; preds = %201
  %210 = load i1, ptr @block_mode, align 1, !dbg !1366
  br i1 %210, label %211, label %228, !dbg !1367

211:                                              ; preds = %209
  %212 = load i64, ptr %174, align 8, !dbg !1368, !tbaa !1369
  %213 = add i64 %212, -1, !dbg !1368
  %214 = icmp ult i64 %213, 2305843009213693952, !dbg !1368
  %215 = select i1 %214, i64 %212, i64 512, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %215, metadata !1338, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %166, metadata !1341, metadata !DIExpression()), !dbg !1370
  br i1 %175, label %216, label %220, !dbg !1371

216:                                              ; preds = %211
  br i1 %176, label %223, label %217, !dbg !1371

217:                                              ; preds = %216
  %218 = udiv i64 -9223372036854775808, %177, !dbg !1371
  %219 = icmp ult i64 %218, %215, !dbg !1371
  br i1 %219, label %225, label %223, !dbg !1371

220:                                              ; preds = %211
  %221 = udiv i64 9223372036854775807, %215
  %222 = icmp ult i64 %221, %166, !dbg !1371
  br i1 %222, label %225, label %223, !dbg !1371

223:                                              ; preds = %220, %217, %216
  call void @llvm.dbg.value(metadata !DIArgList(i64 %215, i64 %166), metadata !1333, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1352
  %224 = mul i64 %215, %166, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %224, metadata !1333, metadata !DIExpression()), !dbg !1352
  br label %228, !dbg !1373

225:                                              ; preds = %220, %217
  call void @llvm.dbg.value(metadata !DIArgList(i64 %215, i64 %166), metadata !1333, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1352
  %226 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #37, !dbg !1374
  %227 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %187) #37, !dbg !1374
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %226, i64 noundef %166, i64 noundef %215, ptr noundef %227) #37, !dbg !1374
  br label %281

228:                                              ; preds = %198, %223, %209
  %229 = phi i64 [ %166, %209 ], [ %224, %223 ], [ %166, %198 ]
  call void @llvm.dbg.value(metadata i64 %229, metadata !1333, metadata !DIExpression()), !dbg !1352
  br i1 %178, label %271, label %230, !dbg !1376

230:                                              ; preds = %228
  br i1 %179, label %249, label %231, !dbg !1377

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata ptr %3, metadata !1268, metadata !DIExpression()), !dbg !1378
  %232 = load i32, ptr %180, align 8, !dbg !1383, !tbaa !1278
  %233 = and i32 %232, 53248, !dbg !1384
  %234 = icmp eq i32 %233, 32768, !dbg !1384
  br i1 %234, label %235, label %241, !dbg !1385

235:                                              ; preds = %231
  %236 = load i64, ptr %181, align 8, !dbg !1386, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 %236, metadata !1342, metadata !DIExpression()), !dbg !1388
  %237 = icmp slt i64 %236, 0, !dbg !1389
  br i1 %237, label %238, label %249, !dbg !1391

238:                                              ; preds = %235
  %239 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #37, !dbg !1392
  %240 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %187) #37, !dbg !1392
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %239, ptr noundef %240) #37, !dbg !1392
  br label %281, !dbg !1394

241:                                              ; preds = %231
  %242 = tail call i64 @lseek(i32 noundef %190, i64 noundef 0, i32 noundef 2) #37, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %242, metadata !1342, metadata !DIExpression()), !dbg !1388
  %243 = icmp slt i64 %242, 0, !dbg !1397
  br i1 %243, label %244, label %249, !dbg !1399

244:                                              ; preds = %241
  %245 = tail call ptr @__errno_location() #40, !dbg !1400
  %246 = load i32, ptr %245, align 4, !dbg !1400, !tbaa !966
  %247 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #37, !dbg !1400
  %248 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %187) #37, !dbg !1400
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %246, ptr noundef %247, ptr noundef %248) #37, !dbg !1400
  br label %281, !dbg !1402

249:                                              ; preds = %241, %235, %230
  %250 = phi i64 [ %236, %235 ], [ %242, %241 ], [ %165, %230 ], !dbg !1403
  call void @llvm.dbg.value(metadata i64 %250, metadata !1342, metadata !DIExpression()), !dbg !1388
  switch i32 %11, label %263 [
    i32 2, label %251
    i32 3, label %253
    i32 4, label %255
    i32 5, label %258
  ], !dbg !1404

251:                                              ; preds = %249
  %252 = tail call i64 @llvm.smax.i64(i64 %250, i64 %229), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %252, metadata !1337, metadata !DIExpression()), !dbg !1352
  br label %271, !dbg !1406

253:                                              ; preds = %249
  %254 = tail call i64 @llvm.smin.i64(i64 %250, i64 %229), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %254, metadata !1337, metadata !DIExpression()), !dbg !1352
  br label %271, !dbg !1408

255:                                              ; preds = %249
  %256 = srem i64 %250, %229, !dbg !1409
  %257 = sub nsw i64 %250, %256, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %257, metadata !1337, metadata !DIExpression()), !dbg !1352
  br label %271, !dbg !1411

258:                                              ; preds = %249
  %259 = srem i64 %250, %229, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %259, metadata !1345, metadata !DIExpression()), !dbg !1413
  %260 = icmp eq i64 %259, 0, !dbg !1414
  %261 = sub nsw i64 %229, %259, !dbg !1415
  %262 = select i1 %260, i64 0, i64 %261, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %262, metadata !1333, metadata !DIExpression()), !dbg !1352
  br label %263, !dbg !1416

263:                                              ; preds = %258, %249
  %264 = phi i64 [ %262, %258 ], [ %229, %249 ], !dbg !1352
  call void @llvm.dbg.value(metadata i64 %264, metadata !1333, metadata !DIExpression()), !dbg !1352
  %265 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %250, i64 %264), !dbg !1417
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !1417
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %267, metadata !1337, metadata !DIExpression()), !dbg !1352
  br i1 %266, label %268, label %271, !dbg !1419

268:                                              ; preds = %263
  %269 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #37, !dbg !1420
  %270 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %187) #37, !dbg !1420
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %269, ptr noundef %270) #37, !dbg !1420
  br label %281, !dbg !1422

271:                                              ; preds = %263, %255, %253, %251, %228
  %272 = phi i64 [ %229, %228 ], [ %267, %263 ], [ %257, %255 ], [ %254, %253 ], [ %252, %251 ], !dbg !1423
  call void @llvm.dbg.value(metadata i64 %272, metadata !1337, metadata !DIExpression()), !dbg !1352
  %273 = tail call i64 @llvm.smax.i64(i64 %272, i64 0), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %273, metadata !1337, metadata !DIExpression()), !dbg !1352
  %274 = tail call i32 @ftruncate(i32 noundef %190, i64 noundef %273) #37, !dbg !1425
  %275 = icmp eq i32 %274, 0, !dbg !1427
  br i1 %275, label %281, label %276, !dbg !1428

276:                                              ; preds = %271
  %277 = tail call ptr @__errno_location() #40, !dbg !1429
  %278 = load i32, ptr %277, align 4, !dbg !1429, !tbaa !966
  %279 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #37, !dbg !1429
  %280 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %187) #37, !dbg !1429
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %278, ptr noundef %279, ptr noundef %280, i64 noundef %273) #37, !dbg !1429
  br label %281, !dbg !1431

281:                                              ; preds = %204, %225, %238, %244, %268, %271, %276
  %282 = phi i8 [ 1, %204 ], [ 1, %276 ], [ 1, %225 ], [ 0, %271 ], [ 1, %268 ], [ 1, %244 ], [ 1, %238 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #37, !dbg !1432
  %283 = and i8 %189, 1, !dbg !1433
  %284 = or i8 %282, %283, !dbg !1433
  call void @llvm.dbg.value(metadata i8 %284, metadata !1176, metadata !DIExpression()), !dbg !1182
  %285 = tail call i32 @close(i32 noundef %190) #37, !dbg !1434
  %286 = icmp eq i32 %285, 0, !dbg !1436
  br i1 %286, label %295, label %287, !dbg !1437

287:                                              ; preds = %281
  %288 = tail call ptr @__errno_location() #40, !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1176, metadata !DIExpression()), !dbg !1182
  br label %289, !dbg !1440

289:                                              ; preds = %195, %192, %287
  %290 = phi ptr [ %288, %287 ], [ %194, %195 ], [ %194, %192 ]
  %291 = phi ptr [ @.str.32, %287 ], [ @.str.31, %195 ], [ @.str.31, %192 ]
  %292 = load i32, ptr %290, align 4, !dbg !1441, !tbaa !966
  %293 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %291, i32 noundef 5) #37, !dbg !1441
  %294 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %187) #37, !dbg !1441
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %292, ptr noundef %293, ptr noundef %294) #37, !dbg !1441
  br label %295, !dbg !1442

295:                                              ; preds = %289, %281, %195
  %296 = phi i8 [ %189, %195 ], [ %284, %281 ], [ 1, %289 ], !dbg !1182
  call void @llvm.dbg.value(metadata i8 %296, metadata !1176, metadata !DIExpression()), !dbg !1182
  %297 = getelementptr inbounds ptr, ptr %188, i64 1, !dbg !1442
  call void @llvm.dbg.value(metadata ptr %297, metadata !1123, metadata !DIExpression()), !dbg !1182
  %298 = load ptr, ptr %297, align 8, !dbg !1308, !tbaa !895
  call void @llvm.dbg.value(metadata ptr %298, metadata !1177, metadata !DIExpression()), !dbg !1309
  %299 = icmp eq ptr %298, null, !dbg !1310
  br i1 %299, label %182, label %186, !dbg !1310, !llvm.loop !1443
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
  store ptr %0, ptr @file_name, align 8, !dbg !1489, !tbaa !895
  ret void, !dbg !1490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1491 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1495, metadata !DIExpression()), !dbg !1496
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1497, !tbaa !1498
  ret void, !dbg !1500
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1501 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1506, !tbaa !895
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1507
  %3 = icmp eq i32 %2, 0, !dbg !1508
  br i1 %3, label %22, label %4, !dbg !1509

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1510, !tbaa !1498, !range !1511, !noundef !904
  %6 = icmp eq i8 %5, 0, !dbg !1510
  br i1 %6, label %11, label %7, !dbg !1512

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1513
  %9 = load i32, ptr %8, align 4, !dbg !1513, !tbaa !966
  %10 = icmp eq i32 %9, 32, !dbg !1514
  br i1 %10, label %22, label %11, !dbg !1515

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #37, !dbg !1516
  call void @llvm.dbg.value(metadata ptr %12, metadata !1503, metadata !DIExpression()), !dbg !1517
  %13 = load ptr, ptr @file_name, align 8, !dbg !1518, !tbaa !895
  %14 = icmp eq ptr %13, null, !dbg !1518
  %15 = tail call ptr @__errno_location() #40, !dbg !1520
  %16 = load i32, ptr %15, align 4, !dbg !1520, !tbaa !966
  br i1 %14, label %19, label %17, !dbg !1521

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1522
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #37, !dbg !1522
  br label %20, !dbg !1522

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #37, !dbg !1523
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1524, !tbaa !966
  tail call void @_exit(i32 noundef %21) #39, !dbg !1525
  unreachable, !dbg !1525

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1526, !tbaa !895
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1528
  %25 = icmp eq i32 %24, 0, !dbg !1529
  br i1 %25, label %28, label %26, !dbg !1530

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1531, !tbaa !966
  tail call void @_exit(i32 noundef %27) #39, !dbg !1532
  unreachable, !dbg !1532

28:                                               ; preds = %22
  ret void, !dbg !1533
}

; Function Attrs: noreturn
declare !dbg !1534 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1535 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1539, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 %1, metadata !1540, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %2, metadata !1541, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %3, metadata !1542, metadata !DIExpression()), !dbg !1543
  tail call fastcc void @flush_stdout(), !dbg !1544
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1545, !tbaa !895
  %6 = icmp eq ptr %5, null, !dbg !1545
  br i1 %6, label %8, label %7, !dbg !1547

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1548
  br label %12, !dbg !1548

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1549, !tbaa !895
  %10 = tail call ptr @getprogname() #38, !dbg !1549
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %10) #37, !dbg !1549
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1551
  ret void, !dbg !1552
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1553 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 1, metadata !1557, metadata !DIExpression()), !dbg !1560
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1563
  %2 = icmp slt i32 %1, 0, !dbg !1564
  br i1 %2, label %6, label %3, !dbg !1565

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1566, !tbaa !895
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1566
  br label %6, !dbg !1566

6:                                                ; preds = %3, %0
  ret void, !dbg !1567
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1568 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1570, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i32 %1, metadata !1571, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata ptr %2, metadata !1572, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata ptr %3, metadata !1573, metadata !DIExpression()), !dbg !1574
  %6 = load ptr, ptr @stderr, align 8, !dbg !1575, !tbaa !895
  call void @llvm.dbg.value(metadata ptr %6, metadata !1576, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata ptr %2, metadata !1616, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata ptr %3, metadata !1617, metadata !DIExpression()), !dbg !1618
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1620
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1621, !tbaa !966
  %9 = add i32 %8, 1, !dbg !1621
  store i32 %9, ptr @error_message_count, align 4, !dbg !1621, !tbaa !966
  %10 = icmp eq i32 %1, 0, !dbg !1622
  br i1 %10, label %20, label %11, !dbg !1624

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1625, metadata !DIExpression()), !dbg !1633
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1629, metadata !DIExpression()), !dbg !1636
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1637
  call void @llvm.dbg.value(metadata ptr %12, metadata !1628, metadata !DIExpression()), !dbg !1633
  %13 = icmp eq ptr %12, null, !dbg !1638
  br i1 %13, label %14, label %16, !dbg !1640

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #37, !dbg !1641
  call void @llvm.dbg.value(metadata ptr %15, metadata !1628, metadata !DIExpression()), !dbg !1633
  br label %16, !dbg !1642

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1633
  call void @llvm.dbg.value(metadata ptr %17, metadata !1628, metadata !DIExpression()), !dbg !1633
  %18 = load ptr, ptr @stderr, align 8, !dbg !1643, !tbaa !895
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %17) #37, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1644
  br label %20, !dbg !1645

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1646, !tbaa !895
  call void @llvm.dbg.value(metadata i32 10, metadata !1647, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %21, metadata !1653, metadata !DIExpression()), !dbg !1654
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1656
  %23 = load ptr, ptr %22, align 8, !dbg !1656, !tbaa !1657
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1656
  %25 = load ptr, ptr %24, align 8, !dbg !1656, !tbaa !1659
  %26 = icmp ult ptr %23, %25, !dbg !1656
  br i1 %26, label %29, label %27, !dbg !1656, !prof !1660

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1656
  br label %31, !dbg !1656

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1656
  store ptr %30, ptr %22, align 8, !dbg !1656, !tbaa !1657
  store i8 10, ptr %23, align 1, !dbg !1656, !tbaa !975
  br label %31, !dbg !1656

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1661, !tbaa !895
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1661
  %34 = icmp eq i32 %0, 0, !dbg !1662
  br i1 %34, label %36, label %35, !dbg !1664

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1665
  unreachable, !dbg !1665

36:                                               ; preds = %31
  ret void, !dbg !1666
}

declare !dbg !1667 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1670 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1673 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1676 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1679 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1682 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1686, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i32 %1, metadata !1687, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %2, metadata !1688, metadata !DIExpression()), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1689, metadata !DIExpression()), !dbg !1697
  call void @llvm.va_start(ptr nonnull %4), !dbg !1698
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1699
  call void @llvm.va_end(ptr nonnull %4), !dbg !1700
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1701
  ret void, !dbg !1701
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !487 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !499, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %1, metadata !500, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata ptr %2, metadata !501, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %3, metadata !502, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata ptr %4, metadata !503, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata ptr %5, metadata !504, metadata !DIExpression()), !dbg !1702
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1703, !tbaa !966
  %8 = icmp eq i32 %7, 0, !dbg !1703
  br i1 %8, label %23, label %9, !dbg !1705

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1706, !tbaa !966
  %11 = icmp eq i32 %10, %3, !dbg !1709
  br i1 %11, label %12, label %22, !dbg !1710

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1711, !tbaa !895
  %14 = icmp eq ptr %13, %2, !dbg !1712
  br i1 %14, label %36, label %15, !dbg !1713

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1714
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1715
  br i1 %18, label %19, label %22, !dbg !1715

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1716
  %21 = icmp eq i32 %20, 0, !dbg !1717
  br i1 %21, label %36, label %22, !dbg !1718

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1719, !tbaa !895
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1720, !tbaa !966
  br label %23, !dbg !1721

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1722
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1723, !tbaa !895
  %25 = icmp eq ptr %24, null, !dbg !1723
  br i1 %25, label %27, label %26, !dbg !1725

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1726
  br label %31, !dbg !1726

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1727, !tbaa !895
  %29 = tail call ptr @getprogname() #38, !dbg !1727
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %29) #37, !dbg !1727
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1729, !tbaa !895
  %33 = icmp eq ptr %2, null, !dbg !1729
  %34 = select i1 %33, ptr @.str.3.52, ptr @.str.2.53, !dbg !1729
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1729
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1730
  br label %36, !dbg !1731

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1731
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1732 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1736, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32 %1, metadata !1737, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %2, metadata !1738, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32 %3, metadata !1739, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %4, metadata !1740, metadata !DIExpression()), !dbg !1742
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.va_start(ptr nonnull %6), !dbg !1745
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1746
  call void @llvm.va_end(ptr nonnull %6), !dbg !1747
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1748
  ret void, !dbg !1748
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1749 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1752, !tbaa !895
  ret ptr %1, !dbg !1753
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1754 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1756, metadata !DIExpression()), !dbg !1759
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1760
  call void @llvm.dbg.value(metadata ptr %2, metadata !1757, metadata !DIExpression()), !dbg !1759
  %3 = icmp eq ptr %2, null, !dbg !1761
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1761
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1761
  call void @llvm.dbg.value(metadata ptr %5, metadata !1758, metadata !DIExpression()), !dbg !1759
  %6 = ptrtoint ptr %5 to i64, !dbg !1762
  %7 = ptrtoint ptr %0 to i64, !dbg !1762
  %8 = sub i64 %6, %7, !dbg !1762
  %9 = icmp sgt i64 %8, 6, !dbg !1764
  br i1 %9, label %10, label %19, !dbg !1765

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %11, metadata !1767, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1772, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 7, metadata !1773, metadata !DIExpression()), !dbg !1774
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.62, i64 7), !dbg !1776
  %13 = icmp eq i32 %12, 0, !dbg !1777
  br i1 %13, label %14, label %19, !dbg !1778

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1756, metadata !DIExpression()), !dbg !1759
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.63, i64 noundef 3) #38, !dbg !1779
  %16 = icmp eq i32 %15, 0, !dbg !1782
  %17 = select i1 %16, i64 3, i64 0, !dbg !1783
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1783
  br label %19, !dbg !1783

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1759
  call void @llvm.dbg.value(metadata ptr %21, metadata !1758, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata ptr %20, metadata !1756, metadata !DIExpression()), !dbg !1759
  store ptr %20, ptr @program_name, align 8, !dbg !1784, !tbaa !895
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1785, !tbaa !895
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1786, !tbaa !895
  ret void, !dbg !1787
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1788 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !538 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !545, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata ptr %1, metadata !546, metadata !DIExpression()), !dbg !1789
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %5, metadata !547, metadata !DIExpression()), !dbg !1789
  %6 = icmp eq ptr %5, %0, !dbg !1791
  br i1 %6, label %7, label %14, !dbg !1793

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1794
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1795
  call void @llvm.dbg.declare(metadata ptr %4, metadata !553, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %4, metadata !1797, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %4, metadata !1806, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 8, metadata !1813, metadata !DIExpression()), !dbg !1814
  store i64 0, ptr %4, align 8, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %3, metadata !548, metadata !DIExpression(DW_OP_deref)), !dbg !1789
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1817
  %9 = icmp eq i64 %8, 2, !dbg !1819
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !548, metadata !DIExpression()), !dbg !1789
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1820
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1821
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1789
  ret ptr %15, !dbg !1821
}

; Function Attrs: nounwind
declare !dbg !1822 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1828 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1833, metadata !DIExpression()), !dbg !1836
  %2 = tail call ptr @__errno_location() #40, !dbg !1837
  %3 = load i32, ptr %2, align 4, !dbg !1837, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %3, metadata !1834, metadata !DIExpression()), !dbg !1836
  %4 = icmp eq ptr %0, null, !dbg !1838
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1838
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #43, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %6, metadata !1835, metadata !DIExpression()), !dbg !1836
  store i32 %3, ptr %2, align 4, !dbg !1840, !tbaa !966
  ret ptr %6, !dbg !1841
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1848, metadata !DIExpression()), !dbg !1849
  %2 = icmp eq ptr %0, null, !dbg !1850
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1850
  %4 = load i32, ptr %3, align 8, !dbg !1851, !tbaa !1852
  ret i32 %4, !dbg !1854
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1855 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1859, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 %1, metadata !1860, metadata !DIExpression()), !dbg !1861
  %3 = icmp eq ptr %0, null, !dbg !1862
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1862
  store i32 %1, ptr %4, align 8, !dbg !1863, !tbaa !1852
  ret void, !dbg !1864
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1865 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1869, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %1, metadata !1870, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %2, metadata !1871, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !1877
  %4 = icmp eq ptr %0, null, !dbg !1878
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1878
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1879
  %7 = lshr i8 %1, 5, !dbg !1880
  %8 = zext i8 %7 to i64, !dbg !1880
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %9, metadata !1873, metadata !DIExpression()), !dbg !1877
  %10 = and i8 %1, 31, !dbg !1882
  %11 = zext i8 %10 to i32, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %11, metadata !1875, metadata !DIExpression()), !dbg !1877
  %12 = load i32, ptr %9, align 4, !dbg !1883, !tbaa !966
  %13 = lshr i32 %12, %11, !dbg !1884
  %14 = and i32 %13, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %14, metadata !1876, metadata !DIExpression()), !dbg !1877
  %15 = xor i32 %13, %2, !dbg !1886
  %16 = and i32 %15, 1, !dbg !1886
  %17 = shl nuw i32 %16, %11, !dbg !1887
  %18 = xor i32 %17, %12, !dbg !1888
  store i32 %18, ptr %9, align 4, !dbg !1888, !tbaa !966
  ret i32 %14, !dbg !1889
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1890 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1894, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %1, metadata !1895, metadata !DIExpression()), !dbg !1897
  %3 = icmp eq ptr %0, null, !dbg !1898
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1900
  call void @llvm.dbg.value(metadata ptr %4, metadata !1894, metadata !DIExpression()), !dbg !1897
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1901
  %6 = load i32, ptr %5, align 4, !dbg !1901, !tbaa !1902
  call void @llvm.dbg.value(metadata i32 %6, metadata !1896, metadata !DIExpression()), !dbg !1897
  store i32 %1, ptr %5, align 4, !dbg !1903, !tbaa !1902
  ret i32 %6, !dbg !1904
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1905 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1909, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %1, metadata !1910, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %2, metadata !1911, metadata !DIExpression()), !dbg !1912
  %4 = icmp eq ptr %0, null, !dbg !1913
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !1912
  store i32 10, ptr %5, align 8, !dbg !1916, !tbaa !1852
  %6 = icmp ne ptr %1, null, !dbg !1917
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1919
  br i1 %8, label %10, label %9, !dbg !1919

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1920
  unreachable, !dbg !1920

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1921
  store ptr %1, ptr %11, align 8, !dbg !1922, !tbaa !1923
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1924
  store ptr %2, ptr %12, align 8, !dbg !1925, !tbaa !1926
  ret void, !dbg !1927
}

; Function Attrs: noreturn nounwind
declare !dbg !1928 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1929 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1933, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %1, metadata !1934, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %2, metadata !1935, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %3, metadata !1936, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %4, metadata !1937, metadata !DIExpression()), !dbg !1941
  %6 = icmp eq ptr %4, null, !dbg !1942
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %7, metadata !1938, metadata !DIExpression()), !dbg !1941
  %8 = tail call ptr @__errno_location() #40, !dbg !1943
  %9 = load i32, ptr %8, align 4, !dbg !1943, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %9, metadata !1939, metadata !DIExpression()), !dbg !1941
  %10 = load i32, ptr %7, align 8, !dbg !1944, !tbaa !1852
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1945
  %12 = load i32, ptr %11, align 4, !dbg !1945, !tbaa !1902
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1946
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1947
  %15 = load ptr, ptr %14, align 8, !dbg !1947, !tbaa !1923
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1948
  %17 = load ptr, ptr %16, align 8, !dbg !1948, !tbaa !1926
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %18, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i32 %9, ptr %8, align 4, !dbg !1950, !tbaa !966
  ret i64 %18, !dbg !1951
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1952 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1958, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %1, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %2, metadata !1960, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %3, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %4, metadata !1962, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %5, metadata !1963, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %6, metadata !1964, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %7, metadata !1965, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %8, metadata !1966, metadata !DIExpression()), !dbg !2020
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2021
  %17 = icmp eq i64 %16, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i1 %17, metadata !1967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2020
  call void @llvm.dbg.value(metadata i64 0, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr null, metadata !1970, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 0, metadata !1971, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !2020
  %18 = trunc i32 %5 to i8, !dbg !2023
  %19 = lshr i8 %18, 1, !dbg !2023
  %20 = and i8 %19, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i8 %20, metadata !1973, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 1, metadata !1975, metadata !DIExpression()), !dbg !2020
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2024

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2025
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2026
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2027
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2028
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2020
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2029
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2030
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %39, metadata !1975, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %38, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %37, metadata !1973, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %36, metadata !1972, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %35, metadata !1971, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %34, metadata !1970, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %33, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 0, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %32, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %31, metadata !1966, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %30, metadata !1965, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %29, metadata !1962, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.label(metadata !2013), !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2020
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
  ], !dbg !2032

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1973, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 5, metadata !1962, metadata !DIExpression()), !dbg !2020
  br label %115, !dbg !2033

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1973, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 5, metadata !1962, metadata !DIExpression()), !dbg !2020
  %43 = and i8 %37, 1, !dbg !2034
  %44 = icmp eq i8 %43, 0, !dbg !2034
  br i1 %44, label %45, label %115, !dbg !2033

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2036
  br i1 %46, label %115, label %47, !dbg !2039

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2036, !tbaa !975
  br label %115, !dbg !2036

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !637, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %29, metadata !638, metadata !DIExpression()), !dbg !2040
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #37, !dbg !2044
  call void @llvm.dbg.value(metadata ptr %49, metadata !639, metadata !DIExpression()), !dbg !2040
  %50 = icmp eq ptr %49, @.str.11.91, !dbg !2045
  br i1 %50, label %51, label %60, !dbg !2047

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2048
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2049
  call void @llvm.dbg.declare(metadata ptr %13, metadata !641, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %13, metadata !2051, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata ptr %13, metadata !2059, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2064
  store i64 0, ptr %13, align 8, !dbg !2066
  call void @llvm.dbg.value(metadata ptr %12, metadata !640, metadata !DIExpression(DW_OP_deref)), !dbg !2040
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2067
  %53 = icmp eq i64 %52, 3, !dbg !2069
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !640, metadata !DIExpression()), !dbg !2040
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2070
  %57 = icmp eq i32 %29, 9, !dbg !2070
  %58 = select i1 %57, ptr @.str.10.93, ptr @.str.12.94, !dbg !2070
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2070
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2071
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2040
  call void @llvm.dbg.value(metadata ptr %61, metadata !1965, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !637, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %29, metadata !638, metadata !DIExpression()), !dbg !2072
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #37, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %62, metadata !639, metadata !DIExpression()), !dbg !2072
  %63 = icmp eq ptr %62, @.str.12.94, !dbg !2075
  br i1 %63, label %64, label %73, !dbg !2076

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %11, metadata !641, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata ptr %11, metadata !2051, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata ptr %11, metadata !2059, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2082
  store i64 0, ptr %11, align 8, !dbg !2084
  call void @llvm.dbg.value(metadata ptr %10, metadata !640, metadata !DIExpression(DW_OP_deref)), !dbg !2072
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2085
  %66 = icmp eq i64 %65, 3, !dbg !2086
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !640, metadata !DIExpression()), !dbg !2072
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2087
  %70 = icmp eq i32 %29, 9, !dbg !2087
  %71 = select i1 %70, ptr @.str.10.93, ptr @.str.12.94, !dbg !2087
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2088
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1966, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %74, metadata !1965, metadata !DIExpression()), !dbg !2020
  %76 = and i8 %37, 1, !dbg !2089
  %77 = icmp eq i8 %76, 0, !dbg !2089
  br i1 %77, label %78, label %93, !dbg !2090

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1977, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 0, metadata !1968, metadata !DIExpression()), !dbg !2020
  %79 = load i8, ptr %74, align 1, !dbg !2092, !tbaa !975
  %80 = icmp eq i8 %79, 0, !dbg !2094
  br i1 %80, label %93, label %81, !dbg !2094

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1977, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %84, metadata !1968, metadata !DIExpression()), !dbg !2020
  %85 = icmp ult i64 %84, %40, !dbg !2095
  br i1 %85, label %86, label %88, !dbg !2098

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2095
  store i8 %82, ptr %87, align 1, !dbg !2095, !tbaa !975
  br label %88, !dbg !2095

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %89, metadata !1968, metadata !DIExpression()), !dbg !2020
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %90, metadata !1977, metadata !DIExpression()), !dbg !2091
  %91 = load i8, ptr %90, align 1, !dbg !2092, !tbaa !975
  %92 = icmp eq i8 %91, 0, !dbg !2094
  br i1 %92, label %93, label %81, !dbg !2094, !llvm.loop !2100

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2102
  call void @llvm.dbg.value(metadata i64 %94, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 1, metadata !1972, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %75, metadata !1970, metadata !DIExpression()), !dbg !2020
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %95, metadata !1971, metadata !DIExpression()), !dbg !2020
  br label %115, !dbg !2104

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1972, metadata !DIExpression()), !dbg !2020
  br label %97, !dbg !2105

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %98, metadata !1972, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 1, metadata !1973, metadata !DIExpression()), !dbg !2020
  br label %99, !dbg !2106

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2028
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %101, metadata !1973, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %100, metadata !1972, metadata !DIExpression()), !dbg !2020
  %102 = and i8 %101, 1, !dbg !2107
  %103 = icmp eq i8 %102, 0, !dbg !2107
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2109
  br label %105, !dbg !2109

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2020
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2023
  call void @llvm.dbg.value(metadata i8 %107, metadata !1973, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %106, metadata !1972, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 2, metadata !1962, metadata !DIExpression()), !dbg !2020
  %108 = and i8 %107, 1, !dbg !2110
  %109 = icmp eq i8 %108, 0, !dbg !2110
  br i1 %109, label %110, label %115, !dbg !2112

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2113
  br i1 %111, label %115, label %112, !dbg !2116

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2113, !tbaa !975
  br label %115, !dbg !2113

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !2020
  br label %115, !dbg !2117

114:                                              ; preds = %28
  call void @abort() #39, !dbg !2118
  unreachable, !dbg !2118

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2102
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.93, %45 ], [ @.str.10.93, %47 ], [ @.str.10.93, %42 ], [ %34, %28 ], [ @.str.12.94, %110 ], [ @.str.12.94, %112 ], [ @.str.12.94, %105 ], [ @.str.10.93, %41 ], !dbg !2020
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2020
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2020
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %123, metadata !1973, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %122, metadata !1972, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %121, metadata !1971, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %120, metadata !1970, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %119, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %118, metadata !1966, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %117, metadata !1965, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %116, metadata !1962, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 0, metadata !1982, metadata !DIExpression()), !dbg !2119
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
  br label %138, !dbg !2120

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2102
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2025
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2029
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2030
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2121
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2122
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %145, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %144, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %143, metadata !1975, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %142, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %141, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %140, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %139, metadata !1961, metadata !DIExpression()), !dbg !2020
  %147 = icmp eq i64 %139, -1, !dbg !2123
  br i1 %147, label %148, label %152, !dbg !2124

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2125
  %150 = load i8, ptr %149, align 1, !dbg !2125, !tbaa !975
  %151 = icmp eq i8 %150, 0, !dbg !2126
  br i1 %151, label %627, label %154, !dbg !2127

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2128
  br i1 %153, label %627, label %154, !dbg !2127

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2129
  br i1 %129, label %155, label %170, !dbg !2130

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2132
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2133
  br i1 %157, label %158, label %160, !dbg !2133

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %159, metadata !1961, metadata !DIExpression()), !dbg !2020
  br label %160, !dbg !2135

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2135
  call void @llvm.dbg.value(metadata i64 %161, metadata !1961, metadata !DIExpression()), !dbg !2020
  %162 = icmp ugt i64 %156, %161, !dbg !2136
  br i1 %162, label %170, label %163, !dbg !2137

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2138
  call void @llvm.dbg.value(metadata ptr %164, metadata !2139, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata ptr %120, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %121, metadata !2143, metadata !DIExpression()), !dbg !2144
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2146
  %166 = icmp ne i32 %165, 0, !dbg !2147
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2148
  %168 = xor i1 %166, true, !dbg !2148
  %169 = zext i1 %168 to i8, !dbg !2148
  br i1 %167, label %170, label %688, !dbg !2148

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2129
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %173, metadata !1984, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %171, metadata !1961, metadata !DIExpression()), !dbg !2020
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2149
  %175 = load i8, ptr %174, align 1, !dbg !2149, !tbaa !975
  call void @llvm.dbg.value(metadata i8 %175, metadata !1989, metadata !DIExpression()), !dbg !2129
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
  ], !dbg !2150

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2151

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2152

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1987, metadata !DIExpression()), !dbg !2129
  %179 = and i8 %144, 1, !dbg !2156
  %180 = icmp eq i8 %179, 0, !dbg !2156
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2156
  br i1 %181, label %182, label %198, !dbg !2156

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2158
  br i1 %183, label %184, label %186, !dbg !2162

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2158
  store i8 39, ptr %185, align 1, !dbg !2158, !tbaa !975
  br label %186, !dbg !2158

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %187, metadata !1968, metadata !DIExpression()), !dbg !2020
  %188 = icmp ult i64 %187, %146, !dbg !2163
  br i1 %188, label %189, label %191, !dbg !2166

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2163
  store i8 36, ptr %190, align 1, !dbg !2163, !tbaa !975
  br label %191, !dbg !2163

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %192, metadata !1968, metadata !DIExpression()), !dbg !2020
  %193 = icmp ult i64 %192, %146, !dbg !2167
  br i1 %193, label %194, label %196, !dbg !2170

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2167
  store i8 39, ptr %195, align 1, !dbg !2167, !tbaa !975
  br label %196, !dbg !2167

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %197, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2020
  br label %198, !dbg !2171

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2020
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %200, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %199, metadata !1968, metadata !DIExpression()), !dbg !2020
  %201 = icmp ult i64 %199, %146, !dbg !2172
  br i1 %201, label %202, label %204, !dbg !2175

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2172
  store i8 92, ptr %203, align 1, !dbg !2172, !tbaa !975
  br label %204, !dbg !2172

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %205, metadata !1968, metadata !DIExpression()), !dbg !2020
  br i1 %126, label %206, label %491, !dbg !2176

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2178
  %208 = icmp ult i64 %207, %171, !dbg !2179
  br i1 %208, label %209, label %480, !dbg !2180

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2181
  %211 = load i8, ptr %210, align 1, !dbg !2181, !tbaa !975
  %212 = add i8 %211, -48, !dbg !2182
  %213 = icmp ult i8 %212, 10, !dbg !2182
  br i1 %213, label %214, label %480, !dbg !2182

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2183
  br i1 %215, label %216, label %218, !dbg !2187

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2183
  store i8 48, ptr %217, align 1, !dbg !2183, !tbaa !975
  br label %218, !dbg !2183

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %219, metadata !1968, metadata !DIExpression()), !dbg !2020
  %220 = icmp ult i64 %219, %146, !dbg !2188
  br i1 %220, label %221, label %223, !dbg !2191

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2188
  store i8 48, ptr %222, align 1, !dbg !2188, !tbaa !975
  br label %223, !dbg !2188

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %224, metadata !1968, metadata !DIExpression()), !dbg !2020
  br label %480, !dbg !2192

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2193

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2194

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2195

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2197

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2199
  %231 = icmp ult i64 %230, %171, !dbg !2200
  br i1 %231, label %232, label %480, !dbg !2201

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2202
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2203
  %235 = load i8, ptr %234, align 1, !dbg !2203, !tbaa !975
  %236 = icmp eq i8 %235, 63, !dbg !2204
  br i1 %236, label %237, label %480, !dbg !2205

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2206
  %239 = load i8, ptr %238, align 1, !dbg !2206, !tbaa !975
  %240 = sext i8 %239 to i32, !dbg !2206
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
  ], !dbg !2207

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2208

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %230, metadata !1982, metadata !DIExpression()), !dbg !2119
  %243 = icmp ult i64 %140, %146, !dbg !2210
  br i1 %243, label %244, label %246, !dbg !2213

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2210
  store i8 63, ptr %245, align 1, !dbg !2210, !tbaa !975
  br label %246, !dbg !2210

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %247, metadata !1968, metadata !DIExpression()), !dbg !2020
  %248 = icmp ult i64 %247, %146, !dbg !2214
  br i1 %248, label %249, label %251, !dbg !2217

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2214
  store i8 34, ptr %250, align 1, !dbg !2214, !tbaa !975
  br label %251, !dbg !2214

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %252, metadata !1968, metadata !DIExpression()), !dbg !2020
  %253 = icmp ult i64 %252, %146, !dbg !2218
  br i1 %253, label %254, label %256, !dbg !2221

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2218
  store i8 34, ptr %255, align 1, !dbg !2218, !tbaa !975
  br label %256, !dbg !2218

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %257, metadata !1968, metadata !DIExpression()), !dbg !2020
  %258 = icmp ult i64 %257, %146, !dbg !2222
  br i1 %258, label %259, label %261, !dbg !2225

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2222
  store i8 63, ptr %260, align 1, !dbg !2222, !tbaa !975
  br label %261, !dbg !2222

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %262, metadata !1968, metadata !DIExpression()), !dbg !2020
  br label %480, !dbg !2226

263:                                              ; preds = %170
  br label %274, !dbg !2227

264:                                              ; preds = %170
  br label %274, !dbg !2228

265:                                              ; preds = %170
  br label %272, !dbg !2229

266:                                              ; preds = %170
  br label %272, !dbg !2230

267:                                              ; preds = %170
  br label %274, !dbg !2231

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2232

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2233

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2236

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2238

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2239
  call void @llvm.dbg.label(metadata !2014), !dbg !2240
  br i1 %134, label %274, label %670, !dbg !2241

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2239
  call void @llvm.dbg.label(metadata !2016), !dbg !2243
  br i1 %125, label %535, label %491, !dbg !2244

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2245

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2246, !tbaa !975
  %279 = icmp eq i8 %278, 0, !dbg !2248
  br i1 %279, label %280, label %480, !dbg !2249

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2250
  br i1 %281, label %282, label %480, !dbg !2252

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2129
  br label %283, !dbg !2253

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %284, metadata !1988, metadata !DIExpression()), !dbg !2129
  br i1 %134, label %480, label %670, !dbg !2254

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2129
  br i1 %133, label %286, label %480, !dbg !2256

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2257

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2260
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2262
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2262
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %292, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %291, metadata !1969, metadata !DIExpression()), !dbg !2020
  %293 = icmp ult i64 %140, %292, !dbg !2263
  br i1 %293, label %294, label %296, !dbg !2266

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2263
  store i8 39, ptr %295, align 1, !dbg !2263, !tbaa !975
  br label %296, !dbg !2263

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %297, metadata !1968, metadata !DIExpression()), !dbg !2020
  %298 = icmp ult i64 %297, %292, !dbg !2267
  br i1 %298, label %299, label %301, !dbg !2270

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2267
  store i8 92, ptr %300, align 1, !dbg !2267, !tbaa !975
  br label %301, !dbg !2267

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %302, metadata !1968, metadata !DIExpression()), !dbg !2020
  %303 = icmp ult i64 %302, %292, !dbg !2271
  br i1 %303, label %304, label %306, !dbg !2274

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2271
  store i8 39, ptr %305, align 1, !dbg !2271, !tbaa !975
  br label %306, !dbg !2271

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %307, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2020
  br label %480, !dbg !2275

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2276

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1990, metadata !DIExpression()), !dbg !2277
  %310 = tail call ptr @__ctype_b_loc() #40, !dbg !2278
  %311 = load ptr, ptr %310, align 8, !dbg !2278, !tbaa !895
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2278
  %314 = load i16, ptr %313, align 2, !dbg !2278, !tbaa !1007
  %315 = lshr i16 %314, 14, !dbg !2280
  %316 = trunc i16 %315 to i8, !dbg !2280
  %317 = and i8 %316, 1, !dbg !2280
  call void @llvm.dbg.value(metadata i8 %317, metadata !1993, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %171, metadata !1961, metadata !DIExpression()), !dbg !2020
  %318 = icmp eq i8 %317, 0, !dbg !2281
  call void @llvm.dbg.value(metadata i1 %318, metadata !1988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  br label %368, !dbg !2282

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1994, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %14, metadata !2051, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata ptr %14, metadata !2059, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2287
  store i64 0, ptr %14, align 8, !dbg !2289
  call void @llvm.dbg.value(metadata i64 0, metadata !1990, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2277
  %320 = icmp eq i64 %171, -1, !dbg !2290
  br i1 %320, label %321, label %323, !dbg !2292

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %322, metadata !1961, metadata !DIExpression()), !dbg !2020
  br label %323, !dbg !2294

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2129
  call void @llvm.dbg.value(metadata i64 %324, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2295
  %325 = sub i64 %324, %145, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %15, metadata !1997, metadata !DIExpression(DW_OP_deref)), !dbg !2297
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #37, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %326, metadata !2001, metadata !DIExpression()), !dbg !2297
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2299

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1990, metadata !DIExpression()), !dbg !2277
  %328 = icmp ugt i64 %324, %145, !dbg !2300
  br i1 %328, label %331, label %329, !dbg !2302

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 0, metadata !1990, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2303
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %324, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i1 true, metadata !1988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  br label %368, !dbg !2282

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2277
  br label %360, !dbg !2305

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1990, metadata !DIExpression()), !dbg !2277
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2307
  %335 = load i8, ptr %334, align 1, !dbg !2307, !tbaa !975
  %336 = icmp eq i8 %335, 0, !dbg !2302
  br i1 %336, label %363, label %337, !dbg !2308

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %338, metadata !1990, metadata !DIExpression()), !dbg !2277
  %339 = add i64 %338, %145, !dbg !2310
  %340 = icmp eq i64 %338, %325, !dbg !2300
  br i1 %340, label %363, label %331, !dbg !2302, !llvm.loop !2311

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2312
  %344 = and i1 %343, %133, !dbg !2312
  call void @llvm.dbg.value(metadata i64 1, metadata !2002, metadata !DIExpression()), !dbg !2313
  br i1 %344, label %345, label %354, !dbg !2312

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2002, metadata !DIExpression()), !dbg !2313
  %347 = add i64 %346, %145, !dbg !2314
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2316
  %349 = load i8, ptr %348, align 1, !dbg !2316, !tbaa !975
  %350 = sext i8 %349 to i32, !dbg !2316
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2317

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %352, metadata !2002, metadata !DIExpression()), !dbg !2313
  %353 = icmp eq i64 %352, %326, !dbg !2319
  br i1 %353, label %354, label %345, !dbg !2320, !llvm.loop !2321

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2323, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %355, metadata !1997, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %355, metadata !2325, metadata !DIExpression()), !dbg !2333
  %356 = call i32 @iswprint(i32 noundef %355) #37, !dbg !2335
  %357 = icmp ne i32 %356, 0, !dbg !2336
  %358 = zext i1 %357 to i8, !dbg !2337
  call void @llvm.dbg.value(metadata i8 %358, metadata !1993, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %326, metadata !1990, metadata !DIExpression()), !dbg !2277
  br label %363, !dbg !2338

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 0, metadata !1990, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2303
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2304
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1993, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 0, metadata !1990, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2303
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %324, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i1 %361, metadata !1988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  br label %368, !dbg !2282

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1993, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %364, metadata !1990, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2303
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %324, metadata !1961, metadata !DIExpression()), !dbg !2020
  %366 = icmp eq i8 %365, 0, !dbg !2281
  call void @llvm.dbg.value(metadata i1 %366, metadata !1988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  %367 = icmp ugt i64 %364, 1, !dbg !2339
  br i1 %367, label %374, label %368, !dbg !2282

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2340
  br i1 %373, label %374, label %480, !dbg !2340

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %379, metadata !2010, metadata !DIExpression()), !dbg !2342
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2343

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2020
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2121
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2119
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2129
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2344
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %387, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %386, metadata !1987, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %385, metadata !1984, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %384, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %383, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %382, metadata !1968, metadata !DIExpression()), !dbg !2020
  br i1 %380, label %388, label %434, !dbg !2345

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2350

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1987, metadata !DIExpression()), !dbg !2129
  %390 = and i8 %383, 1, !dbg !2353
  %391 = icmp eq i8 %390, 0, !dbg !2353
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2353
  br i1 %392, label %393, label %409, !dbg !2353

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2355
  br i1 %394, label %395, label %397, !dbg !2359

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2355
  store i8 39, ptr %396, align 1, !dbg !2355, !tbaa !975
  br label %397, !dbg !2355

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %398, metadata !1968, metadata !DIExpression()), !dbg !2020
  %399 = icmp ult i64 %398, %146, !dbg !2360
  br i1 %399, label %400, label %402, !dbg !2363

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2360
  store i8 36, ptr %401, align 1, !dbg !2360, !tbaa !975
  br label %402, !dbg !2360

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %403, metadata !1968, metadata !DIExpression()), !dbg !2020
  %404 = icmp ult i64 %403, %146, !dbg !2364
  br i1 %404, label %405, label %407, !dbg !2367

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2364
  store i8 39, ptr %406, align 1, !dbg !2364, !tbaa !975
  br label %407, !dbg !2364

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %408, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2020
  br label %409, !dbg !2368

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2020
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %411, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %410, metadata !1968, metadata !DIExpression()), !dbg !2020
  %412 = icmp ult i64 %410, %146, !dbg !2369
  br i1 %412, label %413, label %415, !dbg !2372

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2369
  store i8 92, ptr %414, align 1, !dbg !2369, !tbaa !975
  br label %415, !dbg !2369

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %416, metadata !1968, metadata !DIExpression()), !dbg !2020
  %417 = icmp ult i64 %416, %146, !dbg !2373
  br i1 %417, label %418, label %422, !dbg !2376

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2373
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2373
  store i8 %420, ptr %421, align 1, !dbg !2373, !tbaa !975
  br label %422, !dbg !2373

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %423, metadata !1968, metadata !DIExpression()), !dbg !2020
  %424 = icmp ult i64 %423, %146, !dbg !2377
  br i1 %424, label %425, label %430, !dbg !2380

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2377
  %428 = or i8 %427, 48, !dbg !2377
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2377
  store i8 %428, ptr %429, align 1, !dbg !2377, !tbaa !975
  br label %430, !dbg !2377

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %431, metadata !1968, metadata !DIExpression()), !dbg !2020
  %432 = and i8 %387, 7, !dbg !2381
  %433 = or i8 %432, 48, !dbg !2382
  call void @llvm.dbg.value(metadata i8 %433, metadata !1989, metadata !DIExpression()), !dbg !2129
  br label %443, !dbg !2383

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2384
  %436 = icmp eq i8 %435, 0, !dbg !2384
  br i1 %436, label %443, label %437, !dbg !2386

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2387
  br i1 %438, label %439, label %441, !dbg !2391

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2387
  store i8 92, ptr %440, align 1, !dbg !2387, !tbaa !975
  br label %441, !dbg !2387

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %442, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2129
  br label %443, !dbg !2392

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2020
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2121
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2129
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2129
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %448, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %447, metadata !1987, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %446, metadata !1984, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %445, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %444, metadata !1968, metadata !DIExpression()), !dbg !2020
  %449 = add i64 %384, 1, !dbg !2393
  %450 = icmp ugt i64 %379, %449, !dbg !2395
  br i1 %450, label %451, label %478, !dbg !2396

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2397
  %453 = icmp ne i8 %452, 0, !dbg !2397
  %454 = and i8 %447, 1, !dbg !2397
  %455 = icmp eq i8 %454, 0, !dbg !2397
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2397
  br i1 %456, label %457, label %468, !dbg !2397

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2400
  br i1 %458, label %459, label %461, !dbg !2404

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2400
  store i8 39, ptr %460, align 1, !dbg !2400, !tbaa !975
  br label %461, !dbg !2400

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %462, metadata !1968, metadata !DIExpression()), !dbg !2020
  %463 = icmp ult i64 %462, %146, !dbg !2405
  br i1 %463, label %464, label %466, !dbg !2408

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2405
  store i8 39, ptr %465, align 1, !dbg !2405, !tbaa !975
  br label %466, !dbg !2405

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %467, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2020
  br label %468, !dbg !2409

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2410
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %470, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %469, metadata !1968, metadata !DIExpression()), !dbg !2020
  %471 = icmp ult i64 %469, %146, !dbg !2411
  br i1 %471, label %472, label %474, !dbg !2414

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2411
  store i8 %448, ptr %473, align 1, !dbg !2411, !tbaa !975
  br label %474, !dbg !2411

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %475, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %449, metadata !1982, metadata !DIExpression()), !dbg !2119
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2415
  %477 = load i8, ptr %476, align 1, !dbg !2415, !tbaa !975
  call void @llvm.dbg.value(metadata i8 %477, metadata !1989, metadata !DIExpression()), !dbg !2129
  br label %381, !dbg !2416, !llvm.loop !2417

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i8 %448, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %479, metadata !1988, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %447, metadata !1987, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %446, metadata !1984, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %384, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %445, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %444, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %378, metadata !1961, metadata !DIExpression()), !dbg !2020
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2420
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2020
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2025
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2020
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2020
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2119
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2129
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2129
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2129
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %489, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %488, metadata !1988, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %487, metadata !1987, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %173, metadata !1984, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %486, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %485, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %484, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %483, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %482, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %481, metadata !1961, metadata !DIExpression()), !dbg !2020
  br i1 %127, label %502, label %491, !dbg !2421

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
  br i1 %137, label %503, label %524, !dbg !2423

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2424

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
  %514 = lshr i8 %505, 5, !dbg !2425
  %515 = zext i8 %514 to i64, !dbg !2425
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2426
  %517 = load i32, ptr %516, align 4, !dbg !2426, !tbaa !966
  %518 = and i8 %505, 31, !dbg !2427
  %519 = zext i8 %518 to i32, !dbg !2427
  %520 = shl nuw i32 1, %519, !dbg !2428
  %521 = and i32 %517, %520, !dbg !2428
  %522 = icmp eq i32 %521, 0, !dbg !2428
  %523 = and i1 %172, %522, !dbg !2429
  br i1 %523, label %573, label %535, !dbg !2429

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
  br i1 %172, label %573, label %535, !dbg !2430

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2420
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2020
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2025
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2029
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2121
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2431
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2129
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2129
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %543, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %542, metadata !1988, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %541, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %540, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %539, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %538, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %537, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %536, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.label(metadata !2017), !dbg !2432
  br i1 %132, label %545, label %674, !dbg !2433

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1987, metadata !DIExpression()), !dbg !2129
  %546 = and i8 %540, 1, !dbg !2435
  %547 = icmp eq i8 %546, 0, !dbg !2435
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2435
  br i1 %548, label %549, label %565, !dbg !2435

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2437
  br i1 %550, label %551, label %553, !dbg !2441

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2437
  store i8 39, ptr %552, align 1, !dbg !2437, !tbaa !975
  br label %553, !dbg !2437

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %554, metadata !1968, metadata !DIExpression()), !dbg !2020
  %555 = icmp ult i64 %554, %544, !dbg !2442
  br i1 %555, label %556, label %558, !dbg !2445

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2442
  store i8 36, ptr %557, align 1, !dbg !2442, !tbaa !975
  br label %558, !dbg !2442

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %559, metadata !1968, metadata !DIExpression()), !dbg !2020
  %560 = icmp ult i64 %559, %544, !dbg !2446
  br i1 %560, label %561, label %563, !dbg !2449

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2446
  store i8 39, ptr %562, align 1, !dbg !2446, !tbaa !975
  br label %563, !dbg !2446

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %564, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2020
  br label %565, !dbg !2450

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2129
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %567, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %566, metadata !1968, metadata !DIExpression()), !dbg !2020
  %568 = icmp ult i64 %566, %544, !dbg !2451
  br i1 %568, label %569, label %571, !dbg !2454

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2451
  store i8 92, ptr %570, align 1, !dbg !2451, !tbaa !975
  br label %571, !dbg !2451

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %544, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %543, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %542, metadata !1988, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 1, metadata !1987, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %541, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %567, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %539, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %538, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %572, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %536, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.label(metadata !2018), !dbg !2455
  br label %600, !dbg !2456

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2420
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2020
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2025
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2029
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2121
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2431
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2129
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2129
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2459
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %582, metadata !1989, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %581, metadata !1988, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %580, metadata !1987, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %579, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %578, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %577, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %576, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %575, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %574, metadata !1961, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.label(metadata !2018), !dbg !2455
  %584 = and i8 %578, 1, !dbg !2456
  %585 = icmp ne i8 %584, 0, !dbg !2456
  %586 = and i8 %580, 1, !dbg !2456
  %587 = icmp eq i8 %586, 0, !dbg !2456
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2456
  br i1 %588, label %589, label %600, !dbg !2456

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2460
  br i1 %590, label %591, label %593, !dbg !2464

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2460
  store i8 39, ptr %592, align 1, !dbg !2460, !tbaa !975
  br label %593, !dbg !2460

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %594, metadata !1968, metadata !DIExpression()), !dbg !2020
  %595 = icmp ult i64 %594, %583, !dbg !2465
  br i1 %595, label %596, label %598, !dbg !2468

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2465
  store i8 39, ptr %597, align 1, !dbg !2465, !tbaa !975
  br label %598, !dbg !2465

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %599, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2020
  br label %600, !dbg !2469

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2129
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2020
  call void @llvm.dbg.value(metadata i8 %609, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %608, metadata !1968, metadata !DIExpression()), !dbg !2020
  %610 = icmp ult i64 %608, %601, !dbg !2470
  br i1 %610, label %611, label %613, !dbg !2473

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2470
  store i8 %602, ptr %612, align 1, !dbg !2470, !tbaa !975
  br label %613, !dbg !2470

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %614, metadata !1968, metadata !DIExpression()), !dbg !2020
  %615 = icmp eq i8 %603, 0, !dbg !2474
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2476
  call void @llvm.dbg.value(metadata i8 %616, metadata !1975, metadata !DIExpression()), !dbg !2020
  br label %617, !dbg !2477

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2420
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2020
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2025
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2029
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2030
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2121
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2431
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %624, metadata !1982, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %623, metadata !1976, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %622, metadata !1975, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %621, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %620, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %619, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %618, metadata !1961, metadata !DIExpression()), !dbg !2020
  %626 = add i64 %624, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %626, metadata !1982, metadata !DIExpression()), !dbg !2119
  br label %138, !dbg !2479, !llvm.loop !2480

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1959, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %143, metadata !1975, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 %142, metadata !1974, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %141, metadata !1969, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %140, metadata !1968, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %139, metadata !1961, metadata !DIExpression()), !dbg !2020
  %628 = icmp eq i64 %140, 0, !dbg !2482
  %629 = and i1 %133, %628, !dbg !2484
  %630 = xor i1 %629, true, !dbg !2484
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2484
  br i1 %631, label %632, label %670, !dbg !2484

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2485
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2485
  br i1 %636, label %637, label %646, !dbg !2485

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2487
  %639 = icmp eq i8 %638, 0, !dbg !2487
  br i1 %639, label %642, label %640, !dbg !2490

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2491
  br label %694, !dbg !2492

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2493
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2495
  br i1 %645, label %28, label %646, !dbg !2495

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2496
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2498
  br i1 %649, label %650, label %665, !dbg !2498

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1970, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %140, metadata !1968, metadata !DIExpression()), !dbg !2020
  %651 = load i8, ptr %120, align 1, !dbg !2499, !tbaa !975
  %652 = icmp eq i8 %651, 0, !dbg !2502
  br i1 %652, label %665, label %653, !dbg !2502

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1970, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %656, metadata !1968, metadata !DIExpression()), !dbg !2020
  %657 = icmp ult i64 %656, %146, !dbg !2503
  br i1 %657, label %658, label %660, !dbg !2506

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2503
  store i8 %654, ptr %659, align 1, !dbg !2503, !tbaa !975
  br label %660, !dbg !2503

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %661, metadata !1968, metadata !DIExpression()), !dbg !2020
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2507
  call void @llvm.dbg.value(metadata ptr %662, metadata !1970, metadata !DIExpression()), !dbg !2020
  %663 = load i8, ptr %662, align 1, !dbg !2499, !tbaa !975
  %664 = icmp eq i8 %663, 0, !dbg !2502
  br i1 %664, label %665, label %653, !dbg !2502, !llvm.loop !2508

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2102
  call void @llvm.dbg.value(metadata i64 %666, metadata !1968, metadata !DIExpression()), !dbg !2020
  %667 = icmp ult i64 %666, %146, !dbg !2510
  br i1 %667, label %668, label %694, !dbg !2512

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2513
  store i8 0, ptr %669, align 1, !dbg !2514, !tbaa !975
  br label %694, !dbg !2513

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2019), !dbg !2515
  %672 = icmp eq i8 %124, 0, !dbg !2516
  %673 = select i1 %672, i32 2, i32 4, !dbg !2516
  br label %684, !dbg !2516

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2516
  %678 = select i1 %677, i32 2, i32 4, !dbg !2516
  br label %679, !dbg !2518

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2019), !dbg !2515
  %683 = icmp eq i32 %116, 2, !dbg !2518
  br i1 %683, label %684, label %688, !dbg !2516

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2516

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1962, metadata !DIExpression()), !dbg !2020
  %692 = and i32 %5, -3, !dbg !2519
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2520
  br label %694, !dbg !2521

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2522
}

; Function Attrs: nounwind
declare !dbg !2523 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2526 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2529 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2531 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 %1, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %1, metadata !2544, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr null, metadata !2545, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %2, metadata !2546, metadata !DIExpression()), !dbg !2552
  %4 = icmp eq ptr %2, null, !dbg !2554
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2554
  call void @llvm.dbg.value(metadata ptr %5, metadata !2547, metadata !DIExpression()), !dbg !2552
  %6 = tail call ptr @__errno_location() #40, !dbg !2555
  %7 = load i32, ptr %6, align 4, !dbg !2555, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %7, metadata !2548, metadata !DIExpression()), !dbg !2552
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2556
  %9 = load i32, ptr %8, align 4, !dbg !2556, !tbaa !1902
  %10 = or i32 %9, 1, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %10, metadata !2549, metadata !DIExpression()), !dbg !2552
  %11 = load i32, ptr %5, align 8, !dbg !2558, !tbaa !1852
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2559
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2560
  %14 = load ptr, ptr %13, align 8, !dbg !2560, !tbaa !1923
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2561
  %16 = load ptr, ptr %15, align 8, !dbg !2561, !tbaa !1926
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2562
  %18 = add i64 %17, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %18, metadata !2550, metadata !DIExpression()), !dbg !2552
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %19, metadata !2551, metadata !DIExpression()), !dbg !2552
  %20 = load i32, ptr %5, align 8, !dbg !2565, !tbaa !1852
  %21 = load ptr, ptr %13, align 8, !dbg !2566, !tbaa !1923
  %22 = load ptr, ptr %15, align 8, !dbg !2567, !tbaa !1926
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2568
  store i32 %7, ptr %6, align 4, !dbg !2569, !tbaa !966
  ret ptr %19, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %1, metadata !2544, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %2, metadata !2545, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %3, metadata !2546, metadata !DIExpression()), !dbg !2571
  %5 = icmp eq ptr %3, null, !dbg !2572
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2572
  call void @llvm.dbg.value(metadata ptr %6, metadata !2547, metadata !DIExpression()), !dbg !2571
  %7 = tail call ptr @__errno_location() #40, !dbg !2573
  %8 = load i32, ptr %7, align 4, !dbg !2573, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %8, metadata !2548, metadata !DIExpression()), !dbg !2571
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2574
  %10 = load i32, ptr %9, align 4, !dbg !2574, !tbaa !1902
  %11 = icmp eq ptr %2, null, !dbg !2575
  %12 = zext i1 %11 to i32, !dbg !2575
  %13 = or i32 %10, %12, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %13, metadata !2549, metadata !DIExpression()), !dbg !2571
  %14 = load i32, ptr %6, align 8, !dbg !2577, !tbaa !1852
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2578
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2579
  %17 = load ptr, ptr %16, align 8, !dbg !2579, !tbaa !1923
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2580
  %19 = load ptr, ptr %18, align 8, !dbg !2580, !tbaa !1926
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2581
  %21 = add i64 %20, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %21, metadata !2550, metadata !DIExpression()), !dbg !2571
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2583
  call void @llvm.dbg.value(metadata ptr %22, metadata !2551, metadata !DIExpression()), !dbg !2571
  %23 = load i32, ptr %6, align 8, !dbg !2584, !tbaa !1852
  %24 = load ptr, ptr %16, align 8, !dbg !2585, !tbaa !1923
  %25 = load ptr, ptr %18, align 8, !dbg !2586, !tbaa !1926
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2587
  store i32 %8, ptr %7, align 4, !dbg !2588, !tbaa !966
  br i1 %11, label %28, label %27, !dbg !2589

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2590, !tbaa !2592
  br label %28, !dbg !2593

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2594
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2595 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2600, !tbaa !895
  call void @llvm.dbg.value(metadata ptr %1, metadata !2597, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i32 1, metadata !2598, metadata !DIExpression()), !dbg !2602
  %2 = load i32, ptr @nslots, align 4, !tbaa !966
  call void @llvm.dbg.value(metadata i32 1, metadata !2598, metadata !DIExpression()), !dbg !2602
  %3 = icmp sgt i32 %2, 1, !dbg !2603
  br i1 %3, label %4, label %6, !dbg !2605

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2603
  br label %10, !dbg !2605

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2606
  %8 = load ptr, ptr %7, align 8, !dbg !2606, !tbaa !2608
  %9 = icmp eq ptr %8, @slot0, !dbg !2610
  br i1 %9, label %17, label %16, !dbg !2611

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2598, metadata !DIExpression()), !dbg !2602
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2612
  %13 = load ptr, ptr %12, align 8, !dbg !2612, !tbaa !2608
  tail call void @free(ptr noundef %13) #37, !dbg !2613
  %14 = add nuw nsw i64 %11, 1, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %14, metadata !2598, metadata !DIExpression()), !dbg !2602
  %15 = icmp eq i64 %14, %5, !dbg !2603
  br i1 %15, label %6, label %10, !dbg !2605, !llvm.loop !2615

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2617
  store i64 256, ptr @slotvec0, align 8, !dbg !2619, !tbaa !2620
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2621, !tbaa !2608
  br label %17, !dbg !2622

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2623
  br i1 %18, label %20, label %19, !dbg !2625

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2626
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2628, !tbaa !895
  br label %20, !dbg !2629

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2630, !tbaa !966
  ret void, !dbg !2631
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2632 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2639
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2640
  ret ptr %3, !dbg !2641
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2642 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2646, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %1, metadata !2647, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %2, metadata !2648, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %3, metadata !2649, metadata !DIExpression()), !dbg !2662
  %6 = tail call ptr @__errno_location() #40, !dbg !2663
  %7 = load i32, ptr %6, align 4, !dbg !2663, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %7, metadata !2650, metadata !DIExpression()), !dbg !2662
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2664, !tbaa !895
  call void @llvm.dbg.value(metadata ptr %8, metadata !2651, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2652, metadata !DIExpression()), !dbg !2662
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2665
  br i1 %9, label %10, label %11, !dbg !2665

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2667
  unreachable, !dbg !2667

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2668, !tbaa !966
  %13 = icmp sgt i32 %12, %0, !dbg !2669
  br i1 %13, label %32, label %14, !dbg !2670

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2671
  call void @llvm.dbg.value(metadata i1 %15, metadata !2653, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2672
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2673
  %16 = sext i32 %12 to i64, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %16, metadata !2656, metadata !DIExpression()), !dbg !2672
  store i64 %16, ptr %5, align 8, !dbg !2675, !tbaa !2592
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2676
  %18 = add nuw nsw i32 %0, 1, !dbg !2677
  %19 = sub i32 %18, %12, !dbg !2678
  %20 = sext i32 %19 to i64, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %5, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2672
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2680
  call void @llvm.dbg.value(metadata ptr %21, metadata !2651, metadata !DIExpression()), !dbg !2662
  store ptr %21, ptr @slotvec, align 8, !dbg !2681, !tbaa !895
  br i1 %15, label %22, label %23, !dbg !2682

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2683, !tbaa.struct !2685
  br label %23, !dbg !2686

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2687, !tbaa !966
  %25 = sext i32 %24 to i64, !dbg !2688
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2688
  %27 = load i64, ptr %5, align 8, !dbg !2689, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %27, metadata !2656, metadata !DIExpression()), !dbg !2672
  %28 = sub nsw i64 %27, %25, !dbg !2690
  %29 = shl i64 %28, 4, !dbg !2691
  call void @llvm.dbg.value(metadata ptr %26, metadata !2059, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %29, metadata !2063, metadata !DIExpression()), !dbg !2692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2694
  %30 = load i64, ptr %5, align 8, !dbg !2695, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %30, metadata !2656, metadata !DIExpression()), !dbg !2672
  %31 = trunc i64 %30 to i32, !dbg !2695
  store i32 %31, ptr @nslots, align 4, !dbg !2696, !tbaa !966
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2697
  br label %32, !dbg !2698

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2662
  call void @llvm.dbg.value(metadata ptr %33, metadata !2651, metadata !DIExpression()), !dbg !2662
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2699
  %36 = load i64, ptr %35, align 8, !dbg !2700, !tbaa !2620
  call void @llvm.dbg.value(metadata i64 %36, metadata !2657, metadata !DIExpression()), !dbg !2701
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2702
  %38 = load ptr, ptr %37, align 8, !dbg !2702, !tbaa !2608
  call void @llvm.dbg.value(metadata ptr %38, metadata !2659, metadata !DIExpression()), !dbg !2701
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2703
  %40 = load i32, ptr %39, align 4, !dbg !2703, !tbaa !1902
  %41 = or i32 %40, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i32 %41, metadata !2660, metadata !DIExpression()), !dbg !2701
  %42 = load i32, ptr %3, align 8, !dbg !2705, !tbaa !1852
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2706
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2707
  %45 = load ptr, ptr %44, align 8, !dbg !2707, !tbaa !1923
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2708
  %47 = load ptr, ptr %46, align 8, !dbg !2708, !tbaa !1926
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %48, metadata !2661, metadata !DIExpression()), !dbg !2701
  %49 = icmp ugt i64 %36, %48, !dbg !2710
  br i1 %49, label %60, label %50, !dbg !2712

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %51, metadata !2657, metadata !DIExpression()), !dbg !2701
  store i64 %51, ptr %35, align 8, !dbg !2715, !tbaa !2620
  %52 = icmp eq ptr %38, @slot0, !dbg !2716
  br i1 %52, label %54, label %53, !dbg !2718

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2719
  br label %54, !dbg !2719

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2720
  call void @llvm.dbg.value(metadata ptr %55, metadata !2659, metadata !DIExpression()), !dbg !2701
  store ptr %55, ptr %37, align 8, !dbg !2721, !tbaa !2608
  %56 = load i32, ptr %3, align 8, !dbg !2722, !tbaa !1852
  %57 = load ptr, ptr %44, align 8, !dbg !2723, !tbaa !1923
  %58 = load ptr, ptr %46, align 8, !dbg !2724, !tbaa !1926
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2725
  br label %60, !dbg !2726

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2701
  call void @llvm.dbg.value(metadata ptr %61, metadata !2659, metadata !DIExpression()), !dbg !2701
  store i32 %7, ptr %6, align 4, !dbg !2727, !tbaa !966
  ret ptr %61, !dbg !2728
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %1, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %2, metadata !2735, metadata !DIExpression()), !dbg !2736
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2737
  ret ptr %4, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2739 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !2743
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2745
  ret ptr %2, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2754
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2756
  ret ptr %3, !dbg !2757
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2758 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2765, metadata !DIExpression()), !dbg !2768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %1, metadata !2773, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2781, !alias.scope !2769
  %5 = icmp eq i32 %1, 10, !dbg !2782
  br i1 %5, label %6, label %7, !dbg !2784

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2785, !noalias !2769
  unreachable, !dbg !2785

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2786, !tbaa !1852, !alias.scope !2769
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2787
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2788
  ret ptr %8, !dbg !2789
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2790 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2794, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %1, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %2, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %3, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2800
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2798, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802), !dbg !2805
  call void @llvm.dbg.value(metadata i32 %1, metadata !2773, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2778, metadata !DIExpression()), !dbg !2808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2808, !alias.scope !2802
  %6 = icmp eq i32 %1, 10, !dbg !2809
  br i1 %6, label %7, label %8, !dbg !2810

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2811, !noalias !2802
  unreachable, !dbg !2811

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2812, !tbaa !1852, !alias.scope !2802
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2813
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2814
  ret ptr %9, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2816 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %1, metadata !2764, metadata !DIExpression()), !dbg !2823
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2765, metadata !DIExpression()), !dbg !2826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2778, metadata !DIExpression()), !dbg !2833
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2833, !alias.scope !2827
  %4 = icmp eq i32 %0, 10, !dbg !2834
  br i1 %4, label %5, label %6, !dbg !2835

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2836, !noalias !2827
  unreachable, !dbg !2836

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2837, !tbaa !1852, !alias.scope !2827
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2838
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2839
  ret ptr %7, !dbg !2840
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2841 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2845, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %1, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %1, metadata !2796, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %2, metadata !2797, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2798, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2853), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2778, metadata !DIExpression()), !dbg !2859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2859, !alias.scope !2853
  %5 = icmp eq i32 %0, 10, !dbg !2860
  br i1 %5, label %6, label %7, !dbg !2861

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2862, !noalias !2853
  unreachable, !dbg !2862

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2863, !tbaa !1852, !alias.scope !2853
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2865
  ret ptr %8, !dbg !2866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2867 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 %2, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2876
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2878, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %4, metadata !1869, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %2, metadata !1870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %2, metadata !1872, metadata !DIExpression()), !dbg !2880
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2882
  %6 = lshr i8 %2, 5, !dbg !2883
  %7 = zext i8 %6 to i64, !dbg !2883
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %8, metadata !1873, metadata !DIExpression()), !dbg !2880
  %9 = and i8 %2, 31, !dbg !2885
  %10 = zext i8 %9 to i32, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %10, metadata !1875, metadata !DIExpression()), !dbg !2880
  %11 = load i32, ptr %8, align 4, !dbg !2886, !tbaa !966
  %12 = lshr i32 %11, %10, !dbg !2887
  call void @llvm.dbg.value(metadata i32 %12, metadata !1876, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2880
  %13 = and i32 %12, 1, !dbg !2888
  %14 = xor i32 %13, 1, !dbg !2888
  %15 = shl nuw i32 %14, %10, !dbg !2889
  %16 = xor i32 %15, %11, !dbg !2890
  store i32 %16, ptr %8, align 4, !dbg !2890, !tbaa !966
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2891
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2892
  ret ptr %17, !dbg !2893
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2894 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 %1, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 %1, metadata !2873, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2903
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2874, metadata !DIExpression()), !dbg !2904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2905, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %3, metadata !1869, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8 %1, metadata !1870, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !2906
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2908
  %5 = lshr i8 %1, 5, !dbg !2909
  %6 = zext i8 %5 to i64, !dbg !2909
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %7, metadata !1873, metadata !DIExpression()), !dbg !2906
  %8 = and i8 %1, 31, !dbg !2911
  %9 = zext i8 %8 to i32, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %9, metadata !1875, metadata !DIExpression()), !dbg !2906
  %10 = load i32, ptr %7, align 4, !dbg !2912, !tbaa !966
  %11 = lshr i32 %10, %9, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %11, metadata !1876, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2906
  %12 = and i32 %11, 1, !dbg !2914
  %13 = xor i32 %12, 1, !dbg !2914
  %14 = shl nuw i32 %13, %9, !dbg !2915
  %15 = xor i32 %14, %10, !dbg !2916
  store i32 %15, ptr %7, align 4, !dbg !2916, !tbaa !966
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2917
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2918
  ret ptr %16, !dbg !2919
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2920 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 58, metadata !2899, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()), !dbg !2926
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2928
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2874, metadata !DIExpression()), !dbg !2929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2930, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %2, metadata !1869, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 58, metadata !1870, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2931
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %3, metadata !1873, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 26, metadata !1875, metadata !DIExpression()), !dbg !2931
  %4 = load i32, ptr %3, align 4, !dbg !2934, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %4, metadata !1876, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2931
  %5 = or i32 %4, 67108864, !dbg !2935
  store i32 %5, ptr %3, align 4, !dbg !2935, !tbaa !966
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2936
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2937
  ret ptr %6, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2939 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()), !dbg !2944
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2874, metadata !DIExpression()), !dbg !2947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2948, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %3, metadata !1869, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1870, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2949
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2951
  call void @llvm.dbg.value(metadata ptr %4, metadata !1873, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 26, metadata !1875, metadata !DIExpression()), !dbg !2949
  %5 = load i32, ptr %4, align 4, !dbg !2952, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %5, metadata !1876, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2949
  %6 = or i32 %5, 67108864, !dbg !2953
  store i32 %6, ptr %4, align 4, !dbg !2953, !tbaa !966
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2954
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2955
  ret ptr %7, !dbg !2956
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2957 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %0, metadata !2959, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 %1, metadata !2960, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2966
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %1, metadata !2773, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2968
  %5 = icmp eq i32 %1, 10, !dbg !2969
  br i1 %5, label %6, label %7, !dbg !2970

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2971, !noalias !2972
  unreachable, !dbg !2971

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2968
  store i32 %1, ptr %4, align 8, !dbg !2975, !tbaa.struct !2879
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2975
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2975
  call void @llvm.dbg.value(metadata ptr %4, metadata !1869, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !1870, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2976
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %9, metadata !1873, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 26, metadata !1875, metadata !DIExpression()), !dbg !2976
  %10 = load i32, ptr %9, align 4, !dbg !2979, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %10, metadata !1876, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2976
  %11 = or i32 %10, 67108864, !dbg !2980
  store i32 %11, ptr %9, align 4, !dbg !2980, !tbaa !966
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2981
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2982
  ret ptr %12, !dbg !2983
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2984 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %1, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %3, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %0, metadata !2993, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %1, metadata !2998, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %2, metadata !2999, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %3, metadata !3000, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3005
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3002, metadata !DIExpression()), !dbg !3006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3007, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %1, metadata !1910, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %2, metadata !1911, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3008
  store i32 10, ptr %5, align 8, !dbg !3010, !tbaa !1852
  %6 = icmp ne ptr %1, null, !dbg !3011
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3012
  br i1 %8, label %10, label %9, !dbg !3012

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3013
  unreachable, !dbg !3013

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3014
  store ptr %1, ptr %11, align 8, !dbg !3015, !tbaa !1923
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3016
  store ptr %2, ptr %12, align 8, !dbg !3017, !tbaa !1926
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3018
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3019
  ret ptr %13, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2994 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2993, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %1, metadata !2998, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %2, metadata !2999, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %3, metadata !3000, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %4, metadata !3001, metadata !DIExpression()), !dbg !3021
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3002, metadata !DIExpression()), !dbg !3023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3024, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %6, metadata !1909, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %1, metadata !1910, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %2, metadata !1911, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %6, metadata !1909, metadata !DIExpression()), !dbg !3025
  store i32 10, ptr %6, align 8, !dbg !3027, !tbaa !1852
  %7 = icmp ne ptr %1, null, !dbg !3028
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3029
  br i1 %9, label %11, label %10, !dbg !3029

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3030
  unreachable, !dbg !3030

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3031
  store ptr %1, ptr %12, align 8, !dbg !3032, !tbaa !1923
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3033
  store ptr %2, ptr %13, align 8, !dbg !3034, !tbaa !1926
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3035
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3036
  ret ptr %14, !dbg !3037
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3038 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !2988, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %0, metadata !2989, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %1, metadata !2990, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %2, metadata !2991, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %1, metadata !2999, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %2, metadata !3000, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()), !dbg !3048
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3002, metadata !DIExpression()), !dbg !3051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3052, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %4, metadata !1909, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %1, metadata !1911, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %4, metadata !1909, metadata !DIExpression()), !dbg !3053
  store i32 10, ptr %4, align 8, !dbg !3055, !tbaa !1852
  %5 = icmp ne ptr %0, null, !dbg !3056
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3057
  br i1 %7, label %9, label %8, !dbg !3057

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3058
  unreachable, !dbg !3058

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3059
  store ptr %0, ptr %10, align 8, !dbg !3060, !tbaa !1923
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3061
  store ptr %1, ptr %11, align 8, !dbg !3062, !tbaa !1926
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3063
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3064
  ret ptr %12, !dbg !3065
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3066 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3070, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %1, metadata !3071, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %2, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %3, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %1, metadata !2999, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %2, metadata !3000, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %3, metadata !3001, metadata !DIExpression()), !dbg !3075
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3077
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3002, metadata !DIExpression()), !dbg !3078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3079, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %1, metadata !1911, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3080
  store i32 10, ptr %5, align 8, !dbg !3082, !tbaa !1852
  %6 = icmp ne ptr %0, null, !dbg !3083
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3084
  br i1 %8, label %10, label %9, !dbg !3084

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3085
  unreachable, !dbg !3085

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3086
  store ptr %0, ptr %11, align 8, !dbg !3087, !tbaa !1923
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3088
  store ptr %1, ptr %12, align 8, !dbg !3089, !tbaa !1926
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3090
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3091
  ret ptr %13, !dbg !3092
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %1, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %2, metadata !3099, metadata !DIExpression()), !dbg !3100
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3101
  ret ptr %4, !dbg !3102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3103 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3097, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3099, metadata !DIExpression()), !dbg !3110
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3112
  ret ptr %3, !dbg !3113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata ptr %1, metadata !3119, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %1, metadata !3098, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 -1, metadata !3099, metadata !DIExpression()), !dbg !3121
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3123
  ret ptr %3, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3097, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 -1, metadata !3099, metadata !DIExpression()), !dbg !3133
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3135
  ret ptr %2, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3137 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %2, metadata !3178, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %5, metadata !3181, metadata !DIExpression()), !dbg !3182
  %7 = icmp eq ptr %1, null, !dbg !3183
  br i1 %7, label %10, label %8, !dbg !3185

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3186
  br label %12, !dbg !3186

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.102, ptr noundef %2, ptr noundef %3) #37, !dbg !3187
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.3.104, i32 noundef 5) #37, !dbg !3188
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3188
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3189
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.5.106, i32 noundef 5) #37, !dbg !3190
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.107) #37, !dbg !3190
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3191
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
  ], !dbg !3192

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.7.108, i32 noundef 5) #37, !dbg !3193
  %21 = load ptr, ptr %4, align 8, !dbg !3193, !tbaa !895
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3193
  br label %147, !dbg !3195

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.8.109, i32 noundef 5) #37, !dbg !3196
  %25 = load ptr, ptr %4, align 8, !dbg !3196, !tbaa !895
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3196
  %27 = load ptr, ptr %26, align 8, !dbg !3196, !tbaa !895
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3196
  br label %147, !dbg !3197

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.9.110, i32 noundef 5) #37, !dbg !3198
  %31 = load ptr, ptr %4, align 8, !dbg !3198, !tbaa !895
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3198
  %33 = load ptr, ptr %32, align 8, !dbg !3198, !tbaa !895
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3198
  %35 = load ptr, ptr %34, align 8, !dbg !3198, !tbaa !895
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3198
  br label %147, !dbg !3199

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.10.111, i32 noundef 5) #37, !dbg !3200
  %39 = load ptr, ptr %4, align 8, !dbg !3200, !tbaa !895
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3200
  %41 = load ptr, ptr %40, align 8, !dbg !3200, !tbaa !895
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3200
  %43 = load ptr, ptr %42, align 8, !dbg !3200, !tbaa !895
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3200
  %45 = load ptr, ptr %44, align 8, !dbg !3200, !tbaa !895
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3200
  br label %147, !dbg !3201

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.11.112, i32 noundef 5) #37, !dbg !3202
  %49 = load ptr, ptr %4, align 8, !dbg !3202, !tbaa !895
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3202
  %51 = load ptr, ptr %50, align 8, !dbg !3202, !tbaa !895
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3202
  %53 = load ptr, ptr %52, align 8, !dbg !3202, !tbaa !895
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3202
  %55 = load ptr, ptr %54, align 8, !dbg !3202, !tbaa !895
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3202
  %57 = load ptr, ptr %56, align 8, !dbg !3202, !tbaa !895
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3202
  br label %147, !dbg !3203

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.12.113, i32 noundef 5) #37, !dbg !3204
  %61 = load ptr, ptr %4, align 8, !dbg !3204, !tbaa !895
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3204
  %63 = load ptr, ptr %62, align 8, !dbg !3204, !tbaa !895
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3204
  %65 = load ptr, ptr %64, align 8, !dbg !3204, !tbaa !895
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3204
  %67 = load ptr, ptr %66, align 8, !dbg !3204, !tbaa !895
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3204
  %69 = load ptr, ptr %68, align 8, !dbg !3204, !tbaa !895
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3204
  %71 = load ptr, ptr %70, align 8, !dbg !3204, !tbaa !895
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3204
  br label %147, !dbg !3205

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.13.114, i32 noundef 5) #37, !dbg !3206
  %75 = load ptr, ptr %4, align 8, !dbg !3206, !tbaa !895
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3206
  %77 = load ptr, ptr %76, align 8, !dbg !3206, !tbaa !895
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3206
  %79 = load ptr, ptr %78, align 8, !dbg !3206, !tbaa !895
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3206
  %81 = load ptr, ptr %80, align 8, !dbg !3206, !tbaa !895
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3206
  %83 = load ptr, ptr %82, align 8, !dbg !3206, !tbaa !895
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3206
  %85 = load ptr, ptr %84, align 8, !dbg !3206, !tbaa !895
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3206
  %87 = load ptr, ptr %86, align 8, !dbg !3206, !tbaa !895
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3206
  br label %147, !dbg !3207

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.14.115, i32 noundef 5) #37, !dbg !3208
  %91 = load ptr, ptr %4, align 8, !dbg !3208, !tbaa !895
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3208
  %93 = load ptr, ptr %92, align 8, !dbg !3208, !tbaa !895
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3208
  %95 = load ptr, ptr %94, align 8, !dbg !3208, !tbaa !895
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3208
  %97 = load ptr, ptr %96, align 8, !dbg !3208, !tbaa !895
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3208
  %99 = load ptr, ptr %98, align 8, !dbg !3208, !tbaa !895
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3208
  %101 = load ptr, ptr %100, align 8, !dbg !3208, !tbaa !895
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3208
  %103 = load ptr, ptr %102, align 8, !dbg !3208, !tbaa !895
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3208
  %105 = load ptr, ptr %104, align 8, !dbg !3208, !tbaa !895
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3208
  br label %147, !dbg !3209

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.15.116, i32 noundef 5) #37, !dbg !3210
  %109 = load ptr, ptr %4, align 8, !dbg !3210, !tbaa !895
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3210
  %111 = load ptr, ptr %110, align 8, !dbg !3210, !tbaa !895
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3210
  %113 = load ptr, ptr %112, align 8, !dbg !3210, !tbaa !895
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3210
  %115 = load ptr, ptr %114, align 8, !dbg !3210, !tbaa !895
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3210
  %117 = load ptr, ptr %116, align 8, !dbg !3210, !tbaa !895
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3210
  %119 = load ptr, ptr %118, align 8, !dbg !3210, !tbaa !895
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3210
  %121 = load ptr, ptr %120, align 8, !dbg !3210, !tbaa !895
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3210
  %123 = load ptr, ptr %122, align 8, !dbg !3210, !tbaa !895
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3210
  %125 = load ptr, ptr %124, align 8, !dbg !3210, !tbaa !895
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3210
  br label %147, !dbg !3211

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.16.117, i32 noundef 5) #37, !dbg !3212
  %129 = load ptr, ptr %4, align 8, !dbg !3212, !tbaa !895
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3212
  %131 = load ptr, ptr %130, align 8, !dbg !3212, !tbaa !895
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3212
  %133 = load ptr, ptr %132, align 8, !dbg !3212, !tbaa !895
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3212
  %135 = load ptr, ptr %134, align 8, !dbg !3212, !tbaa !895
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3212
  %137 = load ptr, ptr %136, align 8, !dbg !3212, !tbaa !895
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3212
  %139 = load ptr, ptr %138, align 8, !dbg !3212, !tbaa !895
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3212
  %141 = load ptr, ptr %140, align 8, !dbg !3212, !tbaa !895
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3212
  %143 = load ptr, ptr %142, align 8, !dbg !3212, !tbaa !895
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3212
  %145 = load ptr, ptr %144, align 8, !dbg !3212, !tbaa !895
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3212
  br label %147, !dbg !3213

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3214
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3215 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3219, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %1, metadata !3220, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %2, metadata !3221, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %3, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %4, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 0, metadata !3224, metadata !DIExpression()), !dbg !3225
  br label %6, !dbg !3226

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3228
  call void @llvm.dbg.value(metadata i64 %7, metadata !3224, metadata !DIExpression()), !dbg !3225
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3229
  %9 = load ptr, ptr %8, align 8, !dbg !3229, !tbaa !895
  %10 = icmp eq ptr %9, null, !dbg !3231
  %11 = add i64 %7, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %11, metadata !3224, metadata !DIExpression()), !dbg !3225
  br i1 %10, label %12, label %6, !dbg !3231, !llvm.loop !3233

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3235
  ret void, !dbg !3236
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3237 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3249, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %1, metadata !3250, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %2, metadata !3251, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %3, metadata !3252, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %4, metadata !3253, metadata !DIExpression()), !dbg !3257
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3255, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  %10 = icmp ult i32 %9, 41, !dbg !3260
  br i1 %10, label %11, label %16, !dbg !3260

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3260
  %13 = zext i32 %9 to i64, !dbg !3260
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3260
  %15 = add nuw nsw i32 %9, 8, !dbg !3260
  store i32 %15, ptr %4, align 8, !dbg !3260
  br label %19, !dbg !3260

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3260
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3260
  store ptr %18, ptr %7, align 8, !dbg !3260
  br label %19, !dbg !3260

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3260
  %22 = load ptr, ptr %21, align 8, !dbg !3260
  store ptr %22, ptr %6, align 16, !dbg !3263, !tbaa !895
  %23 = icmp eq ptr %22, null, !dbg !3264
  br i1 %23, label %128, label %24, !dbg !3265

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3257
  %25 = icmp ult i32 %20, 41, !dbg !3260
  br i1 %25, label %29, label %26, !dbg !3260

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3260
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3260
  store ptr %28, ptr %7, align 8, !dbg !3260
  br label %34, !dbg !3260

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3260
  %31 = zext i32 %20 to i64, !dbg !3260
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3260
  %33 = add nuw nsw i32 %20, 8, !dbg !3260
  store i32 %33, ptr %4, align 8, !dbg !3260
  br label %34, !dbg !3260

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3260
  %37 = load ptr, ptr %36, align 8, !dbg !3260
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3266
  store ptr %37, ptr %38, align 8, !dbg !3263, !tbaa !895
  %39 = icmp eq ptr %37, null, !dbg !3264
  br i1 %39, label %128, label %40, !dbg !3265

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 2, metadata !3254, metadata !DIExpression()), !dbg !3257
  %41 = icmp ult i32 %35, 41, !dbg !3260
  br i1 %41, label %45, label %42, !dbg !3260

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3260
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3260
  store ptr %44, ptr %7, align 8, !dbg !3260
  br label %50, !dbg !3260

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3260
  %47 = zext i32 %35 to i64, !dbg !3260
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3260
  %49 = add nuw nsw i32 %35, 8, !dbg !3260
  store i32 %49, ptr %4, align 8, !dbg !3260
  br label %50, !dbg !3260

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3260
  %53 = load ptr, ptr %52, align 8, !dbg !3260
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3266
  store ptr %53, ptr %54, align 16, !dbg !3263, !tbaa !895
  %55 = icmp eq ptr %53, null, !dbg !3264
  br i1 %55, label %128, label %56, !dbg !3265

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 3, metadata !3254, metadata !DIExpression()), !dbg !3257
  %57 = icmp ult i32 %51, 41, !dbg !3260
  br i1 %57, label %61, label %58, !dbg !3260

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3260
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3260
  store ptr %60, ptr %7, align 8, !dbg !3260
  br label %66, !dbg !3260

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3260
  %63 = zext i32 %51 to i64, !dbg !3260
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3260
  %65 = add nuw nsw i32 %51, 8, !dbg !3260
  store i32 %65, ptr %4, align 8, !dbg !3260
  br label %66, !dbg !3260

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3260
  %69 = load ptr, ptr %68, align 8, !dbg !3260
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3266
  store ptr %69, ptr %70, align 8, !dbg !3263, !tbaa !895
  %71 = icmp eq ptr %69, null, !dbg !3264
  br i1 %71, label %128, label %72, !dbg !3265

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 4, metadata !3254, metadata !DIExpression()), !dbg !3257
  %73 = icmp ult i32 %67, 41, !dbg !3260
  br i1 %73, label %77, label %74, !dbg !3260

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3260
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3260
  store ptr %76, ptr %7, align 8, !dbg !3260
  br label %82, !dbg !3260

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3260
  %79 = zext i32 %67 to i64, !dbg !3260
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3260
  %81 = add nuw nsw i32 %67, 8, !dbg !3260
  store i32 %81, ptr %4, align 8, !dbg !3260
  br label %82, !dbg !3260

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3260
  %85 = load ptr, ptr %84, align 8, !dbg !3260
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3266
  store ptr %85, ptr %86, align 16, !dbg !3263, !tbaa !895
  %87 = icmp eq ptr %85, null, !dbg !3264
  br i1 %87, label %128, label %88, !dbg !3265

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 5, metadata !3254, metadata !DIExpression()), !dbg !3257
  %89 = icmp ult i32 %83, 41, !dbg !3260
  br i1 %89, label %93, label %90, !dbg !3260

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3260
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3260
  store ptr %92, ptr %7, align 8, !dbg !3260
  br label %98, !dbg !3260

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3260
  %95 = zext i32 %83 to i64, !dbg !3260
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3260
  %97 = add nuw nsw i32 %83, 8, !dbg !3260
  store i32 %97, ptr %4, align 8, !dbg !3260
  br label %98, !dbg !3260

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3260
  %100 = load ptr, ptr %99, align 8, !dbg !3260
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3266
  store ptr %100, ptr %101, align 8, !dbg !3263, !tbaa !895
  %102 = icmp eq ptr %100, null, !dbg !3264
  br i1 %102, label %128, label %103, !dbg !3265

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3254, metadata !DIExpression()), !dbg !3257
  %104 = load ptr, ptr %7, align 8, !dbg !3260
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3260
  store ptr %105, ptr %7, align 8, !dbg !3260
  %106 = load ptr, ptr %104, align 8, !dbg !3260
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3266
  store ptr %106, ptr %107, align 16, !dbg !3263, !tbaa !895
  %108 = icmp eq ptr %106, null, !dbg !3264
  br i1 %108, label %128, label %109, !dbg !3265

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3254, metadata !DIExpression()), !dbg !3257
  %110 = load ptr, ptr %7, align 8, !dbg !3260
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3260
  store ptr %111, ptr %7, align 8, !dbg !3260
  %112 = load ptr, ptr %110, align 8, !dbg !3260
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3266
  store ptr %112, ptr %113, align 8, !dbg !3263, !tbaa !895
  %114 = icmp eq ptr %112, null, !dbg !3264
  br i1 %114, label %128, label %115, !dbg !3265

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3254, metadata !DIExpression()), !dbg !3257
  %116 = load ptr, ptr %7, align 8, !dbg !3260
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3260
  store ptr %117, ptr %7, align 8, !dbg !3260
  %118 = load ptr, ptr %116, align 8, !dbg !3260
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3266
  store ptr %118, ptr %119, align 16, !dbg !3263, !tbaa !895
  %120 = icmp eq ptr %118, null, !dbg !3264
  br i1 %120, label %128, label %121, !dbg !3265

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3254, metadata !DIExpression()), !dbg !3257
  %122 = load ptr, ptr %7, align 8, !dbg !3260
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3260
  store ptr %123, ptr %7, align 8, !dbg !3260
  %124 = load ptr, ptr %122, align 8, !dbg !3260
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3266
  store ptr %124, ptr %125, align 8, !dbg !3263, !tbaa !895
  %126 = icmp eq ptr %124, null, !dbg !3264
  %127 = select i1 %126, i64 9, i64 10, !dbg !3265
  br label %128, !dbg !3265

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3267
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3268
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3269
  ret void, !dbg !3269
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3270 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3274, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %1, metadata !3275, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %2, metadata !3276, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %3, metadata !3277, metadata !DIExpression()), !dbg !3283
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3284
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3278, metadata !DIExpression()), !dbg !3285
  call void @llvm.va_start(ptr nonnull %5), !dbg !3286
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3287
  call void @llvm.va_end(ptr nonnull %5), !dbg !3288
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3289
  ret void, !dbg !3289
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3290 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3291, !tbaa !895
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %1), !dbg !3291
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.17.122, i32 noundef 5) #37, !dbg !3292
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.123) #37, !dbg !3292
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.19.124, i32 noundef 5) #37, !dbg !3293
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.125, ptr noundef nonnull @.str.21.126) #37, !dbg !3293
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.22.127, i32 noundef 5) #37, !dbg !3294
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.128) #37, !dbg !3294
  ret void, !dbg !3295
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3301, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %2, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3312
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3318
  %5 = icmp eq ptr %4, null, !dbg !3320
  br i1 %5, label %6, label %7, !dbg !3322

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3323
  unreachable, !dbg !3323

7:                                                ; preds = %3
  ret ptr %4, !dbg !3324
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3325
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3326
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3327
  %5 = icmp eq ptr %4, null, !dbg !3329
  br i1 %5, label %6, label %7, !dbg !3330

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3331
  unreachable, !dbg !3331

7:                                                ; preds = %3
  ret ptr %4, !dbg !3332
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3333 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3337, metadata !DIExpression()), !dbg !3338
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3339
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3340
  %3 = icmp eq ptr %2, null, !dbg !3342
  br i1 %3, label %4, label %5, !dbg !3343

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3344
  unreachable, !dbg !3344

5:                                                ; preds = %1
  ret ptr %2, !dbg !3345
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3346 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3347 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %0, metadata !3353, metadata !DIExpression()), !dbg !3357
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3360
  %3 = icmp eq ptr %2, null, !dbg !3362
  br i1 %3, label %4, label %5, !dbg !3363

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3364
  unreachable, !dbg !3364

5:                                                ; preds = %1
  ret ptr %2, !dbg !3365
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3366 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3370, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %0, metadata !3337, metadata !DIExpression()), !dbg !3372
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3375
  %3 = icmp eq ptr %2, null, !dbg !3377
  br i1 %3, label %4, label %5, !dbg !3378

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3379
  unreachable, !dbg !3379

5:                                                ; preds = %1
  ret ptr %2, !dbg !3380
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3381 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i64 %1, metadata !3386, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3393
  %3 = icmp eq i64 %1, 0, !dbg !3395
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3395
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3396
  call void @llvm.dbg.value(metadata ptr %5, metadata !3313, metadata !DIExpression()), !dbg !3397
  %6 = icmp eq ptr %5, null, !dbg !3399
  br i1 %6, label %7, label %8, !dbg !3400

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3401
  unreachable, !dbg !3401

8:                                                ; preds = %2
  ret ptr %5, !dbg !3402
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3403 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3404 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %0, metadata !3411, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3417
  %3 = icmp eq i64 %1, 0, !dbg !3419
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3419
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3420
  call void @llvm.dbg.value(metadata ptr %5, metadata !3313, metadata !DIExpression()), !dbg !3421
  %6 = icmp eq ptr %5, null, !dbg !3423
  br i1 %6, label %7, label %8, !dbg !3424

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3425
  unreachable, !dbg !3425

8:                                                ; preds = %2
  ret ptr %5, !dbg !3426
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3427 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %2, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %2, metadata !3439, metadata !DIExpression()), !dbg !3440
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3443
  %5 = icmp eq ptr %4, null, !dbg !3445
  br i1 %5, label %6, label %7, !dbg !3446

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3447
  unreachable, !dbg !3447

7:                                                ; preds = %3
  ret ptr %4, !dbg !3448
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3449 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3453, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata ptr null, metadata !3305, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %0, metadata !3308, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3456
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3458
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3459
  %4 = icmp eq ptr %3, null, !dbg !3461
  br i1 %4, label %5, label %6, !dbg !3462

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3463
  unreachable, !dbg !3463

6:                                                ; preds = %2
  ret ptr %3, !dbg !3464
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3465 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3469, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 %1, metadata !3470, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr null, metadata !3431, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %0, metadata !3432, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr null, metadata !3435, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %0, metadata !3438, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3474
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3477
  %4 = icmp eq ptr %3, null, !dbg !3479
  br i1 %4, label %5, label %6, !dbg !3480

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3481
  unreachable, !dbg !3481

6:                                                ; preds = %2
  ret ptr %3, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3483 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !808, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %1, metadata !809, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 1, metadata !810, metadata !DIExpression()), !dbg !3490
  %3 = load i64, ptr %1, align 8, !dbg !3492, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %3, metadata !811, metadata !DIExpression()), !dbg !3490
  %4 = icmp eq ptr %0, null, !dbg !3493
  br i1 %4, label %5, label %8, !dbg !3495

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3496
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3499
  br label %15, !dbg !3499

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3500
  %10 = add nuw i64 %9, 1, !dbg !3500
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3500
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3500
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %13, metadata !811, metadata !DIExpression()), !dbg !3490
  br i1 %12, label %14, label %15, !dbg !3503

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3504
  unreachable, !dbg !3504

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3490
  call void @llvm.dbg.value(metadata i64 %16, metadata !811, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %16, metadata !3308, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 1, metadata !3309, metadata !DIExpression()), !dbg !3505
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3507
  call void @llvm.dbg.value(metadata ptr %17, metadata !3313, metadata !DIExpression()), !dbg !3508
  %18 = icmp eq ptr %17, null, !dbg !3510
  br i1 %18, label %19, label %20, !dbg !3511

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3512
  unreachable, !dbg !3512

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !808, metadata !DIExpression()), !dbg !3490
  store i64 %16, ptr %1, align 8, !dbg !3513, !tbaa !2592
  ret ptr %17, !dbg !3514
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !803 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !808, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %1, metadata !809, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %2, metadata !810, metadata !DIExpression()), !dbg !3515
  %4 = load i64, ptr %1, align 8, !dbg !3516, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %4, metadata !811, metadata !DIExpression()), !dbg !3515
  %5 = icmp eq ptr %0, null, !dbg !3517
  br i1 %5, label %6, label %13, !dbg !3518

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3519
  br i1 %7, label %8, label %20, !dbg !3520

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %9, metadata !811, metadata !DIExpression()), !dbg !3515
  %10 = icmp ugt i64 %2, 128, !dbg !3523
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %12, metadata !811, metadata !DIExpression()), !dbg !3515
  br label %20, !dbg !3525

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3526
  %15 = add nuw i64 %14, 1, !dbg !3526
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3526
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3526
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %18, metadata !811, metadata !DIExpression()), !dbg !3515
  br i1 %17, label %19, label %20, !dbg !3527

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3528
  unreachable, !dbg !3528

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3515
  call void @llvm.dbg.value(metadata i64 %21, metadata !811, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %21, metadata !3308, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3529
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3531
  call void @llvm.dbg.value(metadata ptr %22, metadata !3313, metadata !DIExpression()), !dbg !3532
  %23 = icmp eq ptr %22, null, !dbg !3534
  br i1 %23, label %24, label %25, !dbg !3535

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3536
  unreachable, !dbg !3536

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !808, metadata !DIExpression()), !dbg !3515
  store i64 %21, ptr %1, align 8, !dbg !3537, !tbaa !2592
  ret ptr %22, !dbg !3538
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !815 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !823, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %1, metadata !824, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %2, metadata !825, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %3, metadata !826, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %4, metadata !827, metadata !DIExpression()), !dbg !3539
  %6 = load i64, ptr %1, align 8, !dbg !3540, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %6, metadata !828, metadata !DIExpression()), !dbg !3539
  %7 = ashr i64 %6, 1, !dbg !3541
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3541
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3541
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %10, metadata !829, metadata !DIExpression()), !dbg !3539
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %11, metadata !829, metadata !DIExpression()), !dbg !3539
  %12 = icmp sgt i64 %3, -1, !dbg !3544
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3546
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %15, metadata !829, metadata !DIExpression()), !dbg !3539
  %16 = icmp slt i64 %4, 0, !dbg !3547
  br i1 %16, label %17, label %30, !dbg !3547

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3547
  br i1 %18, label %19, label %24, !dbg !3547

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3547
  %21 = udiv i64 9223372036854775807, %20, !dbg !3547
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3547
  br i1 %23, label %46, label %43, !dbg !3547

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3547
  br i1 %25, label %43, label %26, !dbg !3547

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3547
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3547
  %29 = icmp ult i64 %28, %15, !dbg !3547
  br i1 %29, label %46, label %43, !dbg !3547

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3547
  br i1 %31, label %43, label %32, !dbg !3547

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3547
  br i1 %33, label %34, label %40, !dbg !3547

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3547
  br i1 %35, label %43, label %36, !dbg !3547

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3547
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3547
  %39 = icmp ult i64 %38, %4, !dbg !3547
  br i1 %39, label %46, label %43, !dbg !3547

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3547
  br i1 %42, label %46, label %43, !dbg !3547

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !830, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3539
  %44 = mul i64 %15, %4, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %44, metadata !830, metadata !DIExpression()), !dbg !3539
  %45 = icmp slt i64 %44, 128, !dbg !3547
  br i1 %45, label %46, label %51, !dbg !3547

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !831, metadata !DIExpression()), !dbg !3539
  %48 = sdiv i64 %47, %4, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %48, metadata !829, metadata !DIExpression()), !dbg !3539
  %49 = srem i64 %47, %4, !dbg !3551
  %50 = sub nsw i64 %47, %49, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %50, metadata !830, metadata !DIExpression()), !dbg !3539
  br label %51, !dbg !3553

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3539
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3539
  call void @llvm.dbg.value(metadata i64 %53, metadata !830, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %52, metadata !829, metadata !DIExpression()), !dbg !3539
  %54 = icmp eq ptr %0, null, !dbg !3554
  br i1 %54, label %55, label %56, !dbg !3556

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3557, !tbaa !2592
  br label %56, !dbg !3558

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3559
  %58 = icmp slt i64 %57, %2, !dbg !3561
  br i1 %58, label %59, label %96, !dbg !3562

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3563
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3563
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %62, metadata !829, metadata !DIExpression()), !dbg !3539
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3564
  br i1 %65, label %95, label %66, !dbg !3564

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3565

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3565
  br i1 %68, label %69, label %74, !dbg !3565

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3565
  %71 = udiv i64 9223372036854775807, %70, !dbg !3565
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3565
  br i1 %73, label %95, label %93, !dbg !3565

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3565
  br i1 %75, label %93, label %76, !dbg !3565

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3565
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3565
  %79 = icmp ult i64 %78, %62, !dbg !3565
  br i1 %79, label %95, label %93, !dbg !3565

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3565
  br i1 %81, label %93, label %82, !dbg !3565

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3565
  br i1 %83, label %84, label %90, !dbg !3565

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3565
  br i1 %85, label %93, label %86, !dbg !3565

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3565
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3565
  %89 = icmp ult i64 %88, %4, !dbg !3565
  br i1 %89, label %95, label %93, !dbg !3565

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3565
  br i1 %92, label %95, label %93, !dbg !3565

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !830, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3539
  %94 = mul i64 %62, %4, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %94, metadata !830, metadata !DIExpression()), !dbg !3539
  br label %96, !dbg !3566

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #39, !dbg !3567
  unreachable, !dbg !3567

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3539
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3539
  call void @llvm.dbg.value(metadata i64 %98, metadata !830, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %97, metadata !829, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %98, metadata !3386, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %98, metadata !3392, metadata !DIExpression()), !dbg !3570
  %99 = icmp eq i64 %98, 0, !dbg !3572
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3572
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #43, !dbg !3573
  call void @llvm.dbg.value(metadata ptr %101, metadata !3313, metadata !DIExpression()), !dbg !3574
  %102 = icmp eq ptr %101, null, !dbg !3576
  br i1 %102, label %103, label %104, !dbg !3577

103:                                              ; preds = %96
  tail call void @xalloc_die() #39, !dbg !3578
  unreachable, !dbg !3578

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !823, metadata !DIExpression()), !dbg !3539
  store i64 %97, ptr %1, align 8, !dbg !3579, !tbaa !2592
  ret ptr %101, !dbg !3580
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3581 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 1, metadata !3588, metadata !DIExpression()), !dbg !3589
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3591
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3592
  %3 = icmp eq ptr %2, null, !dbg !3594
  br i1 %3, label %4, label %5, !dbg !3595

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3596
  unreachable, !dbg !3596

5:                                                ; preds = %1
  ret ptr %2, !dbg !3597
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3598 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3586 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3588, metadata !DIExpression()), !dbg !3599
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3600
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3601
  %4 = icmp eq ptr %3, null, !dbg !3603
  br i1 %4, label %5, label %6, !dbg !3604

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3605
  unreachable, !dbg !3605

6:                                                ; preds = %2
  ret ptr %3, !dbg !3606
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3607 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %0, metadata !3611, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 1, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 1, metadata !3620, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 1, metadata !3620, metadata !DIExpression()), !dbg !3621
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3623
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3624
  %3 = icmp eq ptr %2, null, !dbg !3626
  br i1 %3, label %4, label %5, !dbg !3627

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3628
  unreachable, !dbg !3628

5:                                                ; preds = %1
  ret ptr %2, !dbg !3629
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3612 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3611, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3631
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3634
  %4 = icmp eq ptr %3, null, !dbg !3636
  br i1 %4, label %5, label %6, !dbg !3637

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3638
  unreachable, !dbg !3638

6:                                                ; preds = %2
  ret ptr %3, !dbg !3639
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3640 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3647
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3650
  %4 = icmp eq ptr %3, null, !dbg !3652
  br i1 %4, label %5, label %6, !dbg !3653

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3654
  unreachable, !dbg !3654

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3655, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3665
  ret ptr %3, !dbg !3666
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3667 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %1, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %1, metadata !3351, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3676
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3678
  call void @llvm.dbg.value(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3679
  %4 = icmp eq ptr %3, null, !dbg !3681
  br i1 %4, label %5, label %6, !dbg !3682

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3683
  unreachable, !dbg !3683

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3655, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3686
  ret ptr %3, !dbg !3687
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3688 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3692, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %1, metadata !3693, metadata !DIExpression()), !dbg !3695
  %3 = add nsw i64 %1, 1, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %3, metadata !3351, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %3, metadata !3353, metadata !DIExpression()), !dbg !3699
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3701
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3702
  %5 = icmp eq ptr %4, null, !dbg !3704
  br i1 %5, label %6, label %7, !dbg !3705

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3706
  unreachable, !dbg !3706

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3694, metadata !DIExpression()), !dbg !3695
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3707
  store i8 0, ptr %8, align 1, !dbg !3708, !tbaa !975
  call void @llvm.dbg.value(metadata ptr %4, metadata !3655, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3711
  ret ptr %4, !dbg !3712
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3713 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3716
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3717
  %3 = add i64 %2, 1, !dbg !3718
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %3, metadata !3645, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %3, metadata !3337, metadata !DIExpression()), !dbg !3721
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3723
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3724
  %5 = icmp eq ptr %4, null, !dbg !3726
  br i1 %5, label %6, label %7, !dbg !3727

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3728
  unreachable, !dbg !3728

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3655, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %3, metadata !3662, metadata !DIExpression()), !dbg !3729
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3731
  ret ptr %4, !dbg !3732
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3733 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3738, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %1, metadata !3735, metadata !DIExpression()), !dbg !3739
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.139, ptr noundef nonnull @.str.2.140, i32 noundef 5) #37, !dbg !3738
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.141, ptr noundef %2) #37, !dbg !3738
  %3 = icmp eq i32 %1, 0, !dbg !3738
  tail call void @llvm.assume(i1 %3), !dbg !3738
  tail call void @abort() #39, !dbg !3740
  unreachable, !dbg !3740
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !3741 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3745, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %1, metadata !3746, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %2, metadata !3747, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %3, metadata !3748, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %4, metadata !3749, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %5, metadata !3750, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %6, metadata !3751, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %7, metadata !3752, metadata !DIExpression()), !dbg !3762
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #37, !dbg !3763
  call void @llvm.dbg.value(metadata ptr %9, metadata !3753, metadata !DIExpression(DW_OP_deref)), !dbg !3762
  %10 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #37, !dbg !3764
  call void @llvm.dbg.value(metadata i32 %10, metadata !3755, metadata !DIExpression()), !dbg !3762
  %11 = icmp eq i32 %10, 4, !dbg !3765
  br i1 %11, label %41, label %12, !dbg !3767

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !3768, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %13, metadata !3753, metadata !DIExpression()), !dbg !3762
  %14 = icmp slt i64 %13, %2, !dbg !3771
  br i1 %14, label %15, label %20, !dbg !3772

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !3754, metadata !DIExpression()), !dbg !3762
  %16 = and i32 %7, 4, !dbg !3773
  %17 = icmp eq i32 %16, 0, !dbg !3775
  %18 = select i1 %17, i32 75, i32 34, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %18, metadata !3757, metadata !DIExpression()), !dbg !3762
  %19 = icmp eq i32 %10, 0, !dbg !3776
  call void @llvm.dbg.value(metadata i32 undef, metadata !3755, metadata !DIExpression()), !dbg !3762
  br i1 %19, label %34, label %27, !dbg !3778

20:                                               ; preds = %12
  %21 = icmp sgt i64 %13, %3, !dbg !3779
  br i1 %21, label %22, label %27, !dbg !3781

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !3754, metadata !DIExpression()), !dbg !3762
  %23 = and i32 %7, 8, !dbg !3782
  %24 = icmp eq i32 %23, 0, !dbg !3784
  %25 = select i1 %24, i32 75, i32 34, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %25, metadata !3757, metadata !DIExpression()), !dbg !3762
  %26 = icmp eq i32 %10, 0, !dbg !3785
  call void @llvm.dbg.value(metadata i32 undef, metadata !3755, metadata !DIExpression()), !dbg !3762
  br i1 %26, label %34, label %27, !dbg !3787

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !3754, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %10, metadata !3755, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %28, metadata !3757, metadata !DIExpression()), !dbg !3762
  %30 = icmp eq i32 %10, 1, !dbg !3788
  %31 = select i1 %30, i32 %28, i32 0, !dbg !3789
  call void @llvm.dbg.value(metadata i32 %31, metadata !3758, metadata !DIExpression()), !dbg !3762
  %32 = icmp eq i32 %10, 0, !dbg !3790
  br i1 %32, label %46, label %33, !dbg !3791

33:                                               ; preds = %27
  br i1 %30, label %34, label %41, !dbg !3792

34:                                               ; preds = %22, %15, %33
  %35 = phi i64 [ %29, %33 ], [ %3, %22 ], [ %2, %15 ]
  %36 = phi i32 [ %28, %33 ], [ %25, %22 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3753, metadata !DIExpression()), !dbg !3762
  %37 = icmp slt i64 %13, 0, !dbg !3793
  %38 = select i1 %37, i32 1, i32 2, !dbg !3794
  %39 = and i32 %38, %7, !dbg !3795
  %40 = icmp eq i32 %39, 0, !dbg !3795
  br i1 %40, label %41, label %46, !dbg !3796

41:                                               ; preds = %8, %34, %33
  %42 = phi i32 [ %36, %34 ], [ 0, %33 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !3797
  %44 = select i1 %43, i32 1, i32 %6, !dbg !3797
  %45 = call ptr @quote(ptr noundef nonnull %0) #37, !dbg !3797
  call void (i32, i32, ptr, ...) @error(i32 noundef %44, i32 noundef %42, ptr noundef nonnull @.str.142, ptr noundef nonnull %5, ptr noundef %45) #37, !dbg !3797
  unreachable, !dbg !3797

46:                                               ; preds = %34, %27
  %47 = phi i32 [ %36, %34 ], [ %31, %27 ]
  %48 = phi i64 [ %35, %34 ], [ %29, %27 ]
  %49 = tail call ptr @__errno_location() #40, !dbg !3798
  store i32 %47, ptr %49, align 4, !dbg !3799, !tbaa !966
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #37, !dbg !3800
  ret i64 %48, !dbg !3801
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !3802 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3806, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 %1, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 %2, metadata !3808, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %3, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %4, metadata !3810, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 %5, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %0, metadata !3745, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 10, metadata !3746, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 %1, metadata !3747, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 %2, metadata !3748, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %3, metadata !3749, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %4, metadata !3750, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 %5, metadata !3751, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 0, metadata !3752, metadata !DIExpression()), !dbg !3813
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #37, !dbg !3815
  call void @llvm.dbg.value(metadata ptr %7, metadata !3753, metadata !DIExpression(DW_OP_deref)), !dbg !3813
  %8 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #37, !dbg !3816
  call void @llvm.dbg.value(metadata i32 %8, metadata !3755, metadata !DIExpression()), !dbg !3813
  %9 = icmp eq i32 %8, 4, !dbg !3817
  br i1 %9, label %22, label %10, !dbg !3818

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !3819, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %11, metadata !3753, metadata !DIExpression()), !dbg !3813
  %12 = icmp slt i64 %11, %1, !dbg !3820
  br i1 %12, label %13, label %15, !dbg !3821

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !3754, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 75, metadata !3757, metadata !DIExpression()), !dbg !3813
  %14 = icmp eq i32 %8, 0, !dbg !3822
  call void @llvm.dbg.value(metadata i32 undef, metadata !3755, metadata !DIExpression()), !dbg !3813
  br i1 %14, label %21, label %19, !dbg !3823

15:                                               ; preds = %10
  %16 = icmp sgt i64 %11, %2, !dbg !3824
  br i1 %16, label %17, label %19, !dbg !3825

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !3754, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 75, metadata !3757, metadata !DIExpression()), !dbg !3813
  %18 = icmp eq i32 %8, 0, !dbg !3826
  call void @llvm.dbg.value(metadata i32 undef, metadata !3755, metadata !DIExpression()), !dbg !3813
  br i1 %18, label %21, label %19, !dbg !3827

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !3754, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 %8, metadata !3755, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 75, metadata !3757, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 poison, metadata !3758, metadata !DIExpression()), !dbg !3813
  switch i32 %8, label %22 [
    i32 0, label %27
    i32 1, label %21
  ], !dbg !3828

21:                                               ; preds = %19, %17, %13
  call void @llvm.dbg.value(metadata i64 %11, metadata !3753, metadata !DIExpression()), !dbg !3813
  br label %22

22:                                               ; preds = %19, %21, %6
  %23 = phi i32 [ 75, %21 ], [ 0, %6 ], [ 0, %19 ]
  %24 = icmp eq i32 %5, 0, !dbg !3829
  %25 = select i1 %24, i32 1, i32 %5, !dbg !3829
  %26 = call ptr @quote(ptr noundef nonnull %0) #37, !dbg !3829
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %23, ptr noundef nonnull @.str.142, ptr noundef nonnull %4, ptr noundef %26) #37, !dbg !3829
  unreachable, !dbg !3829

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !3758, metadata !DIExpression()), !dbg !3813
  %28 = tail call ptr @__errno_location() #40, !dbg !3830
  store i32 0, ptr %28, align 4, !dbg !3831, !tbaa !966
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #37, !dbg !3832
  ret i64 %20, !dbg !3833
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3834 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3840, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %1, metadata !3841, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %2, metadata !3842, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %3, metadata !3843, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %4, metadata !3844, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #37, !dbg !3855
  %7 = icmp eq ptr %1, null, !dbg !3856
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %8, metadata !3846, metadata !DIExpression()), !dbg !3854
  %9 = tail call ptr @__errno_location() #40, !dbg !3857
  store i32 0, ptr %9, align 4, !dbg !3858, !tbaa !966
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #37, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %10, metadata !3847, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 0, metadata !3848, metadata !DIExpression()), !dbg !3854
  %11 = load ptr, ptr %8, align 8, !dbg !3860, !tbaa !895
  %12 = icmp eq ptr %11, %0, !dbg !3862
  br i1 %12, label %13, label %22, !dbg !3863

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3864
  br i1 %14, label %991, label %15, !dbg !3867

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3868, !tbaa !975
  %17 = icmp eq i8 %16, 0, !dbg !3868
  br i1 %17, label %991, label %18, !dbg !3869

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !3868
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #38, !dbg !3870
  %21 = icmp eq ptr %20, null, !dbg !3870
  br i1 %21, label %991, label %29, !dbg !3871

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3872, !tbaa !966
  switch i32 %23, label %991 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3874

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !3848, metadata !DIExpression()), !dbg !3854
  br label %25, !dbg !3875

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3854
  call void @llvm.dbg.value(metadata i32 %26, metadata !3848, metadata !DIExpression()), !dbg !3854
  %27 = icmp eq ptr %4, null, !dbg !3877
  br i1 %27, label %28, label %29, !dbg !3879

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !3847, metadata !DIExpression()), !dbg !3854
  store i64 %10, ptr %3, align 8, !dbg !3880, !tbaa !2592
  br label %991, !dbg !3882

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3883, !tbaa !975
  %33 = sext i8 %32 to i32, !dbg !3883
  %34 = icmp eq i8 %32, 0, !dbg !3884
  br i1 %34, label %988, label %35, !dbg !3885

35:                                               ; preds = %29
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %33) #38, !dbg !3886
  %37 = icmp eq ptr %36, null, !dbg !3886
  br i1 %37, label %38, label %40, !dbg !3888

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %10, metadata !3847, metadata !DIExpression()), !dbg !3854
  store i64 %31, ptr %3, align 8, !dbg !3889, !tbaa !2592
  %39 = or i32 %30, 2, !dbg !3891
  br label %991, !dbg !3892

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !3849, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !3852, metadata !DIExpression()), !dbg !3893
  switch i32 %33, label %54 [
    i32 69, label %41
    i32 71, label %41
    i32 103, label %41
    i32 107, label %41
    i32 75, label %41
    i32 77, label %41
    i32 109, label %41
    i32 80, label %41
    i32 81, label %41
    i32 82, label %41
    i32 84, label %41
    i32 116, label %41
    i32 89, label %41
    i32 90, label %41
  ], !dbg !3894

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #38, !dbg !3895
  %43 = icmp eq ptr %42, null, !dbg !3895
  br i1 %43, label %54, label %44, !dbg !3898

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3899
  %46 = load i8, ptr %45, align 1, !dbg !3899, !tbaa !975
  %47 = sext i8 %46 to i32, !dbg !3899
  switch i32 %47, label %54 [
    i32 105, label %48
    i32 66, label %53
    i32 68, label %53
  ], !dbg !3900

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3901
  %50 = load i8, ptr %49, align 1, !dbg !3901, !tbaa !975
  %51 = icmp eq i8 %50, 66, !dbg !3904
  %52 = select i1 %51, i64 3, i64 1, !dbg !3905
  br label %54, !dbg !3905

53:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !3849, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 2, metadata !3852, metadata !DIExpression()), !dbg !3893
  br label %54, !dbg !3906

54:                                               ; preds = %48, %41, %44, %53, %40
  %55 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %53 ], [ 1024, %41 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %53 ], [ 1, %41 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3852, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 poison, metadata !3849, metadata !DIExpression()), !dbg !3893
  switch i32 %33, label %986 [
    i32 98, label %69
    i32 66, label %77
    i32 99, label %977
    i32 69, label %67
    i32 71, label %181
    i32 103, label %181
    i32 107, label %231
    i32 75, label %231
    i32 77, label %244
    i32 109, label %244
    i32 80, label %65
    i32 81, label %63
    i32 82, label %61
    i32 84, label %662
    i32 116, label %662
    i32 119, label %728
    i32 89, label %59
    i32 90, label %57
  ], !dbg !3907

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 7, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 6, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3926
  %58 = icmp slt i64 %31, 0, !dbg !3928
  br i1 %58, label %865, label %871, !dbg !3928

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 8, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 7, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %60 = icmp slt i64 %31, 0, !dbg !3934
  br i1 %60, label %737, label %743, !dbg !3934

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 9, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 8, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %62 = icmp slt i64 %31, 0, !dbg !3939
  br i1 %62, label %518, label %524, !dbg !3939

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 10, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 9, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %64 = icmp slt i64 %31, 0, !dbg !3944
  br i1 %64, label %358, label %364, !dbg !3944

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 5, metadata !3915, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 4, metadata !3915, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3947
  %66 = icmp slt i64 %31, 0, !dbg !3949
  br i1 %66, label %278, label %284, !dbg !3949

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 6, metadata !3915, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 5, metadata !3915, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3952
  %68 = icmp slt i64 %31, 0, !dbg !3954
  br i1 %68, label %85, label %91, !dbg !3954

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 512, metadata !3924, metadata !DIExpression()), !dbg !3955
  %70 = icmp slt i64 %31, 0, !dbg !3957
  br i1 %70, label %71, label %73, !dbg !3957

71:                                               ; preds = %69
  %72 = icmp ult i64 %31, -18014398509481984, !dbg !3957
  br i1 %72, label %977, label %75, !dbg !3957

73:                                               ; preds = %69
  %74 = icmp ugt i64 %31, 18014398509481983, !dbg !3957
  br i1 %74, label %977, label %75, !dbg !3957

75:                                               ; preds = %71, %73
  %76 = shl nsw i64 %31, 9, !dbg !3957
  call void @llvm.dbg.value(metadata i64 %76, metadata !3925, metadata !DIExpression()), !dbg !3955
  br label %977, !dbg !3958

77:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 1024, metadata !3924, metadata !DIExpression()), !dbg !3959
  %78 = icmp slt i64 %31, 0, !dbg !3961
  br i1 %78, label %79, label %81, !dbg !3961

79:                                               ; preds = %77
  %80 = icmp ult i64 %31, -9007199254740992, !dbg !3961
  br i1 %80, label %977, label %83, !dbg !3961

81:                                               ; preds = %77
  %82 = icmp ugt i64 %31, 9007199254740991, !dbg !3961
  br i1 %82, label %977, label %83, !dbg !3961

83:                                               ; preds = %79, %81
  %84 = shl nsw i64 %31, 10, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %84, metadata !3925, metadata !DIExpression()), !dbg !3959
  br label %977, !dbg !3962

85:                                               ; preds = %67
  %86 = icmp eq i64 %31, -1, !dbg !3954
  br i1 %86, label %94, label %87, !dbg !3954

87:                                               ; preds = %85
  %88 = sub i64 0, %31, !dbg !3954
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3954
  %90 = icmp ult i64 %89, %55, !dbg !3954
  br i1 %90, label %102, label %94, !dbg !3954

91:                                               ; preds = %67
  %92 = udiv i64 9223372036854775807, %55, !dbg !3954
  %93 = icmp ult i64 %92, %31, !dbg !3954
  br i1 %93, label %97, label %94, !dbg !3954

94:                                               ; preds = %85, %87, %91
  %95 = mul i64 %31, %55, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %95, metadata !3925, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 4, metadata !3915, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3952
  %96 = icmp slt i64 %95, 0, !dbg !3954
  br i1 %96, label %102, label %97, !dbg !3954

97:                                               ; preds = %91, %94
  %98 = phi i32 [ 0, %94 ], [ 1, %91 ]
  %99 = phi i64 [ %95, %94 ], [ 9223372036854775807, %91 ]
  %100 = udiv i64 9223372036854775807, %55, !dbg !3954
  %101 = icmp ult i64 %100, %99, !dbg !3954
  br i1 %101, label %113, label %108, !dbg !3954

102:                                              ; preds = %87, %94
  %103 = phi i32 [ 0, %94 ], [ 1, %87 ]
  %104 = phi i64 [ %95, %94 ], [ -9223372036854775808, %87 ]
  %105 = sub i64 0, %104, !dbg !3954
  %106 = udiv i64 -9223372036854775808, %105, !dbg !3954
  %107 = icmp ult i64 %106, %55, !dbg !3954
  br i1 %107, label %118, label %108, !dbg !3954

108:                                              ; preds = %97, %102
  %109 = phi i32 [ %103, %102 ], [ %98, %97 ]
  %110 = phi i64 [ %104, %102 ], [ %99, %97 ]
  %111 = mul i64 %110, %55, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %111, metadata !3925, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %109, metadata !3908, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 3, metadata !3915, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3952
  %112 = icmp slt i64 %111, 0, !dbg !3954
  br i1 %112, label %118, label %113, !dbg !3954

113:                                              ; preds = %97, %108
  %114 = phi i32 [ %109, %108 ], [ 1, %97 ]
  %115 = phi i64 [ %111, %108 ], [ 9223372036854775807, %97 ]
  %116 = udiv i64 9223372036854775807, %55, !dbg !3954
  %117 = icmp ult i64 %116, %115, !dbg !3954
  br i1 %117, label %129, label %124, !dbg !3954

118:                                              ; preds = %102, %108
  %119 = phi i32 [ %109, %108 ], [ 1, %102 ]
  %120 = phi i64 [ %111, %108 ], [ -9223372036854775808, %102 ]
  %121 = sub i64 0, %120, !dbg !3954
  %122 = udiv i64 -9223372036854775808, %121, !dbg !3954
  %123 = icmp ult i64 %122, %55, !dbg !3954
  br i1 %123, label %134, label %124, !dbg !3954

124:                                              ; preds = %113, %118
  %125 = phi i32 [ %119, %118 ], [ %114, %113 ]
  %126 = phi i64 [ %120, %118 ], [ %115, %113 ]
  %127 = mul i64 %126, %55, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %127, metadata !3925, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %125, metadata !3908, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3952
  %128 = icmp slt i64 %127, 0, !dbg !3954
  br i1 %128, label %134, label %129, !dbg !3954

129:                                              ; preds = %113, %124
  %130 = phi i32 [ %125, %124 ], [ 1, %113 ]
  %131 = phi i64 [ %127, %124 ], [ 9223372036854775807, %113 ]
  %132 = udiv i64 9223372036854775807, %55, !dbg !3954
  %133 = icmp ult i64 %132, %131, !dbg !3954
  br i1 %133, label %145, label %140, !dbg !3954

134:                                              ; preds = %118, %124
  %135 = phi i32 [ %125, %124 ], [ 1, %118 ]
  %136 = phi i64 [ %127, %124 ], [ -9223372036854775808, %118 ]
  %137 = sub i64 0, %136, !dbg !3954
  %138 = udiv i64 -9223372036854775808, %137, !dbg !3954
  %139 = icmp ult i64 %138, %55, !dbg !3954
  br i1 %139, label %150, label %140, !dbg !3954

140:                                              ; preds = %129, %134
  %141 = phi i32 [ %135, %134 ], [ %130, %129 ]
  %142 = phi i64 [ %136, %134 ], [ %131, %129 ]
  %143 = mul i64 %142, %55, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %143, metadata !3925, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %141, metadata !3908, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3952
  %144 = icmp slt i64 %143, 0, !dbg !3954
  br i1 %144, label %150, label %145, !dbg !3954

145:                                              ; preds = %129, %140
  %146 = phi i32 [ %141, %140 ], [ 1, %129 ]
  %147 = phi i64 [ %143, %140 ], [ 9223372036854775807, %129 ]
  %148 = udiv i64 9223372036854775807, %55, !dbg !3954
  %149 = icmp ult i64 %148, %147, !dbg !3954
  br i1 %149, label %161, label %156, !dbg !3954

150:                                              ; preds = %134, %140
  %151 = phi i32 [ %141, %140 ], [ 1, %134 ]
  %152 = phi i64 [ %143, %140 ], [ -9223372036854775808, %134 ]
  %153 = sub i64 0, %152, !dbg !3954
  %154 = udiv i64 -9223372036854775808, %153, !dbg !3954
  %155 = icmp ult i64 %154, %55, !dbg !3954
  br i1 %155, label %166, label %156, !dbg !3954

156:                                              ; preds = %145, %150
  %157 = phi i32 [ %151, %150 ], [ %146, %145 ]
  %158 = phi i64 [ %152, %150 ], [ %147, %145 ]
  %159 = mul i64 %158, %55, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %159, metadata !3925, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %157, metadata !3908, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3952
  %160 = icmp slt i64 %159, 0, !dbg !3954
  br i1 %160, label %166, label %161, !dbg !3954

161:                                              ; preds = %145, %156
  %162 = phi i32 [ %157, %156 ], [ 1, %145 ]
  %163 = phi i64 [ %159, %156 ], [ 9223372036854775807, %145 ]
  %164 = udiv i64 9223372036854775807, %55, !dbg !3954
  %165 = icmp ult i64 %164, %163, !dbg !3954
  br i1 %165, label %176, label %172, !dbg !3954

166:                                              ; preds = %150, %156
  %167 = phi i32 [ %157, %156 ], [ 1, %150 ]
  %168 = phi i64 [ %159, %156 ], [ -9223372036854775808, %150 ]
  %169 = sub i64 0, %168, !dbg !3954
  %170 = udiv i64 -9223372036854775808, %169, !dbg !3954
  %171 = icmp ult i64 %170, %55, !dbg !3954
  br i1 %171, label %176, label %172, !dbg !3954

172:                                              ; preds = %166, %161
  %173 = phi i32 [ %167, %166 ], [ %162, %161 ]
  %174 = phi i64 [ %168, %166 ], [ %163, %161 ]
  %175 = mul i64 %174, %55, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %175, metadata !3925, metadata !DIExpression()), !dbg !3952
  br label %176, !dbg !3963

176:                                              ; preds = %172, %166, %161
  %177 = phi i32 [ %173, %172 ], [ %162, %161 ], [ %167, %166 ]
  %178 = phi i64 [ %175, %172 ], [ 9223372036854775807, %161 ], [ -9223372036854775808, %166 ], !dbg !3952
  %179 = phi i32 [ 0, %172 ], [ 1, %161 ], [ 1, %166 ], !dbg !3952
  %180 = or i32 %179, %177, !dbg !3964
  call void @llvm.dbg.value(metadata i32 %180, metadata !3908, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3950
  br label %977, !dbg !3965

181:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3913, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 poison, metadata !3914, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3968
  %182 = icmp slt i64 %31, 0, !dbg !3970
  br i1 %182, label %183, label %189, !dbg !3970

183:                                              ; preds = %181
  %184 = icmp eq i64 %31, -1, !dbg !3970
  br i1 %184, label %192, label %185, !dbg !3970

185:                                              ; preds = %183
  %186 = sub i64 0, %31, !dbg !3970
  %187 = udiv i64 -9223372036854775808, %186, !dbg !3970
  %188 = icmp ult i64 %187, %55, !dbg !3970
  br i1 %188, label %200, label %192, !dbg !3970

189:                                              ; preds = %181
  %190 = udiv i64 9223372036854775807, %55, !dbg !3970
  %191 = icmp ult i64 %190, %31, !dbg !3970
  br i1 %191, label %195, label %192, !dbg !3970

192:                                              ; preds = %183, %185, %189
  %193 = mul i64 %31, %55, !dbg !3970
  call void @llvm.dbg.value(metadata i64 %193, metadata !3925, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3968
  %194 = icmp slt i64 %193, 0, !dbg !3970
  br i1 %194, label %200, label %195, !dbg !3970

195:                                              ; preds = %189, %192
  %196 = phi i32 [ 0, %192 ], [ 1, %189 ]
  %197 = phi i64 [ %193, %192 ], [ 9223372036854775807, %189 ]
  %198 = udiv i64 9223372036854775807, %55, !dbg !3970
  %199 = icmp ult i64 %198, %197, !dbg !3970
  br i1 %199, label %211, label %206, !dbg !3970

200:                                              ; preds = %185, %192
  %201 = phi i32 [ 0, %192 ], [ 1, %185 ]
  %202 = phi i64 [ %193, %192 ], [ -9223372036854775808, %185 ]
  %203 = sub i64 0, %202, !dbg !3970
  %204 = udiv i64 -9223372036854775808, %203, !dbg !3970
  %205 = icmp ult i64 %204, %55, !dbg !3970
  br i1 %205, label %216, label %206, !dbg !3970

206:                                              ; preds = %195, %200
  %207 = phi i32 [ %201, %200 ], [ %196, %195 ]
  %208 = phi i64 [ %202, %200 ], [ %197, %195 ]
  %209 = mul i64 %208, %55, !dbg !3970
  call void @llvm.dbg.value(metadata i64 %209, metadata !3925, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 %207, metadata !3908, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3968
  %210 = icmp slt i64 %209, 0, !dbg !3970
  br i1 %210, label %216, label %211, !dbg !3970

211:                                              ; preds = %195, %206
  %212 = phi i32 [ %207, %206 ], [ 1, %195 ]
  %213 = phi i64 [ %209, %206 ], [ 9223372036854775807, %195 ]
  %214 = udiv i64 9223372036854775807, %55, !dbg !3970
  %215 = icmp ult i64 %214, %213, !dbg !3970
  br i1 %215, label %226, label %222, !dbg !3970

216:                                              ; preds = %200, %206
  %217 = phi i32 [ %207, %206 ], [ 1, %200 ]
  %218 = phi i64 [ %209, %206 ], [ -9223372036854775808, %200 ]
  %219 = sub i64 0, %218, !dbg !3970
  %220 = udiv i64 -9223372036854775808, %219, !dbg !3970
  %221 = icmp ult i64 %220, %55, !dbg !3970
  br i1 %221, label %226, label %222, !dbg !3970

222:                                              ; preds = %216, %211
  %223 = phi i32 [ %217, %216 ], [ %212, %211 ]
  %224 = phi i64 [ %218, %216 ], [ %213, %211 ]
  %225 = mul i64 %224, %55, !dbg !3970
  call void @llvm.dbg.value(metadata i64 %225, metadata !3925, metadata !DIExpression()), !dbg !3968
  br label %226, !dbg !3971

226:                                              ; preds = %222, %216, %211
  %227 = phi i32 [ %223, %222 ], [ %212, %211 ], [ %217, %216 ]
  %228 = phi i64 [ %225, %222 ], [ 9223372036854775807, %211 ], [ -9223372036854775808, %216 ], !dbg !3968
  %229 = phi i32 [ 0, %222 ], [ 1, %211 ], [ 1, %216 ], !dbg !3968
  %230 = or i32 %229, %227, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %230, metadata !3908, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3966
  br label %977, !dbg !3965

231:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3913, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 poison, metadata !3914, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3975
  %232 = icmp slt i64 %31, 0, !dbg !3977
  br i1 %232, label %233, label %239, !dbg !3977

233:                                              ; preds = %231
  %234 = icmp eq i64 %31, -1, !dbg !3977
  br i1 %234, label %242, label %235, !dbg !3977

235:                                              ; preds = %233
  %236 = sub i64 0, %31, !dbg !3977
  %237 = udiv i64 -9223372036854775808, %236, !dbg !3977
  %238 = icmp ult i64 %237, %55, !dbg !3977
  br i1 %238, label %977, label %242, !dbg !3977

239:                                              ; preds = %231
  %240 = udiv i64 9223372036854775807, %55, !dbg !3977
  %241 = icmp ult i64 %240, %31, !dbg !3977
  br i1 %241, label %977, label %242, !dbg !3977

242:                                              ; preds = %239, %235, %233
  %243 = mul i64 %31, %55, !dbg !3977
  call void @llvm.dbg.value(metadata i64 %243, metadata !3925, metadata !DIExpression()), !dbg !3975
  br label %977, !dbg !3978

244:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3913, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 poison, metadata !3914, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3981
  %245 = icmp slt i64 %31, 0, !dbg !3983
  br i1 %245, label %246, label %252, !dbg !3983

246:                                              ; preds = %244
  %247 = icmp eq i64 %31, -1, !dbg !3983
  br i1 %247, label %255, label %248, !dbg !3983

248:                                              ; preds = %246
  %249 = sub i64 0, %31, !dbg !3983
  %250 = udiv i64 -9223372036854775808, %249, !dbg !3983
  %251 = icmp ult i64 %250, %55, !dbg !3983
  br i1 %251, label %263, label %255, !dbg !3983

252:                                              ; preds = %244
  %253 = udiv i64 9223372036854775807, %55, !dbg !3983
  %254 = icmp ult i64 %253, %31, !dbg !3983
  br i1 %254, label %258, label %255, !dbg !3983

255:                                              ; preds = %246, %248, %252
  %256 = mul i64 %31, %55, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %256, metadata !3925, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3981
  %257 = icmp slt i64 %256, 0, !dbg !3983
  br i1 %257, label %263, label %258, !dbg !3983

258:                                              ; preds = %252, %255
  %259 = phi i32 [ 0, %255 ], [ 1, %252 ]
  %260 = phi i64 [ %256, %255 ], [ 9223372036854775807, %252 ]
  %261 = udiv i64 9223372036854775807, %55, !dbg !3983
  %262 = icmp ult i64 %261, %260, !dbg !3983
  br i1 %262, label %273, label %269, !dbg !3983

263:                                              ; preds = %248, %255
  %264 = phi i32 [ 0, %255 ], [ 1, %248 ]
  %265 = phi i64 [ %256, %255 ], [ -9223372036854775808, %248 ]
  %266 = sub i64 0, %265, !dbg !3983
  %267 = udiv i64 -9223372036854775808, %266, !dbg !3983
  %268 = icmp ult i64 %267, %55, !dbg !3983
  br i1 %268, label %273, label %269, !dbg !3983

269:                                              ; preds = %263, %258
  %270 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %271 = phi i64 [ %265, %263 ], [ %260, %258 ]
  %272 = mul i64 %271, %55, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %272, metadata !3925, metadata !DIExpression()), !dbg !3981
  br label %273, !dbg !3984

273:                                              ; preds = %269, %263, %258
  %274 = phi i32 [ %270, %269 ], [ %259, %258 ], [ %264, %263 ]
  %275 = phi i64 [ %272, %269 ], [ 9223372036854775807, %258 ], [ -9223372036854775808, %263 ], !dbg !3981
  %276 = phi i32 [ 0, %269 ], [ 1, %258 ], [ 1, %263 ], !dbg !3981
  %277 = or i32 %276, %274, !dbg !3985
  call void @llvm.dbg.value(metadata i32 %277, metadata !3908, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3979
  br label %977, !dbg !3965

278:                                              ; preds = %65
  %279 = icmp eq i64 %31, -1, !dbg !3949
  br i1 %279, label %287, label %280, !dbg !3949

280:                                              ; preds = %278
  %281 = sub i64 0, %31, !dbg !3949
  %282 = udiv i64 -9223372036854775808, %281, !dbg !3949
  %283 = icmp ult i64 %282, %55, !dbg !3949
  br i1 %283, label %295, label %287, !dbg !3949

284:                                              ; preds = %65
  %285 = udiv i64 9223372036854775807, %55, !dbg !3949
  %286 = icmp ult i64 %285, %31, !dbg !3949
  br i1 %286, label %290, label %287, !dbg !3949

287:                                              ; preds = %278, %280, %284
  %288 = mul i64 %31, %55, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %288, metadata !3925, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 3, metadata !3915, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3947
  %289 = icmp slt i64 %288, 0, !dbg !3949
  br i1 %289, label %295, label %290, !dbg !3949

290:                                              ; preds = %284, %287
  %291 = phi i32 [ 0, %287 ], [ 1, %284 ]
  %292 = phi i64 [ %288, %287 ], [ 9223372036854775807, %284 ]
  %293 = udiv i64 9223372036854775807, %55, !dbg !3949
  %294 = icmp ult i64 %293, %292, !dbg !3949
  br i1 %294, label %306, label %301, !dbg !3949

295:                                              ; preds = %280, %287
  %296 = phi i32 [ 0, %287 ], [ 1, %280 ]
  %297 = phi i64 [ %288, %287 ], [ -9223372036854775808, %280 ]
  %298 = sub i64 0, %297, !dbg !3949
  %299 = udiv i64 -9223372036854775808, %298, !dbg !3949
  %300 = icmp ult i64 %299, %55, !dbg !3949
  br i1 %300, label %311, label %301, !dbg !3949

301:                                              ; preds = %290, %295
  %302 = phi i32 [ %296, %295 ], [ %291, %290 ]
  %303 = phi i64 [ %297, %295 ], [ %292, %290 ]
  %304 = mul i64 %303, %55, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %304, metadata !3925, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %302, metadata !3908, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3947
  %305 = icmp slt i64 %304, 0, !dbg !3949
  br i1 %305, label %311, label %306, !dbg !3949

306:                                              ; preds = %290, %301
  %307 = phi i32 [ %302, %301 ], [ 1, %290 ]
  %308 = phi i64 [ %304, %301 ], [ 9223372036854775807, %290 ]
  %309 = udiv i64 9223372036854775807, %55, !dbg !3949
  %310 = icmp ult i64 %309, %308, !dbg !3949
  br i1 %310, label %322, label %317, !dbg !3949

311:                                              ; preds = %295, %301
  %312 = phi i32 [ %302, %301 ], [ 1, %295 ]
  %313 = phi i64 [ %304, %301 ], [ -9223372036854775808, %295 ]
  %314 = sub i64 0, %313, !dbg !3949
  %315 = udiv i64 -9223372036854775808, %314, !dbg !3949
  %316 = icmp ult i64 %315, %55, !dbg !3949
  br i1 %316, label %327, label %317, !dbg !3949

317:                                              ; preds = %306, %311
  %318 = phi i32 [ %312, %311 ], [ %307, %306 ]
  %319 = phi i64 [ %313, %311 ], [ %308, %306 ]
  %320 = mul i64 %319, %55, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %320, metadata !3925, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %318, metadata !3908, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3947
  %321 = icmp slt i64 %320, 0, !dbg !3949
  br i1 %321, label %327, label %322, !dbg !3949

322:                                              ; preds = %306, %317
  %323 = phi i32 [ %318, %317 ], [ 1, %306 ]
  %324 = phi i64 [ %320, %317 ], [ 9223372036854775807, %306 ]
  %325 = udiv i64 9223372036854775807, %55, !dbg !3949
  %326 = icmp ult i64 %325, %324, !dbg !3949
  br i1 %326, label %338, label %333, !dbg !3949

327:                                              ; preds = %311, %317
  %328 = phi i32 [ %318, %317 ], [ 1, %311 ]
  %329 = phi i64 [ %320, %317 ], [ -9223372036854775808, %311 ]
  %330 = sub i64 0, %329, !dbg !3949
  %331 = udiv i64 -9223372036854775808, %330, !dbg !3949
  %332 = icmp ult i64 %331, %55, !dbg !3949
  br i1 %332, label %343, label %333, !dbg !3949

333:                                              ; preds = %322, %327
  %334 = phi i32 [ %328, %327 ], [ %323, %322 ]
  %335 = phi i64 [ %329, %327 ], [ %324, %322 ]
  %336 = mul i64 %335, %55, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %336, metadata !3925, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %334, metadata !3908, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3947
  %337 = icmp slt i64 %336, 0, !dbg !3949
  br i1 %337, label %343, label %338, !dbg !3949

338:                                              ; preds = %322, %333
  %339 = phi i32 [ %334, %333 ], [ 1, %322 ]
  %340 = phi i64 [ %336, %333 ], [ 9223372036854775807, %322 ]
  %341 = udiv i64 9223372036854775807, %55, !dbg !3949
  %342 = icmp ult i64 %341, %340, !dbg !3949
  br i1 %342, label %353, label %349, !dbg !3949

343:                                              ; preds = %327, %333
  %344 = phi i32 [ %334, %333 ], [ 1, %327 ]
  %345 = phi i64 [ %336, %333 ], [ -9223372036854775808, %327 ]
  %346 = sub i64 0, %345, !dbg !3949
  %347 = udiv i64 -9223372036854775808, %346, !dbg !3949
  %348 = icmp ult i64 %347, %55, !dbg !3949
  br i1 %348, label %353, label %349, !dbg !3949

349:                                              ; preds = %343, %338
  %350 = phi i32 [ %344, %343 ], [ %339, %338 ]
  %351 = phi i64 [ %345, %343 ], [ %340, %338 ]
  %352 = mul i64 %351, %55, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %352, metadata !3925, metadata !DIExpression()), !dbg !3947
  br label %353, !dbg !3986

353:                                              ; preds = %349, %343, %338
  %354 = phi i32 [ %350, %349 ], [ %339, %338 ], [ %344, %343 ]
  %355 = phi i64 [ %352, %349 ], [ 9223372036854775807, %338 ], [ -9223372036854775808, %343 ], !dbg !3947
  %356 = phi i32 [ 0, %349 ], [ 1, %338 ], [ 1, %343 ], !dbg !3947
  %357 = or i32 %356, %354, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %357, metadata !3908, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3945
  br label %977, !dbg !3965

358:                                              ; preds = %63
  %359 = icmp eq i64 %31, -1, !dbg !3944
  br i1 %359, label %367, label %360, !dbg !3944

360:                                              ; preds = %358
  %361 = sub i64 0, %31, !dbg !3944
  %362 = udiv i64 -9223372036854775808, %361, !dbg !3944
  %363 = icmp ult i64 %362, %55, !dbg !3944
  br i1 %363, label %375, label %367, !dbg !3944

364:                                              ; preds = %63
  %365 = udiv i64 9223372036854775807, %55, !dbg !3944
  %366 = icmp ult i64 %365, %31, !dbg !3944
  br i1 %366, label %370, label %367, !dbg !3944

367:                                              ; preds = %358, %360, %364
  %368 = mul i64 %31, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %368, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 8, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %369 = icmp slt i64 %368, 0, !dbg !3944
  br i1 %369, label %375, label %370, !dbg !3944

370:                                              ; preds = %364, %367
  %371 = phi i32 [ 0, %367 ], [ 1, %364 ]
  %372 = phi i64 [ %368, %367 ], [ 9223372036854775807, %364 ]
  %373 = udiv i64 9223372036854775807, %55, !dbg !3944
  %374 = icmp ult i64 %373, %372, !dbg !3944
  br i1 %374, label %386, label %381, !dbg !3944

375:                                              ; preds = %360, %367
  %376 = phi i32 [ 0, %367 ], [ 1, %360 ]
  %377 = phi i64 [ %368, %367 ], [ -9223372036854775808, %360 ]
  %378 = sub i64 0, %377, !dbg !3944
  %379 = udiv i64 -9223372036854775808, %378, !dbg !3944
  %380 = icmp ult i64 %379, %55, !dbg !3944
  br i1 %380, label %391, label %381, !dbg !3944

381:                                              ; preds = %370, %375
  %382 = phi i32 [ %376, %375 ], [ %371, %370 ]
  %383 = phi i64 [ %377, %375 ], [ %372, %370 ]
  %384 = mul i64 %383, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %384, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %382, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 7, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %385 = icmp slt i64 %384, 0, !dbg !3944
  br i1 %385, label %391, label %386, !dbg !3944

386:                                              ; preds = %370, %381
  %387 = phi i32 [ %382, %381 ], [ 1, %370 ]
  %388 = phi i64 [ %384, %381 ], [ 9223372036854775807, %370 ]
  %389 = udiv i64 9223372036854775807, %55, !dbg !3944
  %390 = icmp ult i64 %389, %388, !dbg !3944
  br i1 %390, label %402, label %397, !dbg !3944

391:                                              ; preds = %375, %381
  %392 = phi i32 [ %382, %381 ], [ 1, %375 ]
  %393 = phi i64 [ %384, %381 ], [ -9223372036854775808, %375 ]
  %394 = sub i64 0, %393, !dbg !3944
  %395 = udiv i64 -9223372036854775808, %394, !dbg !3944
  %396 = icmp ult i64 %395, %55, !dbg !3944
  br i1 %396, label %407, label %397, !dbg !3944

397:                                              ; preds = %386, %391
  %398 = phi i32 [ %392, %391 ], [ %387, %386 ]
  %399 = phi i64 [ %393, %391 ], [ %388, %386 ]
  %400 = mul i64 %399, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %400, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %398, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 6, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %401 = icmp slt i64 %400, 0, !dbg !3944
  br i1 %401, label %407, label %402, !dbg !3944

402:                                              ; preds = %386, %397
  %403 = phi i32 [ %398, %397 ], [ 1, %386 ]
  %404 = phi i64 [ %400, %397 ], [ 9223372036854775807, %386 ]
  %405 = udiv i64 9223372036854775807, %55, !dbg !3944
  %406 = icmp ult i64 %405, %404, !dbg !3944
  br i1 %406, label %418, label %413, !dbg !3944

407:                                              ; preds = %391, %397
  %408 = phi i32 [ %398, %397 ], [ 1, %391 ]
  %409 = phi i64 [ %400, %397 ], [ -9223372036854775808, %391 ]
  %410 = sub i64 0, %409, !dbg !3944
  %411 = udiv i64 -9223372036854775808, %410, !dbg !3944
  %412 = icmp ult i64 %411, %55, !dbg !3944
  br i1 %412, label %423, label %413, !dbg !3944

413:                                              ; preds = %402, %407
  %414 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %415 = phi i64 [ %409, %407 ], [ %404, %402 ]
  %416 = mul i64 %415, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %416, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %414, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 5, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %417 = icmp slt i64 %416, 0, !dbg !3944
  br i1 %417, label %423, label %418, !dbg !3944

418:                                              ; preds = %402, %413
  %419 = phi i32 [ %414, %413 ], [ 1, %402 ]
  %420 = phi i64 [ %416, %413 ], [ 9223372036854775807, %402 ]
  %421 = udiv i64 9223372036854775807, %55, !dbg !3944
  %422 = icmp ult i64 %421, %420, !dbg !3944
  br i1 %422, label %434, label %429, !dbg !3944

423:                                              ; preds = %407, %413
  %424 = phi i32 [ %414, %413 ], [ 1, %407 ]
  %425 = phi i64 [ %416, %413 ], [ -9223372036854775808, %407 ]
  %426 = sub i64 0, %425, !dbg !3944
  %427 = udiv i64 -9223372036854775808, %426, !dbg !3944
  %428 = icmp ult i64 %427, %55, !dbg !3944
  br i1 %428, label %439, label %429, !dbg !3944

429:                                              ; preds = %418, %423
  %430 = phi i32 [ %424, %423 ], [ %419, %418 ]
  %431 = phi i64 [ %425, %423 ], [ %420, %418 ]
  %432 = mul i64 %431, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %432, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %430, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 4, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %433 = icmp slt i64 %432, 0, !dbg !3944
  br i1 %433, label %439, label %434, !dbg !3944

434:                                              ; preds = %418, %429
  %435 = phi i32 [ %430, %429 ], [ 1, %418 ]
  %436 = phi i64 [ %432, %429 ], [ 9223372036854775807, %418 ]
  %437 = udiv i64 9223372036854775807, %55, !dbg !3944
  %438 = icmp ult i64 %437, %436, !dbg !3944
  br i1 %438, label %450, label %445, !dbg !3944

439:                                              ; preds = %423, %429
  %440 = phi i32 [ %430, %429 ], [ 1, %423 ]
  %441 = phi i64 [ %432, %429 ], [ -9223372036854775808, %423 ]
  %442 = sub i64 0, %441, !dbg !3944
  %443 = udiv i64 -9223372036854775808, %442, !dbg !3944
  %444 = icmp ult i64 %443, %55, !dbg !3944
  br i1 %444, label %455, label %445, !dbg !3944

445:                                              ; preds = %434, %439
  %446 = phi i32 [ %440, %439 ], [ %435, %434 ]
  %447 = phi i64 [ %441, %439 ], [ %436, %434 ]
  %448 = mul i64 %447, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %448, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %446, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 3, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %449 = icmp slt i64 %448, 0, !dbg !3944
  br i1 %449, label %455, label %450, !dbg !3944

450:                                              ; preds = %434, %445
  %451 = phi i32 [ %446, %445 ], [ 1, %434 ]
  %452 = phi i64 [ %448, %445 ], [ 9223372036854775807, %434 ]
  %453 = udiv i64 9223372036854775807, %55, !dbg !3944
  %454 = icmp ult i64 %453, %452, !dbg !3944
  br i1 %454, label %466, label %461, !dbg !3944

455:                                              ; preds = %439, %445
  %456 = phi i32 [ %446, %445 ], [ 1, %439 ]
  %457 = phi i64 [ %448, %445 ], [ -9223372036854775808, %439 ]
  %458 = sub i64 0, %457, !dbg !3944
  %459 = udiv i64 -9223372036854775808, %458, !dbg !3944
  %460 = icmp ult i64 %459, %55, !dbg !3944
  br i1 %460, label %471, label %461, !dbg !3944

461:                                              ; preds = %450, %455
  %462 = phi i32 [ %456, %455 ], [ %451, %450 ]
  %463 = phi i64 [ %457, %455 ], [ %452, %450 ]
  %464 = mul i64 %463, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %464, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %462, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %465 = icmp slt i64 %464, 0, !dbg !3944
  br i1 %465, label %471, label %466, !dbg !3944

466:                                              ; preds = %450, %461
  %467 = phi i32 [ %462, %461 ], [ 1, %450 ]
  %468 = phi i64 [ %464, %461 ], [ 9223372036854775807, %450 ]
  %469 = udiv i64 9223372036854775807, %55, !dbg !3944
  %470 = icmp ult i64 %469, %468, !dbg !3944
  br i1 %470, label %482, label %477, !dbg !3944

471:                                              ; preds = %455, %461
  %472 = phi i32 [ %462, %461 ], [ 1, %455 ]
  %473 = phi i64 [ %464, %461 ], [ -9223372036854775808, %455 ]
  %474 = sub i64 0, %473, !dbg !3944
  %475 = udiv i64 -9223372036854775808, %474, !dbg !3944
  %476 = icmp ult i64 %475, %55, !dbg !3944
  br i1 %476, label %487, label %477, !dbg !3944

477:                                              ; preds = %466, %471
  %478 = phi i32 [ %472, %471 ], [ %467, %466 ]
  %479 = phi i64 [ %473, %471 ], [ %468, %466 ]
  %480 = mul i64 %479, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %480, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %478, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %481 = icmp slt i64 %480, 0, !dbg !3944
  br i1 %481, label %487, label %482, !dbg !3944

482:                                              ; preds = %466, %477
  %483 = phi i32 [ %478, %477 ], [ 1, %466 ]
  %484 = phi i64 [ %480, %477 ], [ 9223372036854775807, %466 ]
  %485 = udiv i64 9223372036854775807, %55, !dbg !3944
  %486 = icmp ult i64 %485, %484, !dbg !3944
  br i1 %486, label %498, label %493, !dbg !3944

487:                                              ; preds = %471, %477
  %488 = phi i32 [ %478, %477 ], [ 1, %471 ]
  %489 = phi i64 [ %480, %477 ], [ -9223372036854775808, %471 ]
  %490 = sub i64 0, %489, !dbg !3944
  %491 = udiv i64 -9223372036854775808, %490, !dbg !3944
  %492 = icmp ult i64 %491, %55, !dbg !3944
  br i1 %492, label %503, label %493, !dbg !3944

493:                                              ; preds = %482, %487
  %494 = phi i32 [ %488, %487 ], [ %483, %482 ]
  %495 = phi i64 [ %489, %487 ], [ %484, %482 ]
  %496 = mul i64 %495, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %496, metadata !3925, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %494, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3942
  %497 = icmp slt i64 %496, 0, !dbg !3944
  br i1 %497, label %503, label %498, !dbg !3944

498:                                              ; preds = %482, %493
  %499 = phi i32 [ %494, %493 ], [ 1, %482 ]
  %500 = phi i64 [ %496, %493 ], [ 9223372036854775807, %482 ]
  %501 = udiv i64 9223372036854775807, %55, !dbg !3944
  %502 = icmp ult i64 %501, %500, !dbg !3944
  br i1 %502, label %513, label %509, !dbg !3944

503:                                              ; preds = %487, %493
  %504 = phi i32 [ %494, %493 ], [ 1, %487 ]
  %505 = phi i64 [ %496, %493 ], [ -9223372036854775808, %487 ]
  %506 = sub i64 0, %505, !dbg !3944
  %507 = udiv i64 -9223372036854775808, %506, !dbg !3944
  %508 = icmp ult i64 %507, %55, !dbg !3944
  br i1 %508, label %513, label %509, !dbg !3944

509:                                              ; preds = %503, %498
  %510 = phi i32 [ %504, %503 ], [ %499, %498 ]
  %511 = phi i64 [ %505, %503 ], [ %500, %498 ]
  %512 = mul i64 %511, %55, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %512, metadata !3925, metadata !DIExpression()), !dbg !3942
  br label %513, !dbg !3988

513:                                              ; preds = %509, %503, %498
  %514 = phi i32 [ %510, %509 ], [ %499, %498 ], [ %504, %503 ]
  %515 = phi i64 [ %512, %509 ], [ 9223372036854775807, %498 ], [ -9223372036854775808, %503 ], !dbg !3942
  %516 = phi i32 [ 0, %509 ], [ 1, %498 ], [ 1, %503 ], !dbg !3942
  %517 = or i32 %516, %514, !dbg !3989
  call void @llvm.dbg.value(metadata i32 %517, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3940
  br label %977, !dbg !3965

518:                                              ; preds = %61
  %519 = icmp eq i64 %31, -1, !dbg !3939
  br i1 %519, label %527, label %520, !dbg !3939

520:                                              ; preds = %518
  %521 = sub i64 0, %31, !dbg !3939
  %522 = udiv i64 -9223372036854775808, %521, !dbg !3939
  %523 = icmp ult i64 %522, %55, !dbg !3939
  br i1 %523, label %535, label %527, !dbg !3939

524:                                              ; preds = %61
  %525 = udiv i64 9223372036854775807, %55, !dbg !3939
  %526 = icmp ult i64 %525, %31, !dbg !3939
  br i1 %526, label %530, label %527, !dbg !3939

527:                                              ; preds = %518, %520, %524
  %528 = mul i64 %31, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %528, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 7, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %529 = icmp slt i64 %528, 0, !dbg !3939
  br i1 %529, label %535, label %530, !dbg !3939

530:                                              ; preds = %524, %527
  %531 = phi i32 [ 0, %527 ], [ 1, %524 ]
  %532 = phi i64 [ %528, %527 ], [ 9223372036854775807, %524 ]
  %533 = udiv i64 9223372036854775807, %55, !dbg !3939
  %534 = icmp ult i64 %533, %532, !dbg !3939
  br i1 %534, label %546, label %541, !dbg !3939

535:                                              ; preds = %520, %527
  %536 = phi i32 [ 0, %527 ], [ 1, %520 ]
  %537 = phi i64 [ %528, %527 ], [ -9223372036854775808, %520 ]
  %538 = sub i64 0, %537, !dbg !3939
  %539 = udiv i64 -9223372036854775808, %538, !dbg !3939
  %540 = icmp ult i64 %539, %55, !dbg !3939
  br i1 %540, label %551, label %541, !dbg !3939

541:                                              ; preds = %530, %535
  %542 = phi i32 [ %536, %535 ], [ %531, %530 ]
  %543 = phi i64 [ %537, %535 ], [ %532, %530 ]
  %544 = mul i64 %543, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %544, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %542, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 6, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %545 = icmp slt i64 %544, 0, !dbg !3939
  br i1 %545, label %551, label %546, !dbg !3939

546:                                              ; preds = %530, %541
  %547 = phi i32 [ %542, %541 ], [ 1, %530 ]
  %548 = phi i64 [ %544, %541 ], [ 9223372036854775807, %530 ]
  %549 = udiv i64 9223372036854775807, %55, !dbg !3939
  %550 = icmp ult i64 %549, %548, !dbg !3939
  br i1 %550, label %562, label %557, !dbg !3939

551:                                              ; preds = %535, %541
  %552 = phi i32 [ %542, %541 ], [ 1, %535 ]
  %553 = phi i64 [ %544, %541 ], [ -9223372036854775808, %535 ]
  %554 = sub i64 0, %553, !dbg !3939
  %555 = udiv i64 -9223372036854775808, %554, !dbg !3939
  %556 = icmp ult i64 %555, %55, !dbg !3939
  br i1 %556, label %567, label %557, !dbg !3939

557:                                              ; preds = %546, %551
  %558 = phi i32 [ %552, %551 ], [ %547, %546 ]
  %559 = phi i64 [ %553, %551 ], [ %548, %546 ]
  %560 = mul i64 %559, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %560, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %558, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 5, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %561 = icmp slt i64 %560, 0, !dbg !3939
  br i1 %561, label %567, label %562, !dbg !3939

562:                                              ; preds = %546, %557
  %563 = phi i32 [ %558, %557 ], [ 1, %546 ]
  %564 = phi i64 [ %560, %557 ], [ 9223372036854775807, %546 ]
  %565 = udiv i64 9223372036854775807, %55, !dbg !3939
  %566 = icmp ult i64 %565, %564, !dbg !3939
  br i1 %566, label %578, label %573, !dbg !3939

567:                                              ; preds = %551, %557
  %568 = phi i32 [ %558, %557 ], [ 1, %551 ]
  %569 = phi i64 [ %560, %557 ], [ -9223372036854775808, %551 ]
  %570 = sub i64 0, %569, !dbg !3939
  %571 = udiv i64 -9223372036854775808, %570, !dbg !3939
  %572 = icmp ult i64 %571, %55, !dbg !3939
  br i1 %572, label %583, label %573, !dbg !3939

573:                                              ; preds = %562, %567
  %574 = phi i32 [ %568, %567 ], [ %563, %562 ]
  %575 = phi i64 [ %569, %567 ], [ %564, %562 ]
  %576 = mul i64 %575, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %576, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %574, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 4, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %577 = icmp slt i64 %576, 0, !dbg !3939
  br i1 %577, label %583, label %578, !dbg !3939

578:                                              ; preds = %562, %573
  %579 = phi i32 [ %574, %573 ], [ 1, %562 ]
  %580 = phi i64 [ %576, %573 ], [ 9223372036854775807, %562 ]
  %581 = udiv i64 9223372036854775807, %55, !dbg !3939
  %582 = icmp ult i64 %581, %580, !dbg !3939
  br i1 %582, label %594, label %589, !dbg !3939

583:                                              ; preds = %567, %573
  %584 = phi i32 [ %574, %573 ], [ 1, %567 ]
  %585 = phi i64 [ %576, %573 ], [ -9223372036854775808, %567 ]
  %586 = sub i64 0, %585, !dbg !3939
  %587 = udiv i64 -9223372036854775808, %586, !dbg !3939
  %588 = icmp ult i64 %587, %55, !dbg !3939
  br i1 %588, label %599, label %589, !dbg !3939

589:                                              ; preds = %578, %583
  %590 = phi i32 [ %584, %583 ], [ %579, %578 ]
  %591 = phi i64 [ %585, %583 ], [ %580, %578 ]
  %592 = mul i64 %591, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %592, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %590, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 3, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %593 = icmp slt i64 %592, 0, !dbg !3939
  br i1 %593, label %599, label %594, !dbg !3939

594:                                              ; preds = %578, %589
  %595 = phi i32 [ %590, %589 ], [ 1, %578 ]
  %596 = phi i64 [ %592, %589 ], [ 9223372036854775807, %578 ]
  %597 = udiv i64 9223372036854775807, %55, !dbg !3939
  %598 = icmp ult i64 %597, %596, !dbg !3939
  br i1 %598, label %610, label %605, !dbg !3939

599:                                              ; preds = %583, %589
  %600 = phi i32 [ %590, %589 ], [ 1, %583 ]
  %601 = phi i64 [ %592, %589 ], [ -9223372036854775808, %583 ]
  %602 = sub i64 0, %601, !dbg !3939
  %603 = udiv i64 -9223372036854775808, %602, !dbg !3939
  %604 = icmp ult i64 %603, %55, !dbg !3939
  br i1 %604, label %615, label %605, !dbg !3939

605:                                              ; preds = %594, %599
  %606 = phi i32 [ %600, %599 ], [ %595, %594 ]
  %607 = phi i64 [ %601, %599 ], [ %596, %594 ]
  %608 = mul i64 %607, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %608, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %606, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %609 = icmp slt i64 %608, 0, !dbg !3939
  br i1 %609, label %615, label %610, !dbg !3939

610:                                              ; preds = %594, %605
  %611 = phi i32 [ %606, %605 ], [ 1, %594 ]
  %612 = phi i64 [ %608, %605 ], [ 9223372036854775807, %594 ]
  %613 = udiv i64 9223372036854775807, %55, !dbg !3939
  %614 = icmp ult i64 %613, %612, !dbg !3939
  br i1 %614, label %626, label %621, !dbg !3939

615:                                              ; preds = %599, %605
  %616 = phi i32 [ %606, %605 ], [ 1, %599 ]
  %617 = phi i64 [ %608, %605 ], [ -9223372036854775808, %599 ]
  %618 = sub i64 0, %617, !dbg !3939
  %619 = udiv i64 -9223372036854775808, %618, !dbg !3939
  %620 = icmp ult i64 %619, %55, !dbg !3939
  br i1 %620, label %631, label %621, !dbg !3939

621:                                              ; preds = %610, %615
  %622 = phi i32 [ %616, %615 ], [ %611, %610 ]
  %623 = phi i64 [ %617, %615 ], [ %612, %610 ]
  %624 = mul i64 %623, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %624, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %622, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %625 = icmp slt i64 %624, 0, !dbg !3939
  br i1 %625, label %631, label %626, !dbg !3939

626:                                              ; preds = %610, %621
  %627 = phi i32 [ %622, %621 ], [ 1, %610 ]
  %628 = phi i64 [ %624, %621 ], [ 9223372036854775807, %610 ]
  %629 = udiv i64 9223372036854775807, %55, !dbg !3939
  %630 = icmp ult i64 %629, %628, !dbg !3939
  br i1 %630, label %642, label %637, !dbg !3939

631:                                              ; preds = %615, %621
  %632 = phi i32 [ %622, %621 ], [ 1, %615 ]
  %633 = phi i64 [ %624, %621 ], [ -9223372036854775808, %615 ]
  %634 = sub i64 0, %633, !dbg !3939
  %635 = udiv i64 -9223372036854775808, %634, !dbg !3939
  %636 = icmp ult i64 %635, %55, !dbg !3939
  br i1 %636, label %647, label %637, !dbg !3939

637:                                              ; preds = %626, %631
  %638 = phi i32 [ %632, %631 ], [ %627, %626 ]
  %639 = phi i64 [ %633, %631 ], [ %628, %626 ]
  %640 = mul i64 %639, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %640, metadata !3925, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %638, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3937
  %641 = icmp slt i64 %640, 0, !dbg !3939
  br i1 %641, label %647, label %642, !dbg !3939

642:                                              ; preds = %626, %637
  %643 = phi i32 [ %638, %637 ], [ 1, %626 ]
  %644 = phi i64 [ %640, %637 ], [ 9223372036854775807, %626 ]
  %645 = udiv i64 9223372036854775807, %55, !dbg !3939
  %646 = icmp ult i64 %645, %644, !dbg !3939
  br i1 %646, label %657, label %653, !dbg !3939

647:                                              ; preds = %631, %637
  %648 = phi i32 [ %638, %637 ], [ 1, %631 ]
  %649 = phi i64 [ %640, %637 ], [ -9223372036854775808, %631 ]
  %650 = sub i64 0, %649, !dbg !3939
  %651 = udiv i64 -9223372036854775808, %650, !dbg !3939
  %652 = icmp ult i64 %651, %55, !dbg !3939
  br i1 %652, label %657, label %653, !dbg !3939

653:                                              ; preds = %647, %642
  %654 = phi i32 [ %648, %647 ], [ %643, %642 ]
  %655 = phi i64 [ %649, %647 ], [ %644, %642 ]
  %656 = mul i64 %655, %55, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %656, metadata !3925, metadata !DIExpression()), !dbg !3937
  br label %657, !dbg !3990

657:                                              ; preds = %653, %647, %642
  %658 = phi i32 [ %654, %653 ], [ %643, %642 ], [ %648, %647 ]
  %659 = phi i64 [ %656, %653 ], [ 9223372036854775807, %642 ], [ -9223372036854775808, %647 ], !dbg !3937
  %660 = phi i32 [ 0, %653 ], [ 1, %642 ], [ 1, %647 ], !dbg !3937
  %661 = or i32 %660, %658, !dbg !3991
  call void @llvm.dbg.value(metadata i32 %661, metadata !3908, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3935
  br label %977, !dbg !3965

662:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3913, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 poison, metadata !3914, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 3, metadata !3915, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3994
  %663 = icmp slt i64 %31, 0, !dbg !3996
  br i1 %663, label %664, label %670, !dbg !3996

664:                                              ; preds = %662
  %665 = icmp eq i64 %31, -1, !dbg !3996
  br i1 %665, label %673, label %666, !dbg !3996

666:                                              ; preds = %664
  %667 = sub i64 0, %31, !dbg !3996
  %668 = udiv i64 -9223372036854775808, %667, !dbg !3996
  %669 = icmp ult i64 %668, %55, !dbg !3996
  br i1 %669, label %681, label %673, !dbg !3996

670:                                              ; preds = %662
  %671 = udiv i64 9223372036854775807, %55, !dbg !3996
  %672 = icmp ult i64 %671, %31, !dbg !3996
  br i1 %672, label %676, label %673, !dbg !3996

673:                                              ; preds = %664, %666, %670
  %674 = mul i64 %31, %55, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %674, metadata !3925, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3994
  %675 = icmp slt i64 %674, 0, !dbg !3996
  br i1 %675, label %681, label %676, !dbg !3996

676:                                              ; preds = %670, %673
  %677 = phi i32 [ 0, %673 ], [ 1, %670 ]
  %678 = phi i64 [ %674, %673 ], [ 9223372036854775807, %670 ]
  %679 = udiv i64 9223372036854775807, %55, !dbg !3996
  %680 = icmp ult i64 %679, %678, !dbg !3996
  br i1 %680, label %692, label %687, !dbg !3996

681:                                              ; preds = %666, %673
  %682 = phi i32 [ 0, %673 ], [ 1, %666 ]
  %683 = phi i64 [ %674, %673 ], [ -9223372036854775808, %666 ]
  %684 = sub i64 0, %683, !dbg !3996
  %685 = udiv i64 -9223372036854775808, %684, !dbg !3996
  %686 = icmp ult i64 %685, %55, !dbg !3996
  br i1 %686, label %697, label %687, !dbg !3996

687:                                              ; preds = %676, %681
  %688 = phi i32 [ %682, %681 ], [ %677, %676 ]
  %689 = phi i64 [ %683, %681 ], [ %678, %676 ]
  %690 = mul i64 %689, %55, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %690, metadata !3925, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 %688, metadata !3908, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3994
  %691 = icmp slt i64 %690, 0, !dbg !3996
  br i1 %691, label %697, label %692, !dbg !3996

692:                                              ; preds = %676, %687
  %693 = phi i32 [ %688, %687 ], [ 1, %676 ]
  %694 = phi i64 [ %690, %687 ], [ 9223372036854775807, %676 ]
  %695 = udiv i64 9223372036854775807, %55, !dbg !3996
  %696 = icmp ult i64 %695, %694, !dbg !3996
  br i1 %696, label %708, label %703, !dbg !3996

697:                                              ; preds = %681, %687
  %698 = phi i32 [ %688, %687 ], [ 1, %681 ]
  %699 = phi i64 [ %690, %687 ], [ -9223372036854775808, %681 ]
  %700 = sub i64 0, %699, !dbg !3996
  %701 = udiv i64 -9223372036854775808, %700, !dbg !3996
  %702 = icmp ult i64 %701, %55, !dbg !3996
  br i1 %702, label %713, label %703, !dbg !3996

703:                                              ; preds = %692, %697
  %704 = phi i32 [ %698, %697 ], [ %693, %692 ]
  %705 = phi i64 [ %699, %697 ], [ %694, %692 ]
  %706 = mul i64 %705, %55, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %706, metadata !3925, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 %704, metadata !3908, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3994
  %707 = icmp slt i64 %706, 0, !dbg !3996
  br i1 %707, label %713, label %708, !dbg !3996

708:                                              ; preds = %692, %703
  %709 = phi i32 [ %704, %703 ], [ 1, %692 ]
  %710 = phi i64 [ %706, %703 ], [ 9223372036854775807, %692 ]
  %711 = udiv i64 9223372036854775807, %55, !dbg !3996
  %712 = icmp ult i64 %711, %710, !dbg !3996
  br i1 %712, label %723, label %719, !dbg !3996

713:                                              ; preds = %697, %703
  %714 = phi i32 [ %704, %703 ], [ 1, %697 ]
  %715 = phi i64 [ %706, %703 ], [ -9223372036854775808, %697 ]
  %716 = sub i64 0, %715, !dbg !3996
  %717 = udiv i64 -9223372036854775808, %716, !dbg !3996
  %718 = icmp ult i64 %717, %55, !dbg !3996
  br i1 %718, label %723, label %719, !dbg !3996

719:                                              ; preds = %713, %708
  %720 = phi i32 [ %714, %713 ], [ %709, %708 ]
  %721 = phi i64 [ %715, %713 ], [ %710, %708 ]
  %722 = mul i64 %721, %55, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %722, metadata !3925, metadata !DIExpression()), !dbg !3994
  br label %723, !dbg !3997

723:                                              ; preds = %719, %713, %708
  %724 = phi i32 [ %720, %719 ], [ %709, %708 ], [ %714, %713 ]
  %725 = phi i64 [ %722, %719 ], [ 9223372036854775807, %708 ], [ -9223372036854775808, %713 ], !dbg !3994
  %726 = phi i32 [ 0, %719 ], [ 1, %708 ], [ 1, %713 ], !dbg !3994
  %727 = or i32 %726, %724, !dbg !3998
  call void @llvm.dbg.value(metadata i32 %727, metadata !3908, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3992
  br label %977, !dbg !3965

728:                                              ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i32 2, metadata !3924, metadata !DIExpression()), !dbg !3999
  %729 = icmp slt i64 %31, 0, !dbg !4001
  br i1 %729, label %730, label %733, !dbg !4001

730:                                              ; preds = %728
  %731 = add i64 %31, -1, !dbg !4001
  %732 = icmp ult i64 %731, -4611686018427387905, !dbg !4001
  br i1 %732, label %977, label %735, !dbg !4001

733:                                              ; preds = %728
  %734 = icmp ugt i64 %31, 4611686018427387903, !dbg !4001
  br i1 %734, label %977, label %735, !dbg !4001

735:                                              ; preds = %730, %733
  %736 = shl nsw i64 %31, 1, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %736, metadata !3925, metadata !DIExpression()), !dbg !3999
  br label %977, !dbg !4002

737:                                              ; preds = %59
  %738 = icmp eq i64 %31, -1, !dbg !3934
  br i1 %738, label %746, label %739, !dbg !3934

739:                                              ; preds = %737
  %740 = sub i64 0, %31, !dbg !3934
  %741 = udiv i64 -9223372036854775808, %740, !dbg !3934
  %742 = icmp ult i64 %741, %55, !dbg !3934
  br i1 %742, label %754, label %746, !dbg !3934

743:                                              ; preds = %59
  %744 = udiv i64 9223372036854775807, %55, !dbg !3934
  %745 = icmp ult i64 %744, %31, !dbg !3934
  br i1 %745, label %749, label %746, !dbg !3934

746:                                              ; preds = %737, %739, %743
  %747 = mul i64 %31, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %747, metadata !3925, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 6, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %748 = icmp slt i64 %747, 0, !dbg !3934
  br i1 %748, label %754, label %749, !dbg !3934

749:                                              ; preds = %743, %746
  %750 = phi i32 [ 0, %746 ], [ 1, %743 ]
  %751 = phi i64 [ %747, %746 ], [ 9223372036854775807, %743 ]
  %752 = udiv i64 9223372036854775807, %55, !dbg !3934
  %753 = icmp ult i64 %752, %751, !dbg !3934
  br i1 %753, label %765, label %760, !dbg !3934

754:                                              ; preds = %739, %746
  %755 = phi i32 [ 0, %746 ], [ 1, %739 ]
  %756 = phi i64 [ %747, %746 ], [ -9223372036854775808, %739 ]
  %757 = sub i64 0, %756, !dbg !3934
  %758 = udiv i64 -9223372036854775808, %757, !dbg !3934
  %759 = icmp ult i64 %758, %55, !dbg !3934
  br i1 %759, label %770, label %760, !dbg !3934

760:                                              ; preds = %749, %754
  %761 = phi i32 [ %755, %754 ], [ %750, %749 ]
  %762 = phi i64 [ %756, %754 ], [ %751, %749 ]
  %763 = mul i64 %762, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %763, metadata !3925, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %761, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 5, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %764 = icmp slt i64 %763, 0, !dbg !3934
  br i1 %764, label %770, label %765, !dbg !3934

765:                                              ; preds = %749, %760
  %766 = phi i32 [ %761, %760 ], [ 1, %749 ]
  %767 = phi i64 [ %763, %760 ], [ 9223372036854775807, %749 ]
  %768 = udiv i64 9223372036854775807, %55, !dbg !3934
  %769 = icmp ult i64 %768, %767, !dbg !3934
  br i1 %769, label %781, label %776, !dbg !3934

770:                                              ; preds = %754, %760
  %771 = phi i32 [ %761, %760 ], [ 1, %754 ]
  %772 = phi i64 [ %763, %760 ], [ -9223372036854775808, %754 ]
  %773 = sub i64 0, %772, !dbg !3934
  %774 = udiv i64 -9223372036854775808, %773, !dbg !3934
  %775 = icmp ult i64 %774, %55, !dbg !3934
  br i1 %775, label %786, label %776, !dbg !3934

776:                                              ; preds = %765, %770
  %777 = phi i32 [ %771, %770 ], [ %766, %765 ]
  %778 = phi i64 [ %772, %770 ], [ %767, %765 ]
  %779 = mul i64 %778, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %779, metadata !3925, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %777, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 4, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %780 = icmp slt i64 %779, 0, !dbg !3934
  br i1 %780, label %786, label %781, !dbg !3934

781:                                              ; preds = %765, %776
  %782 = phi i32 [ %777, %776 ], [ 1, %765 ]
  %783 = phi i64 [ %779, %776 ], [ 9223372036854775807, %765 ]
  %784 = udiv i64 9223372036854775807, %55, !dbg !3934
  %785 = icmp ult i64 %784, %783, !dbg !3934
  br i1 %785, label %797, label %792, !dbg !3934

786:                                              ; preds = %770, %776
  %787 = phi i32 [ %777, %776 ], [ 1, %770 ]
  %788 = phi i64 [ %779, %776 ], [ -9223372036854775808, %770 ]
  %789 = sub i64 0, %788, !dbg !3934
  %790 = udiv i64 -9223372036854775808, %789, !dbg !3934
  %791 = icmp ult i64 %790, %55, !dbg !3934
  br i1 %791, label %802, label %792, !dbg !3934

792:                                              ; preds = %781, %786
  %793 = phi i32 [ %787, %786 ], [ %782, %781 ]
  %794 = phi i64 [ %788, %786 ], [ %783, %781 ]
  %795 = mul i64 %794, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %795, metadata !3925, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %793, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 3, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %796 = icmp slt i64 %795, 0, !dbg !3934
  br i1 %796, label %802, label %797, !dbg !3934

797:                                              ; preds = %781, %792
  %798 = phi i32 [ %793, %792 ], [ 1, %781 ]
  %799 = phi i64 [ %795, %792 ], [ 9223372036854775807, %781 ]
  %800 = udiv i64 9223372036854775807, %55, !dbg !3934
  %801 = icmp ult i64 %800, %799, !dbg !3934
  br i1 %801, label %813, label %808, !dbg !3934

802:                                              ; preds = %786, %792
  %803 = phi i32 [ %793, %792 ], [ 1, %786 ]
  %804 = phi i64 [ %795, %792 ], [ -9223372036854775808, %786 ]
  %805 = sub i64 0, %804, !dbg !3934
  %806 = udiv i64 -9223372036854775808, %805, !dbg !3934
  %807 = icmp ult i64 %806, %55, !dbg !3934
  br i1 %807, label %818, label %808, !dbg !3934

808:                                              ; preds = %797, %802
  %809 = phi i32 [ %803, %802 ], [ %798, %797 ]
  %810 = phi i64 [ %804, %802 ], [ %799, %797 ]
  %811 = mul i64 %810, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %811, metadata !3925, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %809, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %812 = icmp slt i64 %811, 0, !dbg !3934
  br i1 %812, label %818, label %813, !dbg !3934

813:                                              ; preds = %797, %808
  %814 = phi i32 [ %809, %808 ], [ 1, %797 ]
  %815 = phi i64 [ %811, %808 ], [ 9223372036854775807, %797 ]
  %816 = udiv i64 9223372036854775807, %55, !dbg !3934
  %817 = icmp ult i64 %816, %815, !dbg !3934
  br i1 %817, label %829, label %824, !dbg !3934

818:                                              ; preds = %802, %808
  %819 = phi i32 [ %809, %808 ], [ 1, %802 ]
  %820 = phi i64 [ %811, %808 ], [ -9223372036854775808, %802 ]
  %821 = sub i64 0, %820, !dbg !3934
  %822 = udiv i64 -9223372036854775808, %821, !dbg !3934
  %823 = icmp ult i64 %822, %55, !dbg !3934
  br i1 %823, label %834, label %824, !dbg !3934

824:                                              ; preds = %813, %818
  %825 = phi i32 [ %819, %818 ], [ %814, %813 ]
  %826 = phi i64 [ %820, %818 ], [ %815, %813 ]
  %827 = mul i64 %826, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %827, metadata !3925, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %825, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %828 = icmp slt i64 %827, 0, !dbg !3934
  br i1 %828, label %834, label %829, !dbg !3934

829:                                              ; preds = %813, %824
  %830 = phi i32 [ %825, %824 ], [ 1, %813 ]
  %831 = phi i64 [ %827, %824 ], [ 9223372036854775807, %813 ]
  %832 = udiv i64 9223372036854775807, %55, !dbg !3934
  %833 = icmp ult i64 %832, %831, !dbg !3934
  br i1 %833, label %845, label %840, !dbg !3934

834:                                              ; preds = %818, %824
  %835 = phi i32 [ %825, %824 ], [ 1, %818 ]
  %836 = phi i64 [ %827, %824 ], [ -9223372036854775808, %818 ]
  %837 = sub i64 0, %836, !dbg !3934
  %838 = udiv i64 -9223372036854775808, %837, !dbg !3934
  %839 = icmp ult i64 %838, %55, !dbg !3934
  br i1 %839, label %850, label %840, !dbg !3934

840:                                              ; preds = %829, %834
  %841 = phi i32 [ %835, %834 ], [ %830, %829 ]
  %842 = phi i64 [ %836, %834 ], [ %831, %829 ]
  %843 = mul i64 %842, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %843, metadata !3925, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %841, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3932
  %844 = icmp slt i64 %843, 0, !dbg !3934
  br i1 %844, label %850, label %845, !dbg !3934

845:                                              ; preds = %829, %840
  %846 = phi i32 [ %841, %840 ], [ 1, %829 ]
  %847 = phi i64 [ %843, %840 ], [ 9223372036854775807, %829 ]
  %848 = udiv i64 9223372036854775807, %55, !dbg !3934
  %849 = icmp ult i64 %848, %847, !dbg !3934
  br i1 %849, label %860, label %856, !dbg !3934

850:                                              ; preds = %834, %840
  %851 = phi i32 [ %841, %840 ], [ 1, %834 ]
  %852 = phi i64 [ %843, %840 ], [ -9223372036854775808, %834 ]
  %853 = sub i64 0, %852, !dbg !3934
  %854 = udiv i64 -9223372036854775808, %853, !dbg !3934
  %855 = icmp ult i64 %854, %55, !dbg !3934
  br i1 %855, label %860, label %856, !dbg !3934

856:                                              ; preds = %850, %845
  %857 = phi i32 [ %851, %850 ], [ %846, %845 ]
  %858 = phi i64 [ %852, %850 ], [ %847, %845 ]
  %859 = mul i64 %858, %55, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %859, metadata !3925, metadata !DIExpression()), !dbg !3932
  br label %860, !dbg !4003

860:                                              ; preds = %856, %850, %845
  %861 = phi i32 [ %857, %856 ], [ %846, %845 ], [ %851, %850 ]
  %862 = phi i64 [ %859, %856 ], [ 9223372036854775807, %845 ], [ -9223372036854775808, %850 ], !dbg !3932
  %863 = phi i32 [ 0, %856 ], [ 1, %845 ], [ 1, %850 ], !dbg !3932
  %864 = or i32 %863, %861, !dbg !4004
  call void @llvm.dbg.value(metadata i32 %864, metadata !3908, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3930
  br label %977, !dbg !3965

865:                                              ; preds = %57
  %866 = icmp eq i64 %31, -1, !dbg !3928
  br i1 %866, label %874, label %867, !dbg !3928

867:                                              ; preds = %865
  %868 = sub i64 0, %31, !dbg !3928
  %869 = udiv i64 -9223372036854775808, %868, !dbg !3928
  %870 = icmp ult i64 %869, %55, !dbg !3928
  br i1 %870, label %882, label %874, !dbg !3928

871:                                              ; preds = %57
  %872 = udiv i64 9223372036854775807, %55, !dbg !3928
  %873 = icmp ult i64 %872, %31, !dbg !3928
  br i1 %873, label %877, label %874, !dbg !3928

874:                                              ; preds = %865, %867, %871
  %875 = mul i64 %31, %55, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %875, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 5, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3926
  %876 = icmp slt i64 %875, 0, !dbg !3928
  br i1 %876, label %882, label %877, !dbg !3928

877:                                              ; preds = %871, %874
  %878 = phi i32 [ 0, %874 ], [ 1, %871 ]
  %879 = phi i64 [ %875, %874 ], [ 9223372036854775807, %871 ]
  %880 = udiv i64 9223372036854775807, %55, !dbg !3928
  %881 = icmp ult i64 %880, %879, !dbg !3928
  br i1 %881, label %893, label %888, !dbg !3928

882:                                              ; preds = %867, %874
  %883 = phi i32 [ 0, %874 ], [ 1, %867 ]
  %884 = phi i64 [ %875, %874 ], [ -9223372036854775808, %867 ]
  %885 = sub i64 0, %884, !dbg !3928
  %886 = udiv i64 -9223372036854775808, %885, !dbg !3928
  %887 = icmp ult i64 %886, %55, !dbg !3928
  br i1 %887, label %898, label %888, !dbg !3928

888:                                              ; preds = %877, %882
  %889 = phi i32 [ %883, %882 ], [ %878, %877 ]
  %890 = phi i64 [ %884, %882 ], [ %879, %877 ]
  %891 = mul i64 %890, %55, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %891, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %889, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 4, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3926
  %892 = icmp slt i64 %891, 0, !dbg !3928
  br i1 %892, label %898, label %893, !dbg !3928

893:                                              ; preds = %877, %888
  %894 = phi i32 [ %889, %888 ], [ 1, %877 ]
  %895 = phi i64 [ %891, %888 ], [ 9223372036854775807, %877 ]
  %896 = udiv i64 9223372036854775807, %55, !dbg !3928
  %897 = icmp ult i64 %896, %895, !dbg !3928
  br i1 %897, label %909, label %904, !dbg !3928

898:                                              ; preds = %882, %888
  %899 = phi i32 [ %889, %888 ], [ 1, %882 ]
  %900 = phi i64 [ %891, %888 ], [ -9223372036854775808, %882 ]
  %901 = sub i64 0, %900, !dbg !3928
  %902 = udiv i64 -9223372036854775808, %901, !dbg !3928
  %903 = icmp ult i64 %902, %55, !dbg !3928
  br i1 %903, label %914, label %904, !dbg !3928

904:                                              ; preds = %893, %898
  %905 = phi i32 [ %899, %898 ], [ %894, %893 ]
  %906 = phi i64 [ %900, %898 ], [ %895, %893 ]
  %907 = mul i64 %906, %55, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %907, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %905, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 3, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3926
  %908 = icmp slt i64 %907, 0, !dbg !3928
  br i1 %908, label %914, label %909, !dbg !3928

909:                                              ; preds = %893, %904
  %910 = phi i32 [ %905, %904 ], [ 1, %893 ]
  %911 = phi i64 [ %907, %904 ], [ 9223372036854775807, %893 ]
  %912 = udiv i64 9223372036854775807, %55, !dbg !3928
  %913 = icmp ult i64 %912, %911, !dbg !3928
  br i1 %913, label %925, label %920, !dbg !3928

914:                                              ; preds = %898, %904
  %915 = phi i32 [ %905, %904 ], [ 1, %898 ]
  %916 = phi i64 [ %907, %904 ], [ -9223372036854775808, %898 ]
  %917 = sub i64 0, %916, !dbg !3928
  %918 = udiv i64 -9223372036854775808, %917, !dbg !3928
  %919 = icmp ult i64 %918, %55, !dbg !3928
  br i1 %919, label %930, label %920, !dbg !3928

920:                                              ; preds = %909, %914
  %921 = phi i32 [ %915, %914 ], [ %910, %909 ]
  %922 = phi i64 [ %916, %914 ], [ %911, %909 ]
  %923 = mul i64 %922, %55, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %923, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %921, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 2, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3926
  %924 = icmp slt i64 %923, 0, !dbg !3928
  br i1 %924, label %930, label %925, !dbg !3928

925:                                              ; preds = %909, %920
  %926 = phi i32 [ %921, %920 ], [ 1, %909 ]
  %927 = phi i64 [ %923, %920 ], [ 9223372036854775807, %909 ]
  %928 = udiv i64 9223372036854775807, %55, !dbg !3928
  %929 = icmp ult i64 %928, %927, !dbg !3928
  br i1 %929, label %941, label %936, !dbg !3928

930:                                              ; preds = %914, %920
  %931 = phi i32 [ %921, %920 ], [ 1, %914 ]
  %932 = phi i64 [ %923, %920 ], [ -9223372036854775808, %914 ]
  %933 = sub i64 0, %932, !dbg !3928
  %934 = udiv i64 -9223372036854775808, %933, !dbg !3928
  %935 = icmp ult i64 %934, %55, !dbg !3928
  br i1 %935, label %946, label %936, !dbg !3928

936:                                              ; preds = %925, %930
  %937 = phi i32 [ %931, %930 ], [ %926, %925 ]
  %938 = phi i64 [ %932, %930 ], [ %927, %925 ]
  %939 = mul i64 %938, %55, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %939, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %937, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 1, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3926
  %940 = icmp slt i64 %939, 0, !dbg !3928
  br i1 %940, label %946, label %941, !dbg !3928

941:                                              ; preds = %925, %936
  %942 = phi i32 [ %937, %936 ], [ 1, %925 ]
  %943 = phi i64 [ %939, %936 ], [ 9223372036854775807, %925 ]
  %944 = udiv i64 9223372036854775807, %55, !dbg !3928
  %945 = icmp ult i64 %944, %943, !dbg !3928
  br i1 %945, label %957, label %952, !dbg !3928

946:                                              ; preds = %930, %936
  %947 = phi i32 [ %937, %936 ], [ 1, %930 ]
  %948 = phi i64 [ %939, %936 ], [ -9223372036854775808, %930 ]
  %949 = sub i64 0, %948, !dbg !3928
  %950 = udiv i64 -9223372036854775808, %949, !dbg !3928
  %951 = icmp ult i64 %950, %55, !dbg !3928
  br i1 %951, label %962, label %952, !dbg !3928

952:                                              ; preds = %941, %946
  %953 = phi i32 [ %947, %946 ], [ %942, %941 ]
  %954 = phi i64 [ %948, %946 ], [ %943, %941 ]
  %955 = mul i64 %954, %55, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %955, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %953, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr undef, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 poison, metadata !3924, metadata !DIExpression()), !dbg !3926
  %956 = icmp slt i64 %955, 0, !dbg !3928
  br i1 %956, label %962, label %957, !dbg !3928

957:                                              ; preds = %941, %952
  %958 = phi i32 [ %953, %952 ], [ 1, %941 ]
  %959 = phi i64 [ %955, %952 ], [ 9223372036854775807, %941 ]
  %960 = udiv i64 9223372036854775807, %55, !dbg !3928
  %961 = icmp ult i64 %960, %959, !dbg !3928
  br i1 %961, label %972, label %968, !dbg !3928

962:                                              ; preds = %946, %952
  %963 = phi i32 [ %953, %952 ], [ 1, %946 ]
  %964 = phi i64 [ %955, %952 ], [ -9223372036854775808, %946 ]
  %965 = sub i64 0, %964, !dbg !3928
  %966 = udiv i64 -9223372036854775808, %965, !dbg !3928
  %967 = icmp ult i64 %966, %55, !dbg !3928
  br i1 %967, label %972, label %968, !dbg !3928

968:                                              ; preds = %962, %957
  %969 = phi i32 [ %963, %962 ], [ %958, %957 ]
  %970 = phi i64 [ %964, %962 ], [ %959, %957 ]
  %971 = mul i64 %970, %55, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %971, metadata !3925, metadata !DIExpression()), !dbg !3926
  br label %972, !dbg !4005

972:                                              ; preds = %968, %962, %957
  %973 = phi i32 [ %969, %968 ], [ %958, %957 ], [ %963, %962 ]
  %974 = phi i64 [ %971, %968 ], [ 9223372036854775807, %957 ], [ -9223372036854775808, %962 ], !dbg !3926
  %975 = phi i32 [ 0, %968 ], [ 1, %957 ], [ 1, %962 ], !dbg !3926
  %976 = or i32 %975, %973, !dbg !4006
  call void @llvm.dbg.value(metadata i32 %976, metadata !3908, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3916
  br label %977, !dbg !3965

977:                                              ; preds = %235, %239, %242, %972, %860, %723, %657, %513, %353, %273, %226, %176, %730, %79, %71, %54, %73, %75, %81, %83, %733, %735
  %978 = phi i64 [ %31, %54 ], [ %76, %75 ], [ 9223372036854775807, %73 ], [ %84, %83 ], [ 9223372036854775807, %81 ], [ %736, %735 ], [ 9223372036854775807, %733 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %79 ], [ -9223372036854775808, %730 ], [ %178, %176 ], [ %228, %226 ], [ %275, %273 ], [ %355, %353 ], [ %515, %513 ], [ %659, %657 ], [ %725, %723 ], [ %862, %860 ], [ %974, %972 ], [ %243, %242 ], [ 9223372036854775807, %239 ], [ -9223372036854775808, %235 ], !dbg !3854
  %979 = phi i32 [ 0, %54 ], [ 0, %75 ], [ 1, %73 ], [ 0, %83 ], [ 1, %81 ], [ 0, %735 ], [ 1, %733 ], [ 1, %71 ], [ 1, %79 ], [ 1, %730 ], [ %180, %176 ], [ %230, %226 ], [ %277, %273 ], [ %357, %353 ], [ %517, %513 ], [ %661, %657 ], [ %727, %723 ], [ %864, %860 ], [ %976, %972 ], [ 0, %242 ], [ 1, %239 ], [ 1, %235 ], !dbg !4007
  call void @llvm.dbg.value(metadata i32 %979, metadata !3853, metadata !DIExpression()), !dbg !3893
  %980 = or i32 %979, %30, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %980, metadata !3848, metadata !DIExpression()), !dbg !3854
  %981 = getelementptr inbounds i8, ptr %11, i64 %56, !dbg !4008
  store ptr %981, ptr %8, align 8, !dbg !4008, !tbaa !895
  %982 = load i8, ptr %981, align 1, !dbg !4009, !tbaa !975
  %983 = icmp eq i8 %982, 0, !dbg !4009
  %984 = or i32 %980, 2
  %985 = select i1 %983, i32 %980, i32 %984, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %985, metadata !3848, metadata !DIExpression()), !dbg !3854
  br label %988

986:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64 %10, metadata !3847, metadata !DIExpression()), !dbg !3854
  store i64 %31, ptr %3, align 8, !dbg !4012, !tbaa !2592
  %987 = or i32 %30, 2, !dbg !4013
  call void @llvm.dbg.value(metadata i32 %30, metadata !3848, metadata !DIExpression()), !dbg !3854
  br label %991

988:                                              ; preds = %977, %29
  %989 = phi i64 [ %31, %29 ], [ %978, %977 ], !dbg !4014
  %990 = phi i32 [ %30, %29 ], [ %985, %977 ], !dbg !4015
  call void @llvm.dbg.value(metadata i32 %990, metadata !3848, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %989, metadata !3847, metadata !DIExpression()), !dbg !3854
  store i64 %989, ptr %3, align 8, !dbg !4016, !tbaa !2592
  br label %991, !dbg !4017

991:                                              ; preds = %986, %22, %13, %15, %18, %988, %38, %28
  %992 = phi i32 [ %990, %988 ], [ %987, %986 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #37, !dbg !4018
  ret i32 %992, !dbg !4018
}

; Function Attrs: nounwind
declare !dbg !4019 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4024 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4062, metadata !DIExpression()), !dbg !4067
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !4068
  call void @llvm.dbg.value(metadata i1 poison, metadata !4063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4072
  %3 = load i32, ptr %0, align 8, !dbg !4074, !tbaa !4075
  %4 = and i32 %3, 32, !dbg !4076
  %5 = icmp eq i32 %4, 0, !dbg !4076
  call void @llvm.dbg.value(metadata i1 %5, metadata !4065, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4067
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !4077
  %7 = icmp eq i32 %6, 0, !dbg !4078
  call void @llvm.dbg.value(metadata i1 %7, metadata !4066, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4067
  br i1 %5, label %8, label %18, !dbg !4079

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4081
  call void @llvm.dbg.value(metadata i1 %9, metadata !4063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4067
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4082
  %11 = xor i1 %7, true, !dbg !4082
  %12 = sext i1 %11 to i32, !dbg !4082
  br i1 %10, label %21, label %13, !dbg !4082

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !4083
  %15 = load i32, ptr %14, align 4, !dbg !4083, !tbaa !966
  %16 = icmp ne i32 %15, 9, !dbg !4084
  %17 = sext i1 %16 to i32, !dbg !4085
  br label %21, !dbg !4085

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4086

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !4088
  store i32 0, ptr %20, align 4, !dbg !4090, !tbaa !966
  br label %21, !dbg !4088

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4067
  ret i32 %22, !dbg !4091
}

; Function Attrs: nounwind
declare !dbg !4092 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4096 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4135, metadata !DIExpression()), !dbg !4138
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4139
  call void @llvm.dbg.value(metadata i32 %2, metadata !4136, metadata !DIExpression()), !dbg !4138
  %3 = icmp slt i32 %2, 0, !dbg !4140
  br i1 %3, label %4, label %6, !dbg !4142

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4143
  br label %24, !dbg !4144

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4145
  %8 = icmp eq i32 %7, 0, !dbg !4145
  br i1 %8, label %13, label %9, !dbg !4147

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4148
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !4149
  %12 = icmp eq i64 %11, -1, !dbg !4150
  br i1 %12, label %16, label %13, !dbg !4151

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !4152
  %15 = icmp eq i32 %14, 0, !dbg !4152
  br i1 %15, label %16, label %18, !dbg !4153

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4135, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4137, metadata !DIExpression()), !dbg !4138
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4154
  call void @llvm.dbg.value(metadata i32 %17, metadata !4137, metadata !DIExpression()), !dbg !4138
  br label %24, !dbg !4155

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !4156
  %20 = load i32, ptr %19, align 4, !dbg !4156, !tbaa !966
  call void @llvm.dbg.value(metadata i32 %20, metadata !4135, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4137, metadata !DIExpression()), !dbg !4138
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4154
  call void @llvm.dbg.value(metadata i32 %21, metadata !4137, metadata !DIExpression()), !dbg !4138
  %22 = icmp eq i32 %20, 0, !dbg !4157
  br i1 %22, label %24, label %23, !dbg !4155

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4159, !tbaa !966
  call void @llvm.dbg.value(metadata i32 -1, metadata !4137, metadata !DIExpression()), !dbg !4138
  br label %24, !dbg !4161

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4138
  ret i32 %25, !dbg !4162
}

; Function Attrs: nofree nounwind
declare !dbg !4163 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4164 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4165 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4166 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4204, metadata !DIExpression()), !dbg !4205
  %2 = icmp eq ptr %0, null, !dbg !4206
  br i1 %2, label %6, label %3, !dbg !4208

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4209
  %5 = icmp eq i32 %4, 0, !dbg !4209
  br i1 %5, label %6, label %8, !dbg !4210

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4211
  br label %16, !dbg !4212

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4213, metadata !DIExpression()), !dbg !4218
  %9 = load i32, ptr %0, align 8, !dbg !4220, !tbaa !4075
  %10 = and i32 %9, 256, !dbg !4222
  %11 = icmp eq i32 %10, 0, !dbg !4222
  br i1 %11, label %14, label %12, !dbg !4223

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !4224
  br label %14, !dbg !4224

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4225
  br label %16, !dbg !4226

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4205
  ret i32 %17, !dbg !4227
}

; Function Attrs: nofree nounwind
declare !dbg !4228 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4229 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4267, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4268, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32 %2, metadata !4269, metadata !DIExpression()), !dbg !4273
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4274
  %5 = load ptr, ptr %4, align 8, !dbg !4274, !tbaa !4275
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4276
  %7 = load ptr, ptr %6, align 8, !dbg !4276, !tbaa !4277
  %8 = icmp eq ptr %5, %7, !dbg !4278
  br i1 %8, label %9, label %27, !dbg !4279

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4280
  %11 = load ptr, ptr %10, align 8, !dbg !4280, !tbaa !1657
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4281
  %13 = load ptr, ptr %12, align 8, !dbg !4281, !tbaa !4282
  %14 = icmp eq ptr %11, %13, !dbg !4283
  br i1 %14, label %15, label %27, !dbg !4284

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4285
  %17 = load ptr, ptr %16, align 8, !dbg !4285, !tbaa !4286
  %18 = icmp eq ptr %17, null, !dbg !4287
  br i1 %18, label %19, label %27, !dbg !4288

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4289
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %21, metadata !4270, metadata !DIExpression()), !dbg !4291
  %22 = icmp eq i64 %21, -1, !dbg !4292
  br i1 %22, label %29, label %23, !dbg !4294

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4295, !tbaa !4075
  %25 = and i32 %24, -17, !dbg !4295
  store i32 %25, ptr %0, align 8, !dbg !4295, !tbaa !4075
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4296
  store i64 %21, ptr %26, align 8, !dbg !4297, !tbaa !4298
  br label %29, !dbg !4299

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4300
  br label %29, !dbg !4301

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4273
  ret i32 %30, !dbg !4302
}

; Function Attrs: nofree nounwind
declare !dbg !4303 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4311, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %1, metadata !4312, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %2, metadata !4313, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %3, metadata !4314, metadata !DIExpression()), !dbg !4316
  %5 = icmp eq ptr %1, null, !dbg !4317
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4319
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4319
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4319
  call void @llvm.dbg.value(metadata i64 %8, metadata !4313, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %7, metadata !4312, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %6, metadata !4311, metadata !DIExpression()), !dbg !4316
  %9 = icmp eq ptr %3, null, !dbg !4320
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4322
  call void @llvm.dbg.value(metadata ptr %10, metadata !4314, metadata !DIExpression()), !dbg !4316
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %11, metadata !4315, metadata !DIExpression()), !dbg !4316
  %12 = icmp ult i64 %11, -3, !dbg !4324
  br i1 %12, label %13, label %17, !dbg !4326

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !4327
  %15 = icmp eq i32 %14, 0, !dbg !4327
  br i1 %15, label %16, label %29, !dbg !4328

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4329, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %10, metadata !4336, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i32 0, metadata !4339, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 8, metadata !4340, metadata !DIExpression()), !dbg !4341
  store i64 0, ptr %10, align 1, !dbg !4343
  br label %29, !dbg !4344

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4345
  br i1 %18, label %19, label %20, !dbg !4347

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4348
  unreachable, !dbg !4348

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4349

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4351
  br i1 %23, label %29, label %24, !dbg !4352

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4353
  br i1 %25, label %29, label %26, !dbg !4356

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4357, !tbaa !975
  %28 = zext i8 %27 to i32, !dbg !4358
  store i32 %28, ptr %6, align 4, !dbg !4359, !tbaa !966
  br label %29, !dbg !4360

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4316
  ret i64 %30, !dbg !4361
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4362 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4368 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4370, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4371, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %2, metadata !4372, metadata !DIExpression()), !dbg !4374
  %4 = icmp eq i64 %2, 0, !dbg !4375
  br i1 %4, label %8, label %5, !dbg !4375

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4375
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4375
  br i1 %7, label %13, label %8, !dbg !4375

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4374
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4374
  %9 = mul i64 %2, %1, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %9, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata ptr %0, metadata !4377, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %9, metadata !4380, metadata !DIExpression()), !dbg !4381
  %10 = icmp eq i64 %9, 0, !dbg !4383
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4383
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #43, !dbg !4384
  br label %15, !dbg !4385

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4374
  %14 = tail call ptr @__errno_location() #40, !dbg !4386
  store i32 12, ptr %14, align 4, !dbg !4388, !tbaa !966
  br label %15, !dbg !4389

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4374
  ret ptr %16, !dbg !4390
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4391 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4395, metadata !DIExpression()), !dbg !4400
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4401
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4396, metadata !DIExpression()), !dbg !4402
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4403
  %4 = icmp eq i32 %3, 0, !dbg !4403
  br i1 %4, label %5, label %12, !dbg !4405

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4406, metadata !DIExpression()), !dbg !4410
  %6 = load i16, ptr %2, align 16, !dbg !4413
  %7 = icmp eq i16 %6, 67, !dbg !4413
  br i1 %7, label %11, label %8, !dbg !4414

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4406, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata ptr @.str.1.162, metadata !4409, metadata !DIExpression()), !dbg !4415
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.162, i64 6), !dbg !4417
  %10 = icmp eq i32 %9, 0, !dbg !4418
  br i1 %10, label %11, label %12, !dbg !4419

11:                                               ; preds = %8, %5
  br label %12, !dbg !4420

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4400
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4421
  ret i1 %13, !dbg !4421
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4426, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata ptr %1, metadata !4427, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %2, metadata !4428, metadata !DIExpression()), !dbg !4429
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4430
  ret i32 %4, !dbg !4431
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4432 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4436, metadata !DIExpression()), !dbg !4437
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4438
  ret ptr %2, !dbg !4439
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4440 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4442, metadata !DIExpression()), !dbg !4444
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4445
  call void @llvm.dbg.value(metadata ptr %2, metadata !4443, metadata !DIExpression()), !dbg !4444
  ret ptr %2, !dbg !4446
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4449, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata ptr %1, metadata !4450, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %2, metadata !4451, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i32 %0, metadata !4442, metadata !DIExpression()), !dbg !4457
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %4, metadata !4443, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %4, metadata !4452, metadata !DIExpression()), !dbg !4456
  %5 = icmp eq ptr %4, null, !dbg !4460
  br i1 %5, label %6, label %9, !dbg !4461

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4462
  br i1 %7, label %19, label %8, !dbg !4465

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4466, !tbaa !975
  br label %19, !dbg !4467

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4468
  call void @llvm.dbg.value(metadata i64 %10, metadata !4453, metadata !DIExpression()), !dbg !4469
  %11 = icmp ult i64 %10, %2, !dbg !4470
  br i1 %11, label %12, label %14, !dbg !4472

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4473
  call void @llvm.dbg.value(metadata ptr %1, metadata !4475, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata ptr %4, metadata !4478, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %13, metadata !4479, metadata !DIExpression()), !dbg !4480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4482
  br label %19, !dbg !4483

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4484
  br i1 %15, label %19, label %16, !dbg !4487

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4488
  call void @llvm.dbg.value(metadata ptr %1, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata ptr %4, metadata !4478, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %17, metadata !4479, metadata !DIExpression()), !dbg !4490
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4492
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4493
  store i8 0, ptr %18, align 1, !dbg !4494, !tbaa !975
  br label %19, !dbg !4495

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4496
  ret i32 %20, !dbg !4497
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
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!76, !460, !464, !479, !755, !790, !528, !542, !593, !792, !747, !799, !833, !835, !854, !858, !860, !862, !864, !774, !866, !869, !873, !875}
!llvm.ident = !{!877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877, !877}
!llvm.module.flags = !{!878, !879, !880, !881, !882, !883}

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
!122 = !{!104, !123, !124, !129, !130, !131, !134, !136, !137, !128, !133, !138}
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !125, line: 63, baseType: !126)
!125 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !127, line: 152, baseType: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!478 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !479, file: !480, line: 66, type: !523, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!481 = !{!130, !136}
!482 = !{!483, !485, !505, !507, !509, !511, !477, !513, !515, !517, !519, !521}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !480, line: 272, type: !306, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "old_file_name", scope: !487, file: !480, line: 304, type: !134, isLocal: true, isDefinition: true)
!487 = distinct !DISubprogram(name: "verror_at_line", scope: !480, file: !480, line: 298, type: !488, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !498)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !104, !104, !134, !79, !134, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !492)
!492 = !{!493, !495, !496, !497}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !491, file: !494, baseType: !79, size: 32)
!494 = !DIFile(filename: "lib/error.c", directory: "/src")
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !491, file: !494, baseType: !79, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !491, file: !494, baseType: !130, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !491, file: !494, baseType: !130, size: 64, offset: 128)
!498 = !{!499, !500, !501, !502, !503, !504}
!499 = !DILocalVariable(name: "status", arg: 1, scope: !487, file: !480, line: 298, type: !104)
!500 = !DILocalVariable(name: "errnum", arg: 2, scope: !487, file: !480, line: 298, type: !104)
!501 = !DILocalVariable(name: "file_name", arg: 3, scope: !487, file: !480, line: 298, type: !134)
!502 = !DILocalVariable(name: "line_number", arg: 4, scope: !487, file: !480, line: 298, type: !79)
!503 = !DILocalVariable(name: "message", arg: 5, scope: !487, file: !480, line: 298, type: !134)
!504 = !DILocalVariable(name: "args", arg: 6, scope: !487, file: !480, line: 298, type: !490)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "old_line_number", scope: !487, file: !480, line: 305, type: !79, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !480, line: 338, type: !313, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !345, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !323, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "error_message_count", scope: !479, file: !480, line: 69, type: !79, isLocal: false, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !479, file: !480, line: 295, type: !104, isLocal: false, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !71, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !194, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !480, line: 214, type: !306, isLocal: true, isDefinition: true)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null}
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "program_name", scope: !528, file: !529, line: 31, type: !134, isLocal: false, isDefinition: true)
!528 = distinct !DICompileUnit(language: DW_LANG_C11, file: !529, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !530, globals: !531, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!530 = !{!129}
!531 = !{!526, !532, !534}
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !529, line: 46, type: !345, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !529, line: 49, type: !313, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "utf07FF", scope: !538, file: !539, line: 46, type: !566, isLocal: true, isDefinition: true)
!538 = distinct !DISubprogram(name: "proper_name_lite", scope: !539, file: !539, line: 38, type: !540, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !544)
!539 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!540 = !DISubroutineType(types: !541)
!541 = !{!134, !134, !134}
!542 = distinct !DICompileUnit(language: DW_LANG_C11, file: !539, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !543, splitDebugInlining: false, nameTableKind: None)
!543 = !{!536}
!544 = !{!545, !546, !547, !548, !553}
!545 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !538, file: !539, line: 38, type: !134)
!546 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !538, file: !539, line: 38, type: !134)
!547 = !DILocalVariable(name: "translation", scope: !538, file: !539, line: 40, type: !134)
!548 = !DILocalVariable(name: "w", scope: !538, file: !539, line: 47, type: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !550, line: 37, baseType: !551)
!550 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !127, line: 57, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !127, line: 42, baseType: !79)
!553 = !DILocalVariable(name: "mbs", scope: !538, file: !539, line: 48, type: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !555, line: 6, baseType: !556)
!555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !557, line: 21, baseType: !558)
!557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 13, size: 64, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !558, file: !557, line: 15, baseType: !104, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !558, file: !557, line: 20, baseType: !562, size: 32, offset: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !557, line: 16, size: 32, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !562, file: !557, line: 18, baseType: !79, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !562, file: !557, line: 19, baseType: !313, size: 32)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16, elements: !324)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !569, line: 78, type: !345, isLocal: true, isDefinition: true)
!569 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !569, line: 79, type: !318, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !569, line: 80, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 13)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !569, line: 81, type: !574, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !569, line: 82, type: !295, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !569, line: 83, type: !323, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !569, line: 84, type: !345, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !569, line: 85, type: !71, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !569, line: 86, type: !71, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !569, line: 87, type: !345, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !593, file: !569, line: 76, type: !665, isLocal: false, isDefinition: true)
!593 = distinct !DICompileUnit(language: DW_LANG_C11, file: !569, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !594, retainedTypes: !600, globals: !601, splitDebugInlining: false, nameTableKind: None)
!594 = !{!108, !595, !87}
!595 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !109, line: 254, baseType: !79, size: 32, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!598 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!599 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!600 = !{!104, !123, !131}
!601 = !{!567, !570, !572, !577, !579, !581, !583, !585, !587, !589, !591, !602, !606, !616, !618, !623, !625, !627, !629, !631, !654, !661, !663}
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !593, file: !569, line: 92, type: !604, isLocal: false, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 320, elements: !62)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !593, file: !569, line: 1040, type: !608, isLocal: false, isDefinition: true)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !569, line: 56, size: 448, elements: !609)
!609 = !{!610, !611, !612, !614, !615}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !608, file: !569, line: 59, baseType: !108, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !569, line: 62, baseType: !104, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !608, file: !569, line: 66, baseType: !613, size: 256, offset: 64)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !346)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !608, file: !569, line: 69, baseType: !134, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !608, file: !569, line: 72, baseType: !134, size: 64, offset: 384)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !593, file: !569, line: 107, type: !608, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "slot0", scope: !593, file: !569, line: 831, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 256)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !569, line: 321, type: !323, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !569, line: 357, type: !323, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !569, line: 358, type: !323, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !569, line: 199, type: !71, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "quote", scope: !633, file: !569, line: 228, type: !652, isLocal: true, isDefinition: true)
!633 = distinct !DISubprogram(name: "gettext_quote", scope: !569, file: !569, line: 197, type: !634, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!134, !134, !108}
!636 = !{!637, !638, !639, !640, !641}
!637 = !DILocalVariable(name: "msgid", arg: 1, scope: !633, file: !569, line: 197, type: !134)
!638 = !DILocalVariable(name: "s", arg: 2, scope: !633, file: !569, line: 197, type: !108)
!639 = !DILocalVariable(name: "translation", scope: !633, file: !569, line: 199, type: !134)
!640 = !DILocalVariable(name: "w", scope: !633, file: !569, line: 229, type: !549)
!641 = !DILocalVariable(name: "mbs", scope: !633, file: !569, line: 230, type: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !555, line: 6, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !557, line: 21, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 13, size: 64, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !644, file: !557, line: 15, baseType: !104, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !644, file: !557, line: 20, baseType: !648, size: 32, offset: 32)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !557, line: 16, size: 32, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !648, file: !557, line: 18, baseType: !79, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !648, file: !557, line: 19, baseType: !313, size: 32)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !653)
!653 = !{!325, !315}
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "slotvec", scope: !593, file: !569, line: 834, type: !656, isLocal: true, isDefinition: true)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !569, line: 823, size: 128, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !657, file: !569, line: 825, baseType: !131, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !657, file: !569, line: 826, baseType: !129, size: 64, offset: 64)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "nslots", scope: !593, file: !569, line: 832, type: !104, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "slotvec0", scope: !593, file: !569, line: 833, type: !657, isLocal: true, isDefinition: true)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 704, elements: !667)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!667 = !{!668}
!668 = !DISubrange(count: 11)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !671, line: 67, type: !180, isLocal: true, isDefinition: true)
!671 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !671, line: 69, type: !71, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !671, line: 83, type: !71, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !671, line: 83, type: !313, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !671, line: 85, type: !323, isLocal: true, isDefinition: true)
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
!691 = distinct !DIGlobalVariable(scope: null, file: !671, line: 105, type: !149, isLocal: true, isDefinition: true)
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
!703 = distinct !DIGlobalVariable(scope: null, file: !671, line: 120, type: !187, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !671, line: 127, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 36)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !671, line: 134, type: !364, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !671, line: 142, type: !713, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 44)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !671, line: 150, type: !718, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 48)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !671, line: 159, type: !723, isLocal: true, isDefinition: true)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 52)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !671, line: 170, type: !728, isLocal: true, isDefinition: true)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 60)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !671, line: 248, type: !295, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !671, line: 248, type: !391, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !295, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !164, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !364, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !671, line: 259, type: !3, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !671, line: 259, type: !9, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !747, file: !748, line: 26, type: !750, isLocal: false, isDefinition: true)
!747 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !749, splitDebugInlining: false, nameTableKind: None)
!748 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!749 = !{!745}
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 47)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "exit_failure", scope: !755, file: !756, line: 24, type: !758, isLocal: false, isDefinition: true)
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !757, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!757 = !{!753}
!758 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !761, line: 34, type: !332, isLocal: true, isDefinition: true)
!761 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !761, line: 34, type: !71, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !761, line: 34, type: !159, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !768, line: 80, type: !71, isLocal: true, isDefinition: true)
!768 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !771, line: 108, type: !56, isLocal: true, isDefinition: true)
!771 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "internal_state", scope: !774, file: !771, line: 97, type: !777, isLocal: true, isDefinition: true)
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !775, globals: !776, splitDebugInlining: false, nameTableKind: None)
!775 = !{!130, !131, !136}
!776 = !{!769, !772}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !555, line: 6, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !557, line: 21, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 13, size: 64, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !779, file: !557, line: 15, baseType: !104, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !779, file: !557, line: 20, baseType: !783, size: 32, offset: 32)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !779, file: !557, line: 16, size: 32, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !783, file: !557, line: 18, baseType: !79, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !783, file: !557, line: 19, baseType: !313, size: 32)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !789, line: 35, type: !318, isLocal: true, isDefinition: true)
!789 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !793, retainedTypes: !797, globals: !798, splitDebugInlining: false, nameTableKind: None)
!793 = !{!794}
!794 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !671, line: 40, baseType: !79, size: 32, elements: !795)
!795 = !{!796}
!796 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!797 = !{!130}
!798 = !{!669, !672, !674, !676, !678, !680, !685, !690, !692, !697, !702, !704, !709, !711, !716, !721, !726, !731, !733, !735, !737, !739, !741, !743}
!799 = distinct !DICompileUnit(language: DW_LANG_C11, file: !800, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !801, retainedTypes: !832, splitDebugInlining: false, nameTableKind: None)
!800 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!801 = !{!802, !814}
!802 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !803, file: !800, line: 188, baseType: !79, size: 32, elements: !812)
!803 = distinct !DISubprogram(name: "x2nrealloc", scope: !800, file: !800, line: 176, type: !804, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !807)
!804 = !DISubroutineType(types: !805)
!805 = !{!130, !130, !806, !131}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!807 = !{!808, !809, !810, !811}
!808 = !DILocalVariable(name: "p", arg: 1, scope: !803, file: !800, line: 176, type: !130)
!809 = !DILocalVariable(name: "pn", arg: 2, scope: !803, file: !800, line: 176, type: !806)
!810 = !DILocalVariable(name: "s", arg: 3, scope: !803, file: !800, line: 176, type: !131)
!811 = !DILocalVariable(name: "n", scope: !803, file: !800, line: 178, type: !131)
!812 = !{!813}
!813 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!814 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !815, file: !800, line: 228, baseType: !79, size: 32, elements: !812)
!815 = distinct !DISubprogram(name: "xpalloc", scope: !800, file: !800, line: 223, type: !816, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !822)
!816 = !DISubroutineType(types: !817)
!817 = !{!130, !130, !818, !819, !821, !819}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !820, line: 130, baseType: !821)
!820 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !132, line: 35, baseType: !128)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831}
!823 = !DILocalVariable(name: "pa", arg: 1, scope: !815, file: !800, line: 223, type: !130)
!824 = !DILocalVariable(name: "pn", arg: 2, scope: !815, file: !800, line: 223, type: !818)
!825 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !815, file: !800, line: 223, type: !819)
!826 = !DILocalVariable(name: "n_max", arg: 4, scope: !815, file: !800, line: 223, type: !821)
!827 = !DILocalVariable(name: "s", arg: 5, scope: !815, file: !800, line: 223, type: !819)
!828 = !DILocalVariable(name: "n0", scope: !815, file: !800, line: 230, type: !819)
!829 = !DILocalVariable(name: "n", scope: !815, file: !800, line: 237, type: !819)
!830 = !DILocalVariable(name: "nbytes", scope: !815, file: !800, line: 248, type: !819)
!831 = !DILocalVariable(name: "adjusted_nbytes", scope: !815, file: !800, line: 252, type: !819)
!832 = !{!129, !130, !137, !128, !133}
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !834, splitDebugInlining: false, nameTableKind: None)
!834 = !{!759, !762, !764}
!835 = distinct !DICompileUnit(language: DW_LANG_C11, file: !836, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !837, globals: !853, splitDebugInlining: false, nameTableKind: None)
!836 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!837 = !{!838, !846}
!838 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !839, line: 30, baseType: !79, size: 32, elements: !840)
!839 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!840 = !{!841, !842, !843, !844, !845}
!841 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!842 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!843 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!844 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!845 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!846 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !847, line: 24, baseType: !79, size: 32, elements: !848)
!847 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!848 = !{!849, !850, !851, !852}
!849 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!850 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!851 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!852 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!853 = !{!766}
!854 = distinct !DICompileUnit(language: DW_LANG_C11, file: !855, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !856, retainedTypes: !857, splitDebugInlining: false, nameTableKind: None)
!855 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!856 = !{!838}
!857 = !{!137, !128, !133, !138}
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !797, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !865, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !797, splitDebugInlining: false, nameTableKind: None)
!865 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !868, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!868 = !{!137, !133, !130}
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !870, splitDebugInlining: false, nameTableKind: None)
!870 = !{!871, !787}
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !789, line: 35, type: !323, isLocal: true, isDefinition: true)
!873 = distinct !DICompileUnit(language: DW_LANG_C11, file: !874, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!874 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !797, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!877 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!878 = !{i32 7, !"Dwarf Version", i32 5}
!879 = !{i32 2, !"Debug Info Version", i32 3}
!880 = !{i32 1, !"wchar_size", i32 4}
!881 = !{i32 8, !"PIC Level", i32 2}
!882 = !{i32 7, !"PIE Level", i32 2}
!883 = !{i32 7, !"uwtable", i32 2}
!884 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 62, type: !885, scopeLine: 63, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !104}
!887 = !{!888}
!888 = !DILocalVariable(name: "status", arg: 1, scope: !884, file: !2, line: 62, type: !104)
!889 = !DILocation(line: 0, scope: !884)
!890 = !DILocation(line: 64, column: 14, scope: !891)
!891 = distinct !DILexicalBlock(scope: !884, file: !2, line: 64, column: 7)
!892 = !DILocation(line: 64, column: 7, scope: !884)
!893 = !DILocation(line: 65, column: 5, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !2, line: 65, column: 5)
!895 = !{!896, !896, i64 0}
!896 = !{!"any pointer", !897, i64 0}
!897 = !{!"omnipotent char", !898, i64 0}
!898 = !{!"Simple C/C++ TBAA"}
!899 = !DILocation(line: 68, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !891, file: !2, line: 67, column: 5)
!901 = !DILocation(line: 69, column: 7, scope: !900)
!902 = !DILocation(line: 736, column: 3, scope: !903, inlinedAt: !905)
!903 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !103, file: !103, line: 734, type: !524, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !904)
!904 = !{}
!905 = distinct !DILocation(line: 79, column: 7, scope: !900)
!906 = !DILocation(line: 81, column: 7, scope: !900)
!907 = !DILocation(line: 84, column: 7, scope: !900)
!908 = !DILocation(line: 87, column: 7, scope: !900)
!909 = !DILocation(line: 90, column: 7, scope: !900)
!910 = !DILocation(line: 93, column: 7, scope: !900)
!911 = !DILocation(line: 94, column: 7, scope: !900)
!912 = !DILocation(line: 744, column: 3, scope: !913, inlinedAt: !914)
!913 = distinct !DISubprogram(name: "emit_size_note", scope: !103, file: !103, line: 742, type: !524, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !904)
!914 = distinct !DILocation(line: 95, column: 7, scope: !900)
!915 = !DILocation(line: 96, column: 7, scope: !900)
!916 = !DILocalVariable(name: "program", arg: 1, scope: !917, file: !103, line: 836, type: !134)
!917 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !103, file: !103, line: 836, type: !918, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !134}
!920 = !{!916, !921, !928, !929, !931, !932}
!921 = !DILocalVariable(name: "infomap", scope: !917, file: !103, line: 838, type: !922)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 896, elements: !72)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !917, file: !103, line: 838, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !924, file: !103, line: 838, baseType: !134, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !924, file: !103, line: 838, baseType: !134, size: 64, offset: 64)
!928 = !DILocalVariable(name: "node", scope: !917, file: !103, line: 848, type: !134)
!929 = !DILocalVariable(name: "map_prog", scope: !917, file: !103, line: 849, type: !930)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!931 = !DILocalVariable(name: "lc_messages", scope: !917, file: !103, line: 861, type: !134)
!932 = !DILocalVariable(name: "url_program", scope: !917, file: !103, line: 874, type: !134)
!933 = !DILocation(line: 0, scope: !917, inlinedAt: !934)
!934 = distinct !DILocation(line: 100, column: 7, scope: !900)
!935 = !DILocation(line: 857, column: 3, scope: !917, inlinedAt: !934)
!936 = !DILocation(line: 861, column: 29, scope: !917, inlinedAt: !934)
!937 = !DILocation(line: 862, column: 7, scope: !938, inlinedAt: !934)
!938 = distinct !DILexicalBlock(scope: !917, file: !103, line: 862, column: 7)
!939 = !DILocation(line: 862, column: 19, scope: !938, inlinedAt: !934)
!940 = !DILocation(line: 862, column: 22, scope: !938, inlinedAt: !934)
!941 = !DILocation(line: 862, column: 7, scope: !917, inlinedAt: !934)
!942 = !DILocation(line: 868, column: 7, scope: !943, inlinedAt: !934)
!943 = distinct !DILexicalBlock(scope: !938, file: !103, line: 863, column: 5)
!944 = !DILocation(line: 870, column: 5, scope: !943, inlinedAt: !934)
!945 = !DILocation(line: 875, column: 3, scope: !917, inlinedAt: !934)
!946 = !DILocation(line: 877, column: 3, scope: !917, inlinedAt: !934)
!947 = !DILocation(line: 102, column: 3, scope: !884)
!948 = !DISubprogram(name: "dcgettext", scope: !949, file: !949, line: 51, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!949 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!950 = !DISubroutineType(types: !951)
!951 = !{!129, !134, !134, !104}
!952 = !DISubprogram(name: "__fprintf_chk", scope: !953, file: !953, line: 93, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!953 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!954 = !DISubroutineType(types: !955)
!955 = !{!104, !956, !104, !957, null}
!956 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !249)
!957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!958 = !DISubprogram(name: "__printf_chk", scope: !953, file: !953, line: 95, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!959 = !DISubroutineType(types: !960)
!960 = !{!104, !104, !957, null}
!961 = !DISubprogram(name: "fputs_unlocked", scope: !125, file: !125, line: 691, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!962 = !DISubroutineType(types: !963)
!963 = !{!104, !957, !956}
!964 = !DILocation(line: 0, scope: !227)
!965 = !DILocation(line: 581, column: 7, scope: !235)
!966 = !{!967, !967, i64 0}
!967 = !{!"int", !897, i64 0}
!968 = !DILocation(line: 581, column: 19, scope: !235)
!969 = !DILocation(line: 581, column: 7, scope: !227)
!970 = !DILocation(line: 585, column: 26, scope: !234)
!971 = !DILocation(line: 0, scope: !234)
!972 = !DILocation(line: 586, column: 23, scope: !234)
!973 = !DILocation(line: 586, column: 28, scope: !234)
!974 = !DILocation(line: 586, column: 32, scope: !234)
!975 = !{!897, !897, i64 0}
!976 = !DILocation(line: 586, column: 38, scope: !234)
!977 = !DILocalVariable(name: "__s1", arg: 1, scope: !978, file: !979, line: 1359, type: !134)
!978 = distinct !DISubprogram(name: "streq", scope: !979, file: !979, line: 1359, type: !980, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !982)
!979 = !DIFile(filename: "./lib/string.h", directory: "/src")
!980 = !DISubroutineType(types: !981)
!981 = !{!137, !134, !134}
!982 = !{!977, !983}
!983 = !DILocalVariable(name: "__s2", arg: 2, scope: !978, file: !979, line: 1359, type: !134)
!984 = !DILocation(line: 0, scope: !978, inlinedAt: !985)
!985 = distinct !DILocation(line: 586, column: 41, scope: !234)
!986 = !DILocation(line: 1361, column: 11, scope: !978, inlinedAt: !985)
!987 = !DILocation(line: 1361, column: 10, scope: !978, inlinedAt: !985)
!988 = !DILocation(line: 586, column: 19, scope: !234)
!989 = !DILocation(line: 587, column: 5, scope: !234)
!990 = !DILocation(line: 588, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !227, file: !103, line: 588, column: 7)
!992 = !DILocation(line: 588, column: 7, scope: !227)
!993 = !DILocation(line: 590, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !103, line: 589, column: 5)
!995 = !DILocation(line: 591, column: 7, scope: !994)
!996 = !DILocation(line: 595, column: 37, scope: !227)
!997 = !DILocation(line: 595, column: 35, scope: !227)
!998 = !DILocation(line: 596, column: 29, scope: !227)
!999 = !DILocation(line: 597, column: 8, scope: !242)
!1000 = !DILocation(line: 597, column: 7, scope: !227)
!1001 = !DILocation(line: 604, column: 24, scope: !241)
!1002 = !DILocation(line: 604, column: 12, scope: !242)
!1003 = !DILocation(line: 0, scope: !240)
!1004 = !DILocation(line: 610, column: 16, scope: !240)
!1005 = !DILocation(line: 610, column: 7, scope: !240)
!1006 = !DILocation(line: 611, column: 21, scope: !240)
!1007 = !{!1008, !1008, i64 0}
!1008 = !{!"short", !897, i64 0}
!1009 = !DILocation(line: 611, column: 19, scope: !240)
!1010 = !DILocation(line: 611, column: 16, scope: !240)
!1011 = !DILocation(line: 610, column: 30, scope: !240)
!1012 = distinct !{!1012, !1005, !1006, !1013}
!1013 = !{!"llvm.loop.mustprogress"}
!1014 = !DILocation(line: 612, column: 18, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !240, file: !103, line: 612, column: 11)
!1016 = !DILocation(line: 612, column: 11, scope: !240)
!1017 = !DILocation(line: 618, column: 5, scope: !240)
!1018 = !DILocation(line: 620, column: 23, scope: !227)
!1019 = !DILocation(line: 625, column: 39, scope: !227)
!1020 = !DILocation(line: 626, column: 3, scope: !227)
!1021 = !DILocation(line: 626, column: 10, scope: !227)
!1022 = !DILocation(line: 626, column: 21, scope: !227)
!1023 = !DILocation(line: 628, column: 44, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !103, line: 628, column: 11)
!1025 = distinct !DILexicalBlock(scope: !227, file: !103, line: 627, column: 5)
!1026 = !DILocation(line: 628, column: 32, scope: !1024)
!1027 = !DILocation(line: 628, column: 49, scope: !1024)
!1028 = !DILocation(line: 628, column: 11, scope: !1025)
!1029 = !DILocation(line: 630, column: 11, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !103, line: 630, column: 11)
!1031 = !DILocation(line: 630, column: 11, scope: !1025)
!1032 = !DILocation(line: 632, column: 26, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !103, line: 632, column: 15)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !103, line: 631, column: 9)
!1035 = !DILocation(line: 632, column: 34, scope: !1033)
!1036 = !DILocation(line: 632, column: 37, scope: !1033)
!1037 = !DILocation(line: 632, column: 15, scope: !1034)
!1038 = !DILocation(line: 636, column: 16, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !103, line: 636, column: 15)
!1040 = !DILocation(line: 636, column: 29, scope: !1039)
!1041 = !DILocation(line: 640, column: 16, scope: !1025)
!1042 = distinct !{!1042, !1020, !1043, !1013}
!1043 = !DILocation(line: 641, column: 5, scope: !227)
!1044 = !DILocation(line: 644, column: 3, scope: !227)
!1045 = !DILocation(line: 0, scope: !978, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 648, column: 31, scope: !227)
!1047 = !DILocation(line: 0, scope: !978, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 649, column: 31, scope: !227)
!1049 = !DILocation(line: 0, scope: !978, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 650, column: 31, scope: !227)
!1051 = !DILocation(line: 0, scope: !978, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 651, column: 31, scope: !227)
!1053 = !DILocation(line: 0, scope: !978, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 652, column: 31, scope: !227)
!1055 = !DILocation(line: 0, scope: !978, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 653, column: 31, scope: !227)
!1057 = !DILocation(line: 0, scope: !978, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 654, column: 31, scope: !227)
!1059 = !DILocation(line: 0, scope: !978, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 655, column: 31, scope: !227)
!1061 = !DILocation(line: 0, scope: !978, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 656, column: 31, scope: !227)
!1063 = !DILocation(line: 0, scope: !978, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 657, column: 31, scope: !227)
!1065 = !DILocation(line: 663, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !227, file: !103, line: 663, column: 7)
!1067 = !DILocation(line: 664, column: 7, scope: !1066)
!1068 = !DILocation(line: 664, column: 10, scope: !1066)
!1069 = !DILocation(line: 663, column: 7, scope: !227)
!1070 = !DILocation(line: 669, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !103, line: 665, column: 5)
!1072 = !DILocation(line: 671, column: 5, scope: !1071)
!1073 = !DILocation(line: 676, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !103, line: 673, column: 5)
!1075 = !DILocation(line: 679, column: 3, scope: !227)
!1076 = !DILocation(line: 683, column: 3, scope: !227)
!1077 = !DILocation(line: 686, column: 3, scope: !227)
!1078 = !DILocation(line: 688, column: 3, scope: !227)
!1079 = !DILocation(line: 691, column: 3, scope: !227)
!1080 = !DILocation(line: 695, column: 3, scope: !227)
!1081 = !DILocation(line: 696, column: 1, scope: !227)
!1082 = !DISubprogram(name: "setlocale", scope: !1083, file: !1083, line: 122, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1083 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!129, !104, !134}
!1086 = !DISubprogram(name: "strncmp", scope: !1087, file: !1087, line: 159, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1087 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!104, !134, !134, !131}
!1090 = !DISubprogram(name: "exit", scope: !1091, file: !1091, line: 624, type: !885, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1091 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1092 = !DISubprogram(name: "getenv", scope: !1091, file: !1091, line: 641, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!129, !134}
!1095 = !DISubprogram(name: "strcmp", scope: !1087, file: !1087, line: 156, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!104, !134, !134}
!1098 = !DISubprogram(name: "strspn", scope: !1087, file: !1087, line: 297, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!133, !134, !134}
!1101 = !DISubprogram(name: "strchr", scope: !1087, file: !1087, line: 246, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!129, !134, !104}
!1104 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1110 = !DISubprogram(name: "strcspn", scope: !1087, file: !1087, line: 293, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1111 = !DISubprogram(name: "fwrite_unlocked", scope: !125, file: !125, line: 704, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!131, !1114, !131, !131, !956}
!1114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1117 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 201, type: !1118, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1121)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!104, !104, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1129, !1130, !1167, !1168, !1171, !1174, !1175, !1176, !1177, !1179}
!1122 = !DILocalVariable(name: "argc", arg: 1, scope: !1117, file: !2, line: 201, type: !104)
!1123 = !DILocalVariable(name: "argv", arg: 2, scope: !1117, file: !2, line: 201, type: !1120)
!1124 = !DILocalVariable(name: "got_size", scope: !1117, file: !2, line: 203, type: !137)
!1125 = !DILocalVariable(name: "size", scope: !1117, file: !2, line: 204, type: !124)
!1126 = !DILocalVariable(name: "rsize", scope: !1117, file: !2, line: 205, type: !124)
!1127 = !DILocalVariable(name: "rel_mode", scope: !1117, file: !2, line: 206, type: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !2, line: 59, baseType: !78)
!1129 = !DILocalVariable(name: "c", scope: !1117, file: !2, line: 207, type: !104)
!1130 = !DILocalVariable(name: "sb", scope: !1131, file: !2, line: 321, type: !1133)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 320, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 319, column: 7)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1134, line: 26, size: 1152, elements: !1135)
!1134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1135 = !{!1136, !1138, !1140, !1142, !1144, !1146, !1148, !1149, !1150, !1151, !1153, !1155, !1163, !1164, !1165}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1133, file: !1134, line: 31, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !127, line: 145, baseType: !133)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1133, file: !1134, line: 36, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !127, line: 148, baseType: !133)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1133, file: !1134, line: 44, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !127, line: 151, baseType: !133)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1133, file: !1134, line: 45, baseType: !1143, size: 32, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !127, line: 150, baseType: !79)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1133, file: !1134, line: 47, baseType: !1145, size: 32, offset: 224)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !127, line: 146, baseType: !79)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1133, file: !1134, line: 48, baseType: !1147, size: 32, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !127, line: 147, baseType: !79)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1133, file: !1134, line: 50, baseType: !104, size: 32, offset: 288)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1133, file: !1134, line: 52, baseType: !1137, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1133, file: !1134, line: 57, baseType: !126, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1133, file: !1134, line: 61, baseType: !1152, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !127, line: 175, baseType: !128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1133, file: !1134, line: 63, baseType: !1154, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !127, line: 180, baseType: !128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1133, file: !1134, line: 74, baseType: !1156, size: 128, offset: 576)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1157, line: 11, size: 128, elements: !1158)
!1157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1158 = !{!1159, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1156, file: !1157, line: 16, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !127, line: 160, baseType: !128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1156, file: !1157, line: 21, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !127, line: 197, baseType: !128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1133, file: !1134, line: 75, baseType: !1156, size: 128, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1133, file: !1134, line: 76, baseType: !1156, size: 128, offset: 832)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1133, file: !1134, line: 89, baseType: !1166, size: 192, offset: 960)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 192, elements: !333)
!1167 = !DILocalVariable(name: "file_size", scope: !1131, file: !2, line: 322, type: !124)
!1168 = !DILocalVariable(name: "ref_fd", scope: !1169, file: !2, line: 329, type: !104)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 328, column: 9)
!1170 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 325, column: 11)
!1171 = !DILocalVariable(name: "file_end", scope: !1172, file: !2, line: 332, type: !124)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 331, column: 13)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 330, column: 15)
!1174 = !DILocalVariable(name: "saved_errno", scope: !1172, file: !2, line: 333, type: !104)
!1175 = !DILocalVariable(name: "oflags", scope: !1117, file: !2, line: 353, type: !104)
!1176 = !DILocalVariable(name: "errors", scope: !1117, file: !2, line: 354, type: !137)
!1177 = !DILocalVariable(name: "fname", scope: !1178, file: !2, line: 356, type: !134)
!1178 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 356, column: 3)
!1179 = !DILocalVariable(name: "fd", scope: !1180, file: !2, line: 358, type: !104)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 357, column: 5)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 356, column: 3)
!1182 = !DILocation(line: 0, scope: !1117)
!1183 = !DILocation(line: 210, column: 21, scope: !1117)
!1184 = !DILocation(line: 210, column: 3, scope: !1117)
!1185 = !DILocation(line: 211, column: 3, scope: !1117)
!1186 = !DILocation(line: 212, column: 3, scope: !1117)
!1187 = !DILocation(line: 213, column: 3, scope: !1117)
!1188 = !DILocation(line: 215, column: 3, scope: !1117)
!1189 = !DILocation(line: 217, column: 3, scope: !1117)
!1190 = !DILocation(line: 217, column: 15, scope: !1117)
!1191 = !DILocation(line: 235, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 220, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 218, column: 5)
!1194 = !DILocation(line: 235, column: 11, scope: !1192)
!1195 = !DILocation(line: 222, column: 21, scope: !1192)
!1196 = !DILocation(line: 223, column: 11, scope: !1192)
!1197 = !DILocation(line: 226, column: 22, scope: !1192)
!1198 = !DILocation(line: 227, column: 11, scope: !1192)
!1199 = !DILocation(line: 230, column: 22, scope: !1192)
!1200 = !DILocation(line: 230, column: 20, scope: !1192)
!1201 = !DILocation(line: 231, column: 11, scope: !1192)
!1202 = distinct !{!1202, !1189, !1203, !1013}
!1203 = !DILocation(line: 286, column: 5, scope: !1117)
!1204 = !DILocation(line: 236, column: 19, scope: !1192)
!1205 = distinct !{!1205, !1194, !1204, !1013}
!1206 = !DILocation(line: 237, column: 19, scope: !1192)
!1207 = !DILocation(line: 237, column: 11, scope: !1192)
!1208 = !DILocation(line: 246, column: 15, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 238, column: 13)
!1210 = !DILocation(line: 250, column: 15, scope: !1209)
!1211 = !DILocation(line: 254, column: 15, scope: !1209)
!1212 = !DILocation(line: 0, scope: !1209)
!1213 = !DILocation(line: 257, column: 18, scope: !1192)
!1214 = !DILocation(line: 257, column: 11, scope: !1192)
!1215 = !DILocation(line: 258, column: 19, scope: !1192)
!1216 = distinct !{!1216, !1214, !1215, !1013}
!1217 = !DILocation(line: 259, column: 30, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 259, column: 15)
!1219 = !DILocation(line: 261, column: 19, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 261, column: 19)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 260, column: 13)
!1222 = !DILocation(line: 261, column: 19, scope: !1221)
!1223 = !DILocation(line: 263, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 262, column: 17)
!1225 = !DILocation(line: 265, column: 19, scope: !1224)
!1226 = !DILocation(line: 272, column: 30, scope: !1192)
!1227 = !DILocation(line: 271, column: 18, scope: !1192)
!1228 = !DILocation(line: 274, column: 35, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 274, column: 15)
!1230 = !DILocation(line: 275, column: 13, scope: !1229)
!1231 = !DILocation(line: 279, column: 9, scope: !1192)
!1232 = !DILocation(line: 281, column: 9, scope: !1192)
!1233 = !DILocation(line: 284, column: 11, scope: !1192)
!1234 = !DILocation(line: 288, column: 11, scope: !1117)
!1235 = !DILocation(line: 288, column: 8, scope: !1117)
!1236 = !DILocation(line: 292, column: 8, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 292, column: 7)
!1238 = !DILocation(line: 292, column: 17, scope: !1237)
!1239 = !DILocation(line: 294, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 293, column: 5)
!1241 = !DILocation(line: 296, column: 7, scope: !1240)
!1242 = !DILocation(line: 299, column: 16, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 299, column: 7)
!1244 = !DILocation(line: 301, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 300, column: 5)
!1246 = !DILocation(line: 303, column: 7, scope: !1245)
!1247 = !DILocation(line: 306, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 306, column: 7)
!1249 = !DILocation(line: 306, column: 18, scope: !1248)
!1250 = !DILocation(line: 308, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 307, column: 5)
!1252 = !DILocation(line: 310, column: 7, scope: !1251)
!1253 = !DILocation(line: 313, column: 12, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 313, column: 7)
!1255 = !DILocation(line: 313, column: 7, scope: !1117)
!1256 = !DILocation(line: 315, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 314, column: 5)
!1258 = !DILocation(line: 316, column: 7, scope: !1257)
!1259 = !DILocation(line: 319, column: 7, scope: !1117)
!1260 = !DILocation(line: 321, column: 7, scope: !1131)
!1261 = !DILocation(line: 321, column: 19, scope: !1131)
!1262 = !DILocation(line: 0, scope: !1131)
!1263 = !DILocation(line: 323, column: 11, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 323, column: 11)
!1265 = !DILocation(line: 323, column: 32, scope: !1264)
!1266 = !DILocation(line: 323, column: 11, scope: !1131)
!1267 = !DILocation(line: 324, column: 9, scope: !1264)
!1268 = !DILocalVariable(name: "sb", arg: 1, scope: !1269, file: !103, line: 911, type: !1272)
!1269 = distinct !DISubprogram(name: "usable_st_size", scope: !103, file: !103, line: 911, type: !1270, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1274)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!137, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1274 = !{!1268}
!1275 = !DILocation(line: 0, scope: !1269, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 325, column: 11, scope: !1170)
!1277 = !DILocation(line: 913, column: 11, scope: !1269, inlinedAt: !1276)
!1278 = !{!1279, !967, i64 24}
!1279 = !{!"stat", !1280, i64 0, !1280, i64 8, !1280, i64 16, !967, i64 24, !967, i64 28, !967, i64 32, !967, i64 36, !1280, i64 40, !1280, i64 48, !1280, i64 56, !1280, i64 64, !1281, i64 72, !1281, i64 88, !1281, i64 104, !897, i64 120}
!1280 = !{!"long", !897, i64 0}
!1281 = !{!"timespec", !1280, i64 0, !1280, i64 8}
!1282 = !DILocation(line: 913, column: 33, scope: !1269, inlinedAt: !1276)
!1283 = !DILocation(line: 325, column: 11, scope: !1131)
!1284 = !DILocation(line: 329, column: 30, scope: !1169)
!1285 = !DILocation(line: 329, column: 24, scope: !1169)
!1286 = !DILocation(line: 0, scope: !1169)
!1287 = !DILocation(line: 330, column: 17, scope: !1173)
!1288 = !DILocation(line: 330, column: 15, scope: !1169)
!1289 = !DILocation(line: 332, column: 32, scope: !1172)
!1290 = !DILocation(line: 0, scope: !1172)
!1291 = !DILocation(line: 333, column: 33, scope: !1172)
!1292 = !DILocation(line: 334, column: 15, scope: !1172)
!1293 = !DILocation(line: 335, column: 21, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 335, column: 19)
!1295 = !DILocation(line: 335, column: 19, scope: !1172)
!1296 = !DILocation(line: 340, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 338, column: 17)
!1298 = !DILocation(line: 326, column: 24, scope: !1170)
!1299 = !{!1279, !1280, i64 48}
!1300 = !DILocation(line: 344, column: 21, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 344, column: 11)
!1302 = !DILocation(line: 344, column: 11, scope: !1131)
!1303 = !DILocation(line: 345, column: 9, scope: !1301)
!1304 = !DILocation(line: 351, column: 5, scope: !1132)
!1305 = !DILocation(line: 351, column: 5, scope: !1131)
!1306 = !DILocation(line: 353, column: 28, scope: !1117)
!1307 = !DILocation(line: 353, column: 53, scope: !1117)
!1308 = !DILocation(line: 356, column: 36, scope: !1181)
!1309 = !DILocation(line: 0, scope: !1178)
!1310 = !DILocation(line: 356, column: 3, scope: !1178)
!1311 = !DILocation(line: 354, column: 8, scope: !1117)
!1312 = !DILocation(line: 383, column: 10, scope: !1117)
!1313 = !DILocation(line: 383, column: 3, scope: !1117)
!1314 = !DILocation(line: 358, column: 16, scope: !1180)
!1315 = !DILocation(line: 0, scope: !1180)
!1316 = !DILocation(line: 359, column: 14, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 359, column: 11)
!1318 = !DILocation(line: 359, column: 11, scope: !1180)
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
!1330 = !{!137, !104, !134, !124, !124, !1128}
!1331 = !{!1327, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1341, !1342, !1345}
!1332 = !DILocalVariable(name: "fname", arg: 2, scope: !1328, file: !2, line: 107, type: !134)
!1333 = !DILocalVariable(name: "ssize", arg: 3, scope: !1328, file: !2, line: 107, type: !124)
!1334 = !DILocalVariable(name: "rsize", arg: 4, scope: !1328, file: !2, line: 107, type: !124)
!1335 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !1328, file: !2, line: 108, type: !1128)
!1336 = !DILocalVariable(name: "sb", scope: !1328, file: !2, line: 110, type: !1133)
!1337 = !DILocalVariable(name: "nsize", scope: !1328, file: !2, line: 111, type: !124)
!1338 = !DILocalVariable(name: "blksize", scope: !1339, file: !2, line: 120, type: !821)
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
!1369 = !{!1279, !1280, i64 56}
!1370 = !DILocation(line: 0, scope: !1339, inlinedAt: !1353)
!1371 = !DILocation(line: 122, column: 11, scope: !1372, inlinedAt: !1353)
!1372 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 122, column: 11)
!1373 = !DILocation(line: 122, column: 11, scope: !1339, inlinedAt: !1353)
!1374 = !DILocation(line: 124, column: 11, scope: !1375, inlinedAt: !1353)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 123, column: 9)
!1376 = !DILocation(line: 130, column: 7, scope: !1328, inlinedAt: !1353)
!1377 = !DILocation(line: 134, column: 11, scope: !1343, inlinedAt: !1353)
!1378 = !DILocation(line: 0, scope: !1269, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 138, column: 15, scope: !1380, inlinedAt: !1353)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 138, column: 15)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 137, column: 9)
!1382 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 134, column: 11)
!1383 = !DILocation(line: 913, column: 11, scope: !1269, inlinedAt: !1379)
!1384 = !DILocation(line: 913, column: 33, scope: !1269, inlinedAt: !1379)
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
!1442 = !DILocation(line: 356, column: 48, scope: !1181)
!1443 = distinct !{!1443, !1310, !1444, !1013}
!1444 = !DILocation(line: 381, column: 5, scope: !1178)
!1445 = !DISubprogram(name: "bindtextdomain", scope: !949, file: !949, line: 86, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!129, !134, !134}
!1448 = !DISubprogram(name: "textdomain", scope: !949, file: !949, line: 82, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1449 = !DISubprogram(name: "atexit", scope: !1091, file: !1091, line: 602, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!104, !523}
!1452 = !DISubprogram(name: "getopt_long", scope: !446, file: !446, line: 66, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!104, !104, !1455, !134, !1457, !451}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1458 = !DISubprogram(name: "stat", scope: !1459, file: !1459, line: 205, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1459 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!104, !957, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1464 = !DISubprogram(name: "__errno_location", scope: !1465, file: !1465, line: 37, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1465 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!451}
!1468 = !DISubprogram(name: "open", scope: !1469, file: !1469, line: 181, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1469 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!104, !134, !104, null}
!1472 = !DISubprogram(name: "lseek", scope: !1473, file: !1473, line: 339, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1473 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!126, !104, !126, !104}
!1476 = !DISubprogram(name: "close", scope: !1473, file: !1473, line: 358, type: !1477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!104, !104}
!1479 = !DISubprogram(name: "fstat", scope: !1459, file: !1459, line: 210, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!104, !104, !1463}
!1482 = !DISubprogram(name: "ftruncate", scope: !1473, file: !1473, line: 1049, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!104, !104, !126}
!1485 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !465, file: !465, line: 50, type: !918, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1486)
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
!1499 = !{!"_Bool", !897, i64 0}
!1500 = !DILocation(line: 90, column: 1, scope: !1491)
!1501 = distinct !DISubprogram(name: "close_stdout", scope: !465, file: !465, line: 116, type: !524, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1502)
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
!1534 = !DISubprogram(name: "_exit", scope: !1473, file: !1473, line: 624, type: !885, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1535 = distinct !DISubprogram(name: "verror", scope: !480, file: !480, line: 251, type: !1536, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !104, !104, !134, !490}
!1538 = !{!1539, !1540, !1541, !1542}
!1539 = !DILocalVariable(name: "status", arg: 1, scope: !1535, file: !480, line: 251, type: !104)
!1540 = !DILocalVariable(name: "errnum", arg: 2, scope: !1535, file: !480, line: 251, type: !104)
!1541 = !DILocalVariable(name: "message", arg: 3, scope: !1535, file: !480, line: 251, type: !134)
!1542 = !DILocalVariable(name: "args", arg: 4, scope: !1535, file: !480, line: 251, type: !490)
!1543 = !DILocation(line: 0, scope: !1535)
!1544 = !DILocation(line: 261, column: 3, scope: !1535)
!1545 = !DILocation(line: 265, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1535, file: !480, line: 265, column: 7)
!1547 = !DILocation(line: 265, column: 7, scope: !1535)
!1548 = !DILocation(line: 266, column: 5, scope: !1546)
!1549 = !DILocation(line: 272, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !480, line: 268, column: 5)
!1551 = !DILocation(line: 276, column: 3, scope: !1535)
!1552 = !DILocation(line: 282, column: 1, scope: !1535)
!1553 = distinct !DISubprogram(name: "flush_stdout", scope: !480, file: !480, line: 163, type: !524, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1554)
!1554 = !{!1555}
!1555 = !DILocalVariable(name: "stdout_fd", scope: !1553, file: !480, line: 166, type: !104)
!1556 = !DILocation(line: 0, scope: !1553)
!1557 = !DILocalVariable(name: "fd", arg: 1, scope: !1558, file: !480, line: 145, type: !104)
!1558 = distinct !DISubprogram(name: "is_open", scope: !480, file: !480, line: 145, type: !1477, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1559)
!1559 = !{!1557}
!1560 = !DILocation(line: 0, scope: !1558, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 182, column: 25, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1553, file: !480, line: 182, column: 7)
!1563 = !DILocation(line: 157, column: 15, scope: !1558, inlinedAt: !1561)
!1564 = !DILocation(line: 157, column: 12, scope: !1558, inlinedAt: !1561)
!1565 = !DILocation(line: 182, column: 7, scope: !1553)
!1566 = !DILocation(line: 184, column: 5, scope: !1562)
!1567 = !DILocation(line: 185, column: 1, scope: !1553)
!1568 = distinct !DISubprogram(name: "error_tail", scope: !480, file: !480, line: 219, type: !1536, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1569)
!1569 = !{!1570, !1571, !1572, !1573}
!1570 = !DILocalVariable(name: "status", arg: 1, scope: !1568, file: !480, line: 219, type: !104)
!1571 = !DILocalVariable(name: "errnum", arg: 2, scope: !1568, file: !480, line: 219, type: !104)
!1572 = !DILocalVariable(name: "message", arg: 3, scope: !1568, file: !480, line: 219, type: !134)
!1573 = !DILocalVariable(name: "args", arg: 4, scope: !1568, file: !480, line: 219, type: !490)
!1574 = !DILocation(line: 0, scope: !1568)
!1575 = !DILocation(line: 229, column: 13, scope: !1568)
!1576 = !DILocalVariable(name: "__stream", arg: 1, scope: !1577, file: !953, line: 132, type: !1580)
!1577 = distinct !DISubprogram(name: "vfprintf", scope: !953, file: !953, line: 132, type: !1578, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1615)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!104, !1580, !957, !490}
!1580 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1583, file: !253, line: 51, baseType: !104, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1583, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1583, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1583, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1583, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1583, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1583, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1583, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1583, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1583, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1583, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1583, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1583, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1583, file: !253, line: 70, baseType: !1599, size: 64, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1583, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1583, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1583, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1583, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1583, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1583, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1583, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1583, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1583, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1583, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1583, file: !253, line: 93, baseType: !1599, size: 64, offset: 1344)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1583, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1583, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1583, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1583, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!1615 = !{!1576, !1616, !1617}
!1616 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1577, file: !953, line: 133, type: !957)
!1617 = !DILocalVariable(name: "__ap", arg: 3, scope: !1577, file: !953, line: 133, type: !490)
!1618 = !DILocation(line: 0, scope: !1577, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 229, column: 3, scope: !1568)
!1620 = !DILocation(line: 135, column: 10, scope: !1577, inlinedAt: !1619)
!1621 = !DILocation(line: 232, column: 3, scope: !1568)
!1622 = !DILocation(line: 233, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1568, file: !480, line: 233, column: 7)
!1624 = !DILocation(line: 233, column: 7, scope: !1568)
!1625 = !DILocalVariable(name: "errnum", arg: 1, scope: !1626, file: !480, line: 188, type: !104)
!1626 = distinct !DISubprogram(name: "print_errno_message", scope: !480, file: !480, line: 188, type: !885, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1627)
!1627 = !{!1625, !1628, !1629}
!1628 = !DILocalVariable(name: "s", scope: !1626, file: !480, line: 190, type: !134)
!1629 = !DILocalVariable(name: "errbuf", scope: !1626, file: !480, line: 193, type: !1630)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 1024)
!1633 = !DILocation(line: 0, scope: !1626, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 234, column: 5, scope: !1623)
!1635 = !DILocation(line: 193, column: 3, scope: !1626, inlinedAt: !1634)
!1636 = !DILocation(line: 193, column: 8, scope: !1626, inlinedAt: !1634)
!1637 = !DILocation(line: 195, column: 7, scope: !1626, inlinedAt: !1634)
!1638 = !DILocation(line: 207, column: 9, scope: !1639, inlinedAt: !1634)
!1639 = distinct !DILexicalBlock(scope: !1626, file: !480, line: 207, column: 7)
!1640 = !DILocation(line: 207, column: 7, scope: !1626, inlinedAt: !1634)
!1641 = !DILocation(line: 208, column: 9, scope: !1639, inlinedAt: !1634)
!1642 = !DILocation(line: 208, column: 5, scope: !1639, inlinedAt: !1634)
!1643 = !DILocation(line: 214, column: 3, scope: !1626, inlinedAt: !1634)
!1644 = !DILocation(line: 216, column: 1, scope: !1626, inlinedAt: !1634)
!1645 = !DILocation(line: 234, column: 5, scope: !1623)
!1646 = !DILocation(line: 238, column: 3, scope: !1568)
!1647 = !DILocalVariable(name: "__c", arg: 1, scope: !1648, file: !1649, line: 101, type: !104)
!1648 = distinct !DISubprogram(name: "putc_unlocked", scope: !1649, file: !1649, line: 101, type: !1650, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1652)
!1649 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!104, !104, !1581}
!1652 = !{!1647, !1653}
!1653 = !DILocalVariable(name: "__stream", arg: 2, scope: !1648, file: !1649, line: 101, type: !1581)
!1654 = !DILocation(line: 0, scope: !1648, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 238, column: 3, scope: !1568)
!1656 = !DILocation(line: 103, column: 10, scope: !1648, inlinedAt: !1655)
!1657 = !{!1658, !896, i64 40}
!1658 = !{!"_IO_FILE", !967, i64 0, !896, i64 8, !896, i64 16, !896, i64 24, !896, i64 32, !896, i64 40, !896, i64 48, !896, i64 56, !896, i64 64, !896, i64 72, !896, i64 80, !896, i64 88, !896, i64 96, !896, i64 104, !967, i64 112, !967, i64 116, !1280, i64 120, !1008, i64 128, !897, i64 130, !897, i64 131, !896, i64 136, !1280, i64 144, !896, i64 152, !896, i64 160, !896, i64 168, !896, i64 176, !1280, i64 184, !967, i64 192, !897, i64 196}
!1659 = !{!1658, !896, i64 48}
!1660 = !{!"branch_weights", i32 2000, i32 1}
!1661 = !DILocation(line: 240, column: 3, scope: !1568)
!1662 = !DILocation(line: 241, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1568, file: !480, line: 241, column: 7)
!1664 = !DILocation(line: 241, column: 7, scope: !1568)
!1665 = !DILocation(line: 242, column: 5, scope: !1663)
!1666 = !DILocation(line: 243, column: 1, scope: !1568)
!1667 = !DISubprogram(name: "__vfprintf_chk", scope: !953, file: !953, line: 96, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!104, !1580, !104, !957, !490}
!1670 = !DISubprogram(name: "strerror_r", scope: !1087, file: !1087, line: 444, type: !1671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!129, !104, !129, !131}
!1673 = !DISubprogram(name: "__overflow", scope: !125, file: !125, line: 886, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!104, !1581, !104}
!1676 = !DISubprogram(name: "fflush_unlocked", scope: !125, file: !125, line: 239, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!104, !1581}
!1679 = !DISubprogram(name: "fcntl", scope: !1469, file: !1469, line: 149, type: !1680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!104, !104, !104, null}
!1682 = distinct !DISubprogram(name: "error", scope: !480, file: !480, line: 285, type: !1683, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !104, !104, !134, null}
!1685 = !{!1686, !1687, !1688, !1689}
!1686 = !DILocalVariable(name: "status", arg: 1, scope: !1682, file: !480, line: 285, type: !104)
!1687 = !DILocalVariable(name: "errnum", arg: 2, scope: !1682, file: !480, line: 285, type: !104)
!1688 = !DILocalVariable(name: "message", arg: 3, scope: !1682, file: !480, line: 285, type: !134)
!1689 = !DILocalVariable(name: "ap", scope: !1682, file: !480, line: 287, type: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1692, line: 14, baseType: !1693)
!1692 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !494, baseType: !1694)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 192, elements: !57)
!1695 = !DILocation(line: 0, scope: !1682)
!1696 = !DILocation(line: 287, column: 3, scope: !1682)
!1697 = !DILocation(line: 287, column: 11, scope: !1682)
!1698 = !DILocation(line: 288, column: 3, scope: !1682)
!1699 = !DILocation(line: 289, column: 3, scope: !1682)
!1700 = !DILocation(line: 290, column: 3, scope: !1682)
!1701 = !DILocation(line: 291, column: 1, scope: !1682)
!1702 = !DILocation(line: 0, scope: !487)
!1703 = !DILocation(line: 302, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !487, file: !480, line: 302, column: 7)
!1705 = !DILocation(line: 302, column: 7, scope: !487)
!1706 = !DILocation(line: 307, column: 11, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !480, line: 307, column: 11)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !480, line: 303, column: 5)
!1709 = !DILocation(line: 307, column: 27, scope: !1707)
!1710 = !DILocation(line: 308, column: 11, scope: !1707)
!1711 = !DILocation(line: 308, column: 28, scope: !1707)
!1712 = !DILocation(line: 308, column: 25, scope: !1707)
!1713 = !DILocation(line: 309, column: 15, scope: !1707)
!1714 = !DILocation(line: 309, column: 33, scope: !1707)
!1715 = !DILocation(line: 310, column: 19, scope: !1707)
!1716 = !DILocation(line: 311, column: 22, scope: !1707)
!1717 = !DILocation(line: 311, column: 56, scope: !1707)
!1718 = !DILocation(line: 307, column: 11, scope: !1708)
!1719 = !DILocation(line: 316, column: 21, scope: !1708)
!1720 = !DILocation(line: 317, column: 23, scope: !1708)
!1721 = !DILocation(line: 318, column: 5, scope: !1708)
!1722 = !DILocation(line: 327, column: 3, scope: !487)
!1723 = !DILocation(line: 331, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !487, file: !480, line: 331, column: 7)
!1725 = !DILocation(line: 331, column: 7, scope: !487)
!1726 = !DILocation(line: 332, column: 5, scope: !1724)
!1727 = !DILocation(line: 338, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !480, line: 334, column: 5)
!1729 = !DILocation(line: 346, column: 3, scope: !487)
!1730 = !DILocation(line: 350, column: 3, scope: !487)
!1731 = !DILocation(line: 356, column: 1, scope: !487)
!1732 = distinct !DISubprogram(name: "error_at_line", scope: !480, file: !480, line: 359, type: !1733, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !104, !104, !134, !79, !134, null}
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741}
!1736 = !DILocalVariable(name: "status", arg: 1, scope: !1732, file: !480, line: 359, type: !104)
!1737 = !DILocalVariable(name: "errnum", arg: 2, scope: !1732, file: !480, line: 359, type: !104)
!1738 = !DILocalVariable(name: "file_name", arg: 3, scope: !1732, file: !480, line: 359, type: !134)
!1739 = !DILocalVariable(name: "line_number", arg: 4, scope: !1732, file: !480, line: 360, type: !79)
!1740 = !DILocalVariable(name: "message", arg: 5, scope: !1732, file: !480, line: 360, type: !134)
!1741 = !DILocalVariable(name: "ap", scope: !1732, file: !480, line: 362, type: !1690)
!1742 = !DILocation(line: 0, scope: !1732)
!1743 = !DILocation(line: 362, column: 3, scope: !1732)
!1744 = !DILocation(line: 362, column: 11, scope: !1732)
!1745 = !DILocation(line: 363, column: 3, scope: !1732)
!1746 = !DILocation(line: 364, column: 3, scope: !1732)
!1747 = !DILocation(line: 366, column: 3, scope: !1732)
!1748 = !DILocation(line: 367, column: 1, scope: !1732)
!1749 = distinct !DISubprogram(name: "getprogname", scope: !791, file: !791, line: 54, type: !1750, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !904)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!134}
!1752 = !DILocation(line: 58, column: 10, scope: !1749)
!1753 = !DILocation(line: 58, column: 3, scope: !1749)
!1754 = distinct !DISubprogram(name: "set_program_name", scope: !529, file: !529, line: 37, type: !918, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DILocalVariable(name: "argv0", arg: 1, scope: !1754, file: !529, line: 37, type: !134)
!1757 = !DILocalVariable(name: "slash", scope: !1754, file: !529, line: 44, type: !134)
!1758 = !DILocalVariable(name: "base", scope: !1754, file: !529, line: 45, type: !134)
!1759 = !DILocation(line: 0, scope: !1754)
!1760 = !DILocation(line: 44, column: 23, scope: !1754)
!1761 = !DILocation(line: 45, column: 22, scope: !1754)
!1762 = !DILocation(line: 46, column: 17, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1754, file: !529, line: 46, column: 7)
!1764 = !DILocation(line: 46, column: 9, scope: !1763)
!1765 = !DILocation(line: 46, column: 25, scope: !1763)
!1766 = !DILocation(line: 46, column: 40, scope: !1763)
!1767 = !DILocalVariable(name: "__s1", arg: 1, scope: !1768, file: !979, line: 974, type: !1115)
!1768 = distinct !DISubprogram(name: "memeq", scope: !979, file: !979, line: 974, type: !1769, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!137, !1115, !1115, !131}
!1771 = !{!1767, !1772, !1773}
!1772 = !DILocalVariable(name: "__s2", arg: 2, scope: !1768, file: !979, line: 974, type: !1115)
!1773 = !DILocalVariable(name: "__n", arg: 3, scope: !1768, file: !979, line: 974, type: !131)
!1774 = !DILocation(line: 0, scope: !1768, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 46, column: 28, scope: !1763)
!1776 = !DILocation(line: 976, column: 11, scope: !1768, inlinedAt: !1775)
!1777 = !DILocation(line: 976, column: 10, scope: !1768, inlinedAt: !1775)
!1778 = !DILocation(line: 46, column: 7, scope: !1754)
!1779 = !DILocation(line: 49, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !529, line: 49, column: 11)
!1781 = distinct !DILexicalBlock(scope: !1763, file: !529, line: 47, column: 5)
!1782 = !DILocation(line: 49, column: 36, scope: !1780)
!1783 = !DILocation(line: 49, column: 11, scope: !1781)
!1784 = !DILocation(line: 65, column: 16, scope: !1754)
!1785 = !DILocation(line: 71, column: 27, scope: !1754)
!1786 = !DILocation(line: 74, column: 33, scope: !1754)
!1787 = !DILocation(line: 76, column: 1, scope: !1754)
!1788 = !DISubprogram(name: "strrchr", scope: !1087, file: !1087, line: 273, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1789 = !DILocation(line: 0, scope: !538)
!1790 = !DILocation(line: 40, column: 29, scope: !538)
!1791 = !DILocation(line: 41, column: 19, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !538, file: !539, line: 41, column: 7)
!1793 = !DILocation(line: 41, column: 7, scope: !538)
!1794 = !DILocation(line: 47, column: 3, scope: !538)
!1795 = !DILocation(line: 48, column: 3, scope: !538)
!1796 = !DILocation(line: 48, column: 13, scope: !538)
!1797 = !DILocalVariable(name: "ps", arg: 1, scope: !1798, file: !1799, line: 1135, type: !1802)
!1798 = distinct !DISubprogram(name: "mbszero", scope: !1799, file: !1799, line: 1135, type: !1800, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !1803)
!1799 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1803 = !{!1797}
!1804 = !DILocation(line: 0, scope: !1798, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 48, column: 18, scope: !538)
!1806 = !DILocalVariable(name: "__dest", arg: 1, scope: !1807, file: !1808, line: 57, type: !130)
!1807 = distinct !DISubprogram(name: "memset", scope: !1808, file: !1808, line: 57, type: !1809, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !1811)
!1808 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!130, !130, !104, !131}
!1811 = !{!1806, !1812, !1813}
!1812 = !DILocalVariable(name: "__ch", arg: 2, scope: !1807, file: !1808, line: 57, type: !104)
!1813 = !DILocalVariable(name: "__len", arg: 3, scope: !1807, file: !1808, line: 57, type: !131)
!1814 = !DILocation(line: 0, scope: !1807, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 1137, column: 3, scope: !1798, inlinedAt: !1805)
!1816 = !DILocation(line: 59, column: 10, scope: !1807, inlinedAt: !1815)
!1817 = !DILocation(line: 49, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !538, file: !539, line: 49, column: 7)
!1819 = !DILocation(line: 49, column: 39, scope: !1818)
!1820 = !DILocation(line: 49, column: 44, scope: !1818)
!1821 = !DILocation(line: 54, column: 1, scope: !538)
!1822 = !DISubprogram(name: "mbrtoc32", scope: !550, file: !550, line: 57, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!131, !1825, !957, !131, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1802)
!1828 = distinct !DISubprogram(name: "clone_quoting_options", scope: !569, file: !569, line: 113, type: !1829, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1832)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1831, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1832 = !{!1833, !1834, !1835}
!1833 = !DILocalVariable(name: "o", arg: 1, scope: !1828, file: !569, line: 113, type: !1831)
!1834 = !DILocalVariable(name: "saved_errno", scope: !1828, file: !569, line: 115, type: !104)
!1835 = !DILocalVariable(name: "p", scope: !1828, file: !569, line: 116, type: !1831)
!1836 = !DILocation(line: 0, scope: !1828)
!1837 = !DILocation(line: 115, column: 21, scope: !1828)
!1838 = !DILocation(line: 116, column: 40, scope: !1828)
!1839 = !DILocation(line: 116, column: 31, scope: !1828)
!1840 = !DILocation(line: 118, column: 9, scope: !1828)
!1841 = !DILocation(line: 119, column: 3, scope: !1828)
!1842 = distinct !DISubprogram(name: "get_quoting_style", scope: !569, file: !569, line: 124, type: !1843, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1847)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!108, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!1847 = !{!1848}
!1848 = !DILocalVariable(name: "o", arg: 1, scope: !1842, file: !569, line: 124, type: !1845)
!1849 = !DILocation(line: 0, scope: !1842)
!1850 = !DILocation(line: 126, column: 11, scope: !1842)
!1851 = !DILocation(line: 126, column: 46, scope: !1842)
!1852 = !{!1853, !897, i64 0}
!1853 = !{!"quoting_options", !897, i64 0, !967, i64 4, !897, i64 8, !896, i64 40, !896, i64 48}
!1854 = !DILocation(line: 126, column: 3, scope: !1842)
!1855 = distinct !DISubprogram(name: "set_quoting_style", scope: !569, file: !569, line: 132, type: !1856, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1831, !108}
!1858 = !{!1859, !1860}
!1859 = !DILocalVariable(name: "o", arg: 1, scope: !1855, file: !569, line: 132, type: !1831)
!1860 = !DILocalVariable(name: "s", arg: 2, scope: !1855, file: !569, line: 132, type: !108)
!1861 = !DILocation(line: 0, scope: !1855)
!1862 = !DILocation(line: 134, column: 4, scope: !1855)
!1863 = !DILocation(line: 134, column: 45, scope: !1855)
!1864 = !DILocation(line: 135, column: 1, scope: !1855)
!1865 = distinct !DISubprogram(name: "set_char_quoting", scope: !569, file: !569, line: 143, type: !1866, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!104, !1831, !4, !104}
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1875, !1876}
!1869 = !DILocalVariable(name: "o", arg: 1, scope: !1865, file: !569, line: 143, type: !1831)
!1870 = !DILocalVariable(name: "c", arg: 2, scope: !1865, file: !569, line: 143, type: !4)
!1871 = !DILocalVariable(name: "i", arg: 3, scope: !1865, file: !569, line: 143, type: !104)
!1872 = !DILocalVariable(name: "uc", scope: !1865, file: !569, line: 145, type: !136)
!1873 = !DILocalVariable(name: "p", scope: !1865, file: !569, line: 146, type: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1875 = !DILocalVariable(name: "shift", scope: !1865, file: !569, line: 148, type: !104)
!1876 = !DILocalVariable(name: "r", scope: !1865, file: !569, line: 149, type: !79)
!1877 = !DILocation(line: 0, scope: !1865)
!1878 = !DILocation(line: 147, column: 6, scope: !1865)
!1879 = !DILocation(line: 147, column: 41, scope: !1865)
!1880 = !DILocation(line: 147, column: 62, scope: !1865)
!1881 = !DILocation(line: 147, column: 57, scope: !1865)
!1882 = !DILocation(line: 148, column: 15, scope: !1865)
!1883 = !DILocation(line: 149, column: 21, scope: !1865)
!1884 = !DILocation(line: 149, column: 24, scope: !1865)
!1885 = !DILocation(line: 149, column: 34, scope: !1865)
!1886 = !DILocation(line: 150, column: 19, scope: !1865)
!1887 = !DILocation(line: 150, column: 24, scope: !1865)
!1888 = !DILocation(line: 150, column: 6, scope: !1865)
!1889 = !DILocation(line: 151, column: 3, scope: !1865)
!1890 = distinct !DISubprogram(name: "set_quoting_flags", scope: !569, file: !569, line: 159, type: !1891, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!104, !1831, !104}
!1893 = !{!1894, !1895, !1896}
!1894 = !DILocalVariable(name: "o", arg: 1, scope: !1890, file: !569, line: 159, type: !1831)
!1895 = !DILocalVariable(name: "i", arg: 2, scope: !1890, file: !569, line: 159, type: !104)
!1896 = !DILocalVariable(name: "r", scope: !1890, file: !569, line: 163, type: !104)
!1897 = !DILocation(line: 0, scope: !1890)
!1898 = !DILocation(line: 161, column: 8, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1890, file: !569, line: 161, column: 7)
!1900 = !DILocation(line: 161, column: 7, scope: !1890)
!1901 = !DILocation(line: 163, column: 14, scope: !1890)
!1902 = !{!1853, !967, i64 4}
!1903 = !DILocation(line: 164, column: 12, scope: !1890)
!1904 = !DILocation(line: 165, column: 3, scope: !1890)
!1905 = distinct !DISubprogram(name: "set_custom_quoting", scope: !569, file: !569, line: 169, type: !1906, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1831, !134, !134}
!1908 = !{!1909, !1910, !1911}
!1909 = !DILocalVariable(name: "o", arg: 1, scope: !1905, file: !569, line: 169, type: !1831)
!1910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1905, file: !569, line: 170, type: !134)
!1911 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1905, file: !569, line: 170, type: !134)
!1912 = !DILocation(line: 0, scope: !1905)
!1913 = !DILocation(line: 172, column: 8, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1905, file: !569, line: 172, column: 7)
!1915 = !DILocation(line: 172, column: 7, scope: !1905)
!1916 = !DILocation(line: 174, column: 12, scope: !1905)
!1917 = !DILocation(line: 175, column: 8, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1905, file: !569, line: 175, column: 7)
!1919 = !DILocation(line: 175, column: 19, scope: !1918)
!1920 = !DILocation(line: 176, column: 5, scope: !1918)
!1921 = !DILocation(line: 177, column: 6, scope: !1905)
!1922 = !DILocation(line: 177, column: 17, scope: !1905)
!1923 = !{!1853, !896, i64 40}
!1924 = !DILocation(line: 178, column: 6, scope: !1905)
!1925 = !DILocation(line: 178, column: 18, scope: !1905)
!1926 = !{!1853, !896, i64 48}
!1927 = !DILocation(line: 179, column: 1, scope: !1905)
!1928 = !DISubprogram(name: "abort", scope: !1091, file: !1091, line: 598, type: !524, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !904)
!1929 = distinct !DISubprogram(name: "quotearg_buffer", scope: !569, file: !569, line: 774, type: !1930, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!131, !129, !131, !134, !131, !1845}
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940}
!1933 = !DILocalVariable(name: "buffer", arg: 1, scope: !1929, file: !569, line: 774, type: !129)
!1934 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1929, file: !569, line: 774, type: !131)
!1935 = !DILocalVariable(name: "arg", arg: 3, scope: !1929, file: !569, line: 775, type: !134)
!1936 = !DILocalVariable(name: "argsize", arg: 4, scope: !1929, file: !569, line: 775, type: !131)
!1937 = !DILocalVariable(name: "o", arg: 5, scope: !1929, file: !569, line: 776, type: !1845)
!1938 = !DILocalVariable(name: "p", scope: !1929, file: !569, line: 778, type: !1845)
!1939 = !DILocalVariable(name: "saved_errno", scope: !1929, file: !569, line: 779, type: !104)
!1940 = !DILocalVariable(name: "r", scope: !1929, file: !569, line: 780, type: !131)
!1941 = !DILocation(line: 0, scope: !1929)
!1942 = !DILocation(line: 778, column: 37, scope: !1929)
!1943 = !DILocation(line: 779, column: 21, scope: !1929)
!1944 = !DILocation(line: 781, column: 43, scope: !1929)
!1945 = !DILocation(line: 781, column: 53, scope: !1929)
!1946 = !DILocation(line: 781, column: 63, scope: !1929)
!1947 = !DILocation(line: 782, column: 43, scope: !1929)
!1948 = !DILocation(line: 782, column: 58, scope: !1929)
!1949 = !DILocation(line: 780, column: 14, scope: !1929)
!1950 = !DILocation(line: 783, column: 9, scope: !1929)
!1951 = !DILocation(line: 784, column: 3, scope: !1929)
!1952 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !569, file: !569, line: 251, type: !1953, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1957)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!131, !129, !131, !134, !131, !108, !104, !1955, !134, !134}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1982, !1984, !1987, !1988, !1989, !1990, !1993, !1994, !1997, !2001, !2002, !2010, !2013, !2014, !2016, !2017, !2018, !2019}
!1958 = !DILocalVariable(name: "buffer", arg: 1, scope: !1952, file: !569, line: 251, type: !129)
!1959 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1952, file: !569, line: 251, type: !131)
!1960 = !DILocalVariable(name: "arg", arg: 3, scope: !1952, file: !569, line: 252, type: !134)
!1961 = !DILocalVariable(name: "argsize", arg: 4, scope: !1952, file: !569, line: 252, type: !131)
!1962 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1952, file: !569, line: 253, type: !108)
!1963 = !DILocalVariable(name: "flags", arg: 6, scope: !1952, file: !569, line: 253, type: !104)
!1964 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1952, file: !569, line: 254, type: !1955)
!1965 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1952, file: !569, line: 255, type: !134)
!1966 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1952, file: !569, line: 256, type: !134)
!1967 = !DILocalVariable(name: "unibyte_locale", scope: !1952, file: !569, line: 258, type: !137)
!1968 = !DILocalVariable(name: "len", scope: !1952, file: !569, line: 260, type: !131)
!1969 = !DILocalVariable(name: "orig_buffersize", scope: !1952, file: !569, line: 261, type: !131)
!1970 = !DILocalVariable(name: "quote_string", scope: !1952, file: !569, line: 262, type: !134)
!1971 = !DILocalVariable(name: "quote_string_len", scope: !1952, file: !569, line: 263, type: !131)
!1972 = !DILocalVariable(name: "backslash_escapes", scope: !1952, file: !569, line: 264, type: !137)
!1973 = !DILocalVariable(name: "elide_outer_quotes", scope: !1952, file: !569, line: 265, type: !137)
!1974 = !DILocalVariable(name: "encountered_single_quote", scope: !1952, file: !569, line: 266, type: !137)
!1975 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1952, file: !569, line: 267, type: !137)
!1976 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1952, file: !569, line: 309, type: !137)
!1977 = !DILocalVariable(name: "lq", scope: !1978, file: !569, line: 361, type: !134)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !569, line: 361, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !569, line: 360, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !569, line: 333, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1952, file: !569, line: 312, column: 5)
!1982 = !DILocalVariable(name: "i", scope: !1983, file: !569, line: 395, type: !131)
!1983 = distinct !DILexicalBlock(scope: !1952, file: !569, line: 395, column: 3)
!1984 = !DILocalVariable(name: "is_right_quote", scope: !1985, file: !569, line: 397, type: !137)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !569, line: 396, column: 5)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !569, line: 395, column: 3)
!1987 = !DILocalVariable(name: "escaping", scope: !1985, file: !569, line: 398, type: !137)
!1988 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1985, file: !569, line: 399, type: !137)
!1989 = !DILocalVariable(name: "c", scope: !1985, file: !569, line: 417, type: !136)
!1990 = !DILocalVariable(name: "m", scope: !1991, file: !569, line: 598, type: !131)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 596, column: 11)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !569, line: 419, column: 9)
!1993 = !DILocalVariable(name: "printable", scope: !1991, file: !569, line: 600, type: !137)
!1994 = !DILocalVariable(name: "mbs", scope: !1995, file: !569, line: 609, type: !642)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !569, line: 608, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1991, file: !569, line: 602, column: 17)
!1997 = !DILocalVariable(name: "w", scope: !1998, file: !569, line: 618, type: !549)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !569, line: 617, column: 19)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !569, line: 616, column: 17)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !569, line: 616, column: 17)
!2001 = !DILocalVariable(name: "bytes", scope: !1998, file: !569, line: 619, type: !131)
!2002 = !DILocalVariable(name: "j", scope: !2003, file: !569, line: 648, type: !131)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !569, line: 648, column: 29)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !569, line: 647, column: 27)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !569, line: 645, column: 29)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !569, line: 636, column: 23)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !569, line: 628, column: 30)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !569, line: 623, column: 30)
!2009 = distinct !DILexicalBlock(scope: !1998, file: !569, line: 621, column: 25)
!2010 = !DILocalVariable(name: "ilim", scope: !2011, file: !569, line: 674, type: !131)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !569, line: 671, column: 15)
!2012 = distinct !DILexicalBlock(scope: !1991, file: !569, line: 670, column: 17)
!2013 = !DILabel(scope: !1952, name: "process_input", file: !569, line: 308)
!2014 = !DILabel(scope: !2015, name: "c_and_shell_escape", file: !569, line: 502)
!2015 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 478, column: 9)
!2016 = !DILabel(scope: !2015, name: "c_escape", file: !569, line: 507)
!2017 = !DILabel(scope: !1985, name: "store_escape", file: !569, line: 709)
!2018 = !DILabel(scope: !1985, name: "store_c", file: !569, line: 712)
!2019 = !DILabel(scope: !1952, name: "force_outer_quoting_style", file: !569, line: 753)
!2020 = !DILocation(line: 0, scope: !1952)
!2021 = !DILocation(line: 258, column: 25, scope: !1952)
!2022 = !DILocation(line: 258, column: 36, scope: !1952)
!2023 = !DILocation(line: 265, column: 8, scope: !1952)
!2024 = !DILocation(line: 267, column: 3, scope: !1952)
!2025 = !DILocation(line: 261, column: 10, scope: !1952)
!2026 = !DILocation(line: 262, column: 15, scope: !1952)
!2027 = !DILocation(line: 263, column: 10, scope: !1952)
!2028 = !DILocation(line: 264, column: 8, scope: !1952)
!2029 = !DILocation(line: 266, column: 8, scope: !1952)
!2030 = !DILocation(line: 267, column: 8, scope: !1952)
!2031 = !DILocation(line: 308, column: 2, scope: !1952)
!2032 = !DILocation(line: 311, column: 3, scope: !1952)
!2033 = !DILocation(line: 318, column: 11, scope: !1981)
!2034 = !DILocation(line: 318, column: 12, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1981, file: !569, line: 318, column: 11)
!2036 = !DILocation(line: 319, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !569, line: 319, column: 9)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !569, line: 319, column: 9)
!2039 = !DILocation(line: 319, column: 9, scope: !2038)
!2040 = !DILocation(line: 0, scope: !633, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 357, column: 26, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !569, line: 335, column: 11)
!2043 = distinct !DILexicalBlock(scope: !1980, file: !569, line: 334, column: 13)
!2044 = !DILocation(line: 199, column: 29, scope: !633, inlinedAt: !2041)
!2045 = !DILocation(line: 201, column: 19, scope: !2046, inlinedAt: !2041)
!2046 = distinct !DILexicalBlock(scope: !633, file: !569, line: 201, column: 7)
!2047 = !DILocation(line: 201, column: 7, scope: !633, inlinedAt: !2041)
!2048 = !DILocation(line: 229, column: 3, scope: !633, inlinedAt: !2041)
!2049 = !DILocation(line: 230, column: 3, scope: !633, inlinedAt: !2041)
!2050 = !DILocation(line: 230, column: 13, scope: !633, inlinedAt: !2041)
!2051 = !DILocalVariable(name: "ps", arg: 1, scope: !2052, file: !1799, line: 1135, type: !2055)
!2052 = distinct !DISubprogram(name: "mbszero", scope: !1799, file: !1799, line: 1135, type: !2053, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2056)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!2056 = !{!2051}
!2057 = !DILocation(line: 0, scope: !2052, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 230, column: 18, scope: !633, inlinedAt: !2041)
!2059 = !DILocalVariable(name: "__dest", arg: 1, scope: !2060, file: !1808, line: 57, type: !130)
!2060 = distinct !DISubprogram(name: "memset", scope: !1808, file: !1808, line: 57, type: !1809, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2061)
!2061 = !{!2059, !2062, !2063}
!2062 = !DILocalVariable(name: "__ch", arg: 2, scope: !2060, file: !1808, line: 57, type: !104)
!2063 = !DILocalVariable(name: "__len", arg: 3, scope: !2060, file: !1808, line: 57, type: !131)
!2064 = !DILocation(line: 0, scope: !2060, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2058)
!2066 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2065)
!2067 = !DILocation(line: 231, column: 7, scope: !2068, inlinedAt: !2041)
!2068 = distinct !DILexicalBlock(scope: !633, file: !569, line: 231, column: 7)
!2069 = !DILocation(line: 231, column: 40, scope: !2068, inlinedAt: !2041)
!2070 = !DILocation(line: 231, column: 45, scope: !2068, inlinedAt: !2041)
!2071 = !DILocation(line: 235, column: 1, scope: !633, inlinedAt: !2041)
!2072 = !DILocation(line: 0, scope: !633, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 358, column: 27, scope: !2042)
!2074 = !DILocation(line: 199, column: 29, scope: !633, inlinedAt: !2073)
!2075 = !DILocation(line: 201, column: 19, scope: !2046, inlinedAt: !2073)
!2076 = !DILocation(line: 201, column: 7, scope: !633, inlinedAt: !2073)
!2077 = !DILocation(line: 229, column: 3, scope: !633, inlinedAt: !2073)
!2078 = !DILocation(line: 230, column: 3, scope: !633, inlinedAt: !2073)
!2079 = !DILocation(line: 230, column: 13, scope: !633, inlinedAt: !2073)
!2080 = !DILocation(line: 0, scope: !2052, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 230, column: 18, scope: !633, inlinedAt: !2073)
!2082 = !DILocation(line: 0, scope: !2060, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2081)
!2084 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2083)
!2085 = !DILocation(line: 231, column: 7, scope: !2068, inlinedAt: !2073)
!2086 = !DILocation(line: 231, column: 40, scope: !2068, inlinedAt: !2073)
!2087 = !DILocation(line: 231, column: 45, scope: !2068, inlinedAt: !2073)
!2088 = !DILocation(line: 235, column: 1, scope: !633, inlinedAt: !2073)
!2089 = !DILocation(line: 360, column: 14, scope: !1979)
!2090 = !DILocation(line: 360, column: 13, scope: !1980)
!2091 = !DILocation(line: 0, scope: !1978)
!2092 = !DILocation(line: 361, column: 45, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1978, file: !569, line: 361, column: 11)
!2094 = !DILocation(line: 361, column: 11, scope: !1978)
!2095 = !DILocation(line: 362, column: 13, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !569, line: 362, column: 13)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !569, line: 362, column: 13)
!2098 = !DILocation(line: 362, column: 13, scope: !2097)
!2099 = !DILocation(line: 361, column: 52, scope: !2093)
!2100 = distinct !{!2100, !2094, !2101, !1013}
!2101 = !DILocation(line: 362, column: 13, scope: !1978)
!2102 = !DILocation(line: 260, column: 10, scope: !1952)
!2103 = !DILocation(line: 365, column: 28, scope: !1980)
!2104 = !DILocation(line: 367, column: 7, scope: !1981)
!2105 = !DILocation(line: 370, column: 7, scope: !1981)
!2106 = !DILocation(line: 373, column: 7, scope: !1981)
!2107 = !DILocation(line: 376, column: 12, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1981, file: !569, line: 376, column: 11)
!2109 = !DILocation(line: 376, column: 11, scope: !1981)
!2110 = !DILocation(line: 381, column: 12, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1981, file: !569, line: 381, column: 11)
!2112 = !DILocation(line: 381, column: 11, scope: !1981)
!2113 = !DILocation(line: 382, column: 9, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !569, line: 382, column: 9)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !569, line: 382, column: 9)
!2116 = !DILocation(line: 382, column: 9, scope: !2115)
!2117 = !DILocation(line: 389, column: 7, scope: !1981)
!2118 = !DILocation(line: 392, column: 7, scope: !1981)
!2119 = !DILocation(line: 0, scope: !1983)
!2120 = !DILocation(line: 395, column: 8, scope: !1983)
!2121 = !DILocation(line: 309, column: 8, scope: !1952)
!2122 = !DILocation(line: 395, scope: !1983)
!2123 = !DILocation(line: 395, column: 34, scope: !1986)
!2124 = !DILocation(line: 395, column: 26, scope: !1986)
!2125 = !DILocation(line: 395, column: 48, scope: !1986)
!2126 = !DILocation(line: 395, column: 55, scope: !1986)
!2127 = !DILocation(line: 395, column: 3, scope: !1983)
!2128 = !DILocation(line: 395, column: 67, scope: !1986)
!2129 = !DILocation(line: 0, scope: !1985)
!2130 = !DILocation(line: 402, column: 11, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1985, file: !569, line: 401, column: 11)
!2132 = !DILocation(line: 404, column: 17, scope: !2131)
!2133 = !DILocation(line: 405, column: 39, scope: !2131)
!2134 = !DILocation(line: 409, column: 32, scope: !2131)
!2135 = !DILocation(line: 405, column: 19, scope: !2131)
!2136 = !DILocation(line: 405, column: 15, scope: !2131)
!2137 = !DILocation(line: 410, column: 11, scope: !2131)
!2138 = !DILocation(line: 410, column: 25, scope: !2131)
!2139 = !DILocalVariable(name: "__s1", arg: 1, scope: !2140, file: !979, line: 974, type: !1115)
!2140 = distinct !DISubprogram(name: "memeq", scope: !979, file: !979, line: 974, type: !1769, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2141)
!2141 = !{!2139, !2142, !2143}
!2142 = !DILocalVariable(name: "__s2", arg: 2, scope: !2140, file: !979, line: 974, type: !1115)
!2143 = !DILocalVariable(name: "__n", arg: 3, scope: !2140, file: !979, line: 974, type: !131)
!2144 = !DILocation(line: 0, scope: !2140, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 410, column: 14, scope: !2131)
!2146 = !DILocation(line: 976, column: 11, scope: !2140, inlinedAt: !2145)
!2147 = !DILocation(line: 976, column: 10, scope: !2140, inlinedAt: !2145)
!2148 = !DILocation(line: 401, column: 11, scope: !1985)
!2149 = !DILocation(line: 417, column: 25, scope: !1985)
!2150 = !DILocation(line: 418, column: 7, scope: !1985)
!2151 = !DILocation(line: 421, column: 15, scope: !1992)
!2152 = !DILocation(line: 423, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !569, line: 423, column: 15)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !569, line: 422, column: 13)
!2155 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 421, column: 15)
!2156 = !DILocation(line: 423, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !569, line: 423, column: 15)
!2158 = !DILocation(line: 423, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !569, line: 423, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !569, line: 423, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !569, line: 423, column: 15)
!2162 = !DILocation(line: 423, column: 15, scope: !2160)
!2163 = !DILocation(line: 423, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !569, line: 423, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !569, line: 423, column: 15)
!2166 = !DILocation(line: 423, column: 15, scope: !2165)
!2167 = !DILocation(line: 423, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !569, line: 423, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !569, line: 423, column: 15)
!2170 = !DILocation(line: 423, column: 15, scope: !2169)
!2171 = !DILocation(line: 423, column: 15, scope: !2161)
!2172 = !DILocation(line: 423, column: 15, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !569, line: 423, column: 15)
!2174 = distinct !DILexicalBlock(scope: !2153, file: !569, line: 423, column: 15)
!2175 = !DILocation(line: 423, column: 15, scope: !2174)
!2176 = !DILocation(line: 431, column: 19, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2154, file: !569, line: 430, column: 19)
!2178 = !DILocation(line: 431, column: 24, scope: !2177)
!2179 = !DILocation(line: 431, column: 28, scope: !2177)
!2180 = !DILocation(line: 431, column: 38, scope: !2177)
!2181 = !DILocation(line: 431, column: 48, scope: !2177)
!2182 = !DILocation(line: 431, column: 59, scope: !2177)
!2183 = !DILocation(line: 433, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !569, line: 433, column: 19)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !569, line: 433, column: 19)
!2186 = distinct !DILexicalBlock(scope: !2177, file: !569, line: 432, column: 17)
!2187 = !DILocation(line: 433, column: 19, scope: !2185)
!2188 = !DILocation(line: 434, column: 19, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !569, line: 434, column: 19)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !569, line: 434, column: 19)
!2191 = !DILocation(line: 434, column: 19, scope: !2190)
!2192 = !DILocation(line: 435, column: 17, scope: !2186)
!2193 = !DILocation(line: 442, column: 20, scope: !2155)
!2194 = !DILocation(line: 447, column: 11, scope: !1992)
!2195 = !DILocation(line: 450, column: 19, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 448, column: 13)
!2197 = !DILocation(line: 456, column: 19, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2196, file: !569, line: 455, column: 19)
!2199 = !DILocation(line: 456, column: 24, scope: !2198)
!2200 = !DILocation(line: 456, column: 28, scope: !2198)
!2201 = !DILocation(line: 456, column: 38, scope: !2198)
!2202 = !DILocation(line: 456, column: 47, scope: !2198)
!2203 = !DILocation(line: 456, column: 41, scope: !2198)
!2204 = !DILocation(line: 456, column: 52, scope: !2198)
!2205 = !DILocation(line: 455, column: 19, scope: !2196)
!2206 = !DILocation(line: 457, column: 25, scope: !2198)
!2207 = !DILocation(line: 457, column: 17, scope: !2198)
!2208 = !DILocation(line: 464, column: 25, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2198, file: !569, line: 458, column: 19)
!2210 = !DILocation(line: 468, column: 21, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !569, line: 468, column: 21)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !569, line: 468, column: 21)
!2213 = !DILocation(line: 468, column: 21, scope: !2212)
!2214 = !DILocation(line: 469, column: 21, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !569, line: 469, column: 21)
!2216 = distinct !DILexicalBlock(scope: !2209, file: !569, line: 469, column: 21)
!2217 = !DILocation(line: 469, column: 21, scope: !2216)
!2218 = !DILocation(line: 470, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !569, line: 470, column: 21)
!2220 = distinct !DILexicalBlock(scope: !2209, file: !569, line: 470, column: 21)
!2221 = !DILocation(line: 470, column: 21, scope: !2220)
!2222 = !DILocation(line: 471, column: 21, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !569, line: 471, column: 21)
!2224 = distinct !DILexicalBlock(scope: !2209, file: !569, line: 471, column: 21)
!2225 = !DILocation(line: 471, column: 21, scope: !2224)
!2226 = !DILocation(line: 472, column: 21, scope: !2209)
!2227 = !DILocation(line: 482, column: 33, scope: !2015)
!2228 = !DILocation(line: 483, column: 33, scope: !2015)
!2229 = !DILocation(line: 485, column: 33, scope: !2015)
!2230 = !DILocation(line: 486, column: 33, scope: !2015)
!2231 = !DILocation(line: 487, column: 33, scope: !2015)
!2232 = !DILocation(line: 490, column: 17, scope: !2015)
!2233 = !DILocation(line: 492, column: 21, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !569, line: 491, column: 15)
!2235 = distinct !DILexicalBlock(scope: !2015, file: !569, line: 490, column: 17)
!2236 = !DILocation(line: 499, column: 35, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2015, file: !569, line: 499, column: 17)
!2238 = !DILocation(line: 499, column: 57, scope: !2237)
!2239 = !DILocation(line: 0, scope: !2015)
!2240 = !DILocation(line: 502, column: 11, scope: !2015)
!2241 = !DILocation(line: 504, column: 17, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2015, file: !569, line: 503, column: 17)
!2243 = !DILocation(line: 507, column: 11, scope: !2015)
!2244 = !DILocation(line: 508, column: 17, scope: !2015)
!2245 = !DILocation(line: 517, column: 15, scope: !1992)
!2246 = !DILocation(line: 517, column: 40, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 517, column: 15)
!2248 = !DILocation(line: 517, column: 47, scope: !2247)
!2249 = !DILocation(line: 517, column: 18, scope: !2247)
!2250 = !DILocation(line: 521, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 521, column: 15)
!2252 = !DILocation(line: 521, column: 15, scope: !1992)
!2253 = !DILocation(line: 525, column: 11, scope: !1992)
!2254 = !DILocation(line: 537, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 536, column: 15)
!2256 = !DILocation(line: 544, column: 15, scope: !1992)
!2257 = !DILocation(line: 546, column: 19, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !569, line: 545, column: 13)
!2259 = distinct !DILexicalBlock(scope: !1992, file: !569, line: 544, column: 15)
!2260 = !DILocation(line: 549, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !569, line: 549, column: 19)
!2262 = !DILocation(line: 549, column: 30, scope: !2261)
!2263 = !DILocation(line: 558, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !569, line: 558, column: 15)
!2265 = distinct !DILexicalBlock(scope: !2258, file: !569, line: 558, column: 15)
!2266 = !DILocation(line: 558, column: 15, scope: !2265)
!2267 = !DILocation(line: 559, column: 15, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !569, line: 559, column: 15)
!2269 = distinct !DILexicalBlock(scope: !2258, file: !569, line: 559, column: 15)
!2270 = !DILocation(line: 559, column: 15, scope: !2269)
!2271 = !DILocation(line: 560, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !569, line: 560, column: 15)
!2273 = distinct !DILexicalBlock(scope: !2258, file: !569, line: 560, column: 15)
!2274 = !DILocation(line: 560, column: 15, scope: !2273)
!2275 = !DILocation(line: 562, column: 13, scope: !2258)
!2276 = !DILocation(line: 602, column: 17, scope: !1991)
!2277 = !DILocation(line: 0, scope: !1991)
!2278 = !DILocation(line: 605, column: 29, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !1996, file: !569, line: 603, column: 15)
!2280 = !DILocation(line: 605, column: 27, scope: !2279)
!2281 = !DILocation(line: 668, column: 40, scope: !1991)
!2282 = !DILocation(line: 670, column: 23, scope: !2012)
!2283 = !DILocation(line: 609, column: 17, scope: !1995)
!2284 = !DILocation(line: 609, column: 27, scope: !1995)
!2285 = !DILocation(line: 0, scope: !2052, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 609, column: 32, scope: !1995)
!2287 = !DILocation(line: 0, scope: !2060, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2286)
!2289 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2288)
!2290 = !DILocation(line: 613, column: 29, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !1995, file: !569, line: 613, column: 21)
!2292 = !DILocation(line: 613, column: 21, scope: !1995)
!2293 = !DILocation(line: 614, column: 29, scope: !2291)
!2294 = !DILocation(line: 614, column: 19, scope: !2291)
!2295 = !DILocation(line: 618, column: 21, scope: !1998)
!2296 = !DILocation(line: 620, column: 54, scope: !1998)
!2297 = !DILocation(line: 0, scope: !1998)
!2298 = !DILocation(line: 619, column: 36, scope: !1998)
!2299 = !DILocation(line: 621, column: 25, scope: !1998)
!2300 = !DILocation(line: 631, column: 38, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2007, file: !569, line: 629, column: 23)
!2302 = !DILocation(line: 631, column: 48, scope: !2301)
!2303 = !DILocation(line: 665, column: 19, scope: !1999)
!2304 = !DILocation(line: 666, column: 15, scope: !1996)
!2305 = !DILocation(line: 626, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2008, file: !569, line: 624, column: 23)
!2307 = !DILocation(line: 631, column: 51, scope: !2301)
!2308 = !DILocation(line: 631, column: 25, scope: !2301)
!2309 = !DILocation(line: 632, column: 28, scope: !2301)
!2310 = !DILocation(line: 631, column: 34, scope: !2301)
!2311 = distinct !{!2311, !2308, !2309, !1013}
!2312 = !DILocation(line: 646, column: 29, scope: !2005)
!2313 = !DILocation(line: 0, scope: !2003)
!2314 = !DILocation(line: 649, column: 49, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2003, file: !569, line: 648, column: 29)
!2316 = !DILocation(line: 649, column: 39, scope: !2315)
!2317 = !DILocation(line: 649, column: 31, scope: !2315)
!2318 = !DILocation(line: 648, column: 60, scope: !2315)
!2319 = !DILocation(line: 648, column: 50, scope: !2315)
!2320 = !DILocation(line: 648, column: 29, scope: !2003)
!2321 = distinct !{!2321, !2320, !2322, !1013}
!2322 = !DILocation(line: 654, column: 33, scope: !2003)
!2323 = !DILocation(line: 657, column: 43, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2006, file: !569, line: 657, column: 29)
!2325 = !DILocalVariable(name: "wc", arg: 1, scope: !2326, file: !2327, line: 865, type: !2330)
!2326 = distinct !DISubprogram(name: "c32isprint", scope: !2327, file: !2327, line: 865, type: !2328, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2332)
!2327 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!104, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2331, line: 20, baseType: !79)
!2331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2332 = !{!2325}
!2333 = !DILocation(line: 0, scope: !2326, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 657, column: 31, scope: !2324)
!2335 = !DILocation(line: 871, column: 10, scope: !2326, inlinedAt: !2334)
!2336 = !DILocation(line: 657, column: 31, scope: !2324)
!2337 = !DILocation(line: 657, column: 29, scope: !2006)
!2338 = !DILocation(line: 664, column: 23, scope: !1998)
!2339 = !DILocation(line: 670, column: 19, scope: !2012)
!2340 = !DILocation(line: 670, column: 45, scope: !2012)
!2341 = !DILocation(line: 674, column: 33, scope: !2011)
!2342 = !DILocation(line: 0, scope: !2011)
!2343 = !DILocation(line: 676, column: 17, scope: !2011)
!2344 = !DILocation(line: 398, column: 12, scope: !1985)
!2345 = !DILocation(line: 678, column: 43, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !569, line: 678, column: 25)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !569, line: 677, column: 19)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !569, line: 676, column: 17)
!2349 = distinct !DILexicalBlock(scope: !2011, file: !569, line: 676, column: 17)
!2350 = !DILocation(line: 680, column: 25, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !569, line: 680, column: 25)
!2352 = distinct !DILexicalBlock(scope: !2346, file: !569, line: 679, column: 23)
!2353 = !DILocation(line: 680, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2351, file: !569, line: 680, column: 25)
!2355 = !DILocation(line: 680, column: 25, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !569, line: 680, column: 25)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !569, line: 680, column: 25)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !569, line: 680, column: 25)
!2359 = !DILocation(line: 680, column: 25, scope: !2357)
!2360 = !DILocation(line: 680, column: 25, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !569, line: 680, column: 25)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !569, line: 680, column: 25)
!2363 = !DILocation(line: 680, column: 25, scope: !2362)
!2364 = !DILocation(line: 680, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !569, line: 680, column: 25)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !569, line: 680, column: 25)
!2367 = !DILocation(line: 680, column: 25, scope: !2366)
!2368 = !DILocation(line: 680, column: 25, scope: !2358)
!2369 = !DILocation(line: 680, column: 25, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !569, line: 680, column: 25)
!2371 = distinct !DILexicalBlock(scope: !2351, file: !569, line: 680, column: 25)
!2372 = !DILocation(line: 680, column: 25, scope: !2371)
!2373 = !DILocation(line: 681, column: 25, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !569, line: 681, column: 25)
!2375 = distinct !DILexicalBlock(scope: !2352, file: !569, line: 681, column: 25)
!2376 = !DILocation(line: 681, column: 25, scope: !2375)
!2377 = !DILocation(line: 682, column: 25, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !569, line: 682, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2352, file: !569, line: 682, column: 25)
!2380 = !DILocation(line: 682, column: 25, scope: !2379)
!2381 = !DILocation(line: 683, column: 38, scope: !2352)
!2382 = !DILocation(line: 683, column: 33, scope: !2352)
!2383 = !DILocation(line: 684, column: 23, scope: !2352)
!2384 = !DILocation(line: 685, column: 30, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2346, file: !569, line: 685, column: 30)
!2386 = !DILocation(line: 685, column: 30, scope: !2346)
!2387 = !DILocation(line: 687, column: 25, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !569, line: 687, column: 25)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !569, line: 687, column: 25)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !569, line: 686, column: 23)
!2391 = !DILocation(line: 687, column: 25, scope: !2389)
!2392 = !DILocation(line: 689, column: 23, scope: !2390)
!2393 = !DILocation(line: 690, column: 35, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2347, file: !569, line: 690, column: 25)
!2395 = !DILocation(line: 690, column: 30, scope: !2394)
!2396 = !DILocation(line: 690, column: 25, scope: !2347)
!2397 = !DILocation(line: 692, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !569, line: 692, column: 21)
!2399 = distinct !DILexicalBlock(scope: !2347, file: !569, line: 692, column: 21)
!2400 = !DILocation(line: 692, column: 21, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !569, line: 692, column: 21)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !569, line: 692, column: 21)
!2403 = distinct !DILexicalBlock(scope: !2398, file: !569, line: 692, column: 21)
!2404 = !DILocation(line: 692, column: 21, scope: !2402)
!2405 = !DILocation(line: 692, column: 21, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !569, line: 692, column: 21)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !569, line: 692, column: 21)
!2408 = !DILocation(line: 692, column: 21, scope: !2407)
!2409 = !DILocation(line: 692, column: 21, scope: !2403)
!2410 = !DILocation(line: 0, scope: !2347)
!2411 = !DILocation(line: 693, column: 21, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !569, line: 693, column: 21)
!2413 = distinct !DILexicalBlock(scope: !2347, file: !569, line: 693, column: 21)
!2414 = !DILocation(line: 693, column: 21, scope: !2413)
!2415 = !DILocation(line: 694, column: 25, scope: !2347)
!2416 = !DILocation(line: 676, column: 17, scope: !2348)
!2417 = distinct !{!2417, !2418, !2419}
!2418 = !DILocation(line: 676, column: 17, scope: !2349)
!2419 = !DILocation(line: 695, column: 19, scope: !2349)
!2420 = !DILocation(line: 409, column: 30, scope: !2131)
!2421 = !DILocation(line: 702, column: 34, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !1985, file: !569, line: 702, column: 11)
!2423 = !DILocation(line: 704, column: 14, scope: !2422)
!2424 = !DILocation(line: 705, column: 14, scope: !2422)
!2425 = !DILocation(line: 705, column: 35, scope: !2422)
!2426 = !DILocation(line: 705, column: 17, scope: !2422)
!2427 = !DILocation(line: 705, column: 47, scope: !2422)
!2428 = !DILocation(line: 705, column: 65, scope: !2422)
!2429 = !DILocation(line: 706, column: 11, scope: !2422)
!2430 = !DILocation(line: 702, column: 11, scope: !1985)
!2431 = !DILocation(line: 395, column: 15, scope: !1983)
!2432 = !DILocation(line: 709, column: 5, scope: !1985)
!2433 = !DILocation(line: 710, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !1985, file: !569, line: 710, column: 7)
!2435 = !DILocation(line: 710, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2434, file: !569, line: 710, column: 7)
!2437 = !DILocation(line: 710, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !569, line: 710, column: 7)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !569, line: 710, column: 7)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !569, line: 710, column: 7)
!2441 = !DILocation(line: 710, column: 7, scope: !2439)
!2442 = !DILocation(line: 710, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !569, line: 710, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !569, line: 710, column: 7)
!2445 = !DILocation(line: 710, column: 7, scope: !2444)
!2446 = !DILocation(line: 710, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !569, line: 710, column: 7)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !569, line: 710, column: 7)
!2449 = !DILocation(line: 710, column: 7, scope: !2448)
!2450 = !DILocation(line: 710, column: 7, scope: !2440)
!2451 = !DILocation(line: 710, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !569, line: 710, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2434, file: !569, line: 710, column: 7)
!2454 = !DILocation(line: 710, column: 7, scope: !2453)
!2455 = !DILocation(line: 712, column: 5, scope: !1985)
!2456 = !DILocation(line: 713, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !569, line: 713, column: 7)
!2458 = distinct !DILexicalBlock(scope: !1985, file: !569, line: 713, column: 7)
!2459 = !DILocation(line: 417, column: 21, scope: !1985)
!2460 = !DILocation(line: 713, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !569, line: 713, column: 7)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !569, line: 713, column: 7)
!2463 = distinct !DILexicalBlock(scope: !2457, file: !569, line: 713, column: 7)
!2464 = !DILocation(line: 713, column: 7, scope: !2462)
!2465 = !DILocation(line: 713, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !569, line: 713, column: 7)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !569, line: 713, column: 7)
!2468 = !DILocation(line: 713, column: 7, scope: !2467)
!2469 = !DILocation(line: 713, column: 7, scope: !2463)
!2470 = !DILocation(line: 714, column: 7, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !569, line: 714, column: 7)
!2472 = distinct !DILexicalBlock(scope: !1985, file: !569, line: 714, column: 7)
!2473 = !DILocation(line: 714, column: 7, scope: !2472)
!2474 = !DILocation(line: 716, column: 13, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !1985, file: !569, line: 716, column: 11)
!2476 = !DILocation(line: 716, column: 11, scope: !1985)
!2477 = !DILocation(line: 718, column: 5, scope: !1986)
!2478 = !DILocation(line: 395, column: 82, scope: !1986)
!2479 = !DILocation(line: 395, column: 3, scope: !1986)
!2480 = distinct !{!2480, !2127, !2481, !1013}
!2481 = !DILocation(line: 718, column: 5, scope: !1983)
!2482 = !DILocation(line: 720, column: 11, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !1952, file: !569, line: 720, column: 7)
!2484 = !DILocation(line: 720, column: 16, scope: !2483)
!2485 = !DILocation(line: 728, column: 51, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !1952, file: !569, line: 728, column: 7)
!2487 = !DILocation(line: 731, column: 11, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !569, line: 731, column: 11)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !569, line: 730, column: 5)
!2490 = !DILocation(line: 731, column: 11, scope: !2489)
!2491 = !DILocation(line: 732, column: 16, scope: !2488)
!2492 = !DILocation(line: 732, column: 9, scope: !2488)
!2493 = !DILocation(line: 736, column: 18, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !569, line: 736, column: 16)
!2495 = !DILocation(line: 736, column: 29, scope: !2494)
!2496 = !DILocation(line: 745, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !1952, file: !569, line: 745, column: 7)
!2498 = !DILocation(line: 745, column: 20, scope: !2497)
!2499 = !DILocation(line: 746, column: 12, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !569, line: 746, column: 5)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !569, line: 746, column: 5)
!2502 = !DILocation(line: 746, column: 5, scope: !2501)
!2503 = !DILocation(line: 747, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !569, line: 747, column: 7)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !569, line: 747, column: 7)
!2506 = !DILocation(line: 747, column: 7, scope: !2505)
!2507 = !DILocation(line: 746, column: 39, scope: !2500)
!2508 = distinct !{!2508, !2502, !2509, !1013}
!2509 = !DILocation(line: 747, column: 7, scope: !2501)
!2510 = !DILocation(line: 749, column: 11, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !1952, file: !569, line: 749, column: 7)
!2512 = !DILocation(line: 749, column: 7, scope: !1952)
!2513 = !DILocation(line: 750, column: 5, scope: !2511)
!2514 = !DILocation(line: 750, column: 17, scope: !2511)
!2515 = !DILocation(line: 753, column: 2, scope: !1952)
!2516 = !DILocation(line: 756, column: 51, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !1952, file: !569, line: 756, column: 7)
!2518 = !DILocation(line: 756, column: 21, scope: !2517)
!2519 = !DILocation(line: 760, column: 42, scope: !1952)
!2520 = !DILocation(line: 758, column: 10, scope: !1952)
!2521 = !DILocation(line: 758, column: 3, scope: !1952)
!2522 = !DILocation(line: 762, column: 1, scope: !1952)
!2523 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1091, file: !1091, line: 98, type: !2524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!131}
!2526 = !DISubprogram(name: "strlen", scope: !1087, file: !1087, line: 407, type: !2527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!133, !134}
!2529 = !DISubprogram(name: "iswprint", scope: !2530, file: !2530, line: 120, type: !2328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!2530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2531 = distinct !DISubprogram(name: "quotearg_alloc", scope: !569, file: !569, line: 788, type: !2532, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!129, !134, !131, !1845}
!2534 = !{!2535, !2536, !2537}
!2535 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !569, line: 788, type: !134)
!2536 = !DILocalVariable(name: "argsize", arg: 2, scope: !2531, file: !569, line: 788, type: !131)
!2537 = !DILocalVariable(name: "o", arg: 3, scope: !2531, file: !569, line: 789, type: !1845)
!2538 = !DILocation(line: 0, scope: !2531)
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2540, file: !569, line: 801, type: !134)
!2540 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !569, file: !569, line: 801, type: !2541, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!129, !134, !131, !806, !1845}
!2543 = !{!2539, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551}
!2544 = !DILocalVariable(name: "argsize", arg: 2, scope: !2540, file: !569, line: 801, type: !131)
!2545 = !DILocalVariable(name: "size", arg: 3, scope: !2540, file: !569, line: 801, type: !806)
!2546 = !DILocalVariable(name: "o", arg: 4, scope: !2540, file: !569, line: 802, type: !1845)
!2547 = !DILocalVariable(name: "p", scope: !2540, file: !569, line: 804, type: !1845)
!2548 = !DILocalVariable(name: "saved_errno", scope: !2540, file: !569, line: 805, type: !104)
!2549 = !DILocalVariable(name: "flags", scope: !2540, file: !569, line: 807, type: !104)
!2550 = !DILocalVariable(name: "bufsize", scope: !2540, file: !569, line: 808, type: !131)
!2551 = !DILocalVariable(name: "buf", scope: !2540, file: !569, line: 812, type: !129)
!2552 = !DILocation(line: 0, scope: !2540, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 791, column: 10, scope: !2531)
!2554 = !DILocation(line: 804, column: 37, scope: !2540, inlinedAt: !2553)
!2555 = !DILocation(line: 805, column: 21, scope: !2540, inlinedAt: !2553)
!2556 = !DILocation(line: 807, column: 18, scope: !2540, inlinedAt: !2553)
!2557 = !DILocation(line: 807, column: 24, scope: !2540, inlinedAt: !2553)
!2558 = !DILocation(line: 808, column: 72, scope: !2540, inlinedAt: !2553)
!2559 = !DILocation(line: 809, column: 56, scope: !2540, inlinedAt: !2553)
!2560 = !DILocation(line: 810, column: 49, scope: !2540, inlinedAt: !2553)
!2561 = !DILocation(line: 811, column: 49, scope: !2540, inlinedAt: !2553)
!2562 = !DILocation(line: 808, column: 20, scope: !2540, inlinedAt: !2553)
!2563 = !DILocation(line: 811, column: 62, scope: !2540, inlinedAt: !2553)
!2564 = !DILocation(line: 812, column: 15, scope: !2540, inlinedAt: !2553)
!2565 = !DILocation(line: 813, column: 60, scope: !2540, inlinedAt: !2553)
!2566 = !DILocation(line: 815, column: 32, scope: !2540, inlinedAt: !2553)
!2567 = !DILocation(line: 815, column: 47, scope: !2540, inlinedAt: !2553)
!2568 = !DILocation(line: 813, column: 3, scope: !2540, inlinedAt: !2553)
!2569 = !DILocation(line: 816, column: 9, scope: !2540, inlinedAt: !2553)
!2570 = !DILocation(line: 791, column: 3, scope: !2531)
!2571 = !DILocation(line: 0, scope: !2540)
!2572 = !DILocation(line: 804, column: 37, scope: !2540)
!2573 = !DILocation(line: 805, column: 21, scope: !2540)
!2574 = !DILocation(line: 807, column: 18, scope: !2540)
!2575 = !DILocation(line: 807, column: 27, scope: !2540)
!2576 = !DILocation(line: 807, column: 24, scope: !2540)
!2577 = !DILocation(line: 808, column: 72, scope: !2540)
!2578 = !DILocation(line: 809, column: 56, scope: !2540)
!2579 = !DILocation(line: 810, column: 49, scope: !2540)
!2580 = !DILocation(line: 811, column: 49, scope: !2540)
!2581 = !DILocation(line: 808, column: 20, scope: !2540)
!2582 = !DILocation(line: 811, column: 62, scope: !2540)
!2583 = !DILocation(line: 812, column: 15, scope: !2540)
!2584 = !DILocation(line: 813, column: 60, scope: !2540)
!2585 = !DILocation(line: 815, column: 32, scope: !2540)
!2586 = !DILocation(line: 815, column: 47, scope: !2540)
!2587 = !DILocation(line: 813, column: 3, scope: !2540)
!2588 = !DILocation(line: 816, column: 9, scope: !2540)
!2589 = !DILocation(line: 817, column: 7, scope: !2540)
!2590 = !DILocation(line: 818, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2540, file: !569, line: 817, column: 7)
!2592 = !{!1280, !1280, i64 0}
!2593 = !DILocation(line: 818, column: 5, scope: !2591)
!2594 = !DILocation(line: 819, column: 3, scope: !2540)
!2595 = distinct !DISubprogram(name: "quotearg_free", scope: !569, file: !569, line: 837, type: !524, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2596)
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "sv", scope: !2595, file: !569, line: 839, type: !656)
!2598 = !DILocalVariable(name: "i", scope: !2599, file: !569, line: 840, type: !104)
!2599 = distinct !DILexicalBlock(scope: !2595, file: !569, line: 840, column: 3)
!2600 = !DILocation(line: 839, column: 24, scope: !2595)
!2601 = !DILocation(line: 0, scope: !2595)
!2602 = !DILocation(line: 0, scope: !2599)
!2603 = !DILocation(line: 840, column: 21, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !569, line: 840, column: 3)
!2605 = !DILocation(line: 840, column: 3, scope: !2599)
!2606 = !DILocation(line: 842, column: 13, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2595, file: !569, line: 842, column: 7)
!2608 = !{!2609, !896, i64 8}
!2609 = !{!"slotvec", !1280, i64 0, !896, i64 8}
!2610 = !DILocation(line: 842, column: 17, scope: !2607)
!2611 = !DILocation(line: 842, column: 7, scope: !2595)
!2612 = !DILocation(line: 841, column: 17, scope: !2604)
!2613 = !DILocation(line: 841, column: 5, scope: !2604)
!2614 = !DILocation(line: 840, column: 32, scope: !2604)
!2615 = distinct !{!2615, !2605, !2616, !1013}
!2616 = !DILocation(line: 841, column: 20, scope: !2599)
!2617 = !DILocation(line: 844, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2607, file: !569, line: 843, column: 5)
!2619 = !DILocation(line: 845, column: 21, scope: !2618)
!2620 = !{!2609, !1280, i64 0}
!2621 = !DILocation(line: 846, column: 20, scope: !2618)
!2622 = !DILocation(line: 847, column: 5, scope: !2618)
!2623 = !DILocation(line: 848, column: 10, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2595, file: !569, line: 848, column: 7)
!2625 = !DILocation(line: 848, column: 7, scope: !2595)
!2626 = !DILocation(line: 850, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !569, line: 849, column: 5)
!2628 = !DILocation(line: 851, column: 15, scope: !2627)
!2629 = !DILocation(line: 852, column: 5, scope: !2627)
!2630 = !DILocation(line: 853, column: 10, scope: !2595)
!2631 = !DILocation(line: 854, column: 1, scope: !2595)
!2632 = !DISubprogram(name: "free", scope: !1799, file: !1799, line: 786, type: !2633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !130}
!2635 = distinct !DISubprogram(name: "quotearg_n", scope: !569, file: !569, line: 919, type: !1084, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2636)
!2636 = !{!2637, !2638}
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2635, file: !569, line: 919, type: !104)
!2638 = !DILocalVariable(name: "arg", arg: 2, scope: !2635, file: !569, line: 919, type: !134)
!2639 = !DILocation(line: 0, scope: !2635)
!2640 = !DILocation(line: 921, column: 10, scope: !2635)
!2641 = !DILocation(line: 921, column: 3, scope: !2635)
!2642 = distinct !DISubprogram(name: "quotearg_n_options", scope: !569, file: !569, line: 866, type: !2643, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!129, !104, !134, !131, !1845}
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2656, !2657, !2659, !2660, !2661}
!2646 = !DILocalVariable(name: "n", arg: 1, scope: !2642, file: !569, line: 866, type: !104)
!2647 = !DILocalVariable(name: "arg", arg: 2, scope: !2642, file: !569, line: 866, type: !134)
!2648 = !DILocalVariable(name: "argsize", arg: 3, scope: !2642, file: !569, line: 866, type: !131)
!2649 = !DILocalVariable(name: "options", arg: 4, scope: !2642, file: !569, line: 867, type: !1845)
!2650 = !DILocalVariable(name: "saved_errno", scope: !2642, file: !569, line: 869, type: !104)
!2651 = !DILocalVariable(name: "sv", scope: !2642, file: !569, line: 871, type: !656)
!2652 = !DILocalVariable(name: "nslots_max", scope: !2642, file: !569, line: 873, type: !104)
!2653 = !DILocalVariable(name: "preallocated", scope: !2654, file: !569, line: 879, type: !137)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !569, line: 878, column: 5)
!2655 = distinct !DILexicalBlock(scope: !2642, file: !569, line: 877, column: 7)
!2656 = !DILocalVariable(name: "new_nslots", scope: !2654, file: !569, line: 880, type: !819)
!2657 = !DILocalVariable(name: "size", scope: !2658, file: !569, line: 891, type: !131)
!2658 = distinct !DILexicalBlock(scope: !2642, file: !569, line: 890, column: 3)
!2659 = !DILocalVariable(name: "val", scope: !2658, file: !569, line: 892, type: !129)
!2660 = !DILocalVariable(name: "flags", scope: !2658, file: !569, line: 894, type: !104)
!2661 = !DILocalVariable(name: "qsize", scope: !2658, file: !569, line: 895, type: !131)
!2662 = !DILocation(line: 0, scope: !2642)
!2663 = !DILocation(line: 869, column: 21, scope: !2642)
!2664 = !DILocation(line: 871, column: 24, scope: !2642)
!2665 = !DILocation(line: 874, column: 17, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2642, file: !569, line: 874, column: 7)
!2667 = !DILocation(line: 875, column: 5, scope: !2666)
!2668 = !DILocation(line: 877, column: 7, scope: !2655)
!2669 = !DILocation(line: 877, column: 14, scope: !2655)
!2670 = !DILocation(line: 877, column: 7, scope: !2642)
!2671 = !DILocation(line: 879, column: 31, scope: !2654)
!2672 = !DILocation(line: 0, scope: !2654)
!2673 = !DILocation(line: 880, column: 7, scope: !2654)
!2674 = !DILocation(line: 880, column: 26, scope: !2654)
!2675 = !DILocation(line: 880, column: 13, scope: !2654)
!2676 = !DILocation(line: 882, column: 31, scope: !2654)
!2677 = !DILocation(line: 883, column: 33, scope: !2654)
!2678 = !DILocation(line: 883, column: 42, scope: !2654)
!2679 = !DILocation(line: 883, column: 31, scope: !2654)
!2680 = !DILocation(line: 882, column: 22, scope: !2654)
!2681 = !DILocation(line: 882, column: 15, scope: !2654)
!2682 = !DILocation(line: 884, column: 11, scope: !2654)
!2683 = !DILocation(line: 885, column: 15, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2654, file: !569, line: 884, column: 11)
!2685 = !{i64 0, i64 8, !2592, i64 8, i64 8, !895}
!2686 = !DILocation(line: 885, column: 9, scope: !2684)
!2687 = !DILocation(line: 886, column: 20, scope: !2654)
!2688 = !DILocation(line: 886, column: 18, scope: !2654)
!2689 = !DILocation(line: 886, column: 32, scope: !2654)
!2690 = !DILocation(line: 886, column: 43, scope: !2654)
!2691 = !DILocation(line: 886, column: 53, scope: !2654)
!2692 = !DILocation(line: 0, scope: !2060, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 886, column: 7, scope: !2654)
!2694 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2693)
!2695 = !DILocation(line: 887, column: 16, scope: !2654)
!2696 = !DILocation(line: 887, column: 14, scope: !2654)
!2697 = !DILocation(line: 888, column: 5, scope: !2655)
!2698 = !DILocation(line: 888, column: 5, scope: !2654)
!2699 = !DILocation(line: 891, column: 19, scope: !2658)
!2700 = !DILocation(line: 891, column: 25, scope: !2658)
!2701 = !DILocation(line: 0, scope: !2658)
!2702 = !DILocation(line: 892, column: 23, scope: !2658)
!2703 = !DILocation(line: 894, column: 26, scope: !2658)
!2704 = !DILocation(line: 894, column: 32, scope: !2658)
!2705 = !DILocation(line: 896, column: 55, scope: !2658)
!2706 = !DILocation(line: 897, column: 55, scope: !2658)
!2707 = !DILocation(line: 898, column: 55, scope: !2658)
!2708 = !DILocation(line: 899, column: 55, scope: !2658)
!2709 = !DILocation(line: 895, column: 20, scope: !2658)
!2710 = !DILocation(line: 901, column: 14, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2658, file: !569, line: 901, column: 9)
!2712 = !DILocation(line: 901, column: 9, scope: !2658)
!2713 = !DILocation(line: 903, column: 35, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !569, line: 902, column: 7)
!2715 = !DILocation(line: 903, column: 20, scope: !2714)
!2716 = !DILocation(line: 904, column: 17, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !569, line: 904, column: 13)
!2718 = !DILocation(line: 904, column: 13, scope: !2714)
!2719 = !DILocation(line: 905, column: 11, scope: !2717)
!2720 = !DILocation(line: 906, column: 27, scope: !2714)
!2721 = !DILocation(line: 906, column: 19, scope: !2714)
!2722 = !DILocation(line: 907, column: 69, scope: !2714)
!2723 = !DILocation(line: 909, column: 44, scope: !2714)
!2724 = !DILocation(line: 910, column: 44, scope: !2714)
!2725 = !DILocation(line: 907, column: 9, scope: !2714)
!2726 = !DILocation(line: 911, column: 7, scope: !2714)
!2727 = !DILocation(line: 913, column: 11, scope: !2658)
!2728 = !DILocation(line: 914, column: 5, scope: !2658)
!2729 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !569, file: !569, line: 925, type: !2730, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!129, !104, !134, !131}
!2732 = !{!2733, !2734, !2735}
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !569, line: 925, type: !104)
!2734 = !DILocalVariable(name: "arg", arg: 2, scope: !2729, file: !569, line: 925, type: !134)
!2735 = !DILocalVariable(name: "argsize", arg: 3, scope: !2729, file: !569, line: 925, type: !131)
!2736 = !DILocation(line: 0, scope: !2729)
!2737 = !DILocation(line: 927, column: 10, scope: !2729)
!2738 = !DILocation(line: 927, column: 3, scope: !2729)
!2739 = distinct !DISubprogram(name: "quotearg", scope: !569, file: !569, line: 931, type: !1093, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2740)
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !569, line: 931, type: !134)
!2742 = !DILocation(line: 0, scope: !2739)
!2743 = !DILocation(line: 0, scope: !2635, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 933, column: 10, scope: !2739)
!2745 = !DILocation(line: 921, column: 10, scope: !2635, inlinedAt: !2744)
!2746 = !DILocation(line: 933, column: 3, scope: !2739)
!2747 = distinct !DISubprogram(name: "quotearg_mem", scope: !569, file: !569, line: 937, type: !2748, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!129, !134, !131}
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !569, line: 937, type: !134)
!2752 = !DILocalVariable(name: "argsize", arg: 2, scope: !2747, file: !569, line: 937, type: !131)
!2753 = !DILocation(line: 0, scope: !2747)
!2754 = !DILocation(line: 0, scope: !2729, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 939, column: 10, scope: !2747)
!2756 = !DILocation(line: 927, column: 10, scope: !2729, inlinedAt: !2755)
!2757 = !DILocation(line: 939, column: 3, scope: !2747)
!2758 = distinct !DISubprogram(name: "quotearg_n_style", scope: !569, file: !569, line: 943, type: !2759, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!129, !104, !108, !134}
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2758, file: !569, line: 943, type: !104)
!2763 = !DILocalVariable(name: "s", arg: 2, scope: !2758, file: !569, line: 943, type: !108)
!2764 = !DILocalVariable(name: "arg", arg: 3, scope: !2758, file: !569, line: 943, type: !134)
!2765 = !DILocalVariable(name: "o", scope: !2758, file: !569, line: 945, type: !1846)
!2766 = !DILocation(line: 0, scope: !2758)
!2767 = !DILocation(line: 945, column: 3, scope: !2758)
!2768 = !DILocation(line: 945, column: 32, scope: !2758)
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"quoting_options_from_style: argument 0"}
!2771 = distinct !{!2771, !"quoting_options_from_style"}
!2772 = !DILocation(line: 945, column: 36, scope: !2758)
!2773 = !DILocalVariable(name: "style", arg: 1, scope: !2774, file: !569, line: 183, type: !108)
!2774 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !569, file: !569, line: 183, type: !2775, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!608, !108}
!2777 = !{!2773, !2778}
!2778 = !DILocalVariable(name: "o", scope: !2774, file: !569, line: 185, type: !608)
!2779 = !DILocation(line: 0, scope: !2774, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 945, column: 36, scope: !2758)
!2781 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2780)
!2782 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2780)
!2783 = distinct !DILexicalBlock(scope: !2774, file: !569, line: 186, column: 7)
!2784 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2780)
!2785 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2780)
!2786 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2780)
!2787 = !DILocation(line: 946, column: 10, scope: !2758)
!2788 = !DILocation(line: 947, column: 1, scope: !2758)
!2789 = !DILocation(line: 946, column: 3, scope: !2758)
!2790 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !569, file: !569, line: 950, type: !2791, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!129, !104, !108, !134, !131}
!2793 = !{!2794, !2795, !2796, !2797, !2798}
!2794 = !DILocalVariable(name: "n", arg: 1, scope: !2790, file: !569, line: 950, type: !104)
!2795 = !DILocalVariable(name: "s", arg: 2, scope: !2790, file: !569, line: 950, type: !108)
!2796 = !DILocalVariable(name: "arg", arg: 3, scope: !2790, file: !569, line: 951, type: !134)
!2797 = !DILocalVariable(name: "argsize", arg: 4, scope: !2790, file: !569, line: 951, type: !131)
!2798 = !DILocalVariable(name: "o", scope: !2790, file: !569, line: 953, type: !1846)
!2799 = !DILocation(line: 0, scope: !2790)
!2800 = !DILocation(line: 953, column: 3, scope: !2790)
!2801 = !DILocation(line: 953, column: 32, scope: !2790)
!2802 = !{!2803}
!2803 = distinct !{!2803, !2804, !"quoting_options_from_style: argument 0"}
!2804 = distinct !{!2804, !"quoting_options_from_style"}
!2805 = !DILocation(line: 953, column: 36, scope: !2790)
!2806 = !DILocation(line: 0, scope: !2774, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 953, column: 36, scope: !2790)
!2808 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2807)
!2809 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2807)
!2810 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2807)
!2811 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2807)
!2812 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2807)
!2813 = !DILocation(line: 954, column: 10, scope: !2790)
!2814 = !DILocation(line: 955, column: 1, scope: !2790)
!2815 = !DILocation(line: 954, column: 3, scope: !2790)
!2816 = distinct !DISubprogram(name: "quotearg_style", scope: !569, file: !569, line: 958, type: !2817, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!129, !108, !134}
!2819 = !{!2820, !2821}
!2820 = !DILocalVariable(name: "s", arg: 1, scope: !2816, file: !569, line: 958, type: !108)
!2821 = !DILocalVariable(name: "arg", arg: 2, scope: !2816, file: !569, line: 958, type: !134)
!2822 = !DILocation(line: 0, scope: !2816)
!2823 = !DILocation(line: 0, scope: !2758, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 960, column: 10, scope: !2816)
!2825 = !DILocation(line: 945, column: 3, scope: !2758, inlinedAt: !2824)
!2826 = !DILocation(line: 945, column: 32, scope: !2758, inlinedAt: !2824)
!2827 = !{!2828}
!2828 = distinct !{!2828, !2829, !"quoting_options_from_style: argument 0"}
!2829 = distinct !{!2829, !"quoting_options_from_style"}
!2830 = !DILocation(line: 945, column: 36, scope: !2758, inlinedAt: !2824)
!2831 = !DILocation(line: 0, scope: !2774, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 945, column: 36, scope: !2758, inlinedAt: !2824)
!2833 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2832)
!2834 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2832)
!2835 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2832)
!2836 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2832)
!2837 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2832)
!2838 = !DILocation(line: 946, column: 10, scope: !2758, inlinedAt: !2824)
!2839 = !DILocation(line: 947, column: 1, scope: !2758, inlinedAt: !2824)
!2840 = !DILocation(line: 960, column: 3, scope: !2816)
!2841 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !569, file: !569, line: 964, type: !2842, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!129, !108, !134, !131}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "s", arg: 1, scope: !2841, file: !569, line: 964, type: !108)
!2846 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !569, line: 964, type: !134)
!2847 = !DILocalVariable(name: "argsize", arg: 3, scope: !2841, file: !569, line: 964, type: !131)
!2848 = !DILocation(line: 0, scope: !2841)
!2849 = !DILocation(line: 0, scope: !2790, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 966, column: 10, scope: !2841)
!2851 = !DILocation(line: 953, column: 3, scope: !2790, inlinedAt: !2850)
!2852 = !DILocation(line: 953, column: 32, scope: !2790, inlinedAt: !2850)
!2853 = !{!2854}
!2854 = distinct !{!2854, !2855, !"quoting_options_from_style: argument 0"}
!2855 = distinct !{!2855, !"quoting_options_from_style"}
!2856 = !DILocation(line: 953, column: 36, scope: !2790, inlinedAt: !2850)
!2857 = !DILocation(line: 0, scope: !2774, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 953, column: 36, scope: !2790, inlinedAt: !2850)
!2859 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2858)
!2860 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2858)
!2861 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2858)
!2862 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2858)
!2863 = !DILocation(line: 188, column: 11, scope: !2774, inlinedAt: !2858)
!2864 = !DILocation(line: 954, column: 10, scope: !2790, inlinedAt: !2850)
!2865 = !DILocation(line: 955, column: 1, scope: !2790, inlinedAt: !2850)
!2866 = !DILocation(line: 966, column: 3, scope: !2841)
!2867 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !569, file: !569, line: 970, type: !2868, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!129, !134, !131, !4}
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DILocalVariable(name: "arg", arg: 1, scope: !2867, file: !569, line: 970, type: !134)
!2872 = !DILocalVariable(name: "argsize", arg: 2, scope: !2867, file: !569, line: 970, type: !131)
!2873 = !DILocalVariable(name: "ch", arg: 3, scope: !2867, file: !569, line: 970, type: !4)
!2874 = !DILocalVariable(name: "options", scope: !2867, file: !569, line: 972, type: !608)
!2875 = !DILocation(line: 0, scope: !2867)
!2876 = !DILocation(line: 972, column: 3, scope: !2867)
!2877 = !DILocation(line: 972, column: 26, scope: !2867)
!2878 = !DILocation(line: 973, column: 13, scope: !2867)
!2879 = !{i64 0, i64 4, !975, i64 4, i64 4, !966, i64 8, i64 32, !975, i64 40, i64 8, !895, i64 48, i64 8, !895}
!2880 = !DILocation(line: 0, scope: !1865, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 974, column: 3, scope: !2867)
!2882 = !DILocation(line: 147, column: 41, scope: !1865, inlinedAt: !2881)
!2883 = !DILocation(line: 147, column: 62, scope: !1865, inlinedAt: !2881)
!2884 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2881)
!2885 = !DILocation(line: 148, column: 15, scope: !1865, inlinedAt: !2881)
!2886 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2881)
!2887 = !DILocation(line: 149, column: 24, scope: !1865, inlinedAt: !2881)
!2888 = !DILocation(line: 150, column: 19, scope: !1865, inlinedAt: !2881)
!2889 = !DILocation(line: 150, column: 24, scope: !1865, inlinedAt: !2881)
!2890 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2881)
!2891 = !DILocation(line: 975, column: 10, scope: !2867)
!2892 = !DILocation(line: 976, column: 1, scope: !2867)
!2893 = !DILocation(line: 975, column: 3, scope: !2867)
!2894 = distinct !DISubprogram(name: "quotearg_char", scope: !569, file: !569, line: 979, type: !2895, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!129, !134, !4}
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !569, line: 979, type: !134)
!2899 = !DILocalVariable(name: "ch", arg: 2, scope: !2894, file: !569, line: 979, type: !4)
!2900 = !DILocation(line: 0, scope: !2894)
!2901 = !DILocation(line: 0, scope: !2867, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 981, column: 10, scope: !2894)
!2903 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2902)
!2904 = !DILocation(line: 972, column: 26, scope: !2867, inlinedAt: !2902)
!2905 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2902)
!2906 = !DILocation(line: 0, scope: !1865, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2902)
!2908 = !DILocation(line: 147, column: 41, scope: !1865, inlinedAt: !2907)
!2909 = !DILocation(line: 147, column: 62, scope: !1865, inlinedAt: !2907)
!2910 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2907)
!2911 = !DILocation(line: 148, column: 15, scope: !1865, inlinedAt: !2907)
!2912 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2907)
!2913 = !DILocation(line: 149, column: 24, scope: !1865, inlinedAt: !2907)
!2914 = !DILocation(line: 150, column: 19, scope: !1865, inlinedAt: !2907)
!2915 = !DILocation(line: 150, column: 24, scope: !1865, inlinedAt: !2907)
!2916 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2907)
!2917 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2902)
!2918 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2902)
!2919 = !DILocation(line: 981, column: 3, scope: !2894)
!2920 = distinct !DISubprogram(name: "quotearg_colon", scope: !569, file: !569, line: 985, type: !1093, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2921)
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !569, line: 985, type: !134)
!2923 = !DILocation(line: 0, scope: !2920)
!2924 = !DILocation(line: 0, scope: !2894, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 987, column: 10, scope: !2920)
!2926 = !DILocation(line: 0, scope: !2867, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 981, column: 10, scope: !2894, inlinedAt: !2925)
!2928 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2927)
!2929 = !DILocation(line: 972, column: 26, scope: !2867, inlinedAt: !2927)
!2930 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2927)
!2931 = !DILocation(line: 0, scope: !1865, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2927)
!2933 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2932)
!2934 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2932)
!2935 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2932)
!2936 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2927)
!2937 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2927)
!2938 = !DILocation(line: 987, column: 3, scope: !2920)
!2939 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !569, file: !569, line: 991, type: !2748, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2940)
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !569, line: 991, type: !134)
!2942 = !DILocalVariable(name: "argsize", arg: 2, scope: !2939, file: !569, line: 991, type: !131)
!2943 = !DILocation(line: 0, scope: !2939)
!2944 = !DILocation(line: 0, scope: !2867, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 993, column: 10, scope: !2939)
!2946 = !DILocation(line: 972, column: 3, scope: !2867, inlinedAt: !2945)
!2947 = !DILocation(line: 972, column: 26, scope: !2867, inlinedAt: !2945)
!2948 = !DILocation(line: 973, column: 13, scope: !2867, inlinedAt: !2945)
!2949 = !DILocation(line: 0, scope: !1865, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 974, column: 3, scope: !2867, inlinedAt: !2945)
!2951 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2950)
!2952 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2950)
!2953 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2950)
!2954 = !DILocation(line: 975, column: 10, scope: !2867, inlinedAt: !2945)
!2955 = !DILocation(line: 976, column: 1, scope: !2867, inlinedAt: !2945)
!2956 = !DILocation(line: 993, column: 3, scope: !2939)
!2957 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !569, file: !569, line: 997, type: !2759, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2958)
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DILocalVariable(name: "n", arg: 1, scope: !2957, file: !569, line: 997, type: !104)
!2960 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !569, line: 997, type: !108)
!2961 = !DILocalVariable(name: "arg", arg: 3, scope: !2957, file: !569, line: 997, type: !134)
!2962 = !DILocalVariable(name: "options", scope: !2957, file: !569, line: 999, type: !608)
!2963 = !DILocation(line: 185, column: 26, scope: !2774, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 1000, column: 13, scope: !2957)
!2965 = !DILocation(line: 0, scope: !2957)
!2966 = !DILocation(line: 999, column: 3, scope: !2957)
!2967 = !DILocation(line: 999, column: 26, scope: !2957)
!2968 = !DILocation(line: 0, scope: !2774, inlinedAt: !2964)
!2969 = !DILocation(line: 186, column: 13, scope: !2783, inlinedAt: !2964)
!2970 = !DILocation(line: 186, column: 7, scope: !2774, inlinedAt: !2964)
!2971 = !DILocation(line: 187, column: 5, scope: !2783, inlinedAt: !2964)
!2972 = !{!2973}
!2973 = distinct !{!2973, !2974, !"quoting_options_from_style: argument 0"}
!2974 = distinct !{!2974, !"quoting_options_from_style"}
!2975 = !DILocation(line: 1000, column: 13, scope: !2957)
!2976 = !DILocation(line: 0, scope: !1865, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1001, column: 3, scope: !2957)
!2978 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2977)
!2979 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2977)
!2980 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2977)
!2981 = !DILocation(line: 1002, column: 10, scope: !2957)
!2982 = !DILocation(line: 1003, column: 1, scope: !2957)
!2983 = !DILocation(line: 1002, column: 3, scope: !2957)
!2984 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !569, file: !569, line: 1006, type: !2985, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!129, !104, !134, !134, !134}
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !569, line: 1006, type: !104)
!2989 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2984, file: !569, line: 1006, type: !134)
!2990 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2984, file: !569, line: 1007, type: !134)
!2991 = !DILocalVariable(name: "arg", arg: 4, scope: !2984, file: !569, line: 1007, type: !134)
!2992 = !DILocation(line: 0, scope: !2984)
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !569, line: 1014, type: !104)
!2994 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !569, file: !569, line: 1014, type: !2995, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!129, !104, !134, !134, !134, !131}
!2997 = !{!2993, !2998, !2999, !3000, !3001, !3002}
!2998 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2994, file: !569, line: 1014, type: !134)
!2999 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2994, file: !569, line: 1015, type: !134)
!3000 = !DILocalVariable(name: "arg", arg: 4, scope: !2994, file: !569, line: 1016, type: !134)
!3001 = !DILocalVariable(name: "argsize", arg: 5, scope: !2994, file: !569, line: 1016, type: !131)
!3002 = !DILocalVariable(name: "o", scope: !2994, file: !569, line: 1018, type: !608)
!3003 = !DILocation(line: 0, scope: !2994, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 1009, column: 10, scope: !2984)
!3005 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3004)
!3006 = !DILocation(line: 1018, column: 26, scope: !2994, inlinedAt: !3004)
!3007 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3004)
!3008 = !DILocation(line: 0, scope: !1905, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3004)
!3010 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3009)
!3011 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3009)
!3012 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3009)
!3013 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3009)
!3014 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3009)
!3015 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3009)
!3016 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3009)
!3017 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3009)
!3018 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3004)
!3019 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3004)
!3020 = !DILocation(line: 1009, column: 3, scope: !2984)
!3021 = !DILocation(line: 0, scope: !2994)
!3022 = !DILocation(line: 1018, column: 3, scope: !2994)
!3023 = !DILocation(line: 1018, column: 26, scope: !2994)
!3024 = !DILocation(line: 1018, column: 30, scope: !2994)
!3025 = !DILocation(line: 0, scope: !1905, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1019, column: 3, scope: !2994)
!3027 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3026)
!3028 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3026)
!3029 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3026)
!3030 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3026)
!3031 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3026)
!3032 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3026)
!3033 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3026)
!3034 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3026)
!3035 = !DILocation(line: 1020, column: 10, scope: !2994)
!3036 = !DILocation(line: 1021, column: 1, scope: !2994)
!3037 = !DILocation(line: 1020, column: 3, scope: !2994)
!3038 = distinct !DISubprogram(name: "quotearg_custom", scope: !569, file: !569, line: 1024, type: !3039, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!129, !134, !134, !134}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3038, file: !569, line: 1024, type: !134)
!3043 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3038, file: !569, line: 1024, type: !134)
!3044 = !DILocalVariable(name: "arg", arg: 3, scope: !3038, file: !569, line: 1025, type: !134)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 0, scope: !2984, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1027, column: 10, scope: !3038)
!3048 = !DILocation(line: 0, scope: !2994, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1009, column: 10, scope: !2984, inlinedAt: !3047)
!3050 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3049)
!3051 = !DILocation(line: 1018, column: 26, scope: !2994, inlinedAt: !3049)
!3052 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3049)
!3053 = !DILocation(line: 0, scope: !1905, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3049)
!3055 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3054)
!3056 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3054)
!3057 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3054)
!3058 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3054)
!3059 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3054)
!3060 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3054)
!3061 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3054)
!3062 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3054)
!3063 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3049)
!3064 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3049)
!3065 = !DILocation(line: 1027, column: 3, scope: !3038)
!3066 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !569, file: !569, line: 1031, type: !3067, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!129, !134, !134, !134, !131}
!3069 = !{!3070, !3071, !3072, !3073}
!3070 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3066, file: !569, line: 1031, type: !134)
!3071 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3066, file: !569, line: 1031, type: !134)
!3072 = !DILocalVariable(name: "arg", arg: 3, scope: !3066, file: !569, line: 1032, type: !134)
!3073 = !DILocalVariable(name: "argsize", arg: 4, scope: !3066, file: !569, line: 1032, type: !131)
!3074 = !DILocation(line: 0, scope: !3066)
!3075 = !DILocation(line: 0, scope: !2994, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1034, column: 10, scope: !3066)
!3077 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3076)
!3078 = !DILocation(line: 1018, column: 26, scope: !2994, inlinedAt: !3076)
!3079 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3076)
!3080 = !DILocation(line: 0, scope: !1905, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3076)
!3082 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3081)
!3083 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3081)
!3084 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3081)
!3085 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3081)
!3086 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3081)
!3087 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3081)
!3088 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3081)
!3089 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3081)
!3090 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3076)
!3091 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3076)
!3092 = !DILocation(line: 1034, column: 3, scope: !3066)
!3093 = distinct !DISubprogram(name: "quote_n_mem", scope: !569, file: !569, line: 1049, type: !3094, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!134, !104, !134, !131}
!3096 = !{!3097, !3098, !3099}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !569, line: 1049, type: !104)
!3098 = !DILocalVariable(name: "arg", arg: 2, scope: !3093, file: !569, line: 1049, type: !134)
!3099 = !DILocalVariable(name: "argsize", arg: 3, scope: !3093, file: !569, line: 1049, type: !131)
!3100 = !DILocation(line: 0, scope: !3093)
!3101 = !DILocation(line: 1051, column: 10, scope: !3093)
!3102 = !DILocation(line: 1051, column: 3, scope: !3093)
!3103 = distinct !DISubprogram(name: "quote_mem", scope: !569, file: !569, line: 1055, type: !3104, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!134, !134, !131}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "arg", arg: 1, scope: !3103, file: !569, line: 1055, type: !134)
!3108 = !DILocalVariable(name: "argsize", arg: 2, scope: !3103, file: !569, line: 1055, type: !131)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !3093, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1057, column: 10, scope: !3103)
!3112 = !DILocation(line: 1051, column: 10, scope: !3093, inlinedAt: !3111)
!3113 = !DILocation(line: 1057, column: 3, scope: !3103)
!3114 = distinct !DISubprogram(name: "quote_n", scope: !569, file: !569, line: 1061, type: !3115, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!134, !104, !134}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !569, line: 1061, type: !104)
!3119 = !DILocalVariable(name: "arg", arg: 2, scope: !3114, file: !569, line: 1061, type: !134)
!3120 = !DILocation(line: 0, scope: !3114)
!3121 = !DILocation(line: 0, scope: !3093, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1063, column: 10, scope: !3114)
!3123 = !DILocation(line: 1051, column: 10, scope: !3093, inlinedAt: !3122)
!3124 = !DILocation(line: 1063, column: 3, scope: !3114)
!3125 = distinct !DISubprogram(name: "quote", scope: !569, file: !569, line: 1067, type: !3126, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!134, !134}
!3128 = !{!3129}
!3129 = !DILocalVariable(name: "arg", arg: 1, scope: !3125, file: !569, line: 1067, type: !134)
!3130 = !DILocation(line: 0, scope: !3125)
!3131 = !DILocation(line: 0, scope: !3114, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1069, column: 10, scope: !3125)
!3133 = !DILocation(line: 0, scope: !3093, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3132)
!3135 = !DILocation(line: 1051, column: 10, scope: !3093, inlinedAt: !3134)
!3136 = !DILocation(line: 1069, column: 3, scope: !3125)
!3137 = distinct !DISubprogram(name: "version_etc_arn", scope: !671, file: !671, line: 61, type: !3138, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !3175)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !3140, !134, !134, !134, !3174, !131}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3142, file: !253, line: 51, baseType: !104, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3142, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3142, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3142, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3142, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3142, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3142, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3142, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3142, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3142, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3142, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3142, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3142, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3142, file: !253, line: 70, baseType: !3158, size: 64, offset: 832)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3142, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3142, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3142, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3142, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3142, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3142, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3142, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3142, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3142, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3142, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3142, file: !253, line: 93, baseType: !3158, size: 64, offset: 1344)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3142, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3142, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3142, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3142, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181}
!3176 = !DILocalVariable(name: "stream", arg: 1, scope: !3137, file: !671, line: 61, type: !3140)
!3177 = !DILocalVariable(name: "command_name", arg: 2, scope: !3137, file: !671, line: 62, type: !134)
!3178 = !DILocalVariable(name: "package", arg: 3, scope: !3137, file: !671, line: 62, type: !134)
!3179 = !DILocalVariable(name: "version", arg: 4, scope: !3137, file: !671, line: 63, type: !134)
!3180 = !DILocalVariable(name: "authors", arg: 5, scope: !3137, file: !671, line: 64, type: !3174)
!3181 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3137, file: !671, line: 64, type: !131)
!3182 = !DILocation(line: 0, scope: !3137)
!3183 = !DILocation(line: 66, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3137, file: !671, line: 66, column: 7)
!3185 = !DILocation(line: 66, column: 7, scope: !3137)
!3186 = !DILocation(line: 67, column: 5, scope: !3184)
!3187 = !DILocation(line: 69, column: 5, scope: !3184)
!3188 = !DILocation(line: 83, column: 3, scope: !3137)
!3189 = !DILocation(line: 85, column: 3, scope: !3137)
!3190 = !DILocation(line: 88, column: 3, scope: !3137)
!3191 = !DILocation(line: 95, column: 3, scope: !3137)
!3192 = !DILocation(line: 97, column: 3, scope: !3137)
!3193 = !DILocation(line: 105, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3137, file: !671, line: 98, column: 5)
!3195 = !DILocation(line: 106, column: 7, scope: !3194)
!3196 = !DILocation(line: 109, column: 7, scope: !3194)
!3197 = !DILocation(line: 110, column: 7, scope: !3194)
!3198 = !DILocation(line: 113, column: 7, scope: !3194)
!3199 = !DILocation(line: 115, column: 7, scope: !3194)
!3200 = !DILocation(line: 120, column: 7, scope: !3194)
!3201 = !DILocation(line: 122, column: 7, scope: !3194)
!3202 = !DILocation(line: 127, column: 7, scope: !3194)
!3203 = !DILocation(line: 129, column: 7, scope: !3194)
!3204 = !DILocation(line: 134, column: 7, scope: !3194)
!3205 = !DILocation(line: 137, column: 7, scope: !3194)
!3206 = !DILocation(line: 142, column: 7, scope: !3194)
!3207 = !DILocation(line: 145, column: 7, scope: !3194)
!3208 = !DILocation(line: 150, column: 7, scope: !3194)
!3209 = !DILocation(line: 154, column: 7, scope: !3194)
!3210 = !DILocation(line: 159, column: 7, scope: !3194)
!3211 = !DILocation(line: 163, column: 7, scope: !3194)
!3212 = !DILocation(line: 170, column: 7, scope: !3194)
!3213 = !DILocation(line: 174, column: 7, scope: !3194)
!3214 = !DILocation(line: 176, column: 1, scope: !3137)
!3215 = distinct !DISubprogram(name: "version_etc_ar", scope: !671, file: !671, line: 183, type: !3216, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !3140, !134, !134, !134, !3174}
!3218 = !{!3219, !3220, !3221, !3222, !3223, !3224}
!3219 = !DILocalVariable(name: "stream", arg: 1, scope: !3215, file: !671, line: 183, type: !3140)
!3220 = !DILocalVariable(name: "command_name", arg: 2, scope: !3215, file: !671, line: 184, type: !134)
!3221 = !DILocalVariable(name: "package", arg: 3, scope: !3215, file: !671, line: 184, type: !134)
!3222 = !DILocalVariable(name: "version", arg: 4, scope: !3215, file: !671, line: 185, type: !134)
!3223 = !DILocalVariable(name: "authors", arg: 5, scope: !3215, file: !671, line: 185, type: !3174)
!3224 = !DILocalVariable(name: "n_authors", scope: !3215, file: !671, line: 187, type: !131)
!3225 = !DILocation(line: 0, scope: !3215)
!3226 = !DILocation(line: 189, column: 8, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3215, file: !671, line: 189, column: 3)
!3228 = !DILocation(line: 189, scope: !3227)
!3229 = !DILocation(line: 189, column: 23, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3227, file: !671, line: 189, column: 3)
!3231 = !DILocation(line: 189, column: 3, scope: !3227)
!3232 = !DILocation(line: 189, column: 52, scope: !3230)
!3233 = distinct !{!3233, !3231, !3234, !1013}
!3234 = !DILocation(line: 190, column: 5, scope: !3227)
!3235 = !DILocation(line: 191, column: 3, scope: !3215)
!3236 = !DILocation(line: 192, column: 1, scope: !3215)
!3237 = distinct !DISubprogram(name: "version_etc_va", scope: !671, file: !671, line: 199, type: !3238, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !3248)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !3140, !134, !134, !134, !3240}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3242)
!3242 = !{!3243, !3245, !3246, !3247}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3241, file: !3244, line: 192, baseType: !79, size: 32)
!3244 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3241, file: !3244, line: 192, baseType: !79, size: 32, offset: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3241, file: !3244, line: 192, baseType: !130, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3241, file: !3244, line: 192, baseType: !130, size: 64, offset: 128)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3249 = !DILocalVariable(name: "stream", arg: 1, scope: !3237, file: !671, line: 199, type: !3140)
!3250 = !DILocalVariable(name: "command_name", arg: 2, scope: !3237, file: !671, line: 200, type: !134)
!3251 = !DILocalVariable(name: "package", arg: 3, scope: !3237, file: !671, line: 200, type: !134)
!3252 = !DILocalVariable(name: "version", arg: 4, scope: !3237, file: !671, line: 201, type: !134)
!3253 = !DILocalVariable(name: "authors", arg: 5, scope: !3237, file: !671, line: 201, type: !3240)
!3254 = !DILocalVariable(name: "n_authors", scope: !3237, file: !671, line: 203, type: !131)
!3255 = !DILocalVariable(name: "authtab", scope: !3237, file: !671, line: 204, type: !3256)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !62)
!3257 = !DILocation(line: 0, scope: !3237)
!3258 = !DILocation(line: 204, column: 3, scope: !3237)
!3259 = !DILocation(line: 204, column: 15, scope: !3237)
!3260 = !DILocation(line: 208, column: 35, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !671, line: 206, column: 3)
!3262 = distinct !DILexicalBlock(scope: !3237, file: !671, line: 206, column: 3)
!3263 = !DILocation(line: 208, column: 33, scope: !3261)
!3264 = !DILocation(line: 208, column: 67, scope: !3261)
!3265 = !DILocation(line: 206, column: 3, scope: !3262)
!3266 = !DILocation(line: 208, column: 14, scope: !3261)
!3267 = !DILocation(line: 0, scope: !3262)
!3268 = !DILocation(line: 211, column: 3, scope: !3237)
!3269 = !DILocation(line: 213, column: 1, scope: !3237)
!3270 = distinct !DISubprogram(name: "version_etc", scope: !671, file: !671, line: 230, type: !3271, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{null, !3140, !134, !134, !134, null}
!3273 = !{!3274, !3275, !3276, !3277, !3278}
!3274 = !DILocalVariable(name: "stream", arg: 1, scope: !3270, file: !671, line: 230, type: !3140)
!3275 = !DILocalVariable(name: "command_name", arg: 2, scope: !3270, file: !671, line: 231, type: !134)
!3276 = !DILocalVariable(name: "package", arg: 3, scope: !3270, file: !671, line: 231, type: !134)
!3277 = !DILocalVariable(name: "version", arg: 4, scope: !3270, file: !671, line: 232, type: !134)
!3278 = !DILocalVariable(name: "authors", scope: !3270, file: !671, line: 234, type: !3279)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !3280)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1692, line: 14, baseType: !3281)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3244, baseType: !3282)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3241, size: 192, elements: !57)
!3283 = !DILocation(line: 0, scope: !3270)
!3284 = !DILocation(line: 234, column: 3, scope: !3270)
!3285 = !DILocation(line: 234, column: 11, scope: !3270)
!3286 = !DILocation(line: 235, column: 3, scope: !3270)
!3287 = !DILocation(line: 236, column: 3, scope: !3270)
!3288 = !DILocation(line: 237, column: 3, scope: !3270)
!3289 = !DILocation(line: 238, column: 1, scope: !3270)
!3290 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !671, file: !671, line: 241, type: !524, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !904)
!3291 = !DILocation(line: 243, column: 3, scope: !3290)
!3292 = !DILocation(line: 248, column: 3, scope: !3290)
!3293 = !DILocation(line: 254, column: 3, scope: !3290)
!3294 = !DILocation(line: 259, column: 3, scope: !3290)
!3295 = !DILocation(line: 261, column: 1, scope: !3290)
!3296 = distinct !DISubprogram(name: "xnrealloc", scope: !3297, file: !3297, line: 147, type: !3298, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3300)
!3297 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!130, !130, !131, !131}
!3300 = !{!3301, !3302, !3303}
!3301 = !DILocalVariable(name: "p", arg: 1, scope: !3296, file: !3297, line: 147, type: !130)
!3302 = !DILocalVariable(name: "n", arg: 2, scope: !3296, file: !3297, line: 147, type: !131)
!3303 = !DILocalVariable(name: "s", arg: 3, scope: !3296, file: !3297, line: 147, type: !131)
!3304 = !DILocation(line: 0, scope: !3296)
!3305 = !DILocalVariable(name: "p", arg: 1, scope: !3306, file: !800, line: 83, type: !130)
!3306 = distinct !DISubprogram(name: "xreallocarray", scope: !800, file: !800, line: 83, type: !3298, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3307)
!3307 = !{!3305, !3308, !3309}
!3308 = !DILocalVariable(name: "n", arg: 2, scope: !3306, file: !800, line: 83, type: !131)
!3309 = !DILocalVariable(name: "s", arg: 3, scope: !3306, file: !800, line: 83, type: !131)
!3310 = !DILocation(line: 0, scope: !3306, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 149, column: 10, scope: !3296)
!3312 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3311)
!3313 = !DILocalVariable(name: "p", arg: 1, scope: !3314, file: !800, line: 37, type: !130)
!3314 = distinct !DISubprogram(name: "check_nonnull", scope: !800, file: !800, line: 37, type: !3315, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!130, !130}
!3317 = !{!3313}
!3318 = !DILocation(line: 0, scope: !3314, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3311)
!3320 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3319)
!3321 = distinct !DILexicalBlock(scope: !3314, file: !800, line: 39, column: 7)
!3322 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3319)
!3323 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3319)
!3324 = !DILocation(line: 149, column: 3, scope: !3296)
!3325 = !DILocation(line: 0, scope: !3306)
!3326 = !DILocation(line: 85, column: 25, scope: !3306)
!3327 = !DILocation(line: 0, scope: !3314, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 85, column: 10, scope: !3306)
!3329 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3328)
!3330 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3328)
!3331 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3328)
!3332 = !DILocation(line: 85, column: 3, scope: !3306)
!3333 = distinct !DISubprogram(name: "xmalloc", scope: !800, file: !800, line: 47, type: !3334, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!130, !131}
!3336 = !{!3337}
!3337 = !DILocalVariable(name: "s", arg: 1, scope: !3333, file: !800, line: 47, type: !131)
!3338 = !DILocation(line: 0, scope: !3333)
!3339 = !DILocation(line: 49, column: 25, scope: !3333)
!3340 = !DILocation(line: 0, scope: !3314, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 49, column: 10, scope: !3333)
!3342 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3341)
!3343 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3341)
!3344 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3341)
!3345 = !DILocation(line: 49, column: 3, scope: !3333)
!3346 = !DISubprogram(name: "malloc", scope: !1091, file: !1091, line: 540, type: !3334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!3347 = distinct !DISubprogram(name: "ximalloc", scope: !800, file: !800, line: 53, type: !3348, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!130, !819}
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "s", arg: 1, scope: !3347, file: !800, line: 53, type: !819)
!3352 = !DILocation(line: 0, scope: !3347)
!3353 = !DILocalVariable(name: "s", arg: 1, scope: !3354, file: !3355, line: 55, type: !819)
!3354 = distinct !DISubprogram(name: "imalloc", scope: !3355, file: !3355, line: 55, type: !3348, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3356)
!3355 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3356 = !{!3353}
!3357 = !DILocation(line: 0, scope: !3354, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 55, column: 25, scope: !3347)
!3359 = !DILocation(line: 57, column: 26, scope: !3354, inlinedAt: !3358)
!3360 = !DILocation(line: 0, scope: !3314, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 55, column: 10, scope: !3347)
!3362 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3361)
!3363 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3361)
!3364 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3361)
!3365 = !DILocation(line: 55, column: 3, scope: !3347)
!3366 = distinct !DISubprogram(name: "xcharalloc", scope: !800, file: !800, line: 59, type: !3367, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!129, !131}
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "n", arg: 1, scope: !3366, file: !800, line: 59, type: !131)
!3371 = !DILocation(line: 0, scope: !3366)
!3372 = !DILocation(line: 0, scope: !3333, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 61, column: 10, scope: !3366)
!3374 = !DILocation(line: 49, column: 25, scope: !3333, inlinedAt: !3373)
!3375 = !DILocation(line: 0, scope: !3314, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 49, column: 10, scope: !3333, inlinedAt: !3373)
!3377 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3376)
!3378 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3376)
!3379 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3376)
!3380 = !DILocation(line: 61, column: 3, scope: !3366)
!3381 = distinct !DISubprogram(name: "xrealloc", scope: !800, file: !800, line: 68, type: !3382, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!130, !130, !131}
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "p", arg: 1, scope: !3381, file: !800, line: 68, type: !130)
!3386 = !DILocalVariable(name: "s", arg: 2, scope: !3381, file: !800, line: 68, type: !131)
!3387 = !DILocation(line: 0, scope: !3381)
!3388 = !DILocalVariable(name: "ptr", arg: 1, scope: !3389, file: !3390, line: 2057, type: !130)
!3389 = distinct !DISubprogram(name: "rpl_realloc", scope: !3390, file: !3390, line: 2057, type: !3382, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3391)
!3390 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3391 = !{!3388, !3392}
!3392 = !DILocalVariable(name: "size", arg: 2, scope: !3389, file: !3390, line: 2057, type: !131)
!3393 = !DILocation(line: 0, scope: !3389, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 70, column: 25, scope: !3381)
!3395 = !DILocation(line: 2059, column: 24, scope: !3389, inlinedAt: !3394)
!3396 = !DILocation(line: 2059, column: 10, scope: !3389, inlinedAt: !3394)
!3397 = !DILocation(line: 0, scope: !3314, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 70, column: 10, scope: !3381)
!3399 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3398)
!3400 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3398)
!3401 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3398)
!3402 = !DILocation(line: 70, column: 3, scope: !3381)
!3403 = !DISubprogram(name: "realloc", scope: !1091, file: !1091, line: 551, type: !3382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!3404 = distinct !DISubprogram(name: "xirealloc", scope: !800, file: !800, line: 74, type: !3405, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!130, !130, !819}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "p", arg: 1, scope: !3404, file: !800, line: 74, type: !130)
!3409 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !800, line: 74, type: !819)
!3410 = !DILocation(line: 0, scope: !3404)
!3411 = !DILocalVariable(name: "p", arg: 1, scope: !3412, file: !3355, line: 66, type: !130)
!3412 = distinct !DISubprogram(name: "irealloc", scope: !3355, file: !3355, line: 66, type: !3405, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3413)
!3413 = !{!3411, !3414}
!3414 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !3355, line: 66, type: !819)
!3415 = !DILocation(line: 0, scope: !3412, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 76, column: 25, scope: !3404)
!3417 = !DILocation(line: 0, scope: !3389, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 68, column: 26, scope: !3412, inlinedAt: !3416)
!3419 = !DILocation(line: 2059, column: 24, scope: !3389, inlinedAt: !3418)
!3420 = !DILocation(line: 2059, column: 10, scope: !3389, inlinedAt: !3418)
!3421 = !DILocation(line: 0, scope: !3314, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 76, column: 10, scope: !3404)
!3423 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3422)
!3424 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3422)
!3425 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3422)
!3426 = !DILocation(line: 76, column: 3, scope: !3404)
!3427 = distinct !DISubprogram(name: "xireallocarray", scope: !800, file: !800, line: 89, type: !3428, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!130, !130, !819, !819}
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "p", arg: 1, scope: !3427, file: !800, line: 89, type: !130)
!3432 = !DILocalVariable(name: "n", arg: 2, scope: !3427, file: !800, line: 89, type: !819)
!3433 = !DILocalVariable(name: "s", arg: 3, scope: !3427, file: !800, line: 89, type: !819)
!3434 = !DILocation(line: 0, scope: !3427)
!3435 = !DILocalVariable(name: "p", arg: 1, scope: !3436, file: !3355, line: 98, type: !130)
!3436 = distinct !DISubprogram(name: "ireallocarray", scope: !3355, file: !3355, line: 98, type: !3428, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3437)
!3437 = !{!3435, !3438, !3439}
!3438 = !DILocalVariable(name: "n", arg: 2, scope: !3436, file: !3355, line: 98, type: !819)
!3439 = !DILocalVariable(name: "s", arg: 3, scope: !3436, file: !3355, line: 98, type: !819)
!3440 = !DILocation(line: 0, scope: !3436, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 91, column: 25, scope: !3427)
!3442 = !DILocation(line: 101, column: 13, scope: !3436, inlinedAt: !3441)
!3443 = !DILocation(line: 0, scope: !3314, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 91, column: 10, scope: !3427)
!3445 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3444)
!3446 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3444)
!3447 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3444)
!3448 = !DILocation(line: 91, column: 3, scope: !3427)
!3449 = distinct !DISubprogram(name: "xnmalloc", scope: !800, file: !800, line: 98, type: !3450, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!130, !131, !131}
!3452 = !{!3453, !3454}
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3449, file: !800, line: 98, type: !131)
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3449, file: !800, line: 98, type: !131)
!3455 = !DILocation(line: 0, scope: !3449)
!3456 = !DILocation(line: 0, scope: !3306, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 100, column: 10, scope: !3449)
!3458 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3457)
!3459 = !DILocation(line: 0, scope: !3314, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3457)
!3461 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3460)
!3462 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3460)
!3463 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3460)
!3464 = !DILocation(line: 100, column: 3, scope: !3449)
!3465 = distinct !DISubprogram(name: "xinmalloc", scope: !800, file: !800, line: 104, type: !3466, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!130, !819, !819}
!3468 = !{!3469, !3470}
!3469 = !DILocalVariable(name: "n", arg: 1, scope: !3465, file: !800, line: 104, type: !819)
!3470 = !DILocalVariable(name: "s", arg: 2, scope: !3465, file: !800, line: 104, type: !819)
!3471 = !DILocation(line: 0, scope: !3465)
!3472 = !DILocation(line: 0, scope: !3427, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 106, column: 10, scope: !3465)
!3474 = !DILocation(line: 0, scope: !3436, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 91, column: 25, scope: !3427, inlinedAt: !3473)
!3476 = !DILocation(line: 101, column: 13, scope: !3436, inlinedAt: !3475)
!3477 = !DILocation(line: 0, scope: !3314, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 91, column: 10, scope: !3427, inlinedAt: !3473)
!3479 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3478)
!3480 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3478)
!3481 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3478)
!3482 = !DILocation(line: 106, column: 3, scope: !3465)
!3483 = distinct !DISubprogram(name: "x2realloc", scope: !800, file: !800, line: 116, type: !3484, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!130, !130, !806}
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "p", arg: 1, scope: !3483, file: !800, line: 116, type: !130)
!3488 = !DILocalVariable(name: "ps", arg: 2, scope: !3483, file: !800, line: 116, type: !806)
!3489 = !DILocation(line: 0, scope: !3483)
!3490 = !DILocation(line: 0, scope: !803, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 118, column: 10, scope: !3483)
!3492 = !DILocation(line: 178, column: 14, scope: !803, inlinedAt: !3491)
!3493 = !DILocation(line: 180, column: 9, scope: !3494, inlinedAt: !3491)
!3494 = distinct !DILexicalBlock(scope: !803, file: !800, line: 180, column: 7)
!3495 = !DILocation(line: 180, column: 7, scope: !803, inlinedAt: !3491)
!3496 = !DILocation(line: 182, column: 13, scope: !3497, inlinedAt: !3491)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !800, line: 182, column: 11)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !800, line: 181, column: 5)
!3499 = !DILocation(line: 182, column: 11, scope: !3498, inlinedAt: !3491)
!3500 = !DILocation(line: 197, column: 11, scope: !3501, inlinedAt: !3491)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !800, line: 197, column: 11)
!3502 = distinct !DILexicalBlock(scope: !3494, file: !800, line: 195, column: 5)
!3503 = !DILocation(line: 197, column: 11, scope: !3502, inlinedAt: !3491)
!3504 = !DILocation(line: 198, column: 9, scope: !3501, inlinedAt: !3491)
!3505 = !DILocation(line: 0, scope: !3306, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 201, column: 7, scope: !803, inlinedAt: !3491)
!3507 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3506)
!3508 = !DILocation(line: 0, scope: !3314, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3506)
!3510 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3509)
!3511 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3509)
!3512 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3509)
!3513 = !DILocation(line: 202, column: 7, scope: !803, inlinedAt: !3491)
!3514 = !DILocation(line: 118, column: 3, scope: !3483)
!3515 = !DILocation(line: 0, scope: !803)
!3516 = !DILocation(line: 178, column: 14, scope: !803)
!3517 = !DILocation(line: 180, column: 9, scope: !3494)
!3518 = !DILocation(line: 180, column: 7, scope: !803)
!3519 = !DILocation(line: 182, column: 13, scope: !3497)
!3520 = !DILocation(line: 182, column: 11, scope: !3498)
!3521 = !DILocation(line: 190, column: 30, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3497, file: !800, line: 183, column: 9)
!3523 = !DILocation(line: 191, column: 16, scope: !3522)
!3524 = !DILocation(line: 191, column: 13, scope: !3522)
!3525 = !DILocation(line: 192, column: 9, scope: !3522)
!3526 = !DILocation(line: 197, column: 11, scope: !3501)
!3527 = !DILocation(line: 197, column: 11, scope: !3502)
!3528 = !DILocation(line: 198, column: 9, scope: !3501)
!3529 = !DILocation(line: 0, scope: !3306, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 201, column: 7, scope: !803)
!3531 = !DILocation(line: 85, column: 25, scope: !3306, inlinedAt: !3530)
!3532 = !DILocation(line: 0, scope: !3314, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 85, column: 10, scope: !3306, inlinedAt: !3530)
!3534 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3533)
!3535 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3533)
!3536 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3533)
!3537 = !DILocation(line: 202, column: 7, scope: !803)
!3538 = !DILocation(line: 203, column: 3, scope: !803)
!3539 = !DILocation(line: 0, scope: !815)
!3540 = !DILocation(line: 230, column: 14, scope: !815)
!3541 = !DILocation(line: 238, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !815, file: !800, line: 238, column: 7)
!3543 = !DILocation(line: 238, column: 7, scope: !815)
!3544 = !DILocation(line: 240, column: 9, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !815, file: !800, line: 240, column: 7)
!3546 = !DILocation(line: 240, column: 18, scope: !3545)
!3547 = !DILocation(line: 253, column: 8, scope: !815)
!3548 = !DILocation(line: 258, column: 27, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !800, line: 257, column: 5)
!3550 = distinct !DILexicalBlock(scope: !815, file: !800, line: 256, column: 7)
!3551 = !DILocation(line: 259, column: 50, scope: !3549)
!3552 = !DILocation(line: 259, column: 32, scope: !3549)
!3553 = !DILocation(line: 260, column: 5, scope: !3549)
!3554 = !DILocation(line: 262, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !815, file: !800, line: 262, column: 7)
!3556 = !DILocation(line: 262, column: 7, scope: !815)
!3557 = !DILocation(line: 263, column: 9, scope: !3555)
!3558 = !DILocation(line: 263, column: 5, scope: !3555)
!3559 = !DILocation(line: 264, column: 9, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !815, file: !800, line: 264, column: 7)
!3561 = !DILocation(line: 264, column: 14, scope: !3560)
!3562 = !DILocation(line: 265, column: 7, scope: !3560)
!3563 = !DILocation(line: 265, column: 11, scope: !3560)
!3564 = !DILocation(line: 266, column: 11, scope: !3560)
!3565 = !DILocation(line: 267, column: 14, scope: !3560)
!3566 = !DILocation(line: 264, column: 7, scope: !815)
!3567 = !DILocation(line: 268, column: 5, scope: !3560)
!3568 = !DILocation(line: 0, scope: !3381, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 269, column: 8, scope: !815)
!3570 = !DILocation(line: 0, scope: !3389, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 70, column: 25, scope: !3381, inlinedAt: !3569)
!3572 = !DILocation(line: 2059, column: 24, scope: !3389, inlinedAt: !3571)
!3573 = !DILocation(line: 2059, column: 10, scope: !3389, inlinedAt: !3571)
!3574 = !DILocation(line: 0, scope: !3314, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 70, column: 10, scope: !3381, inlinedAt: !3569)
!3576 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3575)
!3577 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3575)
!3578 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3575)
!3579 = !DILocation(line: 270, column: 7, scope: !815)
!3580 = !DILocation(line: 271, column: 3, scope: !815)
!3581 = distinct !DISubprogram(name: "xzalloc", scope: !800, file: !800, line: 279, type: !3334, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3582)
!3582 = !{!3583}
!3583 = !DILocalVariable(name: "s", arg: 1, scope: !3581, file: !800, line: 279, type: !131)
!3584 = !DILocation(line: 0, scope: !3581)
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3586, file: !800, line: 294, type: !131)
!3586 = distinct !DISubprogram(name: "xcalloc", scope: !800, file: !800, line: 294, type: !3450, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3587)
!3587 = !{!3585, !3588}
!3588 = !DILocalVariable(name: "s", arg: 2, scope: !3586, file: !800, line: 294, type: !131)
!3589 = !DILocation(line: 0, scope: !3586, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 281, column: 10, scope: !3581)
!3591 = !DILocation(line: 296, column: 25, scope: !3586, inlinedAt: !3590)
!3592 = !DILocation(line: 0, scope: !3314, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 296, column: 10, scope: !3586, inlinedAt: !3590)
!3594 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3593)
!3595 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3593)
!3596 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3593)
!3597 = !DILocation(line: 281, column: 3, scope: !3581)
!3598 = !DISubprogram(name: "calloc", scope: !1091, file: !1091, line: 543, type: !3450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!3599 = !DILocation(line: 0, scope: !3586)
!3600 = !DILocation(line: 296, column: 25, scope: !3586)
!3601 = !DILocation(line: 0, scope: !3314, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 296, column: 10, scope: !3586)
!3603 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3602)
!3604 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3602)
!3605 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3602)
!3606 = !DILocation(line: 296, column: 3, scope: !3586)
!3607 = distinct !DISubprogram(name: "xizalloc", scope: !800, file: !800, line: 285, type: !3348, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3608)
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "s", arg: 1, scope: !3607, file: !800, line: 285, type: !819)
!3610 = !DILocation(line: 0, scope: !3607)
!3611 = !DILocalVariable(name: "n", arg: 1, scope: !3612, file: !800, line: 300, type: !819)
!3612 = distinct !DISubprogram(name: "xicalloc", scope: !800, file: !800, line: 300, type: !3466, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3613)
!3613 = !{!3611, !3614}
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !800, line: 300, type: !819)
!3615 = !DILocation(line: 0, scope: !3612, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 287, column: 10, scope: !3607)
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3618, file: !3355, line: 77, type: !819)
!3618 = distinct !DISubprogram(name: "icalloc", scope: !3355, file: !3355, line: 77, type: !3466, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3619)
!3619 = !{!3617, !3620}
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3618, file: !3355, line: 77, type: !819)
!3621 = !DILocation(line: 0, scope: !3618, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 302, column: 25, scope: !3612, inlinedAt: !3616)
!3623 = !DILocation(line: 91, column: 10, scope: !3618, inlinedAt: !3622)
!3624 = !DILocation(line: 0, scope: !3314, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 302, column: 10, scope: !3612, inlinedAt: !3616)
!3626 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3625)
!3627 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3625)
!3628 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3625)
!3629 = !DILocation(line: 287, column: 3, scope: !3607)
!3630 = !DILocation(line: 0, scope: !3612)
!3631 = !DILocation(line: 0, scope: !3618, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 302, column: 25, scope: !3612)
!3633 = !DILocation(line: 91, column: 10, scope: !3618, inlinedAt: !3632)
!3634 = !DILocation(line: 0, scope: !3314, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 302, column: 10, scope: !3612)
!3636 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3635)
!3637 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3635)
!3638 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3635)
!3639 = !DILocation(line: 302, column: 3, scope: !3612)
!3640 = distinct !DISubprogram(name: "xmemdup", scope: !800, file: !800, line: 310, type: !3641, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!130, !1115, !131}
!3643 = !{!3644, !3645}
!3644 = !DILocalVariable(name: "p", arg: 1, scope: !3640, file: !800, line: 310, type: !1115)
!3645 = !DILocalVariable(name: "s", arg: 2, scope: !3640, file: !800, line: 310, type: !131)
!3646 = !DILocation(line: 0, scope: !3640)
!3647 = !DILocation(line: 0, scope: !3333, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 312, column: 18, scope: !3640)
!3649 = !DILocation(line: 49, column: 25, scope: !3333, inlinedAt: !3648)
!3650 = !DILocation(line: 0, scope: !3314, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 49, column: 10, scope: !3333, inlinedAt: !3648)
!3652 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3651)
!3653 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3651)
!3654 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3651)
!3655 = !DILocalVariable(name: "__dest", arg: 1, scope: !3656, file: !1808, line: 26, type: !3659)
!3656 = distinct !DISubprogram(name: "memcpy", scope: !1808, file: !1808, line: 26, type: !3657, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3660)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!130, !3659, !1114, !131}
!3659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!3660 = !{!3655, !3661, !3662}
!3661 = !DILocalVariable(name: "__src", arg: 2, scope: !3656, file: !1808, line: 26, type: !1114)
!3662 = !DILocalVariable(name: "__len", arg: 3, scope: !3656, file: !1808, line: 26, type: !131)
!3663 = !DILocation(line: 0, scope: !3656, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 312, column: 10, scope: !3640)
!3665 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3664)
!3666 = !DILocation(line: 312, column: 3, scope: !3640)
!3667 = distinct !DISubprogram(name: "ximemdup", scope: !800, file: !800, line: 316, type: !3668, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!130, !1115, !819}
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "p", arg: 1, scope: !3667, file: !800, line: 316, type: !1115)
!3672 = !DILocalVariable(name: "s", arg: 2, scope: !3667, file: !800, line: 316, type: !819)
!3673 = !DILocation(line: 0, scope: !3667)
!3674 = !DILocation(line: 0, scope: !3347, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 318, column: 18, scope: !3667)
!3676 = !DILocation(line: 0, scope: !3354, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 55, column: 25, scope: !3347, inlinedAt: !3675)
!3678 = !DILocation(line: 57, column: 26, scope: !3354, inlinedAt: !3677)
!3679 = !DILocation(line: 0, scope: !3314, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 55, column: 10, scope: !3347, inlinedAt: !3675)
!3681 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3680)
!3682 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3680)
!3683 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3680)
!3684 = !DILocation(line: 0, scope: !3656, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 318, column: 10, scope: !3667)
!3686 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3685)
!3687 = !DILocation(line: 318, column: 3, scope: !3667)
!3688 = distinct !DISubprogram(name: "ximemdup0", scope: !800, file: !800, line: 325, type: !3689, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!129, !1115, !819}
!3691 = !{!3692, !3693, !3694}
!3692 = !DILocalVariable(name: "p", arg: 1, scope: !3688, file: !800, line: 325, type: !1115)
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3688, file: !800, line: 325, type: !819)
!3694 = !DILocalVariable(name: "result", scope: !3688, file: !800, line: 327, type: !129)
!3695 = !DILocation(line: 0, scope: !3688)
!3696 = !DILocation(line: 327, column: 30, scope: !3688)
!3697 = !DILocation(line: 0, scope: !3347, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 327, column: 18, scope: !3688)
!3699 = !DILocation(line: 0, scope: !3354, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 55, column: 25, scope: !3347, inlinedAt: !3698)
!3701 = !DILocation(line: 57, column: 26, scope: !3354, inlinedAt: !3700)
!3702 = !DILocation(line: 0, scope: !3314, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 55, column: 10, scope: !3347, inlinedAt: !3698)
!3704 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3703)
!3705 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3703)
!3706 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3703)
!3707 = !DILocation(line: 328, column: 3, scope: !3688)
!3708 = !DILocation(line: 328, column: 13, scope: !3688)
!3709 = !DILocation(line: 0, scope: !3656, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 329, column: 10, scope: !3688)
!3711 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3710)
!3712 = !DILocation(line: 329, column: 3, scope: !3688)
!3713 = distinct !DISubprogram(name: "xstrdup", scope: !800, file: !800, line: 335, type: !1093, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !3714)
!3714 = !{!3715}
!3715 = !DILocalVariable(name: "string", arg: 1, scope: !3713, file: !800, line: 335, type: !134)
!3716 = !DILocation(line: 0, scope: !3713)
!3717 = !DILocation(line: 337, column: 27, scope: !3713)
!3718 = !DILocation(line: 337, column: 43, scope: !3713)
!3719 = !DILocation(line: 0, scope: !3640, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 337, column: 10, scope: !3713)
!3721 = !DILocation(line: 0, scope: !3333, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 312, column: 18, scope: !3640, inlinedAt: !3720)
!3723 = !DILocation(line: 49, column: 25, scope: !3333, inlinedAt: !3722)
!3724 = !DILocation(line: 0, scope: !3314, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 49, column: 10, scope: !3333, inlinedAt: !3722)
!3726 = !DILocation(line: 39, column: 8, scope: !3321, inlinedAt: !3725)
!3727 = !DILocation(line: 39, column: 7, scope: !3314, inlinedAt: !3725)
!3728 = !DILocation(line: 40, column: 5, scope: !3321, inlinedAt: !3725)
!3729 = !DILocation(line: 0, scope: !3656, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 312, column: 10, scope: !3640, inlinedAt: !3720)
!3731 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3730)
!3732 = !DILocation(line: 337, column: 3, scope: !3713)
!3733 = distinct !DISubprogram(name: "xalloc_die", scope: !761, file: !761, line: 32, type: !524, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3734)
!3734 = !{!3735}
!3735 = !DILocalVariable(name: "__errstatus", scope: !3736, file: !761, line: 34, type: !3737)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !761, line: 34, column: 3)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!3738 = !DILocation(line: 34, column: 3, scope: !3736)
!3739 = !DILocation(line: 0, scope: !3736)
!3740 = !DILocation(line: 40, column: 3, scope: !3733)
!3741 = distinct !DISubprogram(name: "xnumtoimax", scope: !768, file: !768, line: 42, type: !3742, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!138, !134, !104, !138, !138, !134, !134, !104, !104}
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3757, !3758, !3759}
!3745 = !DILocalVariable(name: "n_str", arg: 1, scope: !3741, file: !768, line: 42, type: !134)
!3746 = !DILocalVariable(name: "base", arg: 2, scope: !3741, file: !768, line: 42, type: !104)
!3747 = !DILocalVariable(name: "min", arg: 3, scope: !3741, file: !768, line: 42, type: !138)
!3748 = !DILocalVariable(name: "max", arg: 4, scope: !3741, file: !768, line: 42, type: !138)
!3749 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3741, file: !768, line: 43, type: !134)
!3750 = !DILocalVariable(name: "err", arg: 6, scope: !3741, file: !768, line: 43, type: !134)
!3751 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3741, file: !768, line: 43, type: !104)
!3752 = !DILocalVariable(name: "flags", arg: 8, scope: !3741, file: !768, line: 44, type: !104)
!3753 = !DILocalVariable(name: "tnum", scope: !3741, file: !768, line: 46, type: !138)
!3754 = !DILocalVariable(name: "r", scope: !3741, file: !768, line: 46, type: !138)
!3755 = !DILocalVariable(name: "s_err", scope: !3741, file: !768, line: 47, type: !3756)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !839, line: 43, baseType: !838)
!3757 = !DILocalVariable(name: "overflow_errno", scope: !3741, file: !768, line: 50, type: !104)
!3758 = !DILocalVariable(name: "e", scope: !3741, file: !768, line: 75, type: !104)
!3759 = !DILocalVariable(name: "__errstatus", scope: !3760, file: !768, line: 80, type: !3737)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !768, line: 80, column: 5)
!3761 = distinct !DILexicalBlock(scope: !3741, file: !768, line: 77, column: 7)
!3762 = !DILocation(line: 0, scope: !3741)
!3763 = !DILocation(line: 46, column: 3, scope: !3741)
!3764 = !DILocation(line: 47, column: 24, scope: !3741)
!3765 = !DILocation(line: 52, column: 13, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3741, file: !768, line: 52, column: 7)
!3767 = !DILocation(line: 52, column: 7, scope: !3741)
!3768 = !DILocation(line: 54, column: 11, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !768, line: 54, column: 11)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !768, line: 53, column: 5)
!3771 = !DILocation(line: 54, column: 16, scope: !3769)
!3772 = !DILocation(line: 54, column: 11, scope: !3770)
!3773 = !DILocation(line: 57, column: 34, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3769, file: !768, line: 55, column: 9)
!3775 = !DILocation(line: 57, column: 28, scope: !3774)
!3776 = !DILocation(line: 58, column: 21, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3774, file: !768, line: 58, column: 15)
!3778 = !DILocation(line: 0, scope: !3774)
!3779 = !DILocation(line: 61, column: 20, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3769, file: !768, line: 61, column: 16)
!3781 = !DILocation(line: 61, column: 16, scope: !3769)
!3782 = !DILocation(line: 64, column: 34, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !768, line: 62, column: 9)
!3784 = !DILocation(line: 64, column: 28, scope: !3783)
!3785 = !DILocation(line: 65, column: 21, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !768, line: 65, column: 15)
!3787 = !DILocation(line: 0, scope: !3783)
!3788 = !DILocation(line: 75, column: 17, scope: !3741)
!3789 = !DILocation(line: 75, column: 11, scope: !3741)
!3790 = !DILocation(line: 77, column: 16, scope: !3761)
!3791 = !DILocation(line: 78, column: 10, scope: !3761)
!3792 = !DILocation(line: 79, column: 14, scope: !3761)
!3793 = !DILocation(line: 79, column: 31, scope: !3761)
!3794 = !DILocation(line: 79, column: 26, scope: !3761)
!3795 = !DILocation(line: 79, column: 23, scope: !3761)
!3796 = !DILocation(line: 77, column: 7, scope: !3741)
!3797 = !DILocation(line: 80, column: 5, scope: !3761)
!3798 = !DILocation(line: 82, column: 3, scope: !3741)
!3799 = !DILocation(line: 82, column: 9, scope: !3741)
!3800 = !DILocation(line: 84, column: 1, scope: !3741)
!3801 = !DILocation(line: 83, column: 3, scope: !3741)
!3802 = distinct !DISubprogram(name: "xdectoimax", scope: !768, file: !768, line: 92, type: !3803, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!138, !134, !138, !138, !134, !134, !104}
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811}
!3806 = !DILocalVariable(name: "n_str", arg: 1, scope: !3802, file: !768, line: 92, type: !134)
!3807 = !DILocalVariable(name: "min", arg: 2, scope: !3802, file: !768, line: 92, type: !138)
!3808 = !DILocalVariable(name: "max", arg: 3, scope: !3802, file: !768, line: 92, type: !138)
!3809 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3802, file: !768, line: 93, type: !134)
!3810 = !DILocalVariable(name: "err", arg: 5, scope: !3802, file: !768, line: 93, type: !134)
!3811 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3802, file: !768, line: 93, type: !104)
!3812 = !DILocation(line: 0, scope: !3802)
!3813 = !DILocation(line: 0, scope: !3741, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 95, column: 10, scope: !3802)
!3815 = !DILocation(line: 46, column: 3, scope: !3741, inlinedAt: !3814)
!3816 = !DILocation(line: 47, column: 24, scope: !3741, inlinedAt: !3814)
!3817 = !DILocation(line: 52, column: 13, scope: !3766, inlinedAt: !3814)
!3818 = !DILocation(line: 52, column: 7, scope: !3741, inlinedAt: !3814)
!3819 = !DILocation(line: 54, column: 11, scope: !3769, inlinedAt: !3814)
!3820 = !DILocation(line: 54, column: 16, scope: !3769, inlinedAt: !3814)
!3821 = !DILocation(line: 54, column: 11, scope: !3770, inlinedAt: !3814)
!3822 = !DILocation(line: 58, column: 21, scope: !3777, inlinedAt: !3814)
!3823 = !DILocation(line: 0, scope: !3774, inlinedAt: !3814)
!3824 = !DILocation(line: 61, column: 20, scope: !3780, inlinedAt: !3814)
!3825 = !DILocation(line: 61, column: 16, scope: !3769, inlinedAt: !3814)
!3826 = !DILocation(line: 65, column: 21, scope: !3786, inlinedAt: !3814)
!3827 = !DILocation(line: 0, scope: !3783, inlinedAt: !3814)
!3828 = !DILocation(line: 78, column: 10, scope: !3761, inlinedAt: !3814)
!3829 = !DILocation(line: 80, column: 5, scope: !3761, inlinedAt: !3814)
!3830 = !DILocation(line: 82, column: 3, scope: !3741, inlinedAt: !3814)
!3831 = !DILocation(line: 82, column: 9, scope: !3741, inlinedAt: !3814)
!3832 = !DILocation(line: 84, column: 1, scope: !3741, inlinedAt: !3814)
!3833 = !DILocation(line: 95, column: 3, scope: !3802)
!3834 = distinct !DISubprogram(name: "xstrtoimax", scope: !3835, file: !3835, line: 71, type: !3836, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !3839)
!3835 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!3756, !134, !1120, !104, !3838, !134}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3852, !3853}
!3840 = !DILocalVariable(name: "nptr", arg: 1, scope: !3834, file: !3835, line: 71, type: !134)
!3841 = !DILocalVariable(name: "endptr", arg: 2, scope: !3834, file: !3835, line: 71, type: !1120)
!3842 = !DILocalVariable(name: "base", arg: 3, scope: !3834, file: !3835, line: 71, type: !104)
!3843 = !DILocalVariable(name: "val", arg: 4, scope: !3834, file: !3835, line: 72, type: !3838)
!3844 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3834, file: !3835, line: 72, type: !134)
!3845 = !DILocalVariable(name: "t_ptr", scope: !3834, file: !3835, line: 74, type: !129)
!3846 = !DILocalVariable(name: "p", scope: !3834, file: !3835, line: 75, type: !1120)
!3847 = !DILocalVariable(name: "tmp", scope: !3834, file: !3835, line: 91, type: !138)
!3848 = !DILocalVariable(name: "err", scope: !3834, file: !3835, line: 92, type: !3756)
!3849 = !DILocalVariable(name: "xbase", scope: !3850, file: !3835, line: 126, type: !104)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !3835, line: 119, column: 5)
!3851 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 118, column: 7)
!3852 = !DILocalVariable(name: "suffixes", scope: !3850, file: !3835, line: 127, type: !104)
!3853 = !DILocalVariable(name: "overflow", scope: !3850, file: !3835, line: 156, type: !3756)
!3854 = !DILocation(line: 0, scope: !3834)
!3855 = !DILocation(line: 74, column: 3, scope: !3834)
!3856 = !DILocation(line: 75, column: 14, scope: !3834)
!3857 = !DILocation(line: 90, column: 3, scope: !3834)
!3858 = !DILocation(line: 90, column: 9, scope: !3834)
!3859 = !DILocation(line: 91, column: 20, scope: !3834)
!3860 = !DILocation(line: 94, column: 7, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 94, column: 7)
!3862 = !DILocation(line: 94, column: 10, scope: !3861)
!3863 = !DILocation(line: 94, column: 7, scope: !3834)
!3864 = !DILocation(line: 98, column: 14, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3835, line: 98, column: 11)
!3866 = distinct !DILexicalBlock(scope: !3861, file: !3835, line: 95, column: 5)
!3867 = !DILocation(line: 98, column: 29, scope: !3865)
!3868 = !DILocation(line: 98, column: 32, scope: !3865)
!3869 = !DILocation(line: 98, column: 38, scope: !3865)
!3870 = !DILocation(line: 98, column: 41, scope: !3865)
!3871 = !DILocation(line: 98, column: 11, scope: !3866)
!3872 = !DILocation(line: 102, column: 12, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3861, file: !3835, line: 102, column: 12)
!3874 = !DILocation(line: 102, column: 12, scope: !3861)
!3875 = !DILocation(line: 107, column: 5, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3873, file: !3835, line: 103, column: 5)
!3877 = !DILocation(line: 112, column: 8, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 112, column: 7)
!3879 = !DILocation(line: 112, column: 7, scope: !3834)
!3880 = !DILocation(line: 114, column: 12, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3878, file: !3835, line: 113, column: 5)
!3882 = !DILocation(line: 115, column: 7, scope: !3881)
!3883 = !DILocation(line: 118, column: 7, scope: !3851)
!3884 = !DILocation(line: 118, column: 11, scope: !3851)
!3885 = !DILocation(line: 118, column: 7, scope: !3834)
!3886 = !DILocation(line: 120, column: 12, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3850, file: !3835, line: 120, column: 11)
!3888 = !DILocation(line: 120, column: 11, scope: !3850)
!3889 = !DILocation(line: 122, column: 16, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3887, file: !3835, line: 121, column: 9)
!3891 = !DILocation(line: 123, column: 22, scope: !3890)
!3892 = !DILocation(line: 123, column: 11, scope: !3890)
!3893 = !DILocation(line: 0, scope: !3850)
!3894 = !DILocation(line: 128, column: 7, scope: !3850)
!3895 = !DILocation(line: 140, column: 15, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !3835, line: 140, column: 15)
!3897 = distinct !DILexicalBlock(scope: !3850, file: !3835, line: 129, column: 9)
!3898 = !DILocation(line: 140, column: 15, scope: !3897)
!3899 = !DILocation(line: 141, column: 21, scope: !3896)
!3900 = !DILocation(line: 141, column: 13, scope: !3896)
!3901 = !DILocation(line: 144, column: 21, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !3835, line: 144, column: 21)
!3903 = distinct !DILexicalBlock(scope: !3896, file: !3835, line: 142, column: 15)
!3904 = !DILocation(line: 144, column: 29, scope: !3902)
!3905 = !DILocation(line: 144, column: 21, scope: !3903)
!3906 = !DILocation(line: 152, column: 17, scope: !3903)
!3907 = !DILocation(line: 157, column: 7, scope: !3850)
!3908 = !DILocalVariable(name: "err", scope: !3909, file: !3835, line: 64, type: !3756)
!3909 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3835, file: !3835, line: 62, type: !3910, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !3912)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!3756, !3838, !104, !104}
!3912 = !{!3913, !3914, !3915, !3908}
!3913 = !DILocalVariable(name: "x", arg: 1, scope: !3909, file: !3835, line: 62, type: !3838)
!3914 = !DILocalVariable(name: "base", arg: 2, scope: !3909, file: !3835, line: 62, type: !104)
!3915 = !DILocalVariable(name: "power", arg: 3, scope: !3909, file: !3835, line: 62, type: !104)
!3916 = !DILocation(line: 0, scope: !3909, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 219, column: 22, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3850, file: !3835, line: 158, column: 9)
!3919 = !DILocalVariable(name: "x", arg: 1, scope: !3920, file: !3835, line: 47, type: !3838)
!3920 = distinct !DISubprogram(name: "bkm_scale", scope: !3835, file: !3835, line: 47, type: !3921, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !3923)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!3756, !3838, !104}
!3923 = !{!3919, !3924, !3925}
!3924 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3920, file: !3835, line: 47, type: !104)
!3925 = !DILocalVariable(name: "scaled", scope: !3920, file: !3835, line: 49, type: !138)
!3926 = !DILocation(line: 0, scope: !3920, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3917)
!3928 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3927)
!3929 = distinct !DILexicalBlock(scope: !3920, file: !3835, line: 50, column: 7)
!3930 = !DILocation(line: 0, scope: !3909, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 215, column: 22, scope: !3918)
!3932 = !DILocation(line: 0, scope: !3920, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3931)
!3934 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3933)
!3935 = !DILocation(line: 0, scope: !3909, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 202, column: 22, scope: !3918)
!3937 = !DILocation(line: 0, scope: !3920, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3936)
!3939 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3938)
!3940 = !DILocation(line: 0, scope: !3909, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 198, column: 22, scope: !3918)
!3942 = !DILocation(line: 0, scope: !3920, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3941)
!3944 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3943)
!3945 = !DILocation(line: 0, scope: !3909, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 194, column: 22, scope: !3918)
!3947 = !DILocation(line: 0, scope: !3920, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3946)
!3949 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3948)
!3950 = !DILocation(line: 0, scope: !3909, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 175, column: 22, scope: !3918)
!3952 = !DILocation(line: 0, scope: !3920, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3951)
!3954 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3953)
!3955 = !DILocation(line: 0, scope: !3920, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 160, column: 22, scope: !3918)
!3957 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3956)
!3958 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3956)
!3959 = !DILocation(line: 0, scope: !3920, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 167, column: 22, scope: !3918)
!3961 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3960)
!3962 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3960)
!3963 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3953)
!3964 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3951)
!3965 = !DILocation(line: 227, column: 11, scope: !3850)
!3966 = !DILocation(line: 0, scope: !3909, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 180, column: 22, scope: !3918)
!3968 = !DILocation(line: 0, scope: !3920, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3967)
!3970 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3969)
!3971 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3969)
!3972 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3967)
!3973 = !DILocation(line: 0, scope: !3909, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 185, column: 22, scope: !3918)
!3975 = !DILocation(line: 0, scope: !3920, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3974)
!3977 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3976)
!3978 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3976)
!3979 = !DILocation(line: 0, scope: !3909, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 190, column: 22, scope: !3918)
!3981 = !DILocation(line: 0, scope: !3920, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3980)
!3983 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3982)
!3984 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3982)
!3985 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3980)
!3986 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3948)
!3987 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3946)
!3988 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3943)
!3989 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3941)
!3990 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3938)
!3991 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3936)
!3992 = !DILocation(line: 0, scope: !3909, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 207, column: 22, scope: !3918)
!3994 = !DILocation(line: 0, scope: !3920, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 66, column: 12, scope: !3909, inlinedAt: !3993)
!3996 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !3995)
!3997 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3995)
!3998 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3993)
!3999 = !DILocation(line: 0, scope: !3920, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 211, column: 22, scope: !3918)
!4001 = !DILocation(line: 50, column: 7, scope: !3929, inlinedAt: !4000)
!4002 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !4000)
!4003 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3933)
!4004 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3931)
!4005 = !DILocation(line: 50, column: 7, scope: !3920, inlinedAt: !3927)
!4006 = !DILocation(line: 66, column: 9, scope: !3909, inlinedAt: !3917)
!4007 = !DILocation(line: 0, scope: !3918)
!4008 = !DILocation(line: 228, column: 10, scope: !3850)
!4009 = !DILocation(line: 229, column: 11, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3850, file: !3835, line: 229, column: 11)
!4011 = !DILocation(line: 229, column: 11, scope: !3850)
!4012 = !DILocation(line: 223, column: 16, scope: !3918)
!4013 = !DILocation(line: 224, column: 22, scope: !3918)
!4014 = !DILocation(line: 100, column: 11, scope: !3866)
!4015 = !DILocation(line: 92, column: 16, scope: !3834)
!4016 = !DILocation(line: 233, column: 8, scope: !3834)
!4017 = !DILocation(line: 234, column: 3, scope: !3834)
!4018 = !DILocation(line: 235, column: 1, scope: !3834)
!4019 = !DISubprogram(name: "strtoimax", scope: !4020, file: !4020, line: 297, type: !4021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4020 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!138, !957, !4023, !104}
!4023 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1120)
!4024 = distinct !DISubprogram(name: "close_stream", scope: !859, file: !859, line: 55, type: !4025, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4061)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!104, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4030)
!4030 = !{!4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4029, file: !253, line: 51, baseType: !104, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4029, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4029, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4029, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4029, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4029, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4029, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4029, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4029, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4029, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4029, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4029, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4029, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4029, file: !253, line: 70, baseType: !4045, size: 64, offset: 832)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4029, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4029, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4029, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4029, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4029, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4029, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4029, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4029, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4029, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4029, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4029, file: !253, line: 93, baseType: !4045, size: 64, offset: 1344)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4029, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4029, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4029, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4029, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4061 = !{!4062, !4063, !4065, !4066}
!4062 = !DILocalVariable(name: "stream", arg: 1, scope: !4024, file: !859, line: 55, type: !4027)
!4063 = !DILocalVariable(name: "some_pending", scope: !4024, file: !859, line: 57, type: !4064)
!4064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!4065 = !DILocalVariable(name: "prev_fail", scope: !4024, file: !859, line: 58, type: !4064)
!4066 = !DILocalVariable(name: "fclose_fail", scope: !4024, file: !859, line: 59, type: !4064)
!4067 = !DILocation(line: 0, scope: !4024)
!4068 = !DILocation(line: 57, column: 30, scope: !4024)
!4069 = !DILocalVariable(name: "__stream", arg: 1, scope: !4070, file: !1649, line: 135, type: !4027)
!4070 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1649, file: !1649, line: 135, type: !4025, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4071)
!4071 = !{!4069}
!4072 = !DILocation(line: 0, scope: !4070, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 58, column: 27, scope: !4024)
!4074 = !DILocation(line: 137, column: 10, scope: !4070, inlinedAt: !4073)
!4075 = !{!1658, !967, i64 0}
!4076 = !DILocation(line: 58, column: 43, scope: !4024)
!4077 = !DILocation(line: 59, column: 29, scope: !4024)
!4078 = !DILocation(line: 59, column: 45, scope: !4024)
!4079 = !DILocation(line: 69, column: 17, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4024, file: !859, line: 69, column: 7)
!4081 = !DILocation(line: 57, column: 50, scope: !4024)
!4082 = !DILocation(line: 69, column: 33, scope: !4080)
!4083 = !DILocation(line: 69, column: 53, scope: !4080)
!4084 = !DILocation(line: 69, column: 59, scope: !4080)
!4085 = !DILocation(line: 69, column: 7, scope: !4024)
!4086 = !DILocation(line: 71, column: 11, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4080, file: !859, line: 70, column: 5)
!4088 = !DILocation(line: 72, column: 9, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4087, file: !859, line: 71, column: 11)
!4090 = !DILocation(line: 72, column: 15, scope: !4089)
!4091 = !DILocation(line: 77, column: 1, scope: !4024)
!4092 = !DISubprogram(name: "__fpending", scope: !4093, file: !4093, line: 75, type: !4094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4093 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!131, !4027}
!4096 = distinct !DISubprogram(name: "rpl_fclose", scope: !861, file: !861, line: 58, type: !4097, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4133)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!104, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4101)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4101, file: !253, line: 51, baseType: !104, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4101, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4101, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4101, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4101, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4101, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4101, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4101, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4101, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4101, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4101, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4101, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4101, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4101, file: !253, line: 70, baseType: !4117, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4101, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4101, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4101, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4101, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4101, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4101, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4101, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4101, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4101, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4101, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4101, file: !253, line: 93, baseType: !4117, size: 64, offset: 1344)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4101, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4101, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4101, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4101, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4133 = !{!4134, !4135, !4136, !4137}
!4134 = !DILocalVariable(name: "fp", arg: 1, scope: !4096, file: !861, line: 58, type: !4099)
!4135 = !DILocalVariable(name: "saved_errno", scope: !4096, file: !861, line: 60, type: !104)
!4136 = !DILocalVariable(name: "fd", scope: !4096, file: !861, line: 63, type: !104)
!4137 = !DILocalVariable(name: "result", scope: !4096, file: !861, line: 74, type: !104)
!4138 = !DILocation(line: 0, scope: !4096)
!4139 = !DILocation(line: 63, column: 12, scope: !4096)
!4140 = !DILocation(line: 64, column: 10, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4096, file: !861, line: 64, column: 7)
!4142 = !DILocation(line: 64, column: 7, scope: !4096)
!4143 = !DILocation(line: 65, column: 12, scope: !4141)
!4144 = !DILocation(line: 65, column: 5, scope: !4141)
!4145 = !DILocation(line: 70, column: 9, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4096, file: !861, line: 70, column: 7)
!4147 = !DILocation(line: 70, column: 23, scope: !4146)
!4148 = !DILocation(line: 70, column: 33, scope: !4146)
!4149 = !DILocation(line: 70, column: 26, scope: !4146)
!4150 = !DILocation(line: 70, column: 59, scope: !4146)
!4151 = !DILocation(line: 71, column: 7, scope: !4146)
!4152 = !DILocation(line: 71, column: 10, scope: !4146)
!4153 = !DILocation(line: 70, column: 7, scope: !4096)
!4154 = !DILocation(line: 100, column: 12, scope: !4096)
!4155 = !DILocation(line: 105, column: 7, scope: !4096)
!4156 = !DILocation(line: 72, column: 19, scope: !4146)
!4157 = !DILocation(line: 105, column: 19, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4096, file: !861, line: 105, column: 7)
!4159 = !DILocation(line: 107, column: 13, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4158, file: !861, line: 106, column: 5)
!4161 = !DILocation(line: 109, column: 5, scope: !4160)
!4162 = !DILocation(line: 112, column: 1, scope: !4096)
!4163 = !DISubprogram(name: "fileno", scope: !125, file: !125, line: 809, type: !4097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4164 = !DISubprogram(name: "fclose", scope: !125, file: !125, line: 178, type: !4097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4165 = !DISubprogram(name: "__freading", scope: !4093, file: !4093, line: 51, type: !4097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4166 = distinct !DISubprogram(name: "rpl_fflush", scope: !863, file: !863, line: 130, type: !4167, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4203)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!104, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4171)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4171, file: !253, line: 51, baseType: !104, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4171, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4171, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4171, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4171, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4171, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4171, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4171, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4171, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4171, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4171, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4171, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4171, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4171, file: !253, line: 70, baseType: !4187, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4171, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4171, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4171, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4171, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4171, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4171, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4171, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4171, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4171, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4171, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4171, file: !253, line: 93, baseType: !4187, size: 64, offset: 1344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4171, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4171, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4171, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4171, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4203 = !{!4204}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4166, file: !863, line: 130, type: !4169)
!4205 = !DILocation(line: 0, scope: !4166)
!4206 = !DILocation(line: 151, column: 14, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4166, file: !863, line: 151, column: 7)
!4208 = !DILocation(line: 151, column: 22, scope: !4207)
!4209 = !DILocation(line: 151, column: 27, scope: !4207)
!4210 = !DILocation(line: 151, column: 7, scope: !4166)
!4211 = !DILocation(line: 152, column: 12, scope: !4207)
!4212 = !DILocation(line: 152, column: 5, scope: !4207)
!4213 = !DILocalVariable(name: "fp", arg: 1, scope: !4214, file: !863, line: 42, type: !4169)
!4214 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !863, file: !863, line: 42, type: !4215, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4169}
!4217 = !{!4213}
!4218 = !DILocation(line: 0, scope: !4214, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 157, column: 3, scope: !4166)
!4220 = !DILocation(line: 44, column: 12, scope: !4221, inlinedAt: !4219)
!4221 = distinct !DILexicalBlock(scope: !4214, file: !863, line: 44, column: 7)
!4222 = !DILocation(line: 44, column: 19, scope: !4221, inlinedAt: !4219)
!4223 = !DILocation(line: 44, column: 7, scope: !4214, inlinedAt: !4219)
!4224 = !DILocation(line: 46, column: 5, scope: !4221, inlinedAt: !4219)
!4225 = !DILocation(line: 159, column: 10, scope: !4166)
!4226 = !DILocation(line: 159, column: 3, scope: !4166)
!4227 = !DILocation(line: 236, column: 1, scope: !4166)
!4228 = !DISubprogram(name: "fflush", scope: !125, file: !125, line: 230, type: !4167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4229 = distinct !DISubprogram(name: "rpl_fseeko", scope: !865, file: !865, line: 28, type: !4230, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4266)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!104, !4232, !124, !104}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4234, file: !253, line: 51, baseType: !104, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4234, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4234, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4234, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4234, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4234, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4234, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4234, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4234, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4234, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4234, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4234, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4234, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4234, file: !253, line: 70, baseType: !4250, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4234, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4234, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4234, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4234, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4234, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4234, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4234, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4234, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4234, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4234, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4234, file: !253, line: 93, baseType: !4250, size: 64, offset: 1344)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4234, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4234, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4234, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4234, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4266 = !{!4267, !4268, !4269, !4270}
!4267 = !DILocalVariable(name: "fp", arg: 1, scope: !4229, file: !865, line: 28, type: !4232)
!4268 = !DILocalVariable(name: "offset", arg: 2, scope: !4229, file: !865, line: 28, type: !124)
!4269 = !DILocalVariable(name: "whence", arg: 3, scope: !4229, file: !865, line: 28, type: !104)
!4270 = !DILocalVariable(name: "pos", scope: !4271, file: !865, line: 123, type: !124)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !865, line: 119, column: 5)
!4272 = distinct !DILexicalBlock(scope: !4229, file: !865, line: 55, column: 7)
!4273 = !DILocation(line: 0, scope: !4229)
!4274 = !DILocation(line: 55, column: 12, scope: !4272)
!4275 = !{!1658, !896, i64 16}
!4276 = !DILocation(line: 55, column: 33, scope: !4272)
!4277 = !{!1658, !896, i64 8}
!4278 = !DILocation(line: 55, column: 25, scope: !4272)
!4279 = !DILocation(line: 56, column: 7, scope: !4272)
!4280 = !DILocation(line: 56, column: 15, scope: !4272)
!4281 = !DILocation(line: 56, column: 37, scope: !4272)
!4282 = !{!1658, !896, i64 32}
!4283 = !DILocation(line: 56, column: 29, scope: !4272)
!4284 = !DILocation(line: 57, column: 7, scope: !4272)
!4285 = !DILocation(line: 57, column: 15, scope: !4272)
!4286 = !{!1658, !896, i64 72}
!4287 = !DILocation(line: 57, column: 29, scope: !4272)
!4288 = !DILocation(line: 55, column: 7, scope: !4229)
!4289 = !DILocation(line: 123, column: 26, scope: !4271)
!4290 = !DILocation(line: 123, column: 19, scope: !4271)
!4291 = !DILocation(line: 0, scope: !4271)
!4292 = !DILocation(line: 124, column: 15, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4271, file: !865, line: 124, column: 11)
!4294 = !DILocation(line: 124, column: 11, scope: !4271)
!4295 = !DILocation(line: 135, column: 19, scope: !4271)
!4296 = !DILocation(line: 136, column: 12, scope: !4271)
!4297 = !DILocation(line: 136, column: 20, scope: !4271)
!4298 = !{!1658, !1280, i64 144}
!4299 = !DILocation(line: 167, column: 7, scope: !4271)
!4300 = !DILocation(line: 169, column: 10, scope: !4229)
!4301 = !DILocation(line: 169, column: 3, scope: !4229)
!4302 = !DILocation(line: 170, column: 1, scope: !4229)
!4303 = !DISubprogram(name: "fseeko", scope: !125, file: !125, line: 736, type: !4304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!104, !4232, !126, !104}
!4306 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !771, file: !771, line: 100, type: !4307, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4310)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!131, !1826, !134, !131, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!4310 = !{!4311, !4312, !4313, !4314, !4315}
!4311 = !DILocalVariable(name: "pwc", arg: 1, scope: !4306, file: !771, line: 100, type: !1826)
!4312 = !DILocalVariable(name: "s", arg: 2, scope: !4306, file: !771, line: 100, type: !134)
!4313 = !DILocalVariable(name: "n", arg: 3, scope: !4306, file: !771, line: 100, type: !131)
!4314 = !DILocalVariable(name: "ps", arg: 4, scope: !4306, file: !771, line: 100, type: !4309)
!4315 = !DILocalVariable(name: "ret", scope: !4306, file: !771, line: 130, type: !131)
!4316 = !DILocation(line: 0, scope: !4306)
!4317 = !DILocation(line: 105, column: 9, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4306, file: !771, line: 105, column: 7)
!4319 = !DILocation(line: 105, column: 7, scope: !4306)
!4320 = !DILocation(line: 117, column: 10, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4306, file: !771, line: 117, column: 7)
!4322 = !DILocation(line: 117, column: 7, scope: !4306)
!4323 = !DILocation(line: 130, column: 16, scope: !4306)
!4324 = !DILocation(line: 135, column: 11, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4306, file: !771, line: 135, column: 7)
!4326 = !DILocation(line: 135, column: 25, scope: !4325)
!4327 = !DILocation(line: 135, column: 30, scope: !4325)
!4328 = !DILocation(line: 135, column: 7, scope: !4306)
!4329 = !DILocalVariable(name: "ps", arg: 1, scope: !4330, file: !1799, line: 1135, type: !4309)
!4330 = distinct !DISubprogram(name: "mbszero", scope: !1799, file: !1799, line: 1135, type: !4331, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !4309}
!4333 = !{!4329}
!4334 = !DILocation(line: 0, scope: !4330, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 137, column: 5, scope: !4325)
!4336 = !DILocalVariable(name: "__dest", arg: 1, scope: !4337, file: !1808, line: 57, type: !130)
!4337 = distinct !DISubprogram(name: "memset", scope: !1808, file: !1808, line: 57, type: !1809, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4338)
!4338 = !{!4336, !4339, !4340}
!4339 = !DILocalVariable(name: "__ch", arg: 2, scope: !4337, file: !1808, line: 57, type: !104)
!4340 = !DILocalVariable(name: "__len", arg: 3, scope: !4337, file: !1808, line: 57, type: !131)
!4341 = !DILocation(line: 0, scope: !4337, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 1137, column: 3, scope: !4330, inlinedAt: !4335)
!4343 = !DILocation(line: 59, column: 10, scope: !4337, inlinedAt: !4342)
!4344 = !DILocation(line: 137, column: 5, scope: !4325)
!4345 = !DILocation(line: 138, column: 11, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4306, file: !771, line: 138, column: 7)
!4347 = !DILocation(line: 138, column: 7, scope: !4306)
!4348 = !DILocation(line: 139, column: 5, scope: !4346)
!4349 = !DILocation(line: 143, column: 26, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4306, file: !771, line: 143, column: 7)
!4351 = !DILocation(line: 143, column: 41, scope: !4350)
!4352 = !DILocation(line: 143, column: 7, scope: !4306)
!4353 = !DILocation(line: 145, column: 15, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !771, line: 145, column: 11)
!4355 = distinct !DILexicalBlock(scope: !4350, file: !771, line: 144, column: 5)
!4356 = !DILocation(line: 145, column: 11, scope: !4355)
!4357 = !DILocation(line: 146, column: 32, scope: !4354)
!4358 = !DILocation(line: 146, column: 16, scope: !4354)
!4359 = !DILocation(line: 146, column: 14, scope: !4354)
!4360 = !DILocation(line: 146, column: 9, scope: !4354)
!4361 = !DILocation(line: 286, column: 1, scope: !4306)
!4362 = !DISubprogram(name: "mbsinit", scope: !4363, file: !4363, line: 293, type: !4364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !904)
!4363 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!104, !4366}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!4368 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !867, file: !867, line: 27, type: !3298, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4369)
!4369 = !{!4370, !4371, !4372, !4373}
!4370 = !DILocalVariable(name: "ptr", arg: 1, scope: !4368, file: !867, line: 27, type: !130)
!4371 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4368, file: !867, line: 27, type: !131)
!4372 = !DILocalVariable(name: "size", arg: 3, scope: !4368, file: !867, line: 27, type: !131)
!4373 = !DILocalVariable(name: "nbytes", scope: !4368, file: !867, line: 29, type: !131)
!4374 = !DILocation(line: 0, scope: !4368)
!4375 = !DILocation(line: 30, column: 7, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4368, file: !867, line: 30, column: 7)
!4377 = !DILocalVariable(name: "ptr", arg: 1, scope: !4378, file: !3390, line: 2057, type: !130)
!4378 = distinct !DISubprogram(name: "rpl_realloc", scope: !3390, file: !3390, line: 2057, type: !3382, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4379)
!4379 = !{!4377, !4380}
!4380 = !DILocalVariable(name: "size", arg: 2, scope: !4378, file: !3390, line: 2057, type: !131)
!4381 = !DILocation(line: 0, scope: !4378, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 37, column: 10, scope: !4368)
!4383 = !DILocation(line: 2059, column: 24, scope: !4378, inlinedAt: !4382)
!4384 = !DILocation(line: 2059, column: 10, scope: !4378, inlinedAt: !4382)
!4385 = !DILocation(line: 37, column: 3, scope: !4368)
!4386 = !DILocation(line: 32, column: 7, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4376, file: !867, line: 31, column: 5)
!4388 = !DILocation(line: 32, column: 13, scope: !4387)
!4389 = !DILocation(line: 33, column: 7, scope: !4387)
!4390 = !DILocation(line: 38, column: 1, scope: !4368)
!4391 = distinct !DISubprogram(name: "hard_locale", scope: !789, file: !789, line: 28, type: !4392, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4394)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!137, !104}
!4394 = !{!4395, !4396}
!4395 = !DILocalVariable(name: "category", arg: 1, scope: !4391, file: !789, line: 28, type: !104)
!4396 = !DILocalVariable(name: "locale", scope: !4391, file: !789, line: 30, type: !4397)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4398)
!4398 = !{!4399}
!4399 = !DISubrange(count: 257)
!4400 = !DILocation(line: 0, scope: !4391)
!4401 = !DILocation(line: 30, column: 3, scope: !4391)
!4402 = !DILocation(line: 30, column: 8, scope: !4391)
!4403 = !DILocation(line: 32, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4391, file: !789, line: 32, column: 7)
!4405 = !DILocation(line: 32, column: 7, scope: !4391)
!4406 = !DILocalVariable(name: "__s1", arg: 1, scope: !4407, file: !979, line: 1359, type: !134)
!4407 = distinct !DISubprogram(name: "streq", scope: !979, file: !979, line: 1359, type: !980, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4408)
!4408 = !{!4406, !4409}
!4409 = !DILocalVariable(name: "__s2", arg: 2, scope: !4407, file: !979, line: 1359, type: !134)
!4410 = !DILocation(line: 0, scope: !4407, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 35, column: 9, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4391, file: !789, line: 35, column: 7)
!4413 = !DILocation(line: 1361, column: 11, scope: !4407, inlinedAt: !4411)
!4414 = !DILocation(line: 35, column: 29, scope: !4412)
!4415 = !DILocation(line: 0, scope: !4407, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 35, column: 32, scope: !4412)
!4417 = !DILocation(line: 1361, column: 11, scope: !4407, inlinedAt: !4416)
!4418 = !DILocation(line: 1361, column: 10, scope: !4407, inlinedAt: !4416)
!4419 = !DILocation(line: 35, column: 7, scope: !4391)
!4420 = !DILocation(line: 46, column: 3, scope: !4391)
!4421 = !DILocation(line: 47, column: 1, scope: !4391)
!4422 = distinct !DISubprogram(name: "setlocale_null_r", scope: !874, file: !874, line: 154, type: !4423, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !873, retainedNodes: !4425)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!104, !104, !129, !131}
!4425 = !{!4426, !4427, !4428}
!4426 = !DILocalVariable(name: "category", arg: 1, scope: !4422, file: !874, line: 154, type: !104)
!4427 = !DILocalVariable(name: "buf", arg: 2, scope: !4422, file: !874, line: 154, type: !129)
!4428 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4422, file: !874, line: 154, type: !131)
!4429 = !DILocation(line: 0, scope: !4422)
!4430 = !DILocation(line: 159, column: 10, scope: !4422)
!4431 = !DILocation(line: 159, column: 3, scope: !4422)
!4432 = distinct !DISubprogram(name: "setlocale_null", scope: !874, file: !874, line: 186, type: !4433, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !873, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!134, !104}
!4435 = !{!4436}
!4436 = !DILocalVariable(name: "category", arg: 1, scope: !4432, file: !874, line: 186, type: !104)
!4437 = !DILocation(line: 0, scope: !4432)
!4438 = !DILocation(line: 189, column: 10, scope: !4432)
!4439 = !DILocation(line: 189, column: 3, scope: !4432)
!4440 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !876, file: !876, line: 35, type: !4433, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4441)
!4441 = !{!4442, !4443}
!4442 = !DILocalVariable(name: "category", arg: 1, scope: !4440, file: !876, line: 35, type: !104)
!4443 = !DILocalVariable(name: "result", scope: !4440, file: !876, line: 37, type: !134)
!4444 = !DILocation(line: 0, scope: !4440)
!4445 = !DILocation(line: 37, column: 24, scope: !4440)
!4446 = !DILocation(line: 62, column: 3, scope: !4440)
!4447 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !876, file: !876, line: 66, type: !4423, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453}
!4449 = !DILocalVariable(name: "category", arg: 1, scope: !4447, file: !876, line: 66, type: !104)
!4450 = !DILocalVariable(name: "buf", arg: 2, scope: !4447, file: !876, line: 66, type: !129)
!4451 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4447, file: !876, line: 66, type: !131)
!4452 = !DILocalVariable(name: "result", scope: !4447, file: !876, line: 111, type: !134)
!4453 = !DILocalVariable(name: "length", scope: !4454, file: !876, line: 125, type: !131)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !876, line: 124, column: 5)
!4455 = distinct !DILexicalBlock(scope: !4447, file: !876, line: 113, column: 7)
!4456 = !DILocation(line: 0, scope: !4447)
!4457 = !DILocation(line: 0, scope: !4440, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 111, column: 24, scope: !4447)
!4459 = !DILocation(line: 37, column: 24, scope: !4440, inlinedAt: !4458)
!4460 = !DILocation(line: 113, column: 14, scope: !4455)
!4461 = !DILocation(line: 113, column: 7, scope: !4447)
!4462 = !DILocation(line: 116, column: 19, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !876, line: 116, column: 11)
!4464 = distinct !DILexicalBlock(scope: !4455, file: !876, line: 114, column: 5)
!4465 = !DILocation(line: 116, column: 11, scope: !4464)
!4466 = !DILocation(line: 120, column: 16, scope: !4463)
!4467 = !DILocation(line: 120, column: 9, scope: !4463)
!4468 = !DILocation(line: 125, column: 23, scope: !4454)
!4469 = !DILocation(line: 0, scope: !4454)
!4470 = !DILocation(line: 126, column: 18, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4454, file: !876, line: 126, column: 11)
!4472 = !DILocation(line: 126, column: 11, scope: !4454)
!4473 = !DILocation(line: 128, column: 39, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4471, file: !876, line: 127, column: 9)
!4475 = !DILocalVariable(name: "__dest", arg: 1, scope: !4476, file: !1808, line: 26, type: !3659)
!4476 = distinct !DISubprogram(name: "memcpy", scope: !1808, file: !1808, line: 26, type: !3657, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4477)
!4477 = !{!4475, !4478, !4479}
!4478 = !DILocalVariable(name: "__src", arg: 2, scope: !4476, file: !1808, line: 26, type: !1114)
!4479 = !DILocalVariable(name: "__len", arg: 3, scope: !4476, file: !1808, line: 26, type: !131)
!4480 = !DILocation(line: 0, scope: !4476, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 128, column: 11, scope: !4474)
!4482 = !DILocation(line: 29, column: 10, scope: !4476, inlinedAt: !4481)
!4483 = !DILocation(line: 129, column: 11, scope: !4474)
!4484 = !DILocation(line: 133, column: 23, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !876, line: 133, column: 15)
!4486 = distinct !DILexicalBlock(scope: !4471, file: !876, line: 132, column: 9)
!4487 = !DILocation(line: 133, column: 15, scope: !4486)
!4488 = !DILocation(line: 138, column: 44, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4485, file: !876, line: 134, column: 13)
!4490 = !DILocation(line: 0, scope: !4476, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 138, column: 15, scope: !4489)
!4492 = !DILocation(line: 29, column: 10, scope: !4476, inlinedAt: !4491)
!4493 = !DILocation(line: 139, column: 15, scope: !4489)
!4494 = !DILocation(line: 139, column: 32, scope: !4489)
!4495 = !DILocation(line: 140, column: 13, scope: !4489)
!4496 = !DILocation(line: 0, scope: !4455)
!4497 = !DILocation(line: 145, column: 1, scope: !4447)
