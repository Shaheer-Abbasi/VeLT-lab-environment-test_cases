; ModuleID = 'src/mktemp.bc'
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
%struct.timespec = type { i64, i64 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [OPTION]... [TEMPLATE]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [211 x i8] c"Create a temporary file or directory, safely, and print its name.\0ATEMPLATE must contain at least 3 consecutive 'X's in last component.\0AIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [74 x i8] c"Files are created u+rw, and directories u+rwx, minus umask restrictions.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [59 x i8] c"  -d, --directory\0A         create a directory, not a file\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [79 x i8] c"  -u, --dry-run\0A         do not create anything; merely print a name (unsafe)\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [77 x i8] c"  -q, --quiet\0A         suppress diagnostics about file/dir-creation failure\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [148 x i8] c"      --suffix=SUFF\0A         append SUFF to TEMPLATE; SUFF must not contain a slash.\0A         This option is implied if TEMPLATE does not end in X\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [310 x i8] c"  -p DIR, --tmpdir[=DIR]\0A         interpret TEMPLATE relative to DIR;\0A         if DIR is not specified, use $TMPDIR if set, else /tmp.\0A         With this option, TEMPLATE must not be an absolute name;\0A         unlike with -t, TEMPLATE may contain slashes,\0A         but mktemp creates only the final component\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [187 x i8] c"  -t\0A         interpret TEMPLATE as a single file name component,\0A         relative to a directory: $TMPDIR, if set;\0A         else the directory specified via -p; else /tmp [deprecated]\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !72
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [8 x i8] c"dp:qtuV\00", align 1, !dbg !87
@longopts = internal constant [8 x %struct.option] [%struct.option { ptr @.str.67, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 117 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.71, i32 2, ptr null, i32 112 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !92
@optarg = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !132
@.str.19 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !137
@.str.20 = private unnamed_addr constant [11 x i8] c"Eric Blake\00", align 1, !dbg !142
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"too many templates\00", align 1, !dbg !147
@.str.22 = private unnamed_addr constant [41 x i8] c"with --suffix, template %s must end in X\00", align 1, !dbg !152
@.str.23 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1, !dbg !157
@.str.24 = private unnamed_addr constant [27 x i8] c"too few X's in template %s\00", align 1, !dbg !162
@.str.25 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1, !dbg !167
@.str.26 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1, !dbg !169
@.str.27 = private unnamed_addr constant [51 x i8] c"invalid template, %s, contains directory separator\00", align 1, !dbg !174
@.str.28 = private unnamed_addr constant [60 x i8] c"invalid template, %s; with --tmpdir, it may not be absolute\00", align 1, !dbg !179
@.str.29 = private unnamed_addr constant [43 x i8] c"failed to create directory via template %s\00", align 1, !dbg !184
@.str.30 = private unnamed_addr constant [38 x i8] c"failed to create file via template %s\00", align 1, !dbg !189
@stdout_closed = internal unnamed_addr global i1 false, align 1, !dbg !412
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !194
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !202
@.str.32 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !284
@.str.33 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !286
@.str.34 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !288
@.str.35 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !293
@.str.49 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !327
@.str.50 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !329
@.str.51 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !331
@.str.52 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !336
@.str.53 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !341
@.str.54 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !346
@.str.55 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !351
@.str.56 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !353
@.str.57 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !355
@.str.58 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !357
@.str.62 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !371
@.str.63 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !373
@.str.64 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !378
@.str.65 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !380
@.str.66 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !382
@.str.67 = private unnamed_addr constant [10 x i8] c"directory\00", align 1, !dbg !384
@.str.68 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !386
@.str.69 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1, !dbg !388
@.str.70 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1, !dbg !390
@.str.71 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1, !dbg !392
@.str.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !394
@.str.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !396
@.str.74 = private unnamed_addr constant [15 x i8] c"tmp.XXXXXXXXXX\00", align 1, !dbg !398
@.str.36 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !413
@Version = dso_local local_unnamed_addr global ptr @.str.36, align 8, !dbg !416
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !420
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !433
@.str.43 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !425
@.str.1.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !427
@.str.2.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !429
@.str.3.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !431
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !435
@stderr = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !441
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !477
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !443
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !467
@.str.1.53 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !469
@.str.2.55 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !471
@.str.3.54 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !473
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !475
@.str.4.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !479
@.str.5.49 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !481
@.str.6.50 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !486
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !491
@.str.75 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !497
@.str.1.76 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !499
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !501
@.str.79 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !532
@.str.1.80 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !535
@.str.2.81 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !537
@.str.3.82 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !539
@.str.4.83 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !541
@.str.5.84 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !543
@.str.6.85 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !545
@.str.7.86 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !547
@.str.8.87 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !549
@.str.9.88 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !551
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.79, ptr @.str.1.80, ptr @.str.2.81, ptr @.str.3.82, ptr @.str.4.83, ptr @.str.5.84, ptr @.str.6.85, ptr @.str.7.86, ptr @.str.8.87, ptr @.str.9.88, ptr null], align 8, !dbg !553
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !578
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !592
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !630
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !637
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !594
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !639
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !582
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !599
@.str.11.89 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !601
@.str.12.92 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !603
@.str.13.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !605
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !607
@gen_tempname_len.tryfunc = internal unnamed_addr constant [3 x ptr] [ptr @try_file, ptr @try_dir, ptr @try_nocreate], align 8, !dbg !643
@.str.99 = private unnamed_addr constant [2 x i8] c"X\00", align 1, !dbg !651
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 1, !dbg !653
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !669
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !672
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !674
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !676
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !678
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !680
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !685
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !687
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !689
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !694
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !699
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !704
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !709
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !711
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !716
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !718
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !723
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !725
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !727
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !729
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !731
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !733
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !735
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !737
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !742
@exit_failure = dso_local global i32 1, align 4, !dbg !750
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !756
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !759
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !761
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !763
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !766
@.str.150 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !781
@.str.1.151 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !784

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !864 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !868, metadata !DIExpression()), !dbg !869
  %2 = icmp eq i32 %0, 0, !dbg !870
  br i1 %2, label %8, label %3, !dbg !872

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !873, !tbaa !875
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !873
  %6 = load ptr, ptr @program_name, align 8, !dbg !873, !tbaa !875
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !873
  br label %42, !dbg !873

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !879
  %10 = load ptr, ptr @program_name, align 8, !dbg !879, !tbaa !875
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !879
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !881
  %13 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !875
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !881
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #40, !dbg !882
  %16 = load ptr, ptr @stdout, align 8, !dbg !882, !tbaa !875
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !882
  %18 = load ptr, ptr @stdout, align 8, !dbg !883, !tbaa !875
  %19 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4, ptr noundef %18), !dbg !883
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !884
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !884
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !885
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !885
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !886
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !886
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !887
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !887
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !888
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !888
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !889
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !889
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !890
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !890
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !891
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !892, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !911, metadata !905, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr poison, metadata !904, metadata !DIExpression()), !dbg !909
  tail call void @emit_bug_reporting_address() #40, !dbg !912
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !913
  call void @llvm.dbg.value(metadata ptr %28, metadata !907, metadata !DIExpression()), !dbg !909
  %29 = icmp eq ptr %28, null, !dbg !914
  br i1 %29, label %37, label %30, !dbg !916

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.62, i64 noundef 3) #41, !dbg !917
  %32 = icmp eq i32 %31, 0, !dbg !917
  br i1 %32, label %37, label %33, !dbg !918

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #40, !dbg !919
  %35 = load ptr, ptr @stdout, align 8, !dbg !919, !tbaa !875
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !919
  br label %37, !dbg !921

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !904, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !908, metadata !DIExpression()), !dbg !909
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #40, !dbg !922
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5) #40, !dbg !922
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #40, !dbg !923
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.66) #40, !dbg !923
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !924
  unreachable, !dbg !924
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !925 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !929 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !935 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !938 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !204 {
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !208, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !941
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !942, !tbaa !943
  %3 = icmp eq i32 %2, -1, !dbg !945
  br i1 %3, label %4, label %16, !dbg !946

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.32) #40, !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !948
  %6 = icmp eq ptr %5, null, !dbg !949
  br i1 %6, label %14, label %7, !dbg !950

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !951, !tbaa !952
  %9 = icmp eq i8 %8, 0, !dbg !951
  br i1 %9, label %14, label %10, !dbg !953

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !954, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !960, metadata !DIExpression()), !dbg !961
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.33) #41, !dbg !963
  %12 = icmp eq i32 %11, 0, !dbg !964
  %13 = zext i1 %12 to i32, !dbg !953
  br label %14, !dbg !953

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !965, !tbaa !943
  br label %16, !dbg !966

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !967
  %18 = icmp eq i32 %17, 0, !dbg !967
  br i1 %18, label %22, label %19, !dbg !969

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !875
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !970
  br label %121, !dbg !972

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !941
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.34) #41, !dbg !973
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !974
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !941
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !975
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !941
  %26 = icmp eq ptr %25, null, !dbg !976
  br i1 %26, label %53, label %27, !dbg !977

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !978
  br i1 %28, label %53, label %29, !dbg !979

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !980
  %30 = icmp ult ptr %24, %25, !dbg !981
  br i1 %30, label %31, label %53, !dbg !982

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !941
  %33 = load ptr, ptr %32, align 8, !tbaa !875
  br label %34, !dbg !982

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !980
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !983
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !980
  %38 = load i8, ptr %35, align 1, !dbg !983, !tbaa !952
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !983
  %41 = load i16, ptr %40, align 2, !dbg !983, !tbaa !984
  %42 = freeze i16 %41, !dbg !986
  %43 = lshr i16 %42, 13, !dbg !986
  %44 = and i16 %43, 1, !dbg !986
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !987
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !980
  %47 = icmp ult ptr %37, %25, !dbg !981
  %48 = icmp ult i64 %46, 2, !dbg !988
  %49 = select i1 %47, i1 %48, i1 false, !dbg !988
  br i1 %49, label %34, label %50, !dbg !982, !llvm.loop !989

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !987
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !991
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !993
  br label %53, !dbg !993

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !941
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !215, metadata !DIExpression()), !dbg !941
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.35) #41, !dbg !994
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !221, metadata !DIExpression()), !dbg !941
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !995
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !222, metadata !DIExpression()), !dbg !941
  br label %58, !dbg !996

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !941
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !222, metadata !DIExpression()), !dbg !941
  %61 = load i8, ptr %59, align 1, !dbg !997, !tbaa !952
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !998

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !999
  %64 = load i8, ptr %63, align 1, !dbg !1002, !tbaa !952
  %65 = icmp ne i8 %64, 45, !dbg !1003
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1004
  br label %67, !dbg !1004

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !941
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !1005
  %70 = load ptr, ptr %69, align 8, !dbg !1005, !tbaa !875
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1005
  %73 = load i16, ptr %72, align 2, !dbg !1005, !tbaa !984
  %74 = and i16 %73, 8192, !dbg !1005
  %75 = icmp eq i16 %74, 0, !dbg !1005
  br i1 %75, label %89, label %76, !dbg !1007

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1008
  br i1 %77, label %91, label %78, !dbg !1011

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1012
  %80 = load i8, ptr %79, align 1, !dbg !1012, !tbaa !952
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1012
  %83 = load i16, ptr %82, align 2, !dbg !1012, !tbaa !984
  %84 = and i16 %83, 8192, !dbg !1012
  %85 = icmp eq i16 %84, 0, !dbg !1012
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1013
  br i1 %88, label %89, label %91, !dbg !1013

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1014
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !222, metadata !DIExpression()), !dbg !941
  br label %58, !dbg !996, !llvm.loop !1015

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !941
  %92 = ptrtoint ptr %24 to i64, !dbg !1017
  %93 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !875
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1017
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !954, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !279, metadata !DIExpression()), !dbg !941
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.49, i64 noundef 6) #41, !dbg !1038
  %96 = icmp eq i32 %95, 0, !dbg !1038
  br i1 %96, label %100, label %97, !dbg !1040

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.50, i64 noundef 9) #41, !dbg !1041
  %99 = icmp eq i32 %98, 0, !dbg !1041
  br i1 %99, label %100, label %103, !dbg !1042

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1043
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %101, ptr noundef %54) #40, !dbg !1043
  br label %106, !dbg !1045

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1046
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.5, i32 noundef %104, ptr noundef %54) #40, !dbg !1046
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !875
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %107), !dbg !1048
  %109 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !875
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.56, ptr noundef %109), !dbg !1049
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1050
  %112 = sub i64 %111, %92, !dbg !1050
  %113 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !875
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1050
  %115 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !875
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %115), !dbg !1051
  %117 = load ptr, ptr @stdout, align 8, !dbg !1052, !tbaa !875
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %117), !dbg !1052
  %119 = load ptr, ptr @stdout, align 8, !dbg !1053, !tbaa !875
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1053
  br label %121, !dbg !1054

121:                                              ; preds = %106, %19
  ret void, !dbg !1054
}

; Function Attrs: nounwind
declare !dbg !1055 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1059 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1063 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1065 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1068 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1071 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1074 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1077 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1083 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1084 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1090 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1095, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1096, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1098, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1099, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1102, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1104, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1105, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1110, metadata !DIExpression()), !dbg !1134
  %3 = load ptr, ptr %1, align 8, !dbg !1135, !tbaa !875
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1136
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #40, !dbg !1137
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #40, !dbg !1138
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #40, !dbg !1139
  %7 = tail call i32 @atexit(ptr noundef nonnull @maybe_close_stdout) #40, !dbg !1140
  br label %8, !dbg !1141

8:                                                ; preds = %54, %2
  %9 = phi i1 [ true, %54 ], [ false, %2 ]
  %10 = phi i1 [ %55, %54 ], [ false, %2 ]
  %11 = phi i1 [ %56, %54 ], [ false, %2 ]
  %12 = phi i1 [ %57, %54 ], [ false, %2 ]
  %13 = phi ptr [ %59, %54 ], [ null, %2 ]
  %14 = phi i1 [ %60, %54 ], [ false, %2 ]
  %15 = phi ptr [ %58, %54 ], [ null, %2 ]
  br label %22, !dbg !1141

.loopexit3:                                       ; preds = %44
  %.lcssa83 = phi i1 [ %30, %44 ]
  %.lcssa71 = phi i1 [ %36, %44 ]
  %.lcssa57 = phi ptr [ %39, %44 ]
  %.lcssa43 = phi ptr [ %41, %44 ]
  br label %16, !dbg !1141

.loopexit12:                                      ; preds = %40
  %.lcssa77 = phi i1 [ %30, %40 ]
  %.lcssa64 = phi i1 [ %36, %40 ]
  %.lcssa50 = phi ptr [ %39, %40 ]
  %.lcssa35 = phi ptr [ %41, %40 ]
  %.lcssa19 = phi i1 [ %42, %40 ]
  br label %16, !dbg !1141

16:                                               ; preds = %.loopexit12, %.loopexit3
  %17 = phi i1 [ %.lcssa83, %.loopexit3 ], [ %.lcssa77, %.loopexit12 ]
  %18 = phi i1 [ %.lcssa71, %.loopexit3 ], [ %.lcssa64, %.loopexit12 ]
  %19 = phi ptr [ %.lcssa57, %.loopexit3 ], [ %.lcssa50, %.loopexit12 ]
  %20 = phi ptr [ %.lcssa43, %.loopexit3 ], [ %.lcssa35, %.loopexit12 ]
  %21 = phi i1 [ true, %.loopexit3 ], [ %.lcssa19, %.loopexit12 ]
  br label %22, !dbg !1141, !llvm.loop !1142

22:                                               ; preds = %16, %8
  %23 = phi i1 [ %10, %8 ], [ true, %16 ]
  %24 = phi i1 [ %11, %8 ], [ %17, %16 ]
  %25 = phi i1 [ %12, %8 ], [ %18, %16 ]
  %26 = phi ptr [ %13, %8 ], [ %20, %16 ]
  %27 = phi i1 [ %14, %8 ], [ %21, %16 ]
  %28 = phi ptr [ %15, %8 ], [ %19, %16 ]
  br label %29, !dbg !1141

29:                                               ; preds = %22, %50
  %30 = phi i1 [ %24, %22 ], [ true, %50 ]
  %31 = phi i1 [ %25, %22 ], [ true, %50 ]
  %32 = phi ptr [ %26, %22 ], [ %52, %50 ]
  %33 = phi i1 [ %27, %22 ], [ %53, %50 ]
  %34 = phi ptr [ %28, %22 ], [ %51, %50 ]
  br label %35, !dbg !1141

35:                                               ; preds = %29, %46
  %36 = phi i1 [ %31, %29 ], [ true, %46 ]
  %37 = phi ptr [ %32, %29 ], [ %47, %46 ]
  %38 = phi i1 [ %33, %29 ], [ %48, %46 ]
  %39 = phi ptr [ %34, %29 ], [ %49, %46 ]
  br label %40, !dbg !1141

40:                                               ; preds = %35, %61
  %41 = phi ptr [ %37, %35 ], [ %63, %61 ]
  %42 = phi i1 [ %38, %35 ], [ %62, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1098, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1099, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %41, metadata !1102, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1103, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1105, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1106, metadata !DIExpression()), !dbg !1134
  %43 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1144
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1100, metadata !DIExpression()), !dbg !1134
  switch i32 %43, label %.loopexit10 [
    i32 -1, label %.loopexit11
    i32 100, label %.loopexit12
    i32 112, label %.loopexit13
    i32 113, label %.preheader1
    i32 116, label %.loopexit14
    i32 117, label %.loopexit15
    i32 256, label %61
    i32 -2, label %.loopexit16
    i32 86, label %.loopexit17
    i32 -3, label %.loopexit17
  ], !dbg !1141

.preheader1:                                      ; preds = %40
  br label %44, !dbg !1141

44:                                               ; preds = %.preheader1, %44
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1098, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1099, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %41, metadata !1102, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1103, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1105, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1106, metadata !DIExpression()), !dbg !1134
  %45 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1144
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1100, metadata !DIExpression()), !dbg !1134
  switch i32 %45, label %.loopexit [
    i32 -1, label %.loopexit2
    i32 100, label %.loopexit3
    i32 112, label %.loopexit4
    i32 113, label %44
    i32 116, label %.loopexit5
    i32 117, label %.loopexit6
    i32 256, label %.loopexit7
    i32 -2, label %.loopexit8
    i32 86, label %.loopexit9
    i32 -3, label %.loopexit9
  ], !dbg !1141, !llvm.loop !1145

.loopexit4:                                       ; preds = %44
  %.lcssa44 = phi ptr [ %41, %44 ]
  br label %46, !dbg !1147

.loopexit13:                                      ; preds = %40
  %.lcssa36 = phi ptr [ %41, %40 ]
  %.lcssa20 = phi i1 [ %42, %40 ]
  br label %46, !dbg !1147

46:                                               ; preds = %.loopexit13, %.loopexit4
  %47 = phi ptr [ %.lcssa44, %.loopexit4 ], [ %.lcssa36, %.loopexit13 ]
  %48 = phi i1 [ true, %.loopexit4 ], [ %.lcssa20, %.loopexit13 ]
  %49 = load ptr, ptr @optarg, align 8, !dbg !1147, !tbaa !875
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1098, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1134
  br label %35, !dbg !1150, !llvm.loop !1142

.loopexit5:                                       ; preds = %44
  %.lcssa58 = phi ptr [ %39, %44 ]
  %.lcssa45 = phi ptr [ %41, %44 ]
  br label %50, !dbg !1151

.loopexit14:                                      ; preds = %40
  %.lcssa51 = phi ptr [ %39, %40 ]
  %.lcssa37 = phi ptr [ %41, %40 ]
  %.lcssa21 = phi i1 [ %42, %40 ]
  br label %50, !dbg !1151

50:                                               ; preds = %.loopexit14, %.loopexit5
  %51 = phi ptr [ %.lcssa58, %.loopexit5 ], [ %.lcssa51, %.loopexit14 ]
  %52 = phi ptr [ %.lcssa45, %.loopexit5 ], [ %.lcssa37, %.loopexit14 ]
  %53 = phi i1 [ true, %.loopexit5 ], [ %.lcssa21, %.loopexit14 ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1104, metadata !DIExpression()), !dbg !1134
  br label %29, !dbg !1151, !llvm.loop !1142

.loopexit6:                                       ; preds = %44
  %.lcssa93 = phi i1 [ %23, %44 ]
  %.lcssa84 = phi i1 [ %30, %44 ]
  %.lcssa73 = phi i1 [ %36, %44 ]
  %.lcssa59 = phi ptr [ %39, %44 ]
  %.lcssa46 = phi ptr [ %41, %44 ]
  br label %54, !dbg !1152

.loopexit15:                                      ; preds = %40
  %.lcssa88 = phi i1 [ %23, %40 ]
  %.lcssa78 = phi i1 [ %30, %40 ]
  %.lcssa66 = phi i1 [ %36, %40 ]
  %.lcssa52 = phi ptr [ %39, %40 ]
  %.lcssa38 = phi ptr [ %41, %40 ]
  %.lcssa22 = phi i1 [ %42, %40 ]
  br label %54, !dbg !1152

54:                                               ; preds = %.loopexit15, %.loopexit6
  %55 = phi i1 [ %.lcssa93, %.loopexit6 ], [ %.lcssa88, %.loopexit15 ]
  %56 = phi i1 [ %.lcssa84, %.loopexit6 ], [ %.lcssa78, %.loopexit15 ]
  %57 = phi i1 [ %.lcssa73, %.loopexit6 ], [ %.lcssa66, %.loopexit15 ]
  %58 = phi ptr [ %.lcssa59, %.loopexit6 ], [ %.lcssa52, %.loopexit15 ]
  %59 = phi ptr [ %.lcssa46, %.loopexit6 ], [ %.lcssa38, %.loopexit15 ]
  %60 = phi i1 [ true, %.loopexit6 ], [ %.lcssa22, %.loopexit15 ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1106, metadata !DIExpression()), !dbg !1134
  br label %8, !dbg !1152, !llvm.loop !1142

.loopexit7:                                       ; preds = %44
  br label %61, !dbg !1153

61:                                               ; preds = %.loopexit7, %40
  %62 = phi i1 [ %42, %40 ], [ true, %.loopexit7 ]
  %63 = load ptr, ptr @optarg, align 8, !dbg !1153, !tbaa !875
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !1102, metadata !DIExpression()), !dbg !1134
  br label %40, !dbg !1154, !llvm.loop !1142

.loopexit8:                                       ; preds = %44
  br label %64, !dbg !1155

.loopexit16:                                      ; preds = %40
  br label %64, !dbg !1155

64:                                               ; preds = %.loopexit16, %.loopexit8
  tail call void @usage(i32 noundef 0) #44, !dbg !1155
  unreachable, !dbg !1155

.loopexit9:                                       ; preds = %44, %44
  br label %65, !dbg !1156

.loopexit17:                                      ; preds = %40, %40
  br label %65, !dbg !1156

65:                                               ; preds = %.loopexit17, %.loopexit9
  %66 = load ptr, ptr @stdout, align 8, !dbg !1156, !tbaa !875
  %67 = load ptr, ptr @Version, align 8, !dbg !1156, !tbaa !875
  %68 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #40, !dbg !1156
  %69 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.20) #40, !dbg !1156
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef null) #40, !dbg !1156
  tail call void @exit(i32 noundef 0) #42, !dbg !1156
  unreachable, !dbg !1156

.loopexit:                                        ; preds = %44
  br label %70, !dbg !1157

.loopexit10:                                      ; preds = %40
  br label %70, !dbg !1157

70:                                               ; preds = %.loopexit10, %.loopexit
  tail call void @usage(i32 noundef 1) #44, !dbg !1157
  unreachable, !dbg !1157

.loopexit2:                                       ; preds = %44
  %.lcssa100 = phi i1 [ %9, %44 ]
  %.lcssa92 = phi i1 [ %23, %44 ]
  %.lcssa82 = phi i1 [ %30, %44 ]
  %.lcssa70 = phi i1 [ %36, %44 ]
  %.lcssa56 = phi ptr [ %39, %44 ]
  %.lcssa42 = phi ptr [ %41, %44 ]
  br label %71, !dbg !1158

.loopexit11:                                      ; preds = %40
  %.lcssa96 = phi i1 [ %9, %40 ]
  %.lcssa87 = phi i1 [ %23, %40 ]
  %.lcssa76 = phi i1 [ %30, %40 ]
  %.lcssa63 = phi i1 [ %36, %40 ]
  %.lcssa49 = phi ptr [ %39, %40 ]
  %.lcssa34 = phi ptr [ %41, %40 ]
  %.lcssa18 = phi i1 [ %42, %40 ]
  br label %71, !dbg !1158

71:                                               ; preds = %.loopexit11, %.loopexit2
  %72 = phi i1 [ %.lcssa100, %.loopexit2 ], [ %.lcssa96, %.loopexit11 ]
  %73 = phi i1 [ %.lcssa92, %.loopexit2 ], [ %.lcssa87, %.loopexit11 ]
  %74 = phi i1 [ %.lcssa82, %.loopexit2 ], [ %.lcssa76, %.loopexit11 ]
  %75 = phi i1 [ %.lcssa70, %.loopexit2 ], [ %.lcssa63, %.loopexit11 ]
  %76 = phi ptr [ %.lcssa56, %.loopexit2 ], [ %.lcssa49, %.loopexit11 ]
  %77 = phi ptr [ %.lcssa42, %.loopexit2 ], [ %.lcssa34, %.loopexit11 ]
  %78 = phi i1 [ true, %.loopexit2 ], [ %.lcssa18, %.loopexit11 ]
  %79 = load i32, ptr @optind, align 4, !dbg !1158, !tbaa !943
  %80 = sub nsw i32 %0, %79, !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1111, metadata !DIExpression()), !dbg !1134
  %81 = icmp sgt i32 %80, 1, !dbg !1160
  br i1 %81, label %82, label %84, !dbg !1162

82:                                               ; preds = %71
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1163
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %83) #40, !dbg !1163
  tail call void @usage(i32 noundef 1) #44, !dbg !1165
  unreachable, !dbg !1165

84:                                               ; preds = %71
  %85 = icmp eq i32 %79, %0, !dbg !1166
  br i1 %85, label %90, label %86, !dbg !1168

86:                                               ; preds = %84
  %87 = sext i32 %79 to i64, !dbg !1169
  %88 = getelementptr inbounds ptr, ptr %1, i64 %87, !dbg !1169
  %89 = load ptr, ptr %88, align 8, !dbg !1169, !tbaa !875
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !1101, metadata !DIExpression()), !dbg !1134
  br label %90

90:                                               ; preds = %84, %86
  %91 = phi i1 [ %75, %86 ], [ true, %84 ]
  %92 = phi ptr [ %89, %86 ], [ @.str.74, %84 ], !dbg !1171
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !1101, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1103, metadata !DIExpression()), !dbg !1134
  %93 = icmp eq ptr %77, null, !dbg !1172
  br i1 %93, label %112, label %94, !dbg !1173

94:                                               ; preds = %90
  %95 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %92) #41, !dbg !1174
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1112, metadata !DIExpression()), !dbg !1175
  %96 = icmp eq i64 %95, 0, !dbg !1176
  br i1 %96, label %102, label %97, !dbg !1178

97:                                               ; preds = %94
  %98 = add i64 %95, -1, !dbg !1179
  %99 = getelementptr inbounds i8, ptr %92, i64 %98, !dbg !1180
  %100 = load i8, ptr %99, align 1, !dbg !1180, !tbaa !952
  %101 = icmp eq i8 %100, 88, !dbg !1181
  br i1 %101, label %105, label %102, !dbg !1182

102:                                              ; preds = %97, %94
  %103 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1183
  %104 = tail call ptr @quote(ptr noundef %92) #40, !dbg !1183
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %103, ptr noundef %104) #40, !dbg !1183
  unreachable, !dbg !1183

105:                                              ; preds = %97
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %77) #41, !dbg !1185
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !1109, metadata !DIExpression()), !dbg !1134
  %107 = add i64 %95, 1, !dbg !1186
  %108 = add i64 %107, %106, !dbg !1187
  %109 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %108) #45, !dbg !1188
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !1110, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %109, metadata !1189, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata ptr %92, metadata !1196, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %95, metadata !1197, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %109, ptr noundef nonnull align 1 %92, i64 noundef %95, i1 noundef false) #40, !dbg !1200
  %110 = getelementptr inbounds i8, ptr %109, i64 %95, !dbg !1201
  %111 = add i64 %106, 1, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %110, metadata !1189, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %77, metadata !1196, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i64 %111, metadata !1197, metadata !DIExpression()), !dbg !1203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %110, ptr noundef nonnull align 1 %77, i64 noundef %111, i1 noundef false) #40, !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !1101, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !1102, metadata !DIExpression()), !dbg !1134
  br label %124, !dbg !1206

112:                                              ; preds = %90
  %113 = tail call noalias nonnull ptr @xstrdup(ptr noundef %92) #40, !dbg !1207
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !1101, metadata !DIExpression()), !dbg !1134
  %114 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %113, i32 noundef 88) #41, !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !1102, metadata !DIExpression()), !dbg !1134
  %115 = icmp eq ptr %114, null, !dbg !1210
  br i1 %115, label %116, label %119, !dbg !1212

116:                                              ; preds = %112
  %117 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %113), !dbg !1213
  %118 = getelementptr inbounds i8, ptr %113, i64 %117, !dbg !1213
  tail call void @llvm.dbg.value(metadata ptr %118, metadata !1102, metadata !DIExpression()), !dbg !1134
  br label %121, !dbg !1214

119:                                              ; preds = %112
  %120 = getelementptr inbounds i8, ptr %114, i64 1, !dbg !1215
  tail call void @llvm.dbg.value(metadata ptr %120, metadata !1102, metadata !DIExpression()), !dbg !1134
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi ptr [ %120, %119 ], [ %118, %116 ], !dbg !1216
  tail call void @llvm.dbg.value(metadata ptr %122, metadata !1102, metadata !DIExpression()), !dbg !1134
  %123 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %122) #41, !dbg !1217
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1109, metadata !DIExpression()), !dbg !1134
  br label %124

124:                                              ; preds = %121, %105
  %125 = phi i64 [ %106, %105 ], [ %123, %121 ], !dbg !1218
  %126 = phi ptr [ %109, %105 ], [ null, %121 ], !dbg !1134
  %127 = phi ptr [ %110, %105 ], [ %122, %121 ], !dbg !1218
  %128 = phi ptr [ %109, %105 ], [ %113, %121 ], !dbg !1218
  tail call void @llvm.dbg.value(metadata ptr %128, metadata !1101, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %127, metadata !1102, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %126, metadata !1110, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !1109, metadata !DIExpression()), !dbg !1134
  %129 = icmp eq i64 %125, 0, !dbg !1219
  br i1 %129, label %136, label %130, !dbg !1221

130:                                              ; preds = %124
  %131 = tail call ptr @last_component(ptr noundef nonnull %127) #41, !dbg !1222
  %132 = icmp eq ptr %131, %127, !dbg !1223
  br i1 %132, label %136, label %133, !dbg !1224

133:                                              ; preds = %130
  %134 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1225
  %135 = tail call ptr @quote(ptr noundef nonnull %127) #40, !dbg !1225
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %134, ptr noundef %135) #40, !dbg !1225
  unreachable, !dbg !1225

136:                                              ; preds = %130, %124
  %137 = ptrtoint ptr %127 to i64, !dbg !1227
  %138 = ptrtoint ptr %128 to i64, !dbg !1227
  %139 = sub i64 %137, %138, !dbg !1227
  tail call void @llvm.dbg.value(metadata ptr %128, metadata !1228, metadata !DIExpression()), !dbg !1235
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1233, metadata !DIExpression()), !dbg !1235
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1234, metadata !DIExpression()), !dbg !1235
  %140 = getelementptr i8, ptr %128, i64 -1, !dbg !1237
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1234, metadata !DIExpression()), !dbg !1235
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1233, metadata !DIExpression()), !dbg !1235
  %141 = icmp eq i64 %139, 0, !dbg !1238
  br i1 %141, label %155, label %.preheader, !dbg !1241

.preheader:                                       ; preds = %136
  br label %142, !dbg !1242

142:                                              ; preds = %.preheader, %148
  %143 = phi i64 [ %149, %148 ], [ 0, %.preheader ]
  %144 = phi i64 [ %150, %148 ], [ %139, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !1234, metadata !DIExpression()), !dbg !1235
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1233, metadata !DIExpression()), !dbg !1235
  %145 = getelementptr i8, ptr %140, i64 %144, !dbg !1243
  %146 = load i8, ptr %145, align 1, !dbg !1243, !tbaa !952
  %147 = icmp eq i8 %146, 88, !dbg !1244
  br i1 %147, label %148, label %152, !dbg !1242

148:                                              ; preds = %142
  %149 = add nuw i64 %143, 1, !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !1234, metadata !DIExpression()), !dbg !1235
  %150 = add i64 %144, -1, !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !1233, metadata !DIExpression()), !dbg !1235
  %151 = icmp eq i64 %150, 0, !dbg !1238
  br i1 %151, label %152, label %142, !dbg !1241, !llvm.loop !1247

152:                                              ; preds = %142, %148
  %153 = phi i64 [ %139, %148 ], [ %143, %142 ], !dbg !1235
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !1108, metadata !DIExpression()), !dbg !1134
  %154 = icmp ult i64 %153, 3, !dbg !1249
  br i1 %154, label %155, label %162, !dbg !1251

155:                                              ; preds = %136, %152
  %156 = icmp eq ptr %128, %126, !dbg !1252
  br i1 %156, label %157, label %159, !dbg !1255

157:                                              ; preds = %155
  %158 = getelementptr inbounds i8, ptr %126, i64 %139, !dbg !1256
  store i8 0, ptr %158, align 1, !dbg !1257, !tbaa !952
  br label %159, !dbg !1256

159:                                              ; preds = %157, %155
  %160 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1258
  %161 = tail call ptr @quote(ptr noundef nonnull %128) #40, !dbg !1258
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %160, ptr noundef %161) #40, !dbg !1258
  unreachable, !dbg !1258

162:                                              ; preds = %152
  br i1 %91, label %163, label %205, !dbg !1259

163:                                              ; preds = %162
  br i1 %74, label %164, label %183, !dbg !1260

164:                                              ; preds = %163
  %165 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #40, !dbg !1261
  tail call void @llvm.dbg.value(metadata ptr %165, metadata !1115, metadata !DIExpression()), !dbg !1262
  %166 = icmp eq ptr %165, null, !dbg !1263
  br i1 %166, label %170, label %167, !dbg !1265

167:                                              ; preds = %164
  %168 = load i8, ptr %165, align 1, !dbg !1266, !tbaa !952
  %169 = icmp eq i8 %168, 0, !dbg !1266
  br i1 %169, label %170, label %176, !dbg !1267

170:                                              ; preds = %167, %164
  %171 = icmp eq ptr %76, null, !dbg !1268
  br i1 %171, label %175, label %172, !dbg !1270

172:                                              ; preds = %170
  %173 = load i8, ptr %76, align 1, !dbg !1271, !tbaa !952
  %174 = icmp eq i8 %173, 0, !dbg !1271
  br i1 %174, label %175, label %176, !dbg !1272

175:                                              ; preds = %172, %170
  tail call void @llvm.dbg.value(metadata ptr @.str.26, metadata !1097, metadata !DIExpression()), !dbg !1134
  br label %176

176:                                              ; preds = %172, %167, %175
  %177 = phi ptr [ @.str.26, %175 ], [ %165, %167 ], [ %76, %172 ], !dbg !1273
  tail call void @llvm.dbg.value(metadata ptr %177, metadata !1097, metadata !DIExpression()), !dbg !1134
  %178 = tail call ptr @last_component(ptr noundef nonnull %128) #41, !dbg !1274
  %179 = icmp eq ptr %178, %128, !dbg !1276
  br i1 %179, label %202, label %180, !dbg !1277

180:                                              ; preds = %176
  %181 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !1278
  %182 = tail call ptr @quote(ptr noundef nonnull %128) #40, !dbg !1278
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %181, ptr noundef %182) #40, !dbg !1278
  unreachable, !dbg !1278

183:                                              ; preds = %163
  %184 = icmp eq ptr %76, null, !dbg !1279
  br i1 %184, label %188, label %185, !dbg !1280

185:                                              ; preds = %183
  %186 = load i8, ptr %76, align 1, !dbg !1281, !tbaa !952
  %187 = icmp eq i8 %186, 0, !dbg !1281
  br i1 %187, label %188, label %195, !dbg !1282

188:                                              ; preds = %185, %183
  %189 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #40, !dbg !1283
  tail call void @llvm.dbg.value(metadata ptr %189, metadata !1120, metadata !DIExpression()), !dbg !1284
  %190 = icmp eq ptr %189, null, !dbg !1285
  br i1 %190, label %195, label %191, !dbg !1286

191:                                              ; preds = %188
  %192 = load i8, ptr %189, align 1, !dbg !1287, !tbaa !952
  %193 = icmp eq i8 %192, 0, !dbg !1287
  %194 = select i1 %193, ptr @.str.26, ptr %189, !dbg !1285
  br label %195, !dbg !1285

195:                                              ; preds = %188, %191, %185
  %196 = phi ptr [ %76, %185 ], [ @.str.26, %188 ], [ %194, %191 ], !dbg !1288
  tail call void @llvm.dbg.value(metadata ptr %196, metadata !1097, metadata !DIExpression()), !dbg !1134
  %197 = load i8, ptr %128, align 1, !dbg !1289, !tbaa !952
  %198 = icmp eq i8 %197, 47, !dbg !1289
  br i1 %198, label %199, label %202, !dbg !1291

199:                                              ; preds = %195
  %200 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !1292
  %201 = tail call ptr @quote(ptr noundef nonnull %128) #40, !dbg !1292
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %200, ptr noundef %201) #40, !dbg !1292
  unreachable, !dbg !1292

202:                                              ; preds = %176, %195
  %203 = phi ptr [ %196, %195 ], [ %177, %176 ], !dbg !1293
  tail call void @llvm.dbg.value(metadata ptr %203, metadata !1097, metadata !DIExpression()), !dbg !1134
  %204 = tail call noalias nonnull ptr @file_name_concat(ptr noundef %203, ptr noundef nonnull %128, ptr noundef null) #40, !dbg !1294
  tail call void @llvm.dbg.value(metadata ptr %204, metadata !1110, metadata !DIExpression()), !dbg !1134
  tail call void @free(ptr noundef nonnull %128) #40, !dbg !1295
  tail call void @llvm.dbg.value(metadata ptr %204, metadata !1101, metadata !DIExpression()), !dbg !1134
  br label %205, !dbg !1296

205:                                              ; preds = %202, %162
  %206 = phi ptr [ %204, %202 ], [ %128, %162 ], !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %206, metadata !1101, metadata !DIExpression()), !dbg !1134
  %207 = tail call noalias nonnull ptr @xstrdup(ptr noundef %206) #40, !dbg !1297
  tail call void @llvm.dbg.value(metadata ptr %207, metadata !1110, metadata !DIExpression()), !dbg !1134
  %208 = trunc i64 %125 to i32, !dbg !1298
  br i1 %73, label %209, label %219, !dbg !1299

209:                                              ; preds = %205
  call void @llvm.dbg.value(metadata ptr %207, metadata !1300, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i64 %125, metadata !1305, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i64 %153, metadata !1306, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i1 %72, metadata !1307, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1308
  %210 = select i1 %72, i32 2, i32 1, !dbg !1310
  %211 = tail call i32 @gen_tempname_len(ptr noundef nonnull %207, i32 noundef %208, i32 noundef 0, i32 noundef %210, i64 noundef %153) #40, !dbg !1311
  tail call void @llvm.dbg.value(metadata i32 %211, metadata !1124, metadata !DIExpression()), !dbg !1312
  %212 = icmp eq i32 %211, 0, !dbg !1313
  %213 = select i1 %212, i1 true, i1 %78, !dbg !1315
  br i1 %213, label %236, label %214, !dbg !1315

214:                                              ; preds = %209
  %215 = tail call ptr @__errno_location() #43, !dbg !1316
  %216 = load i32, ptr %215, align 4, !dbg !1316, !tbaa !943
  %217 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1316
  %218 = tail call ptr @quote(ptr noundef %206) #40, !dbg !1316
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %216, ptr noundef %217, ptr noundef %218) #40, !dbg !1316
  br label %252, !dbg !1316

219:                                              ; preds = %205
  call void @llvm.dbg.value(metadata ptr %207, metadata !1319, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %125, metadata !1322, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %153, metadata !1323, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i1 %72, metadata !1324, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1325
  %220 = select i1 %72, i32 2, i32 0, !dbg !1327
  %221 = tail call i32 @gen_tempname_len(ptr noundef nonnull %207, i32 noundef %208, i32 noundef 0, i32 noundef %220, i64 noundef %153) #40, !dbg !1328
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !1127, metadata !DIExpression()), !dbg !1329
  %222 = icmp slt i32 %221, 0, !dbg !1330
  br i1 %222, label %230, label %223, !dbg !1332

223:                                              ; preds = %219
  br i1 %72, label %224, label %226, !dbg !1333

224:                                              ; preds = %223
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()), !dbg !1134
  %225 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %207), !dbg !1334
  br label %252, !dbg !1335

226:                                              ; preds = %223
  %227 = tail call i32 @close(i32 noundef %221) #40, !dbg !1336
  %228 = icmp eq i32 %227, 0, !dbg !1337
  %229 = select i1 %228, i1 true, i1 %78, !dbg !1338
  br i1 %229, label %237, label %231, !dbg !1338

230:                                              ; preds = %219
  br i1 %78, label %252, label %231, !dbg !1339

231:                                              ; preds = %226, %230
  %232 = tail call ptr @__errno_location() #43, !dbg !1341
  %233 = load i32, ptr %232, align 4, !dbg !1341, !tbaa !943
  %234 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1341
  %235 = tail call ptr @quote(ptr noundef %206) #40, !dbg !1341
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %233, ptr noundef %234, ptr noundef %235) #40, !dbg !1341
  br label %252, !dbg !1341

236:                                              ; preds = %209
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1107, metadata !DIExpression()), !dbg !1134
  br i1 %212, label %240, label %252, !dbg !1343

237:                                              ; preds = %226
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1107, metadata !DIExpression()), !dbg !1134
  br i1 %228, label %238, label %252, !dbg !1343

238:                                              ; preds = %237
  %239 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %207), !dbg !1334
  br label %242, !dbg !1335

240:                                              ; preds = %236
  %241 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %207), !dbg !1334
  br i1 %72, label %252, label %242, !dbg !1335

242:                                              ; preds = %238, %240
  store i1 true, ptr @stdout_closed, align 1, !dbg !1344
  %243 = load ptr, ptr @stdout, align 8, !dbg !1345, !tbaa !875
  %244 = tail call i32 @close_stream(ptr noundef %243) #40, !dbg !1346
  %245 = icmp eq i32 %244, 0, !dbg !1347
  br i1 %245, label %252, label %246, !dbg !1348

246:                                              ; preds = %242
  %247 = tail call ptr @__errno_location() #43, !dbg !1349
  %248 = load i32, ptr %247, align 4, !dbg !1349, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %248, metadata !1129, metadata !DIExpression()), !dbg !1350
  %249 = tail call i32 @remove(ptr noundef nonnull %207) #40, !dbg !1351
  br i1 %78, label %252, label %250, !dbg !1352

250:                                              ; preds = %246
  %251 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1353
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %248, ptr noundef %251) #40, !dbg !1353
  br label %252, !dbg !1353

252:                                              ; preds = %230, %231, %214, %237, %224, %246, %250, %240, %242, %236
  %253 = phi i32 [ 0, %240 ], [ 0, %242 ], [ 1, %236 ], [ 1, %250 ], [ 1, %246 ], [ 0, %224 ], [ 1, %237 ], [ 1, %214 ], [ 1, %231 ], [ 1, %230 ], !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 %253, metadata !1107, metadata !DIExpression()), !dbg !1134
  ret i32 %253, !dbg !1355
}

; Function Attrs: nounwind
declare !dbg !1356 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1359 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @maybe_close_stdout() #10 !dbg !1360 {
  %1 = load i1, ptr @stdout_closed, align 1, !dbg !1361
  br i1 %1, label %3, label %2, !dbg !1363

2:                                                ; preds = %0
  tail call void @close_stdout() #40, !dbg !1364
  br label %8, !dbg !1364

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !1365, !tbaa !875
  %5 = tail call i32 @close_stream(ptr noundef %4) #40, !dbg !1367
  %6 = icmp eq i32 %5, 0, !dbg !1368
  br i1 %6, label %8, label %7, !dbg !1369

7:                                                ; preds = %3
  tail call void @_exit(i32 noundef 1) #42, !dbg !1370
  unreachable, !dbg !1370

8:                                                ; preds = %3, %2
  ret void, !dbg !1371
}

; Function Attrs: nounwind
declare !dbg !1372 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1375 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1381 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1384 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1385 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1388 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1392 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1395 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1399 noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn
declare !dbg !1400 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1401 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1403, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1404, metadata !DIExpression()), !dbg !1408
  br label %2, !dbg !1409

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1408
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1404, metadata !DIExpression()), !dbg !1408
  %4 = load i8, ptr %3, align 1, !dbg !1410, !tbaa !952
  %5 = icmp eq i8 %4, 47, !dbg !1410
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1411
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1404, metadata !DIExpression()), !dbg !1408
  br i1 %5, label %2, label %.preheader, !dbg !1409, !llvm.loop !1412

.preheader:                                       ; preds = %2
  %.lcssa2 = phi ptr [ %3, %2 ], !dbg !1408
  %.lcssa1 = phi i8 [ %4, %2 ], !dbg !1410
  br label %7, !dbg !1413

7:                                                ; preds = %.preheader, %15
  %8 = phi i8 [ %19, %15 ], [ %.lcssa1, %.preheader ], !dbg !1414
  %9 = phi ptr [ %16, %15 ], [ %.lcssa2, %.preheader ], !dbg !1416
  %10 = phi i1 [ %17, %15 ], [ false, %.preheader ]
  %11 = phi ptr [ %18, %15 ], [ %.lcssa2, %.preheader ], !dbg !1417
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1406, metadata !DIExpression()), !dbg !1418
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1405, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1404, metadata !DIExpression()), !dbg !1408
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !1413

12:                                               ; preds = %7
  %.lcssa = phi ptr [ %9, %7 ], !dbg !1416
  ret ptr %.lcssa, !dbg !1419

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !1420
  br label %15, !dbg !1420

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !1408
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1405, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1404, metadata !DIExpression()), !dbg !1408
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1423
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !1406, metadata !DIExpression()), !dbg !1418
  %19 = load i8, ptr %18, align 1, !dbg !1414, !tbaa !952
  br label %7, !dbg !1424, !llvm.loop !1425
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1427 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1431, metadata !DIExpression()), !dbg !1434
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !1435
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1432, metadata !DIExpression()), !dbg !1434
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1432, metadata !DIExpression()), !dbg !1434
  %4 = icmp ugt i64 %2, 1, !dbg !1438
  br i1 %4, label %.preheader, label %13, !dbg !1440

.preheader:                                       ; preds = %1
  br label %5, !dbg !1441

5:                                                ; preds = %.preheader, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1432, metadata !DIExpression()), !dbg !1434
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !1442
  %8 = load i8, ptr %7, align 1, !dbg !1442, !tbaa !952
  %9 = icmp eq i8 %8, 47, !dbg !1442
  br i1 %9, label %10, label %.loopexit, !dbg !1441

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !1443
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1432, metadata !DIExpression()), !dbg !1434
  %12 = icmp ugt i64 %11, 1, !dbg !1438
  br i1 %12, label %5, label %.loopexit, !dbg !1440, !llvm.loop !1444

.loopexit:                                        ; preds = %10, %5
  %.ph = phi i64 [ %6, %5 ], [ 1, %10 ]
  br label %13, !dbg !1446

13:                                               ; preds = %.loopexit, %1
  %14 = phi i64 [ %2, %1 ], [ %.ph, %.loopexit ], !dbg !1447
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1433, metadata !DIExpression()), !dbg !1434
  ret i64 %14, !dbg !1446
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !1448 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1486, metadata !DIExpression()), !dbg !1491
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !1492
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1487, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1491
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1493, metadata !DIExpression()), !dbg !1497
  %3 = load i32, ptr %0, align 8, !dbg !1499, !tbaa !1500
  %4 = and i32 %3, 32, !dbg !1503
  %5 = icmp eq i32 %4, 0, !dbg !1503
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1491
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !1504
  %7 = icmp eq i32 %6, 0, !dbg !1505
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !1490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1491
  br i1 %5, label %8, label %18, !dbg !1506

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !1508
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1487, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1491
  %10 = select i1 %7, i1 true, i1 %9, !dbg !1509
  %11 = xor i1 %7, true, !dbg !1509
  %12 = sext i1 %11 to i32, !dbg !1509
  br i1 %10, label %21, label %13, !dbg !1509

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !1510
  %15 = load i32, ptr %14, align 4, !dbg !1510, !tbaa !943
  %16 = icmp ne i32 %15, 9, !dbg !1511
  %17 = sext i1 %16 to i32, !dbg !1512
  br label %21, !dbg !1512

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !1513

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !1515
  store i32 0, ptr %20, align 4, !dbg !1517, !tbaa !943
  br label %21, !dbg !1515

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !1491
  ret i32 %22, !dbg !1518
}

; Function Attrs: nounwind
declare !dbg !1519 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1525, metadata !DIExpression()), !dbg !1526
  store ptr %0, ptr @file_name, align 8, !dbg !1527, !tbaa !875
  ret void, !dbg !1528
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1529 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1533, metadata !DIExpression()), !dbg !1534
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1535, !tbaa !1536
  ret void, !dbg !1538
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() local_unnamed_addr #10 !dbg !1539 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1544, !tbaa !875
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1545
  %3 = icmp eq i32 %2, 0, !dbg !1546
  br i1 %3, label %22, label %4, !dbg !1547

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1548, !tbaa !1536, !range !1549, !noundef !911
  %6 = icmp eq i8 %5, 0, !dbg !1548
  br i1 %6, label %11, label %7, !dbg !1550

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1551
  %9 = load i32, ptr %8, align 4, !dbg !1551, !tbaa !943
  %10 = icmp eq i32 %9, 32, !dbg !1552
  br i1 %10, label %22, label %11, !dbg !1553

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1.44, i32 noundef 5) #40, !dbg !1554
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1541, metadata !DIExpression()), !dbg !1555
  %13 = load ptr, ptr @file_name, align 8, !dbg !1556, !tbaa !875
  %14 = icmp eq ptr %13, null, !dbg !1556
  %15 = tail call ptr @__errno_location() #43, !dbg !1558
  %16 = load i32, ptr %15, align 4, !dbg !1558, !tbaa !943
  br i1 %14, label %19, label %17, !dbg !1559

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1560
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.45, ptr noundef %18, ptr noundef %12) #40, !dbg !1560
  br label %20, !dbg !1560

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.46, ptr noundef %12) #40, !dbg !1561
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1562, !tbaa !943
  tail call void @_exit(i32 noundef %21) #42, !dbg !1563
  unreachable, !dbg !1563

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1564, !tbaa !875
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1566
  %25 = icmp eq i32 %24, 0, !dbg !1567
  br i1 %25, label %28, label %26, !dbg !1568

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1569, !tbaa !943
  tail call void @_exit(i32 noundef %27) #42, !dbg !1570
  unreachable, !dbg !1570

28:                                               ; preds = %22
  ret void, !dbg !1571
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1572 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1576, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1577, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1578, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1579, metadata !DIExpression(DW_OP_deref)), !dbg !1580
  tail call fastcc void @flush_stdout(), !dbg !1581
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1582, !tbaa !875
  %7 = icmp eq ptr %6, null, !dbg !1582
  br i1 %7, label %9, label %8, !dbg !1584

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1585
  br label %13, !dbg !1585

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1586, !tbaa !875
  %11 = tail call ptr @getprogname() #41, !dbg !1586
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef %11) #40, !dbg !1586
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1588, !tbaa.struct !1589
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1588
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1588
  ret void, !dbg !1590
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1591 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1593, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 1, metadata !1595, metadata !DIExpression()), !dbg !1598
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1601
  %2 = icmp slt i32 %1, 0, !dbg !1602
  br i1 %2, label %6, label %3, !dbg !1603

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1604, !tbaa !875
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1604
  br label %6, !dbg !1604

6:                                                ; preds = %3, %0
  ret void, !dbg !1605
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1606 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1612
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1608, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1609, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1610, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1611, metadata !DIExpression(DW_OP_deref)), !dbg !1613
  %7 = load ptr, ptr @stderr, align 8, !dbg !1614, !tbaa !875
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1615, !noalias !1659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1663
  call void @llvm.dbg.value(metadata ptr %7, metadata !1655, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata ptr %2, metadata !1656, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata ptr poison, metadata !1657, metadata !DIExpression(DW_OP_deref)), !dbg !1664
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1615
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1615, !noalias !1659
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1665, !tbaa !943
  %10 = add i32 %9, 1, !dbg !1665
  store i32 %10, ptr @error_message_count, align 4, !dbg !1665, !tbaa !943
  %11 = icmp eq i32 %1, 0, !dbg !1666
  br i1 %11, label %21, label %12, !dbg !1668

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1669, metadata !DIExpression(), metadata !1612, metadata ptr %5, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %1, metadata !1672, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1679
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1680
  call void @llvm.dbg.value(metadata ptr %13, metadata !1673, metadata !DIExpression()), !dbg !1677
  %14 = icmp eq ptr %13, null, !dbg !1681
  br i1 %14, label %15, label %17, !dbg !1683

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.48, ptr noundef nonnull @.str.5.49, i32 noundef 5) #40, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %16, metadata !1673, metadata !DIExpression()), !dbg !1677
  br label %17, !dbg !1685

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1677
  call void @llvm.dbg.value(metadata ptr %18, metadata !1673, metadata !DIExpression()), !dbg !1677
  %19 = load ptr, ptr @stderr, align 8, !dbg !1686, !tbaa !875
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.50, ptr noundef %18) #40, !dbg !1686
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1687
  br label %21, !dbg !1688

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1689, !tbaa !875
  call void @llvm.dbg.value(metadata i32 10, metadata !1690, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata ptr %22, metadata !1695, metadata !DIExpression()), !dbg !1696
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1698
  %24 = load ptr, ptr %23, align 8, !dbg !1698, !tbaa !1699
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1698
  %26 = load ptr, ptr %25, align 8, !dbg !1698, !tbaa !1700
  %27 = icmp ult ptr %24, %26, !dbg !1698
  br i1 %27, label %30, label %28, !dbg !1698, !prof !1701

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !1698
  br label %32, !dbg !1698

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1698
  store ptr %31, ptr %23, align 8, !dbg !1698, !tbaa !1699
  store i8 10, ptr %24, align 1, !dbg !1698, !tbaa !952
  br label %32, !dbg !1698

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1702, !tbaa !875
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !1702
  %35 = icmp eq i32 %0, 0, !dbg !1703
  br i1 %35, label %37, label %36, !dbg !1705

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !1706
  unreachable, !dbg !1706

37:                                               ; preds = %32
  ret void, !dbg !1707
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1708 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1711 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1714 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1717 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1720 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1724 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1731, metadata !DIExpression(), metadata !1732, metadata ptr %4, metadata !DIExpression()), !dbg !1733
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1728, metadata !DIExpression()), !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1729, metadata !DIExpression()), !dbg !1733
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1730, metadata !DIExpression()), !dbg !1733
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1734
  call void @llvm.va_start(ptr nonnull %4), !dbg !1735
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1736, !tbaa.struct !1589
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !1736
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1736
  call void @llvm.va_end(ptr nonnull %4), !dbg !1737
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1738
  ret void, !dbg !1738
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !445 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !461, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !462, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !463, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !464, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !465, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !466, metadata !DIExpression(DW_OP_deref)), !dbg !1739
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1740, !tbaa !943
  %9 = icmp eq i32 %8, 0, !dbg !1740
  br i1 %9, label %24, label %10, !dbg !1742

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1743, !tbaa !943
  %12 = icmp eq i32 %11, %3, !dbg !1746
  br i1 %12, label %13, label %23, !dbg !1747

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1748, !tbaa !875
  %15 = icmp eq ptr %14, %2, !dbg !1749
  br i1 %15, label %37, label %16, !dbg !1750

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1751
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1752
  br i1 %19, label %20, label %23, !dbg !1752

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1753
  %22 = icmp eq i32 %21, 0, !dbg !1754
  br i1 %22, label %37, label %23, !dbg !1755

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1756, !tbaa !875
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1757, !tbaa !943
  br label %24, !dbg !1758

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1759
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1760, !tbaa !875
  %26 = icmp eq ptr %25, null, !dbg !1760
  br i1 %26, label %28, label %27, !dbg !1762

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !1763
  br label %32, !dbg !1763

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1764, !tbaa !875
  %30 = tail call ptr @getprogname() #41, !dbg !1764
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.53, ptr noundef %30) #40, !dbg !1764
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1766, !tbaa !875
  %34 = icmp eq ptr %2, null, !dbg !1766
  %35 = select i1 %34, ptr @.str.3.54, ptr @.str.2.55, !dbg !1766
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !1766
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1767, !tbaa.struct !1589
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1767
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1767
  br label %37, !dbg !1768

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1768
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1769 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1778, metadata !DIExpression(), metadata !1779, metadata ptr %6, metadata !DIExpression()), !dbg !1780
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1773, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1774, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1775, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1776, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1777, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1781
  call void @llvm.va_start(ptr nonnull %6), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1783, !tbaa.struct !1589
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !1783
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1783
  call void @llvm.va_end(ptr nonnull %6), !dbg !1784
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1785
  ret void, !dbg !1785
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1786 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1824, metadata !DIExpression()), !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1825, metadata !DIExpression()), !dbg !1828
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1826, metadata !DIExpression()), !dbg !1828
  %3 = icmp slt i32 %2, 0, !dbg !1830
  br i1 %3, label %4, label %6, !dbg !1832

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1833
  br label %24, !dbg !1834

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !1835
  %8 = icmp eq i32 %7, 0, !dbg !1835
  br i1 %8, label %13, label %9, !dbg !1837

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1838
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !1839
  %12 = icmp eq i64 %11, -1, !dbg !1840
  br i1 %12, label %16, label %13, !dbg !1841

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !1842
  %15 = icmp eq i32 %14, 0, !dbg !1842
  br i1 %15, label %16, label %18, !dbg !1843

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1825, metadata !DIExpression()), !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1828
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1844
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1827, metadata !DIExpression()), !dbg !1828
  br label %24, !dbg !1845

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !1846
  %20 = load i32, ptr %19, align 4, !dbg !1846, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1825, metadata !DIExpression()), !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1828
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1844
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1827, metadata !DIExpression()), !dbg !1828
  %22 = icmp eq i32 %20, 0, !dbg !1847
  br i1 %22, label %24, label %23, !dbg !1845

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1849, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1827, metadata !DIExpression()), !dbg !1828
  br label %24, !dbg !1851

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1828
  ret i32 %25, !dbg !1852
}

; Function Attrs: nofree nounwind
declare !dbg !1853 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1854 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1855 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1856 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !1859 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1897, metadata !DIExpression()), !dbg !1898
  %2 = icmp eq ptr %0, null, !dbg !1899
  br i1 %2, label %6, label %3, !dbg !1901

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !1902
  %5 = icmp eq i32 %4, 0, !dbg !1902
  br i1 %5, label %6, label %8, !dbg !1903

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !1904
  br label %16, !dbg !1905

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !1906, metadata !DIExpression()), !dbg !1911
  %9 = load i32, ptr %0, align 8, !dbg !1913, !tbaa !1500
  %10 = and i32 %9, 256, !dbg !1915
  %11 = icmp eq i32 %10, 0, !dbg !1915
  br i1 %11, label %14, label %12, !dbg !1916

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !1917
  br label %14, !dbg !1917

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !1918
  br label %16, !dbg !1919

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !1898
  ret i32 %17, !dbg !1920
}

; Function Attrs: nofree nounwind
declare !dbg !1921 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @file_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1922 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1926, metadata !DIExpression()), !dbg !1930
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1927, metadata !DIExpression()), !dbg !1930
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1928, metadata !DIExpression()), !dbg !1930
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #40, !dbg !1931
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1929, metadata !DIExpression()), !dbg !1930
  %5 = icmp eq ptr %4, null, !dbg !1932
  br i1 %5, label %6, label %7, !dbg !1934

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !1935
  unreachable, !dbg !1935

7:                                                ; preds = %3
  ret ptr %4, !dbg !1936
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #20 !dbg !1937 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1939, metadata !DIExpression()), !dbg !1950
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !1950
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1941, metadata !DIExpression()), !dbg !1950
  %4 = tail call ptr @last_component(ptr noundef %0) #41, !dbg !1951
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1942, metadata !DIExpression()), !dbg !1950
  %5 = tail call i64 @base_len(ptr noundef %4) #41, !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1943, metadata !DIExpression()), !dbg !1950
  %6 = ptrtoint ptr %4 to i64, !dbg !1953
  %7 = ptrtoint ptr %0 to i64, !dbg !1953
  %8 = sub i64 %6, %7, !dbg !1953
  %9 = add i64 %8, %5, !dbg !1954
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1944, metadata !DIExpression()), !dbg !1950
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1945, metadata !DIExpression()), !dbg !1950
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !1950
  %11 = icmp eq i64 %5, 0, !dbg !1956
  br i1 %11, label %21, label %12, !dbg !1958

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i64 %9, !dbg !1959
  %14 = getelementptr i8, ptr %13, i64 -1, !dbg !1959
  %15 = load i8, ptr %14, align 1, !dbg !1959, !tbaa !952
  %16 = icmp eq i8 %15, 47, !dbg !1959
  br i1 %16, label %25, label %17, !dbg !1962

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1963, !tbaa !952
  %19 = icmp ne i8 %18, 47, !dbg !1963
  %20 = select i1 %19, i8 47, i8 0, !dbg !1964
  br label %25, !dbg !1964

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1965, !tbaa !952
  %23 = icmp eq i8 %22, 47, !dbg !1965
  %24 = select i1 %23, i8 46, i8 0, !dbg !1967
  br label %25, !dbg !1967

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1950
  %28 = zext i1 %26 to i64, !dbg !1950
  tail call void @llvm.dbg.value(metadata i8 %27, metadata !1946, metadata !DIExpression()), !dbg !1950
  %29 = add i64 %10, 1, !dbg !1968
  %30 = add i64 %29, %9, !dbg !1969
  %31 = add i64 %30, %28, !dbg !1970
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #45, !dbg !1971
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !1947, metadata !DIExpression()), !dbg !1950
  %33 = icmp eq ptr %32, null, !dbg !1972
  br i1 %33, label %41, label %34, !dbg !1974

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata ptr %0, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %9, metadata !1979, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #40, !dbg !1982
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1982
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !1948, metadata !DIExpression()), !dbg !1983
  store i8 %27, ptr %35, align 1, !dbg !1984, !tbaa !952
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1985
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1948, metadata !DIExpression()), !dbg !1983
  %37 = icmp eq ptr %2, null, !dbg !1986
  br i1 %37, label %39, label %38, !dbg !1988

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1989, !tbaa !875
  br label %39, !dbg !1990

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1975, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata ptr %1, metadata !1978, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %10, metadata !1979, metadata !DIExpression()), !dbg !1991
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #40, !dbg !1993
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1993
  tail call void @llvm.dbg.value(metadata ptr %40, metadata !1948, metadata !DIExpression()), !dbg !1983
  store i8 0, ptr %40, align 1, !dbg !1994, !tbaa !952
  br label %41, !dbg !1995

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !1996
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1997 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2000 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2039, metadata !DIExpression()), !dbg !2045
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2040, metadata !DIExpression()), !dbg !2045
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2041, metadata !DIExpression()), !dbg !2045
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2046
  %5 = load ptr, ptr %4, align 8, !dbg !2046, !tbaa !2047
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2048
  %7 = load ptr, ptr %6, align 8, !dbg !2048, !tbaa !2049
  %8 = icmp eq ptr %5, %7, !dbg !2050
  br i1 %8, label %9, label %27, !dbg !2051

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2052
  %11 = load ptr, ptr %10, align 8, !dbg !2052, !tbaa !1699
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2053
  %13 = load ptr, ptr %12, align 8, !dbg !2053, !tbaa !2054
  %14 = icmp eq ptr %11, %13, !dbg !2055
  br i1 %14, label %15, label %27, !dbg !2056

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2057
  %17 = load ptr, ptr %16, align 8, !dbg !2057, !tbaa !2058
  %18 = icmp eq ptr %17, null, !dbg !2059
  br i1 %18, label %19, label %27, !dbg !2060

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2061
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2042, metadata !DIExpression()), !dbg !2063
  %22 = icmp eq i64 %21, -1, !dbg !2064
  br i1 %22, label %29, label %23, !dbg !2066

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2067, !tbaa !1500
  %25 = and i32 %24, -17, !dbg !2067
  store i32 %25, ptr %0, align 8, !dbg !2067, !tbaa !1500
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2068
  store i64 %21, ptr %26, align 8, !dbg !2069, !tbaa !2070
  br label %29, !dbg !2071

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2072
  br label %29, !dbg !2073

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2045
  ret i32 %30, !dbg !2074
}

; Function Attrs: nofree nounwind
declare !dbg !2075 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2078 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2081, !tbaa !875
  ret ptr %1, !dbg !2082
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2083 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2085, metadata !DIExpression()), !dbg !2088
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2089
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2086, metadata !DIExpression()), !dbg !2088
  %3 = icmp eq ptr %2, null, !dbg !2090
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2090
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2087, metadata !DIExpression()), !dbg !2088
  %6 = ptrtoint ptr %5 to i64, !dbg !2091
  %7 = ptrtoint ptr %0 to i64, !dbg !2091
  %8 = sub i64 %6, %7, !dbg !2091
  %9 = icmp sgt i64 %8, 6, !dbg !2093
  br i1 %9, label %10, label %19, !dbg !2094

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2095
  call void @llvm.dbg.value(metadata ptr %11, metadata !2096, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata ptr @.str.75, metadata !2101, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 7, metadata !2102, metadata !DIExpression()), !dbg !2103
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.75, i64 7), !dbg !2105
  %13 = icmp eq i32 %12, 0, !dbg !2106
  br i1 %13, label %14, label %19, !dbg !2107

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2085, metadata !DIExpression()), !dbg !2088
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.76, i64 noundef 3) #41, !dbg !2108
  %16 = icmp eq i32 %15, 0, !dbg !2111
  %17 = select i1 %16, i64 3, i64 0, !dbg !2112
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2112
  br label %19, !dbg !2112

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2088
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2087, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2085, metadata !DIExpression()), !dbg !2088
  store ptr %20, ptr @program_name, align 8, !dbg !2113, !tbaa !875
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2114, !tbaa !875
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2115, !tbaa !875
  ret void, !dbg !2116
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !503 {
  %3 = alloca i32, align 4, !DIAssignID !2117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !513, metadata !DIExpression(), metadata !2117, metadata ptr %3, metadata !DIExpression()), !dbg !2118
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !518, metadata !DIExpression(), metadata !2119, metadata ptr %4, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !510, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !511, metadata !DIExpression()), !dbg !2118
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2120
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !512, metadata !DIExpression()), !dbg !2118
  %6 = icmp eq ptr %5, %0, !dbg !2121
  br i1 %6, label %7, label %14, !dbg !2123

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %4, metadata !2126, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata ptr %4, metadata !2135, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i32 0, metadata !2140, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i64 8, metadata !2141, metadata !DIExpression()), !dbg !2142
  store i64 0, ptr %4, align 8, !dbg !2144
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2145
  %9 = icmp eq i64 %8, 2, !dbg !2147
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2148
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2149
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2118
  ret ptr %15, !dbg !2149
}

; Function Attrs: nounwind
declare !dbg !2150 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2156 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2164
  %2 = tail call ptr @__errno_location() #43, !dbg !2165
  %3 = load i32, ptr %2, align 4, !dbg !2165, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2162, metadata !DIExpression()), !dbg !2164
  %4 = icmp eq ptr %0, null, !dbg !2166
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2166
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2167
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2163, metadata !DIExpression()), !dbg !2164
  store i32 %3, ptr %2, align 4, !dbg !2168, !tbaa !943
  ret ptr %6, !dbg !2169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !2170 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2176, metadata !DIExpression()), !dbg !2177
  %2 = icmp eq ptr %0, null, !dbg !2178
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2178
  %4 = load i32, ptr %3, align 8, !dbg !2179, !tbaa !2180
  ret i32 %4, !dbg !2182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2183 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2187, metadata !DIExpression()), !dbg !2189
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2188, metadata !DIExpression()), !dbg !2189
  %3 = icmp eq ptr %0, null, !dbg !2190
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2190
  store i32 %1, ptr %4, align 8, !dbg !2191, !tbaa !2180
  ret void, !dbg !2192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2193 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2197, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2198, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2199, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2200, metadata !DIExpression()), !dbg !2205
  %4 = icmp eq ptr %0, null, !dbg !2206
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2206
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2207
  %7 = lshr i8 %1, 5, !dbg !2208
  %8 = zext nneg i8 %7 to i64, !dbg !2208
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2209
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2201, metadata !DIExpression()), !dbg !2205
  %10 = and i8 %1, 31, !dbg !2210
  %11 = zext nneg i8 %10 to i32, !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2203, metadata !DIExpression()), !dbg !2205
  %12 = load i32, ptr %9, align 4, !dbg !2211, !tbaa !943
  %13 = lshr i32 %12, %11, !dbg !2212
  %14 = and i32 %13, 1, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2204, metadata !DIExpression()), !dbg !2205
  %15 = xor i32 %13, %2, !dbg !2214
  %16 = and i32 %15, 1, !dbg !2214
  %17 = shl nuw i32 %16, %11, !dbg !2215
  %18 = xor i32 %17, %12, !dbg !2216
  store i32 %18, ptr %9, align 4, !dbg !2216, !tbaa !943
  ret i32 %14, !dbg !2217
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2218 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2222, metadata !DIExpression()), !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2223, metadata !DIExpression()), !dbg !2225
  %3 = icmp eq ptr %0, null, !dbg !2226
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2228
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2222, metadata !DIExpression()), !dbg !2225
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2229
  %6 = load i32, ptr %5, align 4, !dbg !2229, !tbaa !2230
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2224, metadata !DIExpression()), !dbg !2225
  store i32 %1, ptr %5, align 4, !dbg !2231, !tbaa !2230
  ret i32 %6, !dbg !2232
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2233 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2237, metadata !DIExpression()), !dbg !2240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2238, metadata !DIExpression()), !dbg !2240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2239, metadata !DIExpression()), !dbg !2240
  %4 = icmp eq ptr %0, null, !dbg !2241
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2243
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2237, metadata !DIExpression()), !dbg !2240
  store i32 10, ptr %5, align 8, !dbg !2244, !tbaa !2180
  %6 = icmp ne ptr %1, null, !dbg !2245
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2247
  br i1 %8, label %10, label %9, !dbg !2247

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2248
  unreachable, !dbg !2248

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2249
  store ptr %1, ptr %11, align 8, !dbg !2250, !tbaa !2251
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2252
  store ptr %2, ptr %12, align 8, !dbg !2253, !tbaa !2254
  ret void, !dbg !2255
}

; Function Attrs: noreturn nounwind
declare !dbg !2256 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2257 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2261, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2262, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2263, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2264, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2265, metadata !DIExpression()), !dbg !2269
  %6 = icmp eq ptr %4, null, !dbg !2270
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2270
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2266, metadata !DIExpression()), !dbg !2269
  %8 = tail call ptr @__errno_location() #43, !dbg !2271
  %9 = load i32, ptr %8, align 4, !dbg !2271, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2267, metadata !DIExpression()), !dbg !2269
  %10 = load i32, ptr %7, align 8, !dbg !2272, !tbaa !2180
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2273
  %12 = load i32, ptr %11, align 4, !dbg !2273, !tbaa !2230
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2274
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2275
  %15 = load ptr, ptr %14, align 8, !dbg !2275, !tbaa !2251
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2276
  %17 = load ptr, ptr %16, align 8, !dbg !2276, !tbaa !2254
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2277
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2268, metadata !DIExpression()), !dbg !2269
  store i32 %9, ptr %8, align 4, !dbg !2278, !tbaa !943
  ret i64 %18, !dbg !2279
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2280 {
  %10 = alloca i32, align 4, !DIAssignID !2348
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2349
  %12 = alloca i32, align 4, !DIAssignID !2350
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2351
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2352
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2326, metadata !DIExpression(), metadata !2352, metadata ptr %14, metadata !DIExpression()), !dbg !2353
  %15 = alloca i32, align 4, !DIAssignID !2354
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2329, metadata !DIExpression(), metadata !2354, metadata ptr %15, metadata !DIExpression()), !dbg !2355
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2286, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2288, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2289, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2290, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2291, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2292, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2293, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2294, metadata !DIExpression()), !dbg !2356
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2357
  %17 = icmp eq i64 %16, 1, !dbg !2358
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2295, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2298, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2299, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2300, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2301, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2303, metadata !DIExpression()), !dbg !2356
  %18 = and i32 %5, 2, !dbg !2359
  %19 = icmp ne i32 %18, 0, !dbg !2359
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2359

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2360
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2361
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2362
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2299, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2298, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2289, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2294, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2293, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2290, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2304), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2356
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
  ], !dbg !2364

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2290, metadata !DIExpression()), !dbg !2356
  br label %101, !dbg !2365

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2290, metadata !DIExpression()), !dbg !2356
  br i1 %36, label %101, label %42, !dbg !2365

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2366
  br i1 %43, label %101, label %44, !dbg !2370

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2366, !tbaa !952
  br label %101, !dbg !2366

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !2350, metadata ptr %12, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2351, metadata ptr %13, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr @.str.11.89, metadata !613, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %28, metadata !614, metadata !DIExpression()), !dbg !2371
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.11.89, i32 noundef 5) #40, !dbg !2375
  call void @llvm.dbg.value(metadata ptr %46, metadata !615, metadata !DIExpression()), !dbg !2371
  %47 = icmp eq ptr %46, @.str.11.89, !dbg !2376
  br i1 %47, label %48, label %57, !dbg !2378

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2379
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2380
  call void @llvm.dbg.value(metadata ptr %13, metadata !2381, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata ptr %13, metadata !2389, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 8, metadata !2393, metadata !DIExpression()), !dbg !2394
  store i64 0, ptr %13, align 8, !dbg !2396
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2397
  %50 = icmp eq i64 %49, 3, !dbg !2399
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2400
  %54 = icmp eq i32 %28, 9, !dbg !2400
  %55 = select i1 %54, ptr @.str.10.91, ptr @.str.12.92, !dbg !2400
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2400
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2401
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2401
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2371
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2293, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !2348, metadata ptr %10, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2349, metadata ptr %11, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata ptr @.str.12.92, metadata !613, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 %28, metadata !614, metadata !DIExpression()), !dbg !2402
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.12.92, i32 noundef 5) #40, !dbg !2404
  call void @llvm.dbg.value(metadata ptr %59, metadata !615, metadata !DIExpression()), !dbg !2402
  %60 = icmp eq ptr %59, @.str.12.92, !dbg !2405
  br i1 %60, label %61, label %70, !dbg !2406

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2407
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2408
  call void @llvm.dbg.value(metadata ptr %11, metadata !2381, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata ptr %11, metadata !2389, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i64 8, metadata !2393, metadata !DIExpression()), !dbg !2411
  store i64 0, ptr %11, align 8, !dbg !2413
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2414
  %63 = icmp eq i64 %62, 3, !dbg !2415
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2416
  %67 = icmp eq i32 %28, 9, !dbg !2416
  %68 = select i1 %67, ptr @.str.10.91, ptr @.str.12.92, !dbg !2416
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2417
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2294, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2293, metadata !DIExpression()), !dbg !2356
  br i1 %36, label %88, label %73, !dbg !2418

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2306, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2296, metadata !DIExpression()), !dbg !2356
  %74 = load i8, ptr %71, align 1, !dbg !2420, !tbaa !952
  %75 = icmp eq i8 %74, 0, !dbg !2422
  br i1 %75, label %88, label %.preheader11, !dbg !2422

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2422

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2306, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2296, metadata !DIExpression()), !dbg !2356
  %80 = icmp ult i64 %79, %39, !dbg !2423
  br i1 %80, label %81, label %83, !dbg !2426

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2423
  store i8 %77, ptr %82, align 1, !dbg !2423, !tbaa !952
  br label %83, !dbg !2423

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2296, metadata !DIExpression()), !dbg !2356
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2427
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2306, metadata !DIExpression()), !dbg !2419
  %86 = load i8, ptr %85, align 1, !dbg !2420, !tbaa !952
  %87 = icmp eq i8 %86, 0, !dbg !2422
  br i1 %87, label %.loopexit12, label %76, !dbg !2422, !llvm.loop !2428

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2426
  br label %88, !dbg !2430

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2431
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2300, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2298, metadata !DIExpression()), !dbg !2356
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2299, metadata !DIExpression()), !dbg !2356
  br label %101, !dbg !2432

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2301, metadata !DIExpression()), !dbg !2356
  br label %101, !dbg !2433

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2290, metadata !DIExpression()), !dbg !2356
  br label %101, !dbg !2434

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2356
  br i1 %36, label %101, label %95, !dbg !2435

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2290, metadata !DIExpression()), !dbg !2356
  br i1 %36, label %101, label %95, !dbg !2434

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2436
  br i1 %97, label %101, label %98, !dbg !2440

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2436, !tbaa !952
  br label %101, !dbg !2436

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2301, metadata !DIExpression()), !dbg !2356
  br label %101, !dbg !2441

100:                                              ; preds = %27
  call void @abort() #42, !dbg !2442
  unreachable, !dbg !2442

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2431
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.91, %42 ], [ @.str.10.91, %44 ], [ @.str.10.91, %41 ], [ %33, %27 ], [ @.str.12.92, %95 ], [ @.str.12.92, %98 ], [ @.str.12.92, %94 ], [ @.str.10.91, %40 ], [ @.str.12.92, %91 ], [ @.str.12.92, %92 ], [ @.str.12.92, %93 ], !dbg !2356
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2356
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2299, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2298, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2294, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2293, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2290, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2311, metadata !DIExpression()), !dbg !2443
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
  br label %121, !dbg !2444

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2431
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2360
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2445
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2311, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2289, metadata !DIExpression()), !dbg !2356
  %130 = icmp eq i64 %122, -1, !dbg !2446
  br i1 %130, label %131, label %135, !dbg !2447

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2448
  %133 = load i8, ptr %132, align 1, !dbg !2448, !tbaa !952
  %134 = icmp eq i8 %133, 0, !dbg !2449
  br i1 %134, label %573, label %137, !dbg !2450

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2451
  br i1 %136, label %573, label %137, !dbg !2450

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2316, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2317, metadata !DIExpression()), !dbg !2452
  br i1 %113, label %138, label %151, !dbg !2453

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2455
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2456
  br i1 %140, label %141, label %143, !dbg !2456

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2457
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2289, metadata !DIExpression()), !dbg !2356
  br label %143, !dbg !2458

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2289, metadata !DIExpression()), !dbg !2356
  %145 = icmp ugt i64 %139, %144, !dbg !2459
  br i1 %145, label %151, label %146, !dbg !2460

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2461
  call void @llvm.dbg.value(metadata ptr %147, metadata !2462, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %106, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %107, metadata !2466, metadata !DIExpression()), !dbg !2467
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2469
  %149 = icmp eq i32 %148, 0, !dbg !2470
  %150 = and i1 %149, %109, !dbg !2471
  br i1 %150, label %.loopexit7, label %151, !dbg !2471

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2313, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2289, metadata !DIExpression()), !dbg !2356
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2472
  %155 = load i8, ptr %154, align 1, !dbg !2472, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2318, metadata !DIExpression()), !dbg !2452
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
  ], !dbg !2473

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2474

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2475

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2452
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2479
  br i1 %159, label %176, label %160, !dbg !2479

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2481
  br i1 %161, label %162, label %164, !dbg !2485

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2481
  store i8 39, ptr %163, align 1, !dbg !2481, !tbaa !952
  br label %164, !dbg !2481

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2485
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2296, metadata !DIExpression()), !dbg !2356
  %166 = icmp ult i64 %165, %129, !dbg !2486
  br i1 %166, label %167, label %169, !dbg !2489

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2486
  store i8 36, ptr %168, align 1, !dbg !2486, !tbaa !952
  br label %169, !dbg !2486

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2296, metadata !DIExpression()), !dbg !2356
  %171 = icmp ult i64 %170, %129, !dbg !2490
  br i1 %171, label %172, label %174, !dbg !2493

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2490
  store i8 39, ptr %173, align 1, !dbg !2490, !tbaa !952
  br label %174, !dbg !2490

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2356
  br label %176, !dbg !2494

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2356
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2296, metadata !DIExpression()), !dbg !2356
  %179 = icmp ult i64 %177, %129, !dbg !2495
  br i1 %179, label %180, label %182, !dbg !2498

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2495
  store i8 92, ptr %181, align 1, !dbg !2495, !tbaa !952
  br label %182, !dbg !2495

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2296, metadata !DIExpression()), !dbg !2356
  br i1 %110, label %184, label %476, !dbg !2499

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2501
  %186 = icmp ult i64 %185, %152, !dbg !2502
  br i1 %186, label %187, label %433, !dbg !2503

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2504
  %189 = load i8, ptr %188, align 1, !dbg !2504, !tbaa !952
  %190 = add i8 %189, -48, !dbg !2505
  %191 = icmp ult i8 %190, 10, !dbg !2505
  br i1 %191, label %192, label %433, !dbg !2505

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2506
  br i1 %193, label %194, label %196, !dbg !2510

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2506
  store i8 48, ptr %195, align 1, !dbg !2506, !tbaa !952
  br label %196, !dbg !2506

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2510
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2296, metadata !DIExpression()), !dbg !2356
  %198 = icmp ult i64 %197, %129, !dbg !2511
  br i1 %198, label %199, label %201, !dbg !2514

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2511
  store i8 48, ptr %200, align 1, !dbg !2511, !tbaa !952
  br label %201, !dbg !2511

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2514
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2296, metadata !DIExpression()), !dbg !2356
  br label %433, !dbg !2515

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2516

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2517

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2518

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2520

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2522
  %209 = icmp ult i64 %208, %152, !dbg !2523
  br i1 %209, label %210, label %433, !dbg !2524

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2525
  %212 = load i8, ptr %211, align 1, !dbg !2525, !tbaa !952
  %213 = icmp eq i8 %212, 63, !dbg !2526
  br i1 %213, label %214, label %433, !dbg !2527

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2528
  %216 = load i8, ptr %215, align 1, !dbg !2528, !tbaa !952
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
  ], !dbg !2529

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2530

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2318, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2311, metadata !DIExpression()), !dbg !2443
  %219 = icmp ult i64 %123, %129, !dbg !2532
  br i1 %219, label %220, label %222, !dbg !2535

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2532
  store i8 63, ptr %221, align 1, !dbg !2532, !tbaa !952
  br label %222, !dbg !2532

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2296, metadata !DIExpression()), !dbg !2356
  %224 = icmp ult i64 %223, %129, !dbg !2536
  br i1 %224, label %225, label %227, !dbg !2539

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2536
  store i8 34, ptr %226, align 1, !dbg !2536, !tbaa !952
  br label %227, !dbg !2536

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2539
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2296, metadata !DIExpression()), !dbg !2356
  %229 = icmp ult i64 %228, %129, !dbg !2540
  br i1 %229, label %230, label %232, !dbg !2543

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2540
  store i8 34, ptr %231, align 1, !dbg !2540, !tbaa !952
  br label %232, !dbg !2540

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2543
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2296, metadata !DIExpression()), !dbg !2356
  %234 = icmp ult i64 %233, %129, !dbg !2544
  br i1 %234, label %235, label %237, !dbg !2547

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2544
  store i8 63, ptr %236, align 1, !dbg !2544, !tbaa !952
  br label %237, !dbg !2544

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2547
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2296, metadata !DIExpression()), !dbg !2356
  br label %433, !dbg !2548

239:                                              ; preds = %151
  br label %249, !dbg !2549

240:                                              ; preds = %151
  br label %249, !dbg !2550

241:                                              ; preds = %151
  br label %247, !dbg !2551

242:                                              ; preds = %151
  br label %247, !dbg !2552

243:                                              ; preds = %151
  br label %249, !dbg !2553

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2554

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2555

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2558

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2560
  call void @llvm.dbg.label(metadata !2319), !dbg !2561
  br i1 %118, label %.loopexit8, label %249, !dbg !2562

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2560
  call void @llvm.dbg.label(metadata !2322), !dbg !2564
  br i1 %108, label %487, label %444, !dbg !2565

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2566

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2567, !tbaa !952
  %254 = icmp eq i8 %253, 0, !dbg !2569
  br i1 %254, label %255, label %433, !dbg !2570

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2571
  br i1 %256, label %257, label %433, !dbg !2573

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2317, metadata !DIExpression()), !dbg !2452
  br label %258, !dbg !2574

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2452
  br i1 %115, label %260, label %433, !dbg !2575

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2577

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2317, metadata !DIExpression()), !dbg !2452
  br i1 %115, label %262, label %433, !dbg !2578

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2579

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2582
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2584
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2584
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2297, metadata !DIExpression()), !dbg !2356
  %269 = icmp ult i64 %123, %268, !dbg !2585
  br i1 %269, label %270, label %272, !dbg !2588

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2585
  store i8 39, ptr %271, align 1, !dbg !2585, !tbaa !952
  br label %272, !dbg !2585

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2588
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2296, metadata !DIExpression()), !dbg !2356
  %274 = icmp ult i64 %273, %268, !dbg !2589
  br i1 %274, label %275, label %277, !dbg !2592

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2589
  store i8 92, ptr %276, align 1, !dbg !2589, !tbaa !952
  br label %277, !dbg !2589

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2592
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2296, metadata !DIExpression()), !dbg !2356
  %279 = icmp ult i64 %278, %268, !dbg !2593
  br i1 %279, label %280, label %282, !dbg !2596

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2593
  store i8 39, ptr %281, align 1, !dbg !2593, !tbaa !952
  br label %282, !dbg !2593

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2356
  br label %433, !dbg !2597

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2598

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2323, metadata !DIExpression()), !dbg !2599
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !2600
  %287 = load ptr, ptr %286, align 8, !dbg !2600, !tbaa !875
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2600
  %290 = load i16, ptr %289, align 2, !dbg !2600, !tbaa !984
  %291 = and i16 %290, 16384, !dbg !2600
  %292 = icmp ne i16 %291, 0, !dbg !2602
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2325, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2599
  br label %334, !dbg !2603

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2604
  call void @llvm.dbg.value(metadata ptr %14, metadata !2381, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata ptr %14, metadata !2389, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 8, metadata !2393, metadata !DIExpression()), !dbg !2607
  store i64 0, ptr %14, align 8, !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2323, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2325, metadata !DIExpression()), !dbg !2599
  %294 = icmp eq i64 %152, -1, !dbg !2610
  br i1 %294, label %295, label %297, !dbg !2612

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2289, metadata !DIExpression()), !dbg !2356
  br label %297, !dbg !2614

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2289, metadata !DIExpression()), !dbg !2356
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2615
  %299 = sub i64 %298, %128, !dbg !2616
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2333, metadata !DIExpression()), !dbg !2355
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2618

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2323, metadata !DIExpression()), !dbg !2599
  %302 = icmp ult i64 %128, %298, !dbg !2619
  br i1 %302, label %.preheader5, label %329, !dbg !2621

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2622

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2599
  br label %329, !dbg !2623

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2323, metadata !DIExpression()), !dbg !2599
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2625
  %308 = load i8, ptr %307, align 1, !dbg !2625, !tbaa !952
  %309 = icmp eq i8 %308, 0, !dbg !2621
  br i1 %309, label %.loopexit6, label %310, !dbg !2622

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2626
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2323, metadata !DIExpression()), !dbg !2599
  %312 = add i64 %311, %128, !dbg !2627
  %313 = icmp eq i64 %311, %299, !dbg !2619
  br i1 %313, label %.loopexit6, label %304, !dbg !2621, !llvm.loop !2628

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2334, metadata !DIExpression()), !dbg !2629
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2630
  %317 = and i1 %316, %109, !dbg !2630
  br i1 %317, label %.preheader3, label %325, !dbg !2630

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2631

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2334, metadata !DIExpression()), !dbg !2629
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2632
  %321 = load i8, ptr %320, align 1, !dbg !2632, !tbaa !952
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2634

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2334, metadata !DIExpression()), !dbg !2629
  %324 = icmp eq i64 %323, %300, !dbg !2636
  br i1 %324, label %.loopexit4, label %318, !dbg !2631, !llvm.loop !2637

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2639

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2639, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %326, metadata !2641, metadata !DIExpression()), !dbg !2649
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !2651
  %328 = icmp ne i32 %327, 0, !dbg !2652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2325, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2323, metadata !DIExpression()), !dbg !2599
  br label %329, !dbg !2653

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2654

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2325, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2323, metadata !DIExpression()), !dbg !2599
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2654
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2655
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2325, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2323, metadata !DIExpression()), !dbg !2599
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2654
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2655
  call void @llvm.dbg.label(metadata !2347), !dbg !2656
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2657
  br label %624, !dbg !2657

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2452
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2659
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2325, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2323, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2289, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2317, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2452
  %338 = icmp ult i64 %336, 2, !dbg !2660
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2661
  br i1 %340, label %433, label %341, !dbg !2661

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2662
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2342, metadata !DIExpression()), !dbg !2663
  br label %343, !dbg !2664

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2356
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2443
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2318, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2316, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2313, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2311, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2296, metadata !DIExpression()), !dbg !2356
  br i1 %339, label %394, label %350, !dbg !2665

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2670

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2452
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2673
  br i1 %352, label %369, label %353, !dbg !2673

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2675
  br i1 %354, label %355, label %357, !dbg !2679

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2675
  store i8 39, ptr %356, align 1, !dbg !2675, !tbaa !952
  br label %357, !dbg !2675

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2296, metadata !DIExpression()), !dbg !2356
  %359 = icmp ult i64 %358, %129, !dbg !2680
  br i1 %359, label %360, label %362, !dbg !2683

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2680
  store i8 36, ptr %361, align 1, !dbg !2680, !tbaa !952
  br label %362, !dbg !2680

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2296, metadata !DIExpression()), !dbg !2356
  %364 = icmp ult i64 %363, %129, !dbg !2684
  br i1 %364, label %365, label %367, !dbg !2687

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2684
  store i8 39, ptr %366, align 1, !dbg !2684, !tbaa !952
  br label %367, !dbg !2684

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2356
  br label %369, !dbg !2688

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2356
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2296, metadata !DIExpression()), !dbg !2356
  %372 = icmp ult i64 %370, %129, !dbg !2689
  br i1 %372, label %373, label %375, !dbg !2692

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2689
  store i8 92, ptr %374, align 1, !dbg !2689, !tbaa !952
  br label %375, !dbg !2689

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2692
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2296, metadata !DIExpression()), !dbg !2356
  %377 = icmp ult i64 %376, %129, !dbg !2693
  br i1 %377, label %378, label %382, !dbg !2696

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2693
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2693
  store i8 %380, ptr %381, align 1, !dbg !2693, !tbaa !952
  br label %382, !dbg !2693

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2696
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2296, metadata !DIExpression()), !dbg !2356
  %384 = icmp ult i64 %383, %129, !dbg !2697
  br i1 %384, label %385, label %390, !dbg !2700

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2697
  %388 = or disjoint i8 %387, 48, !dbg !2697
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2697
  store i8 %388, ptr %389, align 1, !dbg !2697, !tbaa !952
  br label %390, !dbg !2697

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2700
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2296, metadata !DIExpression()), !dbg !2356
  %392 = and i8 %349, 7, !dbg !2701
  %393 = or disjoint i8 %392, 48, !dbg !2702
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2318, metadata !DIExpression()), !dbg !2452
  br label %401, !dbg !2703

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2704

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2705
  br i1 %396, label %397, label %399, !dbg !2710

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2705
  store i8 92, ptr %398, align 1, !dbg !2705, !tbaa !952
  br label %399, !dbg !2705

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2452
  br label %401, !dbg !2711

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2356
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2318, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2316, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2313, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2296, metadata !DIExpression()), !dbg !2356
  %407 = add i64 %346, 1, !dbg !2712
  %408 = icmp ugt i64 %342, %407, !dbg !2714
  br i1 %408, label %409, label %.loopexit2, !dbg !2715

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2716
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2716
  br i1 %411, label %423, label %412, !dbg !2716

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2719
  br i1 %413, label %414, label %416, !dbg !2723

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2719
  store i8 39, ptr %415, align 1, !dbg !2719, !tbaa !952
  br label %416, !dbg !2719

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2296, metadata !DIExpression()), !dbg !2356
  %418 = icmp ult i64 %417, %129, !dbg !2724
  br i1 %418, label %419, label %421, !dbg !2727

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2724
  store i8 39, ptr %420, align 1, !dbg !2724, !tbaa !952
  br label %421, !dbg !2724

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2727
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2356
  br label %423, !dbg !2728

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2729
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2296, metadata !DIExpression()), !dbg !2356
  %426 = icmp ult i64 %424, %129, !dbg !2730
  br i1 %426, label %427, label %429, !dbg !2733

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2730
  store i8 %406, ptr %428, align 1, !dbg !2730, !tbaa !952
  br label %429, !dbg !2730

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2311, metadata !DIExpression()), !dbg !2443
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2734
  %432 = load i8, ptr %431, align 1, !dbg !2734, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2318, metadata !DIExpression()), !dbg !2452
  br label %343, !dbg !2735, !llvm.loop !2736

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2739
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2356
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2360
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2443
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2452
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2318, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2316, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2313, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2311, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2289, metadata !DIExpression()), !dbg !2356
  br i1 %111, label %455, label %444, !dbg !2740

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
  br i1 %120, label %456, label %476, !dbg !2742

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2743

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
  %467 = lshr i8 %458, 5, !dbg !2744
  %468 = zext nneg i8 %467 to i64, !dbg !2744
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2745
  %470 = load i32, ptr %469, align 4, !dbg !2745, !tbaa !943
  %471 = and i8 %458, 31, !dbg !2746
  %472 = zext nneg i8 %471 to i32, !dbg !2746
  %473 = shl nuw i32 1, %472, !dbg !2747
  %474 = and i32 %470, %473, !dbg !2747
  %475 = icmp eq i32 %474, 0, !dbg !2747
  br i1 %475, label %476, label %487, !dbg !2748

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
  br i1 %153, label %487, label %523, !dbg !2749

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2739
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2356
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2360
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2750
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2452
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2318, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2311, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2289, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2345), !dbg !2751
  br i1 %109, label %.loopexit8, label %497, !dbg !2752

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2452
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2754
  br i1 %498, label %515, label %499, !dbg !2754

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2756
  br i1 %500, label %501, label %503, !dbg !2760

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2756
  store i8 39, ptr %502, align 1, !dbg !2756, !tbaa !952
  br label %503, !dbg !2756

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2296, metadata !DIExpression()), !dbg !2356
  %505 = icmp ult i64 %504, %496, !dbg !2761
  br i1 %505, label %506, label %508, !dbg !2764

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2761
  store i8 36, ptr %507, align 1, !dbg !2761, !tbaa !952
  br label %508, !dbg !2761

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2296, metadata !DIExpression()), !dbg !2356
  %510 = icmp ult i64 %509, %496, !dbg !2765
  br i1 %510, label %511, label %513, !dbg !2768

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2765
  store i8 39, ptr %512, align 1, !dbg !2765, !tbaa !952
  br label %513, !dbg !2765

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2356
  br label %515, !dbg !2769

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2452
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2296, metadata !DIExpression()), !dbg !2356
  %518 = icmp ult i64 %516, %496, !dbg !2770
  br i1 %518, label %519, label %521, !dbg !2773

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2770
  store i8 92, ptr %520, align 1, !dbg !2770, !tbaa !952
  br label %521, !dbg !2770

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2318, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2316, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2311, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2289, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2346), !dbg !2774
  br label %547, !dbg !2775

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2356
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2452
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2443
  br label %523, !dbg !2775

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2739
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2356
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2360
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2750
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2778
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2318, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2316, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2311, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2289, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2346), !dbg !2774
  %534 = xor i1 %528, true, !dbg !2775
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2775
  br i1 %535, label %547, label %536, !dbg !2775

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2779
  br i1 %537, label %538, label %540, !dbg !2783

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2779
  store i8 39, ptr %539, align 1, !dbg !2779, !tbaa !952
  br label %540, !dbg !2779

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2296, metadata !DIExpression()), !dbg !2356
  %542 = icmp ult i64 %541, %533, !dbg !2784
  br i1 %542, label %543, label %545, !dbg !2787

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2784
  store i8 39, ptr %544, align 1, !dbg !2784, !tbaa !952
  br label %545, !dbg !2784

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2356
  br label %547, !dbg !2788

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2452
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2296, metadata !DIExpression()), !dbg !2356
  %557 = icmp ult i64 %555, %548, !dbg !2789
  br i1 %557, label %558, label %560, !dbg !2792

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2789
  store i8 %549, ptr %559, align 1, !dbg !2789, !tbaa !952
  br label %560, !dbg !2789

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2296, metadata !DIExpression()), !dbg !2356
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2356
  br label %563, !dbg !2794

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2739
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2356
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2360
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2750
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2311, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2289, metadata !DIExpression()), !dbg !2356
  %572 = add i64 %570, 1, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2311, metadata !DIExpression()), !dbg !2443
  br label %121, !dbg !2796, !llvm.loop !2797

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2431
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2360
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2287, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2297, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2296, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2289, metadata !DIExpression()), !dbg !2356
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2799
  %575 = xor i1 %109, true, !dbg !2801
  %576 = or i1 %574, %575, !dbg !2801
  %577 = or i1 %576, %110, !dbg !2801
  br i1 %577, label %578, label %.loopexit13, !dbg !2801

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2802
  %580 = xor i1 %.lcssa38, true, !dbg !2802
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2802
  br i1 %581, label %589, label %582, !dbg !2802

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2804

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2360
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2806
  br label %638, !dbg !2808

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2809
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2811
  br i1 %588, label %27, label %589, !dbg !2811

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2356
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2431
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2812
  %592 = or i1 %591, %590, !dbg !2814
  br i1 %592, label %608, label %593, !dbg !2814

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2298, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2296, metadata !DIExpression()), !dbg !2356
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2815, !tbaa !952
  %595 = icmp eq i8 %594, 0, !dbg !2818
  br i1 %595, label %608, label %.preheader, !dbg !2818

.preheader:                                       ; preds = %593
  br label %596, !dbg !2818

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2298, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2296, metadata !DIExpression()), !dbg !2356
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2819
  br i1 %600, label %601, label %603, !dbg !2822

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2819
  store i8 %597, ptr %602, align 1, !dbg !2819, !tbaa !952
  br label %603, !dbg !2819

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2296, metadata !DIExpression()), !dbg !2356
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2823
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2298, metadata !DIExpression()), !dbg !2356
  %606 = load i8, ptr %605, align 1, !dbg !2815, !tbaa !952
  %607 = icmp eq i8 %606, 0, !dbg !2818
  br i1 %607, label %.loopexit, label %596, !dbg !2818, !llvm.loop !2824

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2822
  br label %608, !dbg !2826

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2431
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2296, metadata !DIExpression()), !dbg !2356
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2826
  br i1 %610, label %611, label %638, !dbg !2828

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2829
  store i8 0, ptr %612, align 1, !dbg !2830, !tbaa !952
  br label %638, !dbg !2829

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2347), !dbg !2656
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2831
  br i1 %614, label %624, label %630, !dbg !2657

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2452
  br label %615, !dbg !2831

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2831

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2831

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2347), !dbg !2656
  %622 = icmp eq i32 %616, 2, !dbg !2831
  %623 = select i1 %619, i32 4, i32 2, !dbg !2657
  br i1 %622, label %624, label %630, !dbg !2657

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2657

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2458
  br label %630, !dbg !2832

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2290, metadata !DIExpression()), !dbg !2356
  %636 = and i32 %5, -3, !dbg !2832
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2833
  br label %638, !dbg !2834

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2835
}

; Function Attrs: nounwind
declare !dbg !2836 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2839 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2841 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2845, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2847, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %1, metadata !2854, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr null, metadata !2855, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %2, metadata !2856, metadata !DIExpression()), !dbg !2862
  %4 = icmp eq ptr %2, null, !dbg !2864
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2864
  call void @llvm.dbg.value(metadata ptr %5, metadata !2857, metadata !DIExpression()), !dbg !2862
  %6 = tail call ptr @__errno_location() #43, !dbg !2865
  %7 = load i32, ptr %6, align 4, !dbg !2865, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %7, metadata !2858, metadata !DIExpression()), !dbg !2862
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2866
  %9 = load i32, ptr %8, align 4, !dbg !2866, !tbaa !2230
  %10 = or i32 %9, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %10, metadata !2859, metadata !DIExpression()), !dbg !2862
  %11 = load i32, ptr %5, align 8, !dbg !2868, !tbaa !2180
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2869
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2870
  %14 = load ptr, ptr %13, align 8, !dbg !2870, !tbaa !2251
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2871
  %16 = load ptr, ptr %15, align 8, !dbg !2871, !tbaa !2254
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2872
  %18 = add i64 %17, 1, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %18, metadata !2860, metadata !DIExpression()), !dbg !2862
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %19, metadata !2861, metadata !DIExpression()), !dbg !2862
  %20 = load i32, ptr %5, align 8, !dbg !2875, !tbaa !2180
  %21 = load ptr, ptr %13, align 8, !dbg !2876, !tbaa !2251
  %22 = load ptr, ptr %15, align 8, !dbg !2877, !tbaa !2254
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2878
  store i32 %7, ptr %6, align 4, !dbg !2879, !tbaa !943
  ret ptr %19, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2850 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2854, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2855, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2856, metadata !DIExpression()), !dbg !2881
  %5 = icmp eq ptr %3, null, !dbg !2882
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2882
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2857, metadata !DIExpression()), !dbg !2881
  %7 = tail call ptr @__errno_location() #43, !dbg !2883
  %8 = load i32, ptr %7, align 4, !dbg !2883, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2858, metadata !DIExpression()), !dbg !2881
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2884
  %10 = load i32, ptr %9, align 4, !dbg !2884, !tbaa !2230
  %11 = icmp eq ptr %2, null, !dbg !2885
  %12 = zext i1 %11 to i32, !dbg !2885
  %13 = or i32 %10, %12, !dbg !2886
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2859, metadata !DIExpression()), !dbg !2881
  %14 = load i32, ptr %6, align 8, !dbg !2887, !tbaa !2180
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2888
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2889
  %17 = load ptr, ptr %16, align 8, !dbg !2889, !tbaa !2251
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2890
  %19 = load ptr, ptr %18, align 8, !dbg !2890, !tbaa !2254
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2891
  %21 = add i64 %20, 1, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2860, metadata !DIExpression()), !dbg !2881
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2893
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2861, metadata !DIExpression()), !dbg !2881
  %23 = load i32, ptr %6, align 8, !dbg !2894, !tbaa !2180
  %24 = load ptr, ptr %16, align 8, !dbg !2895, !tbaa !2251
  %25 = load ptr, ptr %18, align 8, !dbg !2896, !tbaa !2254
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2897
  store i32 %8, ptr %7, align 4, !dbg !2898, !tbaa !943
  br i1 %11, label %28, label %27, !dbg !2899

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2900, !tbaa !2902
  br label %28, !dbg !2903

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2904
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2905 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2910, !tbaa !875
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2907, metadata !DIExpression()), !dbg !2911
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2908, metadata !DIExpression()), !dbg !2912
  %2 = load i32, ptr @nslots, align 4, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2908, metadata !DIExpression()), !dbg !2912
  %3 = icmp sgt i32 %2, 1, !dbg !2913
  br i1 %3, label %4, label %6, !dbg !2915

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2913
  br label %10, !dbg !2915

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2916

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2916
  %8 = load ptr, ptr %7, align 8, !dbg !2916, !tbaa !2918
  %9 = icmp eq ptr %8, @slot0, !dbg !2920
  br i1 %9, label %17, label %16, !dbg !2921

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2908, metadata !DIExpression()), !dbg !2912
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2922
  %13 = load ptr, ptr %12, align 8, !dbg !2922, !tbaa !2918
  tail call void @free(ptr noundef %13) #40, !dbg !2923
  %14 = add nuw nsw i64 %11, 1, !dbg !2924
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2908, metadata !DIExpression()), !dbg !2912
  %15 = icmp eq i64 %14, %5, !dbg !2913
  br i1 %15, label %.loopexit, label %10, !dbg !2915, !llvm.loop !2925

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2927
  store i64 256, ptr @slotvec0, align 8, !dbg !2929, !tbaa !2930
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2931, !tbaa !2918
  br label %17, !dbg !2932

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2933
  br i1 %18, label %20, label %19, !dbg !2935

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2936
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2938, !tbaa !875
  br label %20, !dbg !2939

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2940, !tbaa !943
  ret void, !dbg !2941
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2942 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2944, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2945, metadata !DIExpression()), !dbg !2946
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2947
  ret ptr %3, !dbg !2948
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2949 {
  %5 = alloca i64, align 8, !DIAssignID !2969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2963, metadata !DIExpression(), metadata !2969, metadata ptr %5, metadata !DIExpression()), !dbg !2970
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2954, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2955, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2956, metadata !DIExpression()), !dbg !2971
  %6 = tail call ptr @__errno_location() #43, !dbg !2972
  %7 = load i32, ptr %6, align 4, !dbg !2972, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2957, metadata !DIExpression()), !dbg !2971
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2973, !tbaa !875
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2958, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2959, metadata !DIExpression()), !dbg !2971
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2974
  br i1 %9, label %10, label %11, !dbg !2974

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2976
  unreachable, !dbg !2976

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2977, !tbaa !943
  %13 = icmp sgt i32 %12, %0, !dbg !2978
  br i1 %13, label %32, label %14, !dbg !2979

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2980
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2970
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !2981
  %16 = sext i32 %12 to i64, !dbg !2982
  store i64 %16, ptr %5, align 8, !dbg !2983, !tbaa !2902, !DIAssignID !2984
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2963, metadata !DIExpression(), metadata !2984, metadata ptr %5, metadata !DIExpression()), !dbg !2970
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2985
  %18 = add nuw nsw i32 %0, 1, !dbg !2986
  %19 = sub i32 %18, %12, !dbg !2987
  %20 = sext i32 %19 to i64, !dbg !2988
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2989
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2958, metadata !DIExpression()), !dbg !2971
  store ptr %21, ptr @slotvec, align 8, !dbg !2990, !tbaa !875
  br i1 %15, label %22, label %23, !dbg !2991

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2992, !tbaa.struct !2994
  br label %23, !dbg !2995

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2996, !tbaa !943
  %25 = sext i32 %24 to i64, !dbg !2997
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2997
  %27 = load i64, ptr %5, align 8, !dbg !2998, !tbaa !2902
  %28 = sub nsw i64 %27, %25, !dbg !2999
  %29 = shl i64 %28, 4, !dbg !3000
  call void @llvm.dbg.value(metadata ptr %26, metadata !2389, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %29, metadata !2393, metadata !DIExpression()), !dbg !3001
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3003
  %30 = load i64, ptr %5, align 8, !dbg !3004, !tbaa !2902
  %31 = trunc i64 %30 to i32, !dbg !3004
  store i32 %31, ptr @nslots, align 4, !dbg !3005, !tbaa !943
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3006
  br label %32, !dbg !3007

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2971
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2958, metadata !DIExpression()), !dbg !2971
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3008
  %36 = load i64, ptr %35, align 8, !dbg !3009, !tbaa !2930
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2964, metadata !DIExpression()), !dbg !3010
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3011
  %38 = load ptr, ptr %37, align 8, !dbg !3011, !tbaa !2918
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2966, metadata !DIExpression()), !dbg !3010
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3012
  %40 = load i32, ptr %39, align 4, !dbg !3012, !tbaa !2230
  %41 = or i32 %40, 1, !dbg !3013
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2967, metadata !DIExpression()), !dbg !3010
  %42 = load i32, ptr %3, align 8, !dbg !3014, !tbaa !2180
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3015
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3016
  %45 = load ptr, ptr %44, align 8, !dbg !3016, !tbaa !2251
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3017
  %47 = load ptr, ptr %46, align 8, !dbg !3017, !tbaa !2254
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3018
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2968, metadata !DIExpression()), !dbg !3010
  %49 = icmp ugt i64 %36, %48, !dbg !3019
  br i1 %49, label %60, label %50, !dbg !3021

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2964, metadata !DIExpression()), !dbg !3010
  store i64 %51, ptr %35, align 8, !dbg !3024, !tbaa !2930
  %52 = icmp eq ptr %38, @slot0, !dbg !3025
  br i1 %52, label %54, label %53, !dbg !3027

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3028
  br label %54, !dbg !3028

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2966, metadata !DIExpression()), !dbg !3010
  store ptr %55, ptr %37, align 8, !dbg !3030, !tbaa !2918
  %56 = load i32, ptr %3, align 8, !dbg !3031, !tbaa !2180
  %57 = load ptr, ptr %44, align 8, !dbg !3032, !tbaa !2251
  %58 = load ptr, ptr %46, align 8, !dbg !3033, !tbaa !2254
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3034
  br label %60, !dbg !3035

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3010
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2966, metadata !DIExpression()), !dbg !3010
  store i32 %7, ptr %6, align 4, !dbg !3036, !tbaa !943
  ret ptr %61, !dbg !3037
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3038 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3044, metadata !DIExpression()), !dbg !3045
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3046
  ret ptr %4, !dbg !3047
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3048 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !2944, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %0, metadata !2945, metadata !DIExpression()), !dbg !3052
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3054
  ret ptr %2, !dbg !3055
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3056 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3060, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i32 0, metadata !3042, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %1, metadata !3044, metadata !DIExpression()), !dbg !3063
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3065
  ret ptr %3, !dbg !3066
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3067 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3075
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3074, metadata !DIExpression(), metadata !3075, metadata ptr %4, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3071, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3072, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3076
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078), !dbg !3081
  call void @llvm.dbg.value(metadata i32 %1, metadata !3082, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3090, !alias.scope !3078, !DIAssignID !3091
  call void @llvm.dbg.assign(metadata i8 0, metadata !3074, metadata !DIExpression(), metadata !3091, metadata ptr %4, metadata !DIExpression()), !dbg !3076
  %5 = icmp eq i32 %1, 10, !dbg !3092
  br i1 %5, label %6, label %7, !dbg !3094

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3095, !noalias !3078
  unreachable, !dbg !3095

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3096, !tbaa !2180, !alias.scope !3078, !DIAssignID !3097
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3097, metadata ptr %4, metadata !DIExpression()), !dbg !3076
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3098
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3099
  ret ptr %8, !dbg !3100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3101 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3110
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3109, metadata !DIExpression(), metadata !3110, metadata ptr %5, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3105, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3106, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3107, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3108, metadata !DIExpression()), !dbg !3111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3113), !dbg !3116
  call void @llvm.dbg.value(metadata i32 %1, metadata !3082, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3087, metadata !DIExpression()), !dbg !3119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3119, !alias.scope !3113, !DIAssignID !3120
  call void @llvm.dbg.assign(metadata i8 0, metadata !3109, metadata !DIExpression(), metadata !3120, metadata ptr %5, metadata !DIExpression()), !dbg !3111
  %6 = icmp eq i32 %1, 10, !dbg !3121
  br i1 %6, label %7, label %8, !dbg !3122

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3123, !noalias !3113
  unreachable, !dbg !3123

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3124, !tbaa !2180, !alias.scope !3113, !DIAssignID !3125
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3109, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3125, metadata ptr %5, metadata !DIExpression()), !dbg !3111
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3126
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3127
  ret ptr %9, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3129 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3135
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3133, metadata !DIExpression()), !dbg !3136
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3074, metadata !DIExpression(), metadata !3135, metadata ptr %3, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 0, metadata !3071, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 %0, metadata !3072, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr %1, metadata !3073, metadata !DIExpression()), !dbg !3137
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3140), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %0, metadata !3082, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3087, metadata !DIExpression()), !dbg !3146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3146, !alias.scope !3140, !DIAssignID !3147
  call void @llvm.dbg.assign(metadata i8 0, metadata !3074, metadata !DIExpression(), metadata !3147, metadata ptr %3, metadata !DIExpression()), !dbg !3137
  %4 = icmp eq i32 %0, 10, !dbg !3148
  br i1 %4, label %5, label %6, !dbg !3149

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3150, !noalias !3140
  unreachable, !dbg !3150

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3151, !tbaa !2180, !alias.scope !3140, !DIAssignID !3152
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3074, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3152, metadata ptr %3, metadata !DIExpression()), !dbg !3137
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3153
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3154
  ret ptr %7, !dbg !3155
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3156 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3163
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3160, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3161, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3162, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3109, metadata !DIExpression(), metadata !3163, metadata ptr %4, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 0, metadata !3105, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %1, metadata !3107, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %2, metadata !3108, metadata !DIExpression()), !dbg !3165
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3168), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %0, metadata !3082, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3087, metadata !DIExpression()), !dbg !3174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3174, !alias.scope !3168, !DIAssignID !3175
  call void @llvm.dbg.assign(metadata i8 0, metadata !3109, metadata !DIExpression(), metadata !3175, metadata ptr %4, metadata !DIExpression()), !dbg !3165
  %5 = icmp eq i32 %0, 10, !dbg !3176
  br i1 %5, label %6, label %7, !dbg !3177

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3178, !noalias !3168
  unreachable, !dbg !3178

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3179, !tbaa !2180, !alias.scope !3168, !DIAssignID !3180
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3109, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3180, metadata ptr %4, metadata !DIExpression()), !dbg !3165
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3181
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3182
  ret ptr %8, !dbg !3183
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3184 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3192
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3192, metadata ptr %4, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3190, metadata !DIExpression()), !dbg !3193
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3195, !tbaa.struct !3196, !DIAssignID !3197
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3197, metadata ptr %4, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2197, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2198, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2199, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2200, metadata !DIExpression()), !dbg !3198
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3200
  %6 = lshr i8 %2, 5, !dbg !3201
  %7 = zext nneg i8 %6 to i64, !dbg !3201
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3202
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2201, metadata !DIExpression()), !dbg !3198
  %9 = and i8 %2, 31, !dbg !3203
  %10 = zext nneg i8 %9 to i32, !dbg !3203
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2203, metadata !DIExpression()), !dbg !3198
  %11 = load i32, ptr %8, align 4, !dbg !3204, !tbaa !943
  %12 = lshr i32 %11, %10, !dbg !3205
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2204, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3198
  %13 = and i32 %12, 1, !dbg !3206
  %14 = xor i32 %13, 1, !dbg !3206
  %15 = shl nuw i32 %14, %10, !dbg !3207
  %16 = xor i32 %15, %11, !dbg !3208
  store i32 %16, ptr %8, align 4, !dbg !3208, !tbaa !943
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3209
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3210
  ret ptr %17, !dbg !3211
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3212 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3218
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3218, metadata ptr %3, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 -1, metadata !3189, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8 %1, metadata !3190, metadata !DIExpression()), !dbg !3220
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3223, !tbaa.struct !3196, !DIAssignID !3224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3224, metadata ptr %3, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata ptr %3, metadata !2197, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %1, metadata !2198, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 1, metadata !2199, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %1, metadata !2200, metadata !DIExpression()), !dbg !3225
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3227
  %5 = lshr i8 %1, 5, !dbg !3228
  %6 = zext nneg i8 %5 to i64, !dbg !3228
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %7, metadata !2201, metadata !DIExpression()), !dbg !3225
  %8 = and i8 %1, 31, !dbg !3230
  %9 = zext nneg i8 %8 to i32, !dbg !3230
  call void @llvm.dbg.value(metadata i32 %9, metadata !2203, metadata !DIExpression()), !dbg !3225
  %10 = load i32, ptr %7, align 4, !dbg !3231, !tbaa !943
  %11 = lshr i32 %10, %9, !dbg !3232
  call void @llvm.dbg.value(metadata i32 %11, metadata !2204, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3225
  %12 = and i32 %11, 1, !dbg !3233
  %13 = xor i32 %12, 1, !dbg !3233
  %14 = shl nuw i32 %13, %9, !dbg !3234
  %15 = xor i32 %14, %10, !dbg !3235
  store i32 %15, ptr %7, align 4, !dbg !3235, !tbaa !943
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3236
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3237
  ret ptr %16, !dbg !3238
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3239 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3242
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8 58, metadata !3217, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3242, metadata ptr %2, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 -1, metadata !3189, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8 58, metadata !3190, metadata !DIExpression()), !dbg !3246
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3249, !tbaa.struct !3196, !DIAssignID !3250
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3250, metadata ptr %2, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %2, metadata !2197, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 58, metadata !2198, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 1, metadata !2199, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 58, metadata !2200, metadata !DIExpression()), !dbg !3251
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %3, metadata !2201, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 26, metadata !2203, metadata !DIExpression()), !dbg !3251
  %4 = load i32, ptr %3, align 4, !dbg !3254, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %4, metadata !2204, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3251
  %5 = or i32 %4, 67108864, !dbg !3255
  store i32 %5, ptr %3, align 4, !dbg !3255, !tbaa !943
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3256
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3257
  ret ptr %6, !dbg !3258
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3259 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3263
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3261, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3263, metadata ptr %3, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8 58, metadata !3190, metadata !DIExpression()), !dbg !3265
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3268, !tbaa.struct !3196, !DIAssignID !3269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3269, metadata ptr %3, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr %3, metadata !2197, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8 58, metadata !2198, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 1, metadata !2199, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8 58, metadata !2200, metadata !DIExpression()), !dbg !3270
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3272
  call void @llvm.dbg.value(metadata ptr %4, metadata !2201, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 26, metadata !2203, metadata !DIExpression()), !dbg !3270
  %5 = load i32, ptr %4, align 4, !dbg !3273, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %5, metadata !2204, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3270
  %6 = or i32 %5, 67108864, !dbg !3274
  store i32 %6, ptr %4, align 4, !dbg !3274, !tbaa !943
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3275
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3276
  ret ptr %7, !dbg !3277
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3278 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3283, metadata !DIExpression(), metadata !3284, metadata ptr %4, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3286
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3280, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3282, metadata !DIExpression()), !dbg !3285
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3288
  call void @llvm.dbg.value(metadata i32 %1, metadata !3082, metadata !DIExpression()), !dbg !3289
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3289
  %5 = icmp eq i32 %1, 10, !dbg !3290
  br i1 %5, label %6, label %7, !dbg !3291

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3292, !noalias !3293
  unreachable, !dbg !3292

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3289
  store i32 %1, ptr %4, align 8, !dbg !3296, !tbaa.struct !3196, !DIAssignID !3297
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3296
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3297, metadata ptr %4, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3283, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3298, metadata ptr %8, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2197, metadata !DIExpression()), !dbg !3299
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2198, metadata !DIExpression()), !dbg !3299
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2199, metadata !DIExpression()), !dbg !3299
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2200, metadata !DIExpression()), !dbg !3299
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3301
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2201, metadata !DIExpression()), !dbg !3299
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2203, metadata !DIExpression()), !dbg !3299
  %10 = load i32, ptr %9, align 4, !dbg !3302, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2204, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3299
  %11 = or i32 %10, 67108864, !dbg !3303
  store i32 %11, ptr %9, align 4, !dbg !3303, !tbaa !943, !DIAssignID !3304
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3283, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3304, metadata ptr %9, metadata !DIExpression()), !dbg !3285
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3305
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3306
  ret ptr %12, !dbg !3307
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3308 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3316
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3314, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3316, metadata ptr %5, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %1, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %2, metadata !3325, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %3, metadata !3326, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 -1, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3331, !tbaa.struct !3196, !DIAssignID !3332
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3332, metadata ptr %5, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3333, metadata ptr undef, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %5, metadata !2237, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata ptr %1, metadata !2238, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata ptr %2, metadata !2239, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata ptr %5, metadata !2237, metadata !DIExpression()), !dbg !3334
  store i32 10, ptr %5, align 8, !dbg !3336, !tbaa !2180, !DIAssignID !3337
  call void @llvm.dbg.assign(metadata i32 10, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3337, metadata ptr %5, metadata !DIExpression()), !dbg !3328
  %6 = icmp ne ptr %1, null, !dbg !3338
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3339
  br i1 %8, label %10, label %9, !dbg !3339

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3340
  unreachable, !dbg !3340

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3341
  store ptr %1, ptr %11, align 8, !dbg !3342, !tbaa !2251, !DIAssignID !3343
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3343, metadata ptr %11, metadata !DIExpression()), !dbg !3328
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3344
  store ptr %2, ptr %12, align 8, !dbg !3345, !tbaa !2254, !DIAssignID !3346
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3346, metadata ptr %12, metadata !DIExpression()), !dbg !3328
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3347
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3348
  ret ptr %13, !dbg !3349
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3319 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3350
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3350, metadata ptr %6, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3324, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3325, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3326, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3327, metadata !DIExpression()), !dbg !3351
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3353, !tbaa.struct !3196, !DIAssignID !3354
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3354, metadata ptr %6, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3355, metadata ptr undef, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %6, metadata !2237, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %1, metadata !2238, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %2, metadata !2239, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %6, metadata !2237, metadata !DIExpression()), !dbg !3356
  store i32 10, ptr %6, align 8, !dbg !3358, !tbaa !2180, !DIAssignID !3359
  call void @llvm.dbg.assign(metadata i32 10, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3359, metadata ptr %6, metadata !DIExpression()), !dbg !3351
  %7 = icmp ne ptr %1, null, !dbg !3360
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3361
  br i1 %9, label %11, label %10, !dbg !3361

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3362
  unreachable, !dbg !3362

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3363
  store ptr %1, ptr %12, align 8, !dbg !3364, !tbaa !2251, !DIAssignID !3365
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3365, metadata ptr %12, metadata !DIExpression()), !dbg !3351
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3366
  store ptr %2, ptr %13, align 8, !dbg !3367, !tbaa !2254, !DIAssignID !3368
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3368, metadata ptr %13, metadata !DIExpression()), !dbg !3351
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3369
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3370
  ret ptr %14, !dbg !3371
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3372 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3379
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3376, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3377, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3378, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %0, metadata !3313, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %1, metadata !3314, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %2, metadata !3315, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3379, metadata ptr %4, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 0, metadata !3323, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %0, metadata !3324, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %1, metadata !3325, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %2, metadata !3326, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 -1, metadata !3327, metadata !DIExpression()), !dbg !3383
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3386, !tbaa.struct !3196, !DIAssignID !3387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3387, metadata ptr %4, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3388, metadata ptr undef, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %4, metadata !2237, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata ptr %0, metadata !2238, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata ptr %1, metadata !2239, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata ptr %4, metadata !2237, metadata !DIExpression()), !dbg !3389
  store i32 10, ptr %4, align 8, !dbg !3391, !tbaa !2180, !DIAssignID !3392
  call void @llvm.dbg.assign(metadata i32 10, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3392, metadata ptr %4, metadata !DIExpression()), !dbg !3383
  %5 = icmp ne ptr %0, null, !dbg !3393
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3394
  br i1 %7, label %9, label %8, !dbg !3394

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3395
  unreachable, !dbg !3395

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3396
  store ptr %0, ptr %10, align 8, !dbg !3397, !tbaa !2251, !DIAssignID !3398
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3398, metadata ptr %10, metadata !DIExpression()), !dbg !3383
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3399
  store ptr %1, ptr %11, align 8, !dbg !3400, !tbaa !2254, !DIAssignID !3401
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3401, metadata ptr %11, metadata !DIExpression()), !dbg !3383
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3402
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3403
  ret ptr %12, !dbg !3404
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3405 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3413
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3409, metadata !DIExpression()), !dbg !3414
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3410, metadata !DIExpression()), !dbg !3414
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3411, metadata !DIExpression()), !dbg !3414
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3412, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3413, metadata ptr %5, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i32 0, metadata !3323, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %0, metadata !3324, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %1, metadata !3325, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %2, metadata !3326, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %3, metadata !3327, metadata !DIExpression()), !dbg !3415
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3418, !tbaa.struct !3196, !DIAssignID !3419
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(), metadata !3419, metadata ptr %5, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3420, metadata ptr undef, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %5, metadata !2237, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr %0, metadata !2238, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr %1, metadata !2239, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr %5, metadata !2237, metadata !DIExpression()), !dbg !3421
  store i32 10, ptr %5, align 8, !dbg !3423, !tbaa !2180, !DIAssignID !3424
  call void @llvm.dbg.assign(metadata i32 10, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3424, metadata ptr %5, metadata !DIExpression()), !dbg !3415
  %6 = icmp ne ptr %0, null, !dbg !3425
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3426
  br i1 %8, label %10, label %9, !dbg !3426

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3427
  unreachable, !dbg !3427

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3428
  store ptr %0, ptr %11, align 8, !dbg !3429, !tbaa !2251, !DIAssignID !3430
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3430, metadata ptr %11, metadata !DIExpression()), !dbg !3415
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3431
  store ptr %1, ptr %12, align 8, !dbg !3432, !tbaa !2254, !DIAssignID !3433
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3318, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3433, metadata ptr %12, metadata !DIExpression()), !dbg !3415
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3434
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3435
  ret ptr %13, !dbg !3436
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3437 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3442, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3443, metadata !DIExpression()), !dbg !3444
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3445
  ret ptr %4, !dbg !3446
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3447 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3451, metadata !DIExpression()), !dbg !3453
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3452, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 0, metadata !3441, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3454
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3456
  ret ptr %3, !dbg !3457
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3458 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3462, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3463, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata ptr %1, metadata !3442, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 -1, metadata !3443, metadata !DIExpression()), !dbg !3465
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3467
  ret ptr %3, !dbg !3468
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3469 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i32 0, metadata !3441, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 -1, metadata !3443, metadata !DIExpression()), !dbg !3477
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3479
  ret ptr %2, !dbg !3480
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname_len(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !645 {
  %6 = alloca i32, align 4, !DIAssignID !3481
  call void @llvm.dbg.assign(metadata i1 undef, metadata !661, metadata !DIExpression(), metadata !3481, metadata ptr %6, metadata !DIExpression()), !dbg !3482
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !659, metadata !DIExpression()), !dbg !3482
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !660, metadata !DIExpression()), !dbg !3482
  store i32 %2, ptr %6, align 4, !tbaa !943, !DIAssignID !3483
  call void @llvm.dbg.assign(metadata i32 %2, metadata !661, metadata !DIExpression(), metadata !3483, metadata ptr %6, metadata !DIExpression()), !dbg !3482
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !662, metadata !DIExpression()), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !663, metadata !DIExpression()), !dbg !3482
  %7 = sext i32 %3 to i64, !dbg !3484
  %8 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %7, !dbg !3484
  %9 = load ptr, ptr %8, align 8, !dbg !3484, !tbaa !875
  %10 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %9, i64 noundef %4), !dbg !3485
  ret i32 %10, !dbg !3486
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3487 {
  %6 = alloca %struct.timespec, align 8, !DIAssignID !3515
  %7 = alloca i64, align 8, !DIAssignID !3516
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3498, metadata !DIExpression(), metadata !3516, metadata ptr %7, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3492, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3494, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3517
  %8 = tail call ptr @__errno_location() #43, !dbg !3518
  %9 = load i32, ptr %8, align 4, !dbg !3518, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3496, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 238328, metadata !3497, metadata !DIExpression()), !dbg !3517
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !3519
  store i64 0, ptr %7, align 8, !dbg !3520, !tbaa !2902, !DIAssignID !3521
  call void @llvm.dbg.assign(metadata i64 0, metadata !3498, metadata !DIExpression(), metadata !3521, metadata ptr %7, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3503, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 -821457390474406912, metadata !3504, metadata !DIExpression()), !dbg !3517
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3506, metadata !DIExpression()), !dbg !3517
  %11 = sext i32 %1 to i64, !dbg !3523
  %12 = add i64 %11, %4, !dbg !3525
  %13 = icmp ult i64 %10, %12, !dbg !3526
  br i1 %13, label %80, label %14, !dbg !3527

14:                                               ; preds = %5
  %15 = sub i64 %10, %12, !dbg !3528
  %16 = getelementptr inbounds i8, ptr %0, i64 %15, !dbg !3529
  %17 = tail call i64 @strspn(ptr noundef %16, ptr noundef nonnull @.str.99) #41, !dbg !3530
  %18 = icmp ult i64 %17, %4, !dbg !3531
  br i1 %18, label %80, label %19, !dbg !3532

19:                                               ; preds = %14
  %20 = icmp eq i64 %4, 0
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3508, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !3502, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3503, metadata !DIExpression()), !dbg !3517
  %21 = getelementptr inbounds %struct.timespec, ptr %6, i64 0, i32 1
  br label %25, !dbg !3534

22:                                               ; preds = %77
  %23 = add nuw nsw i32 %26, 1, !dbg !3535
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !3508, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !3508, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3502, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !3503, metadata !DIExpression()), !dbg !3517
  %24 = icmp eq i32 %23, 238328, !dbg !3536
  br i1 %24, label %.loopexit4, label %25, !dbg !3534, !llvm.loop !3537

25:                                               ; preds = %19, %22
  %26 = phi i32 [ 0, %19 ], [ %23, %22 ]
  %27 = phi i64 [ undef, %19 ], [ %31, %22 ]
  %28 = phi i32 [ 0, %19 ], [ %30, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3508, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3502, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3503, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3510, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3502, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3503, metadata !DIExpression()), !dbg !3517
  br i1 %20, label %29, label %.preheader2, !dbg !3540

.preheader2:                                      ; preds = %25
  br label %34, !dbg !3540

.loopexit3:                                       ; preds = %64
  %.lcssa9 = phi i64 [ %68, %64 ], !dbg !3541
  %.lcssa8 = phi i32 [ %74, %64 ], !dbg !3544
  br label %29, !dbg !3545

29:                                               ; preds = %.loopexit3, %25
  %30 = phi i32 [ %28, %25 ], [ %.lcssa8, %.loopexit3 ], !dbg !3517
  %31 = phi i64 [ %27, %25 ], [ %.lcssa9, %.loopexit3 ]
  %32 = call i32 %3(ptr noundef %0, ptr noundef %2) #40, !dbg !3545
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !3514, metadata !DIExpression()), !dbg !3546
  %33 = icmp sgt i32 %32, -1, !dbg !3547
  br i1 %33, label %.loopexit4, label %77, !dbg !3549

34:                                               ; preds = %.preheader2, %64
  %35 = phi i64 [ %75, %64 ], [ 0, %.preheader2 ]
  %36 = phi i64 [ %68, %64 ], [ %27, %.preheader2 ]
  %37 = phi i32 [ %74, %64 ], [ %28, %.preheader2 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3510, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3502, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !3503, metadata !DIExpression()), !dbg !3517
  %38 = icmp eq i32 %37, 0, !dbg !3550
  br i1 %38, label %39, label %64, !dbg !3552

39:                                               ; preds = %34
  %40 = load i64, ptr %7, align 8, !dbg !3553, !tbaa !2902
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3555, metadata !DIExpression(), metadata !3515, metadata ptr %6, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %7, metadata !3561, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i64 %40, metadata !3562, metadata !DIExpression()), !dbg !3571
  %41 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #40, !dbg !3573
  %42 = icmp eq i64 %41, 8, !dbg !3575
  br i1 %42, label %.preheader, label %46, !dbg !3576

.preheader:                                       ; preds = %39
  br label %61, !dbg !3577

43:                                               ; preds = %61
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3555, metadata !DIExpression(), metadata !3515, metadata ptr %6, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %7, metadata !3561, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i64 %62, metadata !3562, metadata !DIExpression()), !dbg !3571
  %44 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #40, !dbg !3573
  %45 = icmp eq i64 %44, 8, !dbg !3575
  br i1 %45, label %61, label %.loopexit1, !dbg !3576, !llvm.loop !3578

.loopexit1:                                       ; preds = %43
  %.lcssa7 = phi i64 [ %62, %43 ], !dbg !3580
  br label %46, !dbg !3581

46:                                               ; preds = %.loopexit1, %39
  %47 = phi i64 [ %40, %39 ], [ %.lcssa7, %.loopexit1 ], !dbg !3553
  call void @llvm.dbg.value(metadata i64 %47, metadata !3563, metadata !DIExpression()), !dbg !3571
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #40, !dbg !3581
  %48 = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %6) #40, !dbg !3582
  %49 = load i64, ptr %6, align 8, !dbg !3583, !tbaa !3584
  call void @llvm.dbg.value(metadata i64 %47, metadata !3586, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %49, metadata !3591, metadata !DIExpression()), !dbg !3592
  %50 = mul i64 %47, 2862933555777941757, !dbg !3594
  %51 = add i64 %50, 3037000493, !dbg !3595
  %52 = xor i64 %49, %51, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %52, metadata !3563, metadata !DIExpression()), !dbg !3571
  %53 = load i64, ptr %21, align 8, !dbg !3597, !tbaa !3598
  call void @llvm.dbg.value(metadata i64 %52, metadata !3586, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %53, metadata !3591, metadata !DIExpression()), !dbg !3599
  %54 = mul i64 %52, 2862933555777941757, !dbg !3601
  %55 = add i64 %54, 3037000493, !dbg !3602
  %56 = xor i64 %55, %53, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %56, metadata !3563, metadata !DIExpression()), !dbg !3571
  %57 = call i64 @clock() #40, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %56, metadata !3586, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %57, metadata !3591, metadata !DIExpression()), !dbg !3605
  %58 = mul i64 %56, 2862933555777941757, !dbg !3607
  %59 = add i64 %58, 3037000493, !dbg !3608
  %60 = xor i64 %59, %57, !dbg !3609
  store i64 %60, ptr %7, align 8, !dbg !3610, !tbaa !2902, !DIAssignID !3611
  call void @llvm.dbg.assign(metadata i64 %60, metadata !3498, metadata !DIExpression(), metadata !3611, metadata ptr %7, metadata !DIExpression()), !dbg !3517
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #40, !dbg !3612
  br label %64, !dbg !3577

61:                                               ; preds = %.preheader, %43
  %62 = load i64, ptr %7, align 8, !dbg !3580
  %63 = icmp ugt i64 %62, -821457390474406913, !dbg !3580
  br i1 %63, label %43, label %.loopexit, !dbg !3577, !llvm.loop !3578

.loopexit:                                        ; preds = %61
  %.lcssa = phi i64 [ %62, %61 ], !dbg !3580
  br label %64

64:                                               ; preds = %.loopexit, %46, %34
  %65 = phi i32 [ %37, %34 ], [ 10, %46 ], [ 10, %.loopexit ], !dbg !3517
  %66 = phi i64 [ %36, %34 ], [ %60, %46 ], [ %.lcssa, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !3502, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !3503, metadata !DIExpression()), !dbg !3517
  %67 = freeze i64 %66
  %68 = udiv i64 %67, 62, !dbg !3541
  %69 = mul i64 %68, 62
  %70 = sub i64 %67, %69
  %71 = getelementptr inbounds [63 x i8], ptr @letters, i64 0, i64 %70, !dbg !3613
  %72 = load i8, ptr %71, align 1, !dbg !3613, !tbaa !952
  %73 = getelementptr inbounds i8, ptr %16, i64 %35, !dbg !3614
  store i8 %72, ptr %73, align 1, !dbg !3615, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !3502, metadata !DIExpression()), !dbg !3517
  %74 = add nsw i32 %65, -1, !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !3503, metadata !DIExpression()), !dbg !3517
  %75 = add nuw i64 %35, 1, !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !3510, metadata !DIExpression()), !dbg !3539
  %76 = icmp eq i64 %75, %4, !dbg !3617
  br i1 %76, label %.loopexit3, label %34, !dbg !3540, !llvm.loop !3618

77:                                               ; preds = %29
  %78 = load i32, ptr %8, align 4, !dbg !3620, !tbaa !943
  %79 = icmp eq i32 %78, 17, !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3508, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3533
  br i1 %79, label %22, label %.loopexit6

.loopexit4:                                       ; preds = %29, %22
  %.ph = phi i32 [ 17, %22 ], [ %9, %29 ]
  %.ph5 = phi i32 [ -1, %22 ], [ %32, %29 ]
  br label %80, !dbg !3517

80:                                               ; preds = %.loopexit4, %5, %14
  %81 = phi i32 [ 22, %14 ], [ 22, %5 ], [ %.ph, %.loopexit4 ]
  %82 = phi i32 [ -1, %14 ], [ -1, %5 ], [ %.ph5, %.loopexit4 ]
  store i32 %81, ptr %8, align 4, !dbg !3517, !tbaa !943
  br label %83, !dbg !3623

.loopexit6:                                       ; preds = %77
  br label %83, !dbg !3623

83:                                               ; preds = %.loopexit6, %80
  %84 = phi i32 [ %82, %80 ], [ -1, %.loopexit6 ], !dbg !3517
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !3623
  ret i32 %84, !dbg !3623
}

declare !dbg !3624 i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3630 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3638 i64 @clock() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @try_file(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !dbg !3644 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3647, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3648, metadata !DIExpression()), !dbg !3649
  %3 = load i32, ptr %1, align 4, !dbg !3650, !tbaa !943
  %4 = and i32 %3, -196, !dbg !3651
  %5 = or disjoint i32 %4, 194, !dbg !3652
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %5, i32 noundef 384) #40, !dbg !3653
  ret i32 %6, !dbg !3654
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @try_dir(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3655 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3657, metadata !DIExpression()), !dbg !3659
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3658, metadata !DIExpression()), !dbg !3659
  %3 = tail call i32 @mkdir(ptr noundef %0, i32 noundef 448) #40, !dbg !3660
  ret i32 %3, !dbg !3661
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_nocreate(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3662 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !3695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3666, metadata !DIExpression(), metadata !3695, metadata ptr %3, metadata !DIExpression()), !dbg !3696
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3664, metadata !DIExpression()), !dbg !3696
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3665, metadata !DIExpression()), !dbg !3696
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #40, !dbg !3697
  %4 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #40, !dbg !3698
  %5 = icmp eq i32 %4, 0, !dbg !3700
  %6 = tail call ptr @__errno_location() #43, !dbg !3701
  br i1 %5, label %10, label %7, !dbg !3702

7:                                                ; preds = %2
  %8 = load i32, ptr %6, align 4, !dbg !3703, !tbaa !943
  %9 = icmp eq i32 %8, 75, !dbg !3704
  br i1 %9, label %10, label %11, !dbg !3705

10:                                               ; preds = %2, %7
  store i32 17, ptr %6, align 4, !dbg !3706, !tbaa !943
  br label %11, !dbg !3706

11:                                               ; preds = %10, %7
  %12 = load i32, ptr %6, align 4, !dbg !3707, !tbaa !943
  %13 = icmp ne i32 %12, 2, !dbg !3708
  %14 = sext i1 %13 to i32, !dbg !3707
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #40, !dbg !3709
  ret i32 %14, !dbg !3710
}

; Function Attrs: nofree nounwind
declare !dbg !3711 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3717 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3720 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #29

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3723 {
  %5 = alloca i32, align 4, !DIAssignID !3731
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3727, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3728, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3729, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  call void @llvm.dbg.assign(metadata i1 undef, metadata !661, metadata !DIExpression(), metadata !3731, metadata ptr %5, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %0, metadata !659, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %1, metadata !660, metadata !DIExpression()), !dbg !3733
  store i32 %2, ptr %5, align 4, !tbaa !943, !DIAssignID !3735
  call void @llvm.dbg.assign(metadata i32 %2, metadata !661, metadata !DIExpression(), metadata !3735, metadata ptr %5, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %3, metadata !662, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 6, metadata !663, metadata !DIExpression()), !dbg !3733
  %6 = sext i32 %3 to i64, !dbg !3736
  %7 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %6, !dbg !3736
  %8 = load ptr, ptr %7, align 8, !dbg !3736, !tbaa !875
  %9 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %8, i64 noundef 6), !dbg !3737
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5), !dbg !3738
  ret i32 %9, !dbg !3739
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #10 !dbg !3740 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3744, metadata !DIExpression()), !dbg !3748
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3745, metadata !DIExpression()), !dbg !3748
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3746, metadata !DIExpression()), !dbg !3748
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3747, metadata !DIExpression()), !dbg !3748
  %5 = tail call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 6), !dbg !3749
  ret i32 %5, !dbg !3750
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3751 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3790, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3791, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3792, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3793, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3794, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3795, metadata !DIExpression()), !dbg !3796
  %7 = icmp eq ptr %1, null, !dbg !3797
  br i1 %7, label %10, label %8, !dbg !3799

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3800
  br label %12, !dbg !3800

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #40, !dbg !3801
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #40, !dbg !3802
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3802
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3803
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #40, !dbg !3804
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #40, !dbg !3804
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3805
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
  ], !dbg !3806

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #40, !dbg !3807
  %21 = load ptr, ptr %4, align 8, !dbg !3807, !tbaa !875
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3807
  br label %147, !dbg !3809

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #40, !dbg !3810
  %25 = load ptr, ptr %4, align 8, !dbg !3810, !tbaa !875
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3810
  %27 = load ptr, ptr %26, align 8, !dbg !3810, !tbaa !875
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3810
  br label %147, !dbg !3811

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #40, !dbg !3812
  %31 = load ptr, ptr %4, align 8, !dbg !3812, !tbaa !875
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3812
  %33 = load ptr, ptr %32, align 8, !dbg !3812, !tbaa !875
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3812
  %35 = load ptr, ptr %34, align 8, !dbg !3812, !tbaa !875
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3812
  br label %147, !dbg !3813

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #40, !dbg !3814
  %39 = load ptr, ptr %4, align 8, !dbg !3814, !tbaa !875
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3814
  %41 = load ptr, ptr %40, align 8, !dbg !3814, !tbaa !875
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3814
  %43 = load ptr, ptr %42, align 8, !dbg !3814, !tbaa !875
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3814
  %45 = load ptr, ptr %44, align 8, !dbg !3814, !tbaa !875
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3814
  br label %147, !dbg !3815

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #40, !dbg !3816
  %49 = load ptr, ptr %4, align 8, !dbg !3816, !tbaa !875
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3816
  %51 = load ptr, ptr %50, align 8, !dbg !3816, !tbaa !875
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3816
  %53 = load ptr, ptr %52, align 8, !dbg !3816, !tbaa !875
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3816
  %55 = load ptr, ptr %54, align 8, !dbg !3816, !tbaa !875
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3816
  %57 = load ptr, ptr %56, align 8, !dbg !3816, !tbaa !875
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3816
  br label %147, !dbg !3817

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #40, !dbg !3818
  %61 = load ptr, ptr %4, align 8, !dbg !3818, !tbaa !875
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3818
  %63 = load ptr, ptr %62, align 8, !dbg !3818, !tbaa !875
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3818
  %65 = load ptr, ptr %64, align 8, !dbg !3818, !tbaa !875
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3818
  %67 = load ptr, ptr %66, align 8, !dbg !3818, !tbaa !875
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3818
  %69 = load ptr, ptr %68, align 8, !dbg !3818, !tbaa !875
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3818
  %71 = load ptr, ptr %70, align 8, !dbg !3818, !tbaa !875
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3818
  br label %147, !dbg !3819

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #40, !dbg !3820
  %75 = load ptr, ptr %4, align 8, !dbg !3820, !tbaa !875
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3820
  %77 = load ptr, ptr %76, align 8, !dbg !3820, !tbaa !875
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3820
  %79 = load ptr, ptr %78, align 8, !dbg !3820, !tbaa !875
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3820
  %81 = load ptr, ptr %80, align 8, !dbg !3820, !tbaa !875
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3820
  %83 = load ptr, ptr %82, align 8, !dbg !3820, !tbaa !875
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3820
  %85 = load ptr, ptr %84, align 8, !dbg !3820, !tbaa !875
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3820
  %87 = load ptr, ptr %86, align 8, !dbg !3820, !tbaa !875
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3820
  br label %147, !dbg !3821

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #40, !dbg !3822
  %91 = load ptr, ptr %4, align 8, !dbg !3822, !tbaa !875
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3822
  %93 = load ptr, ptr %92, align 8, !dbg !3822, !tbaa !875
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3822
  %95 = load ptr, ptr %94, align 8, !dbg !3822, !tbaa !875
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3822
  %97 = load ptr, ptr %96, align 8, !dbg !3822, !tbaa !875
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3822
  %99 = load ptr, ptr %98, align 8, !dbg !3822, !tbaa !875
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3822
  %101 = load ptr, ptr %100, align 8, !dbg !3822, !tbaa !875
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3822
  %103 = load ptr, ptr %102, align 8, !dbg !3822, !tbaa !875
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3822
  %105 = load ptr, ptr %104, align 8, !dbg !3822, !tbaa !875
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3822
  br label %147, !dbg !3823

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #40, !dbg !3824
  %109 = load ptr, ptr %4, align 8, !dbg !3824, !tbaa !875
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3824
  %111 = load ptr, ptr %110, align 8, !dbg !3824, !tbaa !875
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3824
  %113 = load ptr, ptr %112, align 8, !dbg !3824, !tbaa !875
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3824
  %115 = load ptr, ptr %114, align 8, !dbg !3824, !tbaa !875
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3824
  %117 = load ptr, ptr %116, align 8, !dbg !3824, !tbaa !875
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3824
  %119 = load ptr, ptr %118, align 8, !dbg !3824, !tbaa !875
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3824
  %121 = load ptr, ptr %120, align 8, !dbg !3824, !tbaa !875
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3824
  %123 = load ptr, ptr %122, align 8, !dbg !3824, !tbaa !875
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3824
  %125 = load ptr, ptr %124, align 8, !dbg !3824, !tbaa !875
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3824
  br label %147, !dbg !3825

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #40, !dbg !3826
  %129 = load ptr, ptr %4, align 8, !dbg !3826, !tbaa !875
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3826
  %131 = load ptr, ptr %130, align 8, !dbg !3826, !tbaa !875
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3826
  %133 = load ptr, ptr %132, align 8, !dbg !3826, !tbaa !875
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3826
  %135 = load ptr, ptr %134, align 8, !dbg !3826, !tbaa !875
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3826
  %137 = load ptr, ptr %136, align 8, !dbg !3826, !tbaa !875
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3826
  %139 = load ptr, ptr %138, align 8, !dbg !3826, !tbaa !875
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3826
  %141 = load ptr, ptr %140, align 8, !dbg !3826, !tbaa !875
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3826
  %143 = load ptr, ptr %142, align 8, !dbg !3826, !tbaa !875
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3826
  %145 = load ptr, ptr %144, align 8, !dbg !3826, !tbaa !875
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3826
  br label %147, !dbg !3827

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3829 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3834, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3835, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3836, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3837, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3838, metadata !DIExpression()), !dbg !3839
  br label %6, !dbg !3840

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3838, metadata !DIExpression()), !dbg !3839
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3843
  %9 = load ptr, ptr %8, align 8, !dbg !3843, !tbaa !875
  %10 = icmp eq ptr %9, null, !dbg !3845
  %11 = add i64 %7, 1, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3838, metadata !DIExpression()), !dbg !3839
  br i1 %10, label %12, label %6, !dbg !3845, !llvm.loop !3847

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3842
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3849
  ret void, !dbg !3850
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3851 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3873
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3871, metadata !DIExpression(), metadata !3873, metadata ptr %6, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3865, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3866, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3867, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3868, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3869, metadata !DIExpression(DW_OP_deref)), !dbg !3874
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3875
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3870, metadata !DIExpression()), !dbg !3874
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3870, metadata !DIExpression()), !dbg !3874
  %10 = icmp sgt i32 %9, -1, !dbg !3876
  br i1 %10, label %18, label %11, !dbg !3876

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3876
  store i32 %12, ptr %7, align 8, !dbg !3876
  %13 = icmp ult i32 %9, -7, !dbg !3876
  br i1 %13, label %14, label %18, !dbg !3876

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3876
  %16 = sext i32 %9 to i64, !dbg !3876
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3876
  br label %22, !dbg !3876

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3876
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3876
  store ptr %21, ptr %4, align 8, !dbg !3876
  br label %22, !dbg !3876

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3876
  %25 = load ptr, ptr %24, align 8, !dbg !3876
  store ptr %25, ptr %6, align 8, !dbg !3879, !tbaa !875
  %26 = icmp eq ptr %25, null, !dbg !3880
  br i1 %26, label %197, label %27, !dbg !3881

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3870, metadata !DIExpression()), !dbg !3874
  %28 = icmp sgt i32 %23, -1, !dbg !3876
  br i1 %28, label %36, label %29, !dbg !3876

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3876
  store i32 %30, ptr %7, align 8, !dbg !3876
  %31 = icmp ult i32 %23, -7, !dbg !3876
  br i1 %31, label %32, label %36, !dbg !3876

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3876
  %34 = sext i32 %23 to i64, !dbg !3876
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3876
  br label %40, !dbg !3876

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3876
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3876
  store ptr %39, ptr %4, align 8, !dbg !3876
  br label %40, !dbg !3876

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3876
  %43 = load ptr, ptr %42, align 8, !dbg !3876
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3882
  store ptr %43, ptr %44, align 8, !dbg !3879, !tbaa !875
  %45 = icmp eq ptr %43, null, !dbg !3880
  br i1 %45, label %197, label %46, !dbg !3881

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3870, metadata !DIExpression()), !dbg !3874
  %47 = icmp sgt i32 %41, -1, !dbg !3876
  br i1 %47, label %55, label %48, !dbg !3876

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3876
  store i32 %49, ptr %7, align 8, !dbg !3876
  %50 = icmp ult i32 %41, -7, !dbg !3876
  br i1 %50, label %51, label %55, !dbg !3876

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3876
  %53 = sext i32 %41 to i64, !dbg !3876
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3876
  br label %59, !dbg !3876

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3876
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3876
  store ptr %58, ptr %4, align 8, !dbg !3876
  br label %59, !dbg !3876

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3876
  %62 = load ptr, ptr %61, align 8, !dbg !3876
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3882
  store ptr %62, ptr %63, align 8, !dbg !3879, !tbaa !875
  %64 = icmp eq ptr %62, null, !dbg !3880
  br i1 %64, label %197, label %65, !dbg !3881

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3870, metadata !DIExpression()), !dbg !3874
  %66 = icmp sgt i32 %60, -1, !dbg !3876
  br i1 %66, label %74, label %67, !dbg !3876

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3876
  store i32 %68, ptr %7, align 8, !dbg !3876
  %69 = icmp ult i32 %60, -7, !dbg !3876
  br i1 %69, label %70, label %74, !dbg !3876

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3876
  %72 = sext i32 %60 to i64, !dbg !3876
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3876
  br label %78, !dbg !3876

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3876
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3876
  store ptr %77, ptr %4, align 8, !dbg !3876
  br label %78, !dbg !3876

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3876
  %81 = load ptr, ptr %80, align 8, !dbg !3876
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3882
  store ptr %81, ptr %82, align 8, !dbg !3879, !tbaa !875
  %83 = icmp eq ptr %81, null, !dbg !3880
  br i1 %83, label %197, label %84, !dbg !3881

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3870, metadata !DIExpression()), !dbg !3874
  %85 = icmp sgt i32 %79, -1, !dbg !3876
  br i1 %85, label %93, label %86, !dbg !3876

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3876
  store i32 %87, ptr %7, align 8, !dbg !3876
  %88 = icmp ult i32 %79, -7, !dbg !3876
  br i1 %88, label %89, label %93, !dbg !3876

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3876
  %91 = sext i32 %79 to i64, !dbg !3876
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3876
  br label %97, !dbg !3876

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3876
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3876
  store ptr %96, ptr %4, align 8, !dbg !3876
  br label %97, !dbg !3876

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3876
  %100 = load ptr, ptr %99, align 8, !dbg !3876
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3882
  store ptr %100, ptr %101, align 8, !dbg !3879, !tbaa !875
  %102 = icmp eq ptr %100, null, !dbg !3880
  br i1 %102, label %197, label %103, !dbg !3881

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3870, metadata !DIExpression()), !dbg !3874
  %104 = icmp sgt i32 %98, -1, !dbg !3876
  br i1 %104, label %112, label %105, !dbg !3876

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3876
  store i32 %106, ptr %7, align 8, !dbg !3876
  %107 = icmp ult i32 %98, -7, !dbg !3876
  br i1 %107, label %108, label %112, !dbg !3876

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3876
  %110 = sext i32 %98 to i64, !dbg !3876
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3876
  br label %116, !dbg !3876

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3876
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3876
  store ptr %115, ptr %4, align 8, !dbg !3876
  br label %116, !dbg !3876

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3876
  %119 = load ptr, ptr %118, align 8, !dbg !3876
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3882
  store ptr %119, ptr %120, align 8, !dbg !3879, !tbaa !875
  %121 = icmp eq ptr %119, null, !dbg !3880
  br i1 %121, label %197, label %122, !dbg !3881

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3870, metadata !DIExpression()), !dbg !3874
  %123 = icmp sgt i32 %117, -1, !dbg !3876
  br i1 %123, label %131, label %124, !dbg !3876

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3876
  store i32 %125, ptr %7, align 8, !dbg !3876
  %126 = icmp ult i32 %117, -7, !dbg !3876
  br i1 %126, label %127, label %131, !dbg !3876

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3876
  %129 = sext i32 %117 to i64, !dbg !3876
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3876
  br label %135, !dbg !3876

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3876
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3876
  store ptr %134, ptr %4, align 8, !dbg !3876
  br label %135, !dbg !3876

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3876
  %138 = load ptr, ptr %137, align 8, !dbg !3876
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3882
  store ptr %138, ptr %139, align 8, !dbg !3879, !tbaa !875
  %140 = icmp eq ptr %138, null, !dbg !3880
  br i1 %140, label %197, label %141, !dbg !3881

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3870, metadata !DIExpression()), !dbg !3874
  %142 = icmp sgt i32 %136, -1, !dbg !3876
  br i1 %142, label %150, label %143, !dbg !3876

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3876
  store i32 %144, ptr %7, align 8, !dbg !3876
  %145 = icmp ult i32 %136, -7, !dbg !3876
  br i1 %145, label %146, label %150, !dbg !3876

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3876
  %148 = sext i32 %136 to i64, !dbg !3876
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3876
  br label %154, !dbg !3876

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3876
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3876
  store ptr %153, ptr %4, align 8, !dbg !3876
  br label %154, !dbg !3876

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3876
  %157 = load ptr, ptr %156, align 8, !dbg !3876
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3882
  store ptr %157, ptr %158, align 8, !dbg !3879, !tbaa !875
  %159 = icmp eq ptr %157, null, !dbg !3880
  br i1 %159, label %197, label %160, !dbg !3881

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3870, metadata !DIExpression()), !dbg !3874
  %161 = icmp sgt i32 %155, -1, !dbg !3876
  br i1 %161, label %169, label %162, !dbg !3876

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3876
  store i32 %163, ptr %7, align 8, !dbg !3876
  %164 = icmp ult i32 %155, -7, !dbg !3876
  br i1 %164, label %165, label %169, !dbg !3876

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3876
  %167 = sext i32 %155 to i64, !dbg !3876
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3876
  br label %173, !dbg !3876

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3876
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3876
  store ptr %172, ptr %4, align 8, !dbg !3876
  br label %173, !dbg !3876

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3876
  %176 = load ptr, ptr %175, align 8, !dbg !3876
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3882
  store ptr %176, ptr %177, align 8, !dbg !3879, !tbaa !875
  %178 = icmp eq ptr %176, null, !dbg !3880
  br i1 %178, label %197, label %179, !dbg !3881

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3870, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3870, metadata !DIExpression()), !dbg !3874
  %180 = icmp sgt i32 %174, -1, !dbg !3876
  br i1 %180, label %188, label %181, !dbg !3876

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3876
  store i32 %182, ptr %7, align 8, !dbg !3876
  %183 = icmp ult i32 %174, -7, !dbg !3876
  br i1 %183, label %184, label %188, !dbg !3876

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3876
  %186 = sext i32 %174 to i64, !dbg !3876
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3876
  br label %191, !dbg !3876

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3876
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3876
  store ptr %190, ptr %4, align 8, !dbg !3876
  br label %191, !dbg !3876

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3876
  %193 = load ptr, ptr %192, align 8, !dbg !3876
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3882
  store ptr %193, ptr %194, align 8, !dbg !3879, !tbaa !875
  %195 = icmp eq ptr %193, null, !dbg !3880
  %196 = select i1 %195, i64 9, i64 10, !dbg !3881
  br label %197, !dbg !3881

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3883
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3884
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3885
  ret void, !dbg !3885
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3886 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3895
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3894, metadata !DIExpression(), metadata !3895, metadata ptr %5, metadata !DIExpression()), !dbg !3896
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3890, metadata !DIExpression()), !dbg !3896
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3891, metadata !DIExpression()), !dbg !3896
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3892, metadata !DIExpression()), !dbg !3896
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3893, metadata !DIExpression()), !dbg !3896
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3897
  call void @llvm.va_start(ptr nonnull %5), !dbg !3898
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !3899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3899, !tbaa.struct !1589
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3899
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !3899
  call void @llvm.va_end(ptr nonnull %5), !dbg !3900
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3901
  ret void, !dbg !3901
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3902 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3903, !tbaa !875
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3903
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #40, !dbg !3904
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #40, !dbg !3904
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #40, !dbg !3905
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #40, !dbg !3905
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #40, !dbg !3906
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #40, !dbg !3906
  ret void, !dbg !3907
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3908 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3913, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3914, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %0, metadata !3917, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %1, metadata !3920, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %2, metadata !3921, metadata !DIExpression()), !dbg !3922
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3924
  call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression()), !dbg !3930
  %5 = icmp eq ptr %4, null, !dbg !3932
  br i1 %5, label %6, label %7, !dbg !3934

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3935
  unreachable, !dbg !3935

7:                                                ; preds = %3
  ret ptr %4, !dbg !3936
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3918 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3917, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3920, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3921, metadata !DIExpression()), !dbg !3937
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression()), !dbg !3939
  %5 = icmp eq ptr %4, null, !dbg !3941
  br i1 %5, label %6, label %7, !dbg !3942

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3943
  unreachable, !dbg !3943

7:                                                ; preds = %3
  ret ptr %4, !dbg !3944
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3945 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3947, metadata !DIExpression()), !dbg !3948
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %2, metadata !3925, metadata !DIExpression()), !dbg !3950
  %3 = icmp eq ptr %2, null, !dbg !3952
  br i1 %3, label %4, label %5, !dbg !3953

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3954
  unreachable, !dbg !3954

5:                                                ; preds = %1
  ret ptr %2, !dbg !3955
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3956 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i64 %0, metadata !3962, metadata !DIExpression()), !dbg !3966
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3968
  call void @llvm.dbg.value(metadata ptr %2, metadata !3925, metadata !DIExpression()), !dbg !3969
  %3 = icmp eq ptr %2, null, !dbg !3971
  br i1 %3, label %4, label %5, !dbg !3972

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3973
  unreachable, !dbg !3973

5:                                                ; preds = %1
  ret ptr %2, !dbg !3974
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3975 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %0, metadata !3947, metadata !DIExpression()), !dbg !3981
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3983
  call void @llvm.dbg.value(metadata ptr %2, metadata !3925, metadata !DIExpression()), !dbg !3984
  %3 = icmp eq ptr %2, null, !dbg !3986
  br i1 %3, label %4, label %5, !dbg !3987

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3988
  unreachable, !dbg !3988

5:                                                ; preds = %1
  ret ptr %2, !dbg !3989
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3990 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %0, metadata !3997, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %1, metadata !4001, metadata !DIExpression()), !dbg !4002
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4004
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4005
  call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression()), !dbg !4006
  %5 = icmp eq ptr %4, null, !dbg !4008
  br i1 %5, label %6, label %7, !dbg !4009

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4010
  unreachable, !dbg !4010

7:                                                ; preds = %2
  ret ptr %4, !dbg !4011
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4012 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4013 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4017, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %0, metadata !4020, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %0, metadata !3997, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !4001, metadata !DIExpression()), !dbg !4026
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4028
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4029
  call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression()), !dbg !4030
  %5 = icmp eq ptr %4, null, !dbg !4032
  br i1 %5, label %6, label %7, !dbg !4033

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4034
  unreachable, !dbg !4034

7:                                                ; preds = %2
  ret ptr %4, !dbg !4035
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4036 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4040, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4041, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %1, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %2, metadata !4048, metadata !DIExpression()), !dbg !4049
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4051
  call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression()), !dbg !4052
  %5 = icmp eq ptr %4, null, !dbg !4054
  br i1 %5, label %6, label %7, !dbg !4055

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4056
  unreachable, !dbg !4056

7:                                                ; preds = %3
  ret ptr %4, !dbg !4057
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4058 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4062, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr null, metadata !3917, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %0, metadata !3920, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3921, metadata !DIExpression()), !dbg !4065
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4067
  call void @llvm.dbg.value(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !4068
  %4 = icmp eq ptr %3, null, !dbg !4070
  br i1 %4, label %5, label %6, !dbg !4071

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4072
  unreachable, !dbg !4072

6:                                                ; preds = %2
  ret ptr %3, !dbg !4073
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4074 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4078, metadata !DIExpression()), !dbg !4080
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4079, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr null, metadata !4040, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %0, metadata !4041, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr null, metadata !4044, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %0, metadata !4047, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %1, metadata !4048, metadata !DIExpression()), !dbg !4083
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4085
  call void @llvm.dbg.value(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !4086
  %4 = icmp eq ptr %3, null, !dbg !4088
  br i1 %4, label %5, label %6, !dbg !4089

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4090
  unreachable, !dbg !4090

6:                                                ; preds = %2
  ret ptr %3, !dbg !4091
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4096, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %0, metadata !819, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %1, metadata !820, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 1, metadata !821, metadata !DIExpression()), !dbg !4099
  %3 = load i64, ptr %1, align 8, !dbg !4101, !tbaa !2902
  call void @llvm.dbg.value(metadata i64 %3, metadata !822, metadata !DIExpression()), !dbg !4099
  %4 = icmp eq ptr %0, null, !dbg !4102
  br i1 %4, label %5, label %8, !dbg !4104

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4105
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4108
  br label %15, !dbg !4108

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4109
  %10 = add nuw i64 %9, 1, !dbg !4109
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4109
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4109
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %13, metadata !822, metadata !DIExpression()), !dbg !4099
  br i1 %12, label %14, label %15, !dbg !4112

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4113
  unreachable, !dbg !4113

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4099
  call void @llvm.dbg.value(metadata i64 %16, metadata !822, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3917, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %16, metadata !3920, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 1, metadata !3921, metadata !DIExpression()), !dbg !4114
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4116
  call void @llvm.dbg.value(metadata ptr %17, metadata !3925, metadata !DIExpression()), !dbg !4117
  %18 = icmp eq ptr %17, null, !dbg !4119
  br i1 %18, label %19, label %20, !dbg !4120

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4121
  unreachable, !dbg !4121

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !819, metadata !DIExpression()), !dbg !4099
  store i64 %16, ptr %1, align 8, !dbg !4122, !tbaa !2902
  ret ptr %17, !dbg !4123
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !814 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !819, metadata !DIExpression()), !dbg !4124
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !820, metadata !DIExpression()), !dbg !4124
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !821, metadata !DIExpression()), !dbg !4124
  %4 = load i64, ptr %1, align 8, !dbg !4125, !tbaa !2902
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !822, metadata !DIExpression()), !dbg !4124
  %5 = icmp eq ptr %0, null, !dbg !4126
  br i1 %5, label %6, label %13, !dbg !4127

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4128
  br i1 %7, label %8, label %20, !dbg !4129

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4130
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !822, metadata !DIExpression()), !dbg !4124
  %10 = icmp ugt i64 %2, 128, !dbg !4132
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4133
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !822, metadata !DIExpression()), !dbg !4124
  br label %20, !dbg !4134

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4135
  %15 = add nuw i64 %14, 1, !dbg !4135
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4135
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4135
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !822, metadata !DIExpression()), !dbg !4124
  br i1 %17, label %19, label %20, !dbg !4136

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4137
  unreachable, !dbg !4137

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4124
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !822, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %0, metadata !3917, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %21, metadata !3920, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %2, metadata !3921, metadata !DIExpression()), !dbg !4138
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4140
  call void @llvm.dbg.value(metadata ptr %22, metadata !3925, metadata !DIExpression()), !dbg !4141
  %23 = icmp eq ptr %22, null, !dbg !4143
  br i1 %23, label %24, label %25, !dbg !4144

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4145
  unreachable, !dbg !4145

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !819, metadata !DIExpression()), !dbg !4124
  store i64 %21, ptr %1, align 8, !dbg !4146, !tbaa !2902
  ret ptr %22, !dbg !4147
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !826 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !835, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !836, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !837, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !838, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !839, metadata !DIExpression()), !dbg !4148
  %6 = load i64, ptr %1, align 8, !dbg !4149, !tbaa !2902
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !840, metadata !DIExpression()), !dbg !4148
  %7 = ashr i64 %6, 1, !dbg !4150
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4150
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4150
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !841, metadata !DIExpression()), !dbg !4148
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !841, metadata !DIExpression()), !dbg !4148
  %12 = icmp sgt i64 %3, -1, !dbg !4153
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4155
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4155
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !841, metadata !DIExpression()), !dbg !4148
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4156
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4156
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !842, metadata !DIExpression()), !dbg !4148
  %18 = icmp slt i64 %17, 128, !dbg !4156
  %19 = select i1 %18, i64 128, i64 0, !dbg !4156
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !843, metadata !DIExpression()), !dbg !4148
  %21 = icmp eq i64 %20, 0, !dbg !4157
  br i1 %21, label %28, label %22, !dbg !4159

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !841, metadata !DIExpression()), !dbg !4148
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4162
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !842, metadata !DIExpression()), !dbg !4148
  br label %28, !dbg !4163

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4148
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !842, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !841, metadata !DIExpression()), !dbg !4148
  %31 = icmp eq ptr %0, null, !dbg !4164
  br i1 %31, label %32, label %33, !dbg !4166

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4167, !tbaa !2902
  br label %33, !dbg !4168

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4169
  %35 = icmp slt i64 %34, %2, !dbg !4171
  br i1 %35, label %36, label %48, !dbg !4172

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4173
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4173
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !841, metadata !DIExpression()), !dbg !4148
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4174
  br i1 %42, label %47, label %43, !dbg !4174

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4175
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4175
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !842, metadata !DIExpression()), !dbg !4148
  br i1 %45, label %47, label %48, !dbg !4176

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !4177
  unreachable, !dbg !4177

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4148
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !842, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !841, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i64 %50, metadata !3995, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata ptr %0, metadata !3997, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i64 %50, metadata !4001, metadata !DIExpression()), !dbg !4180
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4182
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #47, !dbg !4183
  call void @llvm.dbg.value(metadata ptr %52, metadata !3925, metadata !DIExpression()), !dbg !4184
  %53 = icmp eq ptr %52, null, !dbg !4186
  br i1 %53, label %54, label %55, !dbg !4187

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !4188
  unreachable, !dbg !4188

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !835, metadata !DIExpression()), !dbg !4148
  store i64 %49, ptr %1, align 8, !dbg !4189, !tbaa !2902
  ret ptr %52, !dbg !4190
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4191 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %0, metadata !4195, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i64 1, metadata !4198, metadata !DIExpression()), !dbg !4199
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4201
  call void @llvm.dbg.value(metadata ptr %2, metadata !3925, metadata !DIExpression()), !dbg !4202
  %3 = icmp eq ptr %2, null, !dbg !4204
  br i1 %3, label %4, label %5, !dbg !4205

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4206
  unreachable, !dbg !4206

5:                                                ; preds = %1
  ret ptr %2, !dbg !4207
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4208 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4196 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4195, metadata !DIExpression()), !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4198, metadata !DIExpression()), !dbg !4209
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4210
  call void @llvm.dbg.value(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !4211
  %4 = icmp eq ptr %3, null, !dbg !4213
  br i1 %4, label %5, label %6, !dbg !4214

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4215
  unreachable, !dbg !4215

6:                                                ; preds = %2
  ret ptr %3, !dbg !4216
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4217 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %0, metadata !4221, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 1, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 1, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 1, metadata !4230, metadata !DIExpression()), !dbg !4231
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %2, metadata !3925, metadata !DIExpression()), !dbg !4234
  %3 = icmp eq ptr %2, null, !dbg !4236
  br i1 %3, label %4, label %5, !dbg !4237

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4238
  unreachable, !dbg !4238

5:                                                ; preds = %1
  ret ptr %2, !dbg !4239
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4222 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4221, metadata !DIExpression()), !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4224, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %1, metadata !4230, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %1, metadata !4230, metadata !DIExpression()), !dbg !4241
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4243
  call void @llvm.dbg.value(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !4244
  %4 = icmp eq ptr %3, null, !dbg !4246
  br i1 %4, label %5, label %6, !dbg !4247

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4248
  unreachable, !dbg !4248

6:                                                ; preds = %2
  ret ptr %3, !dbg !4249
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4250 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4254, metadata !DIExpression()), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !3947, metadata !DIExpression()), !dbg !4257
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !4260
  %4 = icmp eq ptr %3, null, !dbg !4262
  br i1 %4, label %5, label %6, !dbg !4263

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4264
  unreachable, !dbg !4264

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4270
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4272
  ret ptr %3, !dbg !4273
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4274 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %1, metadata !3960, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !4283
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4285
  call void @llvm.dbg.value(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !4286
  %4 = icmp eq ptr %3, null, !dbg !4288
  br i1 %4, label %5, label %6, !dbg !4289

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4290
  unreachable, !dbg !4290

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4291
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4293
  ret ptr %3, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4295 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4302
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4300, metadata !DIExpression()), !dbg !4302
  %3 = add nsw i64 %1, 1, !dbg !4303
  call void @llvm.dbg.value(metadata i64 %3, metadata !3960, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %3, metadata !3962, metadata !DIExpression()), !dbg !4306
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4308
  call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression()), !dbg !4309
  %5 = icmp eq ptr %4, null, !dbg !4311
  br i1 %5, label %6, label %7, !dbg !4312

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4313
  unreachable, !dbg !4313

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4302
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4314
  store i8 0, ptr %8, align 1, !dbg !4315, !tbaa !952
  call void @llvm.dbg.value(metadata ptr %4, metadata !4265, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4316
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4318
  ret ptr %4, !dbg !4319
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4320 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4322, metadata !DIExpression()), !dbg !4323
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4324
  %3 = add i64 %2, 1, !dbg !4325
  call void @llvm.dbg.value(metadata ptr %0, metadata !4254, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %3, metadata !4255, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %3, metadata !3947, metadata !DIExpression()), !dbg !4328
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4330
  call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression()), !dbg !4331
  %5 = icmp eq ptr %4, null, !dbg !4333
  br i1 %5, label %6, label %7, !dbg !4334

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4335
  unreachable, !dbg !4335

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4265, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %3, metadata !4269, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4338
  ret ptr %4, !dbg !4339
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4340 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4345, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4342, metadata !DIExpression()), !dbg !4346
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #40, !dbg !4345
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #40, !dbg !4345
  %3 = icmp eq i32 %1, 0, !dbg !4345
  tail call void @llvm.assume(i1 %3), !dbg !4345
  tail call void @abort() #42, !dbg !4347
  unreachable, !dbg !4347
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4353, metadata !DIExpression()), !dbg !4358
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4354, metadata !DIExpression()), !dbg !4358
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4355, metadata !DIExpression()), !dbg !4358
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4356, metadata !DIExpression()), !dbg !4358
  %5 = icmp eq ptr %1, null, !dbg !4359
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4361
  %7 = select i1 %5, ptr @.str.145, ptr %1, !dbg !4361
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4355, metadata !DIExpression()), !dbg !4358
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4354, metadata !DIExpression()), !dbg !4358
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4353, metadata !DIExpression()), !dbg !4358
  %9 = icmp eq ptr %3, null, !dbg !4362
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4364
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4356, metadata !DIExpression()), !dbg !4358
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4365
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4357, metadata !DIExpression()), !dbg !4358
  %12 = icmp ult i64 %11, -3, !dbg !4366
  br i1 %12, label %13, label %17, !dbg !4368

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4369
  %15 = icmp eq i32 %14, 0, !dbg !4369
  br i1 %15, label %16, label %29, !dbg !4370

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4371, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata ptr %10, metadata !4378, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i32 0, metadata !4381, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i64 8, metadata !4382, metadata !DIExpression()), !dbg !4383
  store i64 0, ptr %10, align 1, !dbg !4385
  br label %29, !dbg !4386

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4387
  br i1 %18, label %19, label %20, !dbg !4389

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4390
  unreachable, !dbg !4390

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4391

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4393
  br i1 %23, label %29, label %24, !dbg !4394

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4395
  br i1 %25, label %29, label %26, !dbg !4398

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4399, !tbaa !952
  %28 = zext i8 %27 to i32, !dbg !4400
  store i32 %28, ptr %6, align 4, !dbg !4401, !tbaa !943
  br label %29, !dbg !4402

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4358
  ret i64 %30, !dbg !4403
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4404 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4410 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4412, metadata !DIExpression()), !dbg !4416
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4413, metadata !DIExpression()), !dbg !4416
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4414, metadata !DIExpression()), !dbg !4416
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4417
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4417
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4415, metadata !DIExpression()), !dbg !4416
  br i1 %5, label %6, label %8, !dbg !4419

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4420
  store i32 12, ptr %7, align 4, !dbg !4422, !tbaa !943
  br label %12, !dbg !4423

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4417
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata ptr %0, metadata !4424, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %9, metadata !4427, metadata !DIExpression()), !dbg !4428
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4430
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !4431
  br label %12, !dbg !4432

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4416
  ret ptr %13, !dbg !4433
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4434 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4443
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4439, metadata !DIExpression(), metadata !4443, metadata ptr %2, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4438, metadata !DIExpression()), !dbg !4444
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4445
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4446
  %4 = icmp eq i32 %3, 0, !dbg !4446
  br i1 %4, label %5, label %12, !dbg !4448

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4449, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata ptr @.str.150, metadata !4452, metadata !DIExpression()), !dbg !4453
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.150, i64 2), !dbg !4456
  %7 = icmp eq i32 %6, 0, !dbg !4457
  br i1 %7, label %11, label %8, !dbg !4458

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4449, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr @.str.1.151, metadata !4452, metadata !DIExpression()), !dbg !4459
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.151, i64 6), !dbg !4461
  %10 = icmp eq i32 %9, 0, !dbg !4462
  br i1 %10, label %11, label %12, !dbg !4463

11:                                               ; preds = %8, %5
  br label %12, !dbg !4464

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4444
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4465
  ret i1 %13, !dbg !4465
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4466 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4470, metadata !DIExpression()), !dbg !4473
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4471, metadata !DIExpression()), !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4472, metadata !DIExpression()), !dbg !4473
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4474
  ret i32 %4, !dbg !4475
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4476 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4480, metadata !DIExpression()), !dbg !4481
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4482
  ret ptr %2, !dbg !4483
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4484 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4486, metadata !DIExpression()), !dbg !4488
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4489
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4487, metadata !DIExpression()), !dbg !4488
  ret ptr %2, !dbg !4490
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4491 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4493, metadata !DIExpression()), !dbg !4500
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4494, metadata !DIExpression()), !dbg !4500
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4495, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 %0, metadata !4486, metadata !DIExpression()), !dbg !4501
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4503
  call void @llvm.dbg.value(metadata ptr %4, metadata !4487, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4496, metadata !DIExpression()), !dbg !4500
  %5 = icmp eq ptr %4, null, !dbg !4504
  br i1 %5, label %6, label %9, !dbg !4505

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4506
  br i1 %7, label %19, label %8, !dbg !4509

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4510, !tbaa !952
  br label %19, !dbg !4511

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4512
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4497, metadata !DIExpression()), !dbg !4513
  %11 = icmp ult i64 %10, %2, !dbg !4514
  br i1 %11, label %12, label %14, !dbg !4516

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4517
  call void @llvm.dbg.value(metadata ptr %1, metadata !4519, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %4, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i64 %13, metadata !4523, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4526
  br label %19, !dbg !4527

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4528
  br i1 %15, label %19, label %16, !dbg !4531

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4532
  call void @llvm.dbg.value(metadata ptr %1, metadata !4519, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata ptr %4, metadata !4522, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %17, metadata !4523, metadata !DIExpression()), !dbg !4534
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4536
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4537
  store i8 0, ptr %18, align 1, !dbg !4538, !tbaa !952
  br label %19, !dbg !4539

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4540
  ret i32 %20, !dbg !4541
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !418, !786, !789, !422, !437, !752, !791, !793, !796, !798, !800, !802, !493, !507, !555, !649, !804, !744, !810, !845, !768, !847, !849, !851, !853}
!llvm.ident = !{!855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855}
!llvm.module.flags = !{!856, !857, !858, !859, !860, !861, !862, !863}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mktemp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "de5003826bec9e5f9730c511d0b9293f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1688, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 211)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 74)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 2)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 7)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 59)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 79)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 77)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1184, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 148)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2480, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 310)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1496, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 187)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 50)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 62)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 10)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 24)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 8)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "longopts", scope: !94, file: !2, line: 46, type: !402, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/mktemp.o -MD -MP -MF src/.deps/mktemp.Tpo -c src/mktemp.c -o src/.mktemp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !121, globals: !131, splitDebugInlining: false, nameTableKind: None)
!95 = !{!96, !100, !106}
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 41, baseType: !97, size: 32, elements: !98)
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !{!99}
!99 = !DIEnumerator(name: "SUFFIX_OPTION", value: 256)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 337, baseType: !102, size: 32, elements: !103)
!101 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!105 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 46, baseType: !97, size: 32, elements: !108)
!107 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!109 = !DIEnumerator(name: "_ISupper", value: 256)
!110 = !DIEnumerator(name: "_ISlower", value: 512)
!111 = !DIEnumerator(name: "_ISalpha", value: 1024)
!112 = !DIEnumerator(name: "_ISdigit", value: 2048)
!113 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!114 = !DIEnumerator(name: "_ISspace", value: 8192)
!115 = !DIEnumerator(name: "_ISprint", value: 16384)
!116 = !DIEnumerator(name: "_ISgraph", value: 32768)
!117 = !DIEnumerator(name: "_ISblank", value: 1)
!118 = !DIEnumerator(name: "_IScntrl", value: 2)
!119 = !DIEnumerator(name: "_ISpunct", value: 4)
!120 = !DIEnumerator(name: "_ISalnum", value: 8)
!121 = !{!122, !123, !102, !124, !125, !128, !130}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 18, baseType: !127)
!126 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!127 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !87, !132, !137, !142, !147, !152, !157, !162, !167, !169, !174, !179, !184, !189, !194, !199, !202, !284, !286, !288, !293, !298, !300, !302, !304, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !336, !341, !346, !351, !353, !355, !357, !359, !364, !369, !371, !373, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !92, !398, !400}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 14)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 13)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 11)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 19)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 41)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 48)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 27)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !29, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 5)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 51)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 60)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 43)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 336, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 38)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 12)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !94, file: !2, line: 138, type: !201, isLocal: true, isDefinition: true)
!201 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !204, file: !101, line: 575, type: !102, isLocal: true, isDefinition: true)
!204 = distinct !DISubprogram(name: "oputs_", scope: !101, file: !101, line: 573, type: !205, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !207)
!205 = !DISubroutineType(cc: DW_CC_nocall, types: !206)
!206 = !{null, !128, !128}
!207 = !{!208, !209, !210, !213, !214, !215, !216, !220, !221, !222, !223, !225, !278, !279, !280, !282, !283}
!208 = !DILocalVariable(name: "program", arg: 1, scope: !204, file: !101, line: 573, type: !128)
!209 = !DILocalVariable(name: "option", arg: 2, scope: !204, file: !101, line: 573, type: !128)
!210 = !DILocalVariable(name: "term", scope: !211, file: !101, line: 585, type: !128)
!211 = distinct !DILexicalBlock(scope: !212, file: !101, line: 582, column: 5)
!212 = distinct !DILexicalBlock(scope: !204, file: !101, line: 581, column: 7)
!213 = !DILocalVariable(name: "double_space", scope: !204, file: !101, line: 594, type: !201)
!214 = !DILocalVariable(name: "first_word", scope: !204, file: !101, line: 595, type: !128)
!215 = !DILocalVariable(name: "option_text", scope: !204, file: !101, line: 596, type: !128)
!216 = !DILocalVariable(name: "s", scope: !217, file: !101, line: 608, type: !128)
!217 = distinct !DILexicalBlock(scope: !218, file: !101, line: 605, column: 5)
!218 = distinct !DILexicalBlock(scope: !219, file: !101, line: 604, column: 12)
!219 = distinct !DILexicalBlock(scope: !204, file: !101, line: 597, column: 7)
!220 = !DILocalVariable(name: "spaces", scope: !217, file: !101, line: 609, type: !125)
!221 = !DILocalVariable(name: "anchor_len", scope: !204, file: !101, line: 620, type: !125)
!222 = !DILocalVariable(name: "desc_text", scope: !204, file: !101, line: 625, type: !128)
!223 = !DILocalVariable(name: "__ptr", scope: !224, file: !101, line: 644, type: !128)
!224 = distinct !DILexicalBlock(scope: !204, file: !101, line: 644, column: 3)
!225 = !DILocalVariable(name: "__stream", scope: !224, file: !101, line: 644, type: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !231)
!230 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !247, !249, !250, !251, !255, !256, !258, !259, !262, !264, !267, !270, !271, !272, !273, !274}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !229, file: !230, line: 51, baseType: !102, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !229, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !229, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !229, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !229, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !229, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !229, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !229, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !229, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !229, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !229, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !229, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !229, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !230, line: 36, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !229, file: !230, line: 70, baseType: !248, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !229, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !229, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !229, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !253, line: 152, baseType: !254)
!253 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !229, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !229, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!257 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !229, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !229, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !230, line: 43, baseType: null)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !229, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !253, line: 153, baseType: !254)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !229, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !230, line: 37, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !229, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !230, line: 38, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !229, file: !230, line: 93, baseType: !248, size: 64, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !229, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !229, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !229, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !229, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 20)
!278 = !DILocalVariable(name: "__cnt", scope: !224, file: !101, line: 644, type: !125)
!279 = !DILocalVariable(name: "url_program", scope: !204, file: !101, line: 648, type: !128)
!280 = !DILocalVariable(name: "__ptr", scope: !281, file: !101, line: 686, type: !128)
!281 = distinct !DILexicalBlock(scope: !204, file: !101, line: 686, column: 3)
!282 = !DILocalVariable(name: "__stream", scope: !281, file: !101, line: 686, type: !226)
!283 = !DILocalVariable(name: "__cnt", scope: !281, file: !101, line: 686, type: !125)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !101, line: 585, type: !171, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !101, line: 586, type: !171, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !101, line: 595, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 4)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !101, line: 620, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 6)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !101, line: 648, type: !24, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !101, line: 648, type: !171, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !101, line: 649, type: !290, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !101, line: 649, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 3)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !101, line: 650, type: !171, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !101, line: 651, type: !295, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !101, line: 651, type: !295, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !101, line: 652, type: !29, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !101, line: 653, type: !89, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !101, line: 654, type: !79, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !101, line: 655, type: !79, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !101, line: 656, type: !79, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !101, line: 657, type: !79, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !101, line: 663, type: !29, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !101, line: 664, type: !79, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !101, line: 669, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 17)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !101, line: 669, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 40)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !101, line: 676, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 15)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !101, line: 676, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 61)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !101, line: 679, type: !306, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !101, line: 683, type: !171, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !101, line: 688, type: !171, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !101, line: 691, type: !89, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !101, line: 839, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 16)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !101, line: 840, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 22)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !101, line: 841, type: !343, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !101, line: 862, type: !290, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !101, line: 868, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 71)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !101, line: 875, type: !164, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !101, line: 877, type: !176, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !101, line: 877, type: !196, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !79, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !295, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !89, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !29, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !29, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !171, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !89, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !343, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "default_template", scope: !94, file: !2, line: 37, type: !128, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 2048, elements: !90)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !405, line: 50, size: 256, elements: !406)
!405 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!406 = !{!407, !408, !409, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !404, file: !405, line: 52, baseType: !128, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !404, file: !405, line: 55, baseType: !102, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !404, file: !405, line: 56, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !404, file: !405, line: 57, baseType: !102, size: 32, offset: 192)
!412 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !415, line: 3, type: !343, isLocal: true, isDefinition: true)
!415 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "Version", scope: !418, file: !415, line: 3, type: !128, isLocal: false, isDefinition: true)
!418 = distinct !DICompileUnit(language: DW_LANG_C11, file: !415, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !419, splitDebugInlining: false, nameTableKind: None)
!419 = !{!413, !416}
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "file_name", scope: !422, file: !423, line: 45, type: !128, isLocal: true, isDefinition: true)
!422 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !424, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!424 = !{!425, !427, !429, !431, !420, !433}
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !423, line: 121, type: !29, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !423, line: 121, type: !196, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !423, line: 123, type: !29, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !423, line: 126, type: !306, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !422, file: !423, line: 55, type: !201, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !437, file: !438, line: 66, type: !488, isLocal: false, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !439, globals: !440, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!439 = !{!123, !130}
!440 = !{!441, !443, !467, !469, !471, !473, !435, !475, !477, !479, !481, !486}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !438, line: 272, type: !171, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "old_file_name", scope: !445, file: !438, line: 304, type: !128, isLocal: true, isDefinition: true)
!445 = distinct !DISubprogram(name: "verror_at_line", scope: !438, file: !438, line: 298, type: !446, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !460)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !102, !102, !128, !97, !128, !448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !449, line: 52, baseType: !450)
!449 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !451, line: 12, baseType: !452)
!451 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !438, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !454)
!454 = !{!455, !456, !457, !458, !459}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !453, file: !438, baseType: !123, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !453, file: !438, baseType: !123, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !453, file: !438, baseType: !123, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !453, file: !438, baseType: !102, size: 32, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !453, file: !438, baseType: !102, size: 32, offset: 224)
!460 = !{!461, !462, !463, !464, !465, !466}
!461 = !DILocalVariable(name: "status", arg: 1, scope: !445, file: !438, line: 298, type: !102)
!462 = !DILocalVariable(name: "errnum", arg: 2, scope: !445, file: !438, line: 298, type: !102)
!463 = !DILocalVariable(name: "file_name", arg: 3, scope: !445, file: !438, line: 298, type: !128)
!464 = !DILocalVariable(name: "line_number", arg: 4, scope: !445, file: !438, line: 298, type: !97)
!465 = !DILocalVariable(name: "message", arg: 5, scope: !445, file: !438, line: 298, type: !128)
!466 = !DILocalVariable(name: "args", arg: 6, scope: !445, file: !438, line: 298, type: !448)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "old_line_number", scope: !445, file: !438, line: 305, type: !97, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !438, line: 338, type: !290, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !89, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !24, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "error_message_count", scope: !437, file: !438, line: 69, type: !97, isLocal: false, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !437, file: !438, line: 295, type: !102, isLocal: false, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !29, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !483, isLocal: true, isDefinition: true)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 21)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !438, line: 214, type: !171, isLocal: true, isDefinition: true)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null}
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "program_name", scope: !493, file: !494, line: 31, type: !128, isLocal: false, isDefinition: true)
!493 = distinct !DICompileUnit(language: DW_LANG_C11, file: !494, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !495, globals: !496, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!495 = !{!123, !122}
!496 = !{!491, !497, !499}
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !494, line: 46, type: !89, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !494, line: 49, type: !290, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "utf07FF", scope: !503, file: !504, line: 46, type: !531, isLocal: true, isDefinition: true)
!503 = distinct !DISubprogram(name: "proper_name_lite", scope: !504, file: !504, line: 38, type: !505, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !509)
!504 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!505 = !DISubroutineType(types: !506)
!506 = !{!128, !128, !128}
!507 = distinct !DICompileUnit(language: DW_LANG_C11, file: !504, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !508, splitDebugInlining: false, nameTableKind: None)
!508 = !{!501}
!509 = !{!510, !511, !512, !513, !518}
!510 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !503, file: !504, line: 38, type: !128)
!511 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !503, file: !504, line: 38, type: !128)
!512 = !DILocalVariable(name: "translation", scope: !503, file: !504, line: 40, type: !128)
!513 = !DILocalVariable(name: "w", scope: !503, file: !504, line: 47, type: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !515, line: 37, baseType: !516)
!515 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !253, line: 57, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !253, line: 42, baseType: !97)
!518 = !DILocalVariable(name: "mbs", scope: !503, file: !504, line: 48, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !520, line: 6, baseType: !521)
!520 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !522, line: 21, baseType: !523)
!522 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 13, size: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !523, file: !522, line: 15, baseType: !102, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !523, file: !522, line: 20, baseType: !527, size: 32, offset: 32)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !522, line: 16, size: 32, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !527, file: !522, line: 18, baseType: !97, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !527, file: !522, line: 19, baseType: !290, size: 32)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16, elements: !25)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !534, line: 78, type: !89, isLocal: true, isDefinition: true)
!534 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !534, line: 79, type: !295, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !534, line: 80, type: !139, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !534, line: 81, type: !139, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !534, line: 82, type: !275, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !534, line: 83, type: !24, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !534, line: 84, type: !89, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !534, line: 85, type: !29, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !534, line: 86, type: !29, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !534, line: 87, type: !89, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !555, file: !534, line: 76, type: !641, isLocal: false, isDefinition: true)
!555 = distinct !DICompileUnit(language: DW_LANG_C11, file: !534, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !556, retainedTypes: !576, globals: !577, splitDebugInlining: false, nameTableKind: None)
!556 = !{!557, !571, !106}
!557 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !558, line: 42, baseType: !97, size: 32, elements: !559)
!558 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!560 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!561 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!562 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!563 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!564 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!565 = !DIEnumerator(name: "c_quoting_style", value: 5)
!566 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!567 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!568 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!569 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!570 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !558, line: 254, baseType: !97, size: 32, elements: !572)
!572 = !{!573, !574, !575}
!573 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!574 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!575 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!576 = !{!123, !102, !124, !125}
!577 = !{!532, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !578, !582, !592, !594, !599, !601, !603, !605, !607, !630, !637, !639}
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !555, file: !534, line: 92, type: !580, isLocal: false, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 320, elements: !80)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !555, file: !534, line: 1040, type: !584, isLocal: false, isDefinition: true)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !534, line: 56, size: 448, elements: !585)
!585 = !{!586, !587, !588, !590, !591}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !584, file: !534, line: 59, baseType: !557, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !534, line: 62, baseType: !102, size: 32, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !584, file: !534, line: 66, baseType: !589, size: 256, offset: 64)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !90)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !584, file: !534, line: 69, baseType: !128, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !584, file: !534, line: 72, baseType: !128, size: 64, offset: 384)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !555, file: !534, line: 107, type: !584, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "slot0", scope: !555, file: !534, line: 831, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 256)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !534, line: 321, type: !24, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !534, line: 357, type: !24, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !534, line: 358, type: !24, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !534, line: 199, type: !29, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quote", scope: !609, file: !534, line: 228, type: !628, isLocal: true, isDefinition: true)
!609 = distinct !DISubprogram(name: "gettext_quote", scope: !534, file: !534, line: 197, type: !610, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!128, !128, !557}
!612 = !{!613, !614, !615, !616, !617}
!613 = !DILocalVariable(name: "msgid", arg: 1, scope: !609, file: !534, line: 197, type: !128)
!614 = !DILocalVariable(name: "s", arg: 2, scope: !609, file: !534, line: 197, type: !557)
!615 = !DILocalVariable(name: "translation", scope: !609, file: !534, line: 199, type: !128)
!616 = !DILocalVariable(name: "w", scope: !609, file: !534, line: 229, type: !514)
!617 = !DILocalVariable(name: "mbs", scope: !609, file: !534, line: 230, type: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !520, line: 6, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !522, line: 21, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 13, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !620, file: !522, line: 15, baseType: !102, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !620, file: !522, line: 20, baseType: !624, size: 32, offset: 32)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !522, line: 16, size: 32, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !624, file: !522, line: 18, baseType: !97, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !624, file: !522, line: 19, baseType: !290, size: 32)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !629)
!629 = !{!26, !292}
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "slotvec", scope: !555, file: !534, line: 834, type: !632, isLocal: true, isDefinition: true)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !534, line: 823, size: 128, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !633, file: !534, line: 825, baseType: !125, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !633, file: !534, line: 826, baseType: !122, size: 64, offset: 64)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "nslots", scope: !555, file: !534, line: 832, type: !102, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "slotvec0", scope: !555, file: !534, line: 833, type: !633, isLocal: true, isDefinition: true)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 704, elements: !145)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "tryfunc", scope: !645, file: !646, line: 175, type: !664, isLocal: true, isDefinition: true)
!645 = distinct !DISubprogram(name: "gen_tempname_len", scope: !646, file: !646, line: 172, type: !647, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !658)
!646 = !DIFile(filename: "lib/tempname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "89467f8095ceec51ae791cc96ec80d48")
!647 = !DISubroutineType(types: !648)
!648 = !{!102, !122, !102, !102, !102, !125}
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-tempname.o -MD -MP -MF lib/.deps/libcoreutils_a-tempname.Tpo -c lib/tempname.c -o lib/.libcoreutils_a-tempname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !650, splitDebugInlining: false, nameTableKind: None)
!650 = !{!643, !651, !653}
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !646, line: 226, type: !24, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "letters", scope: !649, file: !646, line: 151, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 504, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 63)
!658 = !{!659, !660, !661, !662, !663}
!659 = !DILocalVariable(name: "tmpl", arg: 1, scope: !645, file: !646, line: 172, type: !122)
!660 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !645, file: !646, line: 172, type: !102)
!661 = !DILocalVariable(name: "flags", arg: 3, scope: !645, file: !646, line: 172, type: !102)
!662 = !DILocalVariable(name: "kind", arg: 4, scope: !645, file: !646, line: 172, type: !102)
!663 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !645, file: !646, line: 173, type: !125)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 192, elements: !307)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!102, !122, !123}
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !671, line: 67, type: !196, isLocal: true, isDefinition: true)
!671 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !671, line: 69, type: !29, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !671, line: 83, type: !29, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !671, line: 83, type: !290, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !671, line: 85, type: !24, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !671, line: 88, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 171)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !671, line: 88, type: !9, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !671, line: 105, type: !361, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !671, line: 109, type: !691, isLocal: true, isDefinition: true)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 23)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !671, line: 113, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 28)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !671, line: 120, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 32)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !671, line: 127, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 36)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !671, line: 134, type: !338, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !671, line: 142, type: !713, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 44)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !671, line: 150, type: !159, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !671, line: 159, type: !720, isLocal: true, isDefinition: true)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 52)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !671, line: 170, type: !181, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !671, line: 248, type: !275, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !671, line: 248, type: !366, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !275, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !134, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !338, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !671, line: 259, type: !3, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !671, line: 259, type: !739, isLocal: true, isDefinition: true)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 29)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !744, file: !745, line: 26, type: !747, isLocal: false, isDefinition: true)
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !746, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!746 = !{!742}
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 376, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 47)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "exit_failure", scope: !752, file: !753, line: 24, type: !755, isLocal: false, isDefinition: true)
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !754, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!754 = !{!750}
!755 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !758, line: 34, type: !306, isLocal: true, isDefinition: true)
!758 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !758, line: 34, type: !29, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !758, line: 34, type: !333, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !765, line: 108, type: !74, isLocal: true, isDefinition: true)
!765 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "internal_state", scope: !768, file: !765, line: 97, type: !771, isLocal: true, isDefinition: true)
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, globals: !770, splitDebugInlining: false, nameTableKind: None)
!769 = !{!123, !125, !130}
!770 = !{!763, !766}
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !520, line: 6, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !522, line: 21, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 13, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !773, file: !522, line: 15, baseType: !102, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !773, file: !522, line: 20, baseType: !777, size: 32, offset: 32)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !773, file: !522, line: 16, size: 32, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !777, file: !522, line: 18, baseType: !97, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !777, file: !522, line: 19, baseType: !290, size: 32)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !783, line: 35, type: !24, isLocal: true, isDefinition: true)
!783 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !783, line: 35, type: !295, isLocal: true, isDefinition: true)
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!788 = !{!122}
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!795 = !{!123}
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat.Tpo -c lib/filenamecat.c -o lib/.libcoreutils_a-filenamecat.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !799, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat-lgpl.Tpo -c lib/filenamecat-lgpl.c -o lib/.libcoreutils_a-filenamecat-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!799 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !803, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!803 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !805, retainedTypes: !795, globals: !809, splitDebugInlining: false, nameTableKind: None)
!805 = !{!806}
!806 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !671, line: 40, baseType: !97, size: 32, elements: !807)
!807 = !{!808}
!808 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!809 = !{!669, !672, !674, !676, !678, !680, !685, !687, !689, !694, !699, !704, !709, !711, !716, !718, !723, !725, !727, !729, !731, !733, !735, !737}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !812, retainedTypes: !844, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!812 = !{!813, !825}
!813 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !814, file: !811, line: 188, baseType: !97, size: 32, elements: !823)
!814 = distinct !DISubprogram(name: "x2nrealloc", scope: !811, file: !811, line: 176, type: !815, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !818)
!815 = !DISubroutineType(types: !816)
!816 = !{!123, !123, !817, !125}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!818 = !{!819, !820, !821, !822}
!819 = !DILocalVariable(name: "p", arg: 1, scope: !814, file: !811, line: 176, type: !123)
!820 = !DILocalVariable(name: "pn", arg: 2, scope: !814, file: !811, line: 176, type: !817)
!821 = !DILocalVariable(name: "s", arg: 3, scope: !814, file: !811, line: 176, type: !125)
!822 = !DILocalVariable(name: "n", scope: !814, file: !811, line: 178, type: !125)
!823 = !{!824}
!824 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!825 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !826, file: !811, line: 228, baseType: !97, size: 32, elements: !823)
!826 = distinct !DISubprogram(name: "xpalloc", scope: !811, file: !811, line: 223, type: !827, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !834)
!827 = !DISubroutineType(types: !828)
!828 = !{!123, !123, !829, !830, !832, !830}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !831, line: 130, baseType: !832)
!831 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !833, line: 18, baseType: !254)
!833 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843}
!835 = !DILocalVariable(name: "pa", arg: 1, scope: !826, file: !811, line: 223, type: !123)
!836 = !DILocalVariable(name: "pn", arg: 2, scope: !826, file: !811, line: 223, type: !829)
!837 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !826, file: !811, line: 223, type: !830)
!838 = !DILocalVariable(name: "n_max", arg: 4, scope: !826, file: !811, line: 223, type: !832)
!839 = !DILocalVariable(name: "s", arg: 5, scope: !826, file: !811, line: 223, type: !830)
!840 = !DILocalVariable(name: "n0", scope: !826, file: !811, line: 230, type: !830)
!841 = !DILocalVariable(name: "n", scope: !826, file: !811, line: 237, type: !830)
!842 = !DILocalVariable(name: "nbytes", scope: !826, file: !811, line: 248, type: !830)
!843 = !DILocalVariable(name: "adjusted_nbytes", scope: !826, file: !811, line: 252, type: !830)
!844 = !{!122, !123}
!845 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !846, splitDebugInlining: false, nameTableKind: None)
!846 = !{!756, !759, !761}
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!848 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !850, splitDebugInlining: false, nameTableKind: None)
!850 = !{!781, !784}
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!855 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!856 = !{i32 7, !"Dwarf Version", i32 5}
!857 = !{i32 2, !"Debug Info Version", i32 3}
!858 = !{i32 1, !"wchar_size", i32 4}
!859 = !{i32 8, !"PIC Level", i32 2}
!860 = !{i32 7, !"PIE Level", i32 2}
!861 = !{i32 7, !"uwtable", i32 2}
!862 = !{i32 7, !"frame-pointer", i32 1}
!863 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!864 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 59, type: !865, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !102}
!867 = !{!868}
!868 = !DILocalVariable(name: "status", arg: 1, scope: !864, file: !2, line: 59, type: !102)
!869 = !DILocation(line: 0, scope: !864)
!870 = !DILocation(line: 61, column: 14, scope: !871)
!871 = distinct !DILexicalBlock(scope: !864, file: !2, line: 61, column: 7)
!872 = !DILocation(line: 61, column: 7, scope: !864)
!873 = !DILocation(line: 62, column: 5, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !2, line: 62, column: 5)
!875 = !{!876, !876, i64 0}
!876 = !{!"any pointer", !877, i64 0}
!877 = !{!"omnipotent char", !878, i64 0}
!878 = !{!"Simple C/C++ TBAA"}
!879 = !DILocation(line: 65, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !871, file: !2, line: 64, column: 5)
!881 = !DILocation(line: 66, column: 7, scope: !880)
!882 = !DILocation(line: 71, column: 7, scope: !880)
!883 = !DILocation(line: 74, column: 7, scope: !880)
!884 = !DILocation(line: 75, column: 7, scope: !880)
!885 = !DILocation(line: 79, column: 7, scope: !880)
!886 = !DILocation(line: 83, column: 7, scope: !880)
!887 = !DILocation(line: 87, column: 7, scope: !880)
!888 = !DILocation(line: 92, column: 7, scope: !880)
!889 = !DILocation(line: 100, column: 7, scope: !880)
!890 = !DILocation(line: 106, column: 7, scope: !880)
!891 = !DILocation(line: 107, column: 7, scope: !880)
!892 = !DILocalVariable(name: "program", arg: 1, scope: !893, file: !101, line: 836, type: !128)
!893 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !101, file: !101, line: 836, type: !894, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !128}
!896 = !{!892, !897, !904, !905, !907, !908}
!897 = !DILocalVariable(name: "infomap", scope: !893, file: !101, line: 838, type: !898)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 896, elements: !30)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !893, file: !101, line: 838, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !900, file: !101, line: 838, baseType: !128, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !900, file: !101, line: 838, baseType: !128, size: 64, offset: 64)
!904 = !DILocalVariable(name: "node", scope: !893, file: !101, line: 848, type: !128)
!905 = !DILocalVariable(name: "map_prog", scope: !893, file: !101, line: 849, type: !906)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!907 = !DILocalVariable(name: "lc_messages", scope: !893, file: !101, line: 861, type: !128)
!908 = !DILocalVariable(name: "url_program", scope: !893, file: !101, line: 874, type: !128)
!909 = !DILocation(line: 0, scope: !893, inlinedAt: !910)
!910 = distinct !DILocation(line: 108, column: 7, scope: !880)
!911 = !{}
!912 = !DILocation(line: 857, column: 3, scope: !893, inlinedAt: !910)
!913 = !DILocation(line: 861, column: 29, scope: !893, inlinedAt: !910)
!914 = !DILocation(line: 862, column: 7, scope: !915, inlinedAt: !910)
!915 = distinct !DILexicalBlock(scope: !893, file: !101, line: 862, column: 7)
!916 = !DILocation(line: 862, column: 19, scope: !915, inlinedAt: !910)
!917 = !DILocation(line: 862, column: 22, scope: !915, inlinedAt: !910)
!918 = !DILocation(line: 862, column: 7, scope: !893, inlinedAt: !910)
!919 = !DILocation(line: 868, column: 7, scope: !920, inlinedAt: !910)
!920 = distinct !DILexicalBlock(scope: !915, file: !101, line: 863, column: 5)
!921 = !DILocation(line: 870, column: 5, scope: !920, inlinedAt: !910)
!922 = !DILocation(line: 875, column: 3, scope: !893, inlinedAt: !910)
!923 = !DILocation(line: 877, column: 3, scope: !893, inlinedAt: !910)
!924 = !DILocation(line: 111, column: 3, scope: !864)
!925 = !DISubprogram(name: "dcgettext", scope: !926, file: !926, line: 51, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!927 = !DISubroutineType(types: !928)
!928 = !{!122, !128, !128, !102}
!929 = !DISubprogram(name: "__fprintf_chk", scope: !930, file: !930, line: 93, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!931 = !DISubroutineType(types: !932)
!932 = !{!102, !933, !102, !934, null}
!933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!935 = !DISubprogram(name: "__printf_chk", scope: !930, file: !930, line: 95, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DISubroutineType(types: !937)
!937 = !{!102, !102, !934, null}
!938 = !DISubprogram(name: "fputs_unlocked", scope: !449, file: !449, line: 691, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{!102, !934, !933}
!941 = !DILocation(line: 0, scope: !204)
!942 = !DILocation(line: 581, column: 7, scope: !212)
!943 = !{!944, !944, i64 0}
!944 = !{!"int", !877, i64 0}
!945 = !DILocation(line: 581, column: 19, scope: !212)
!946 = !DILocation(line: 581, column: 7, scope: !204)
!947 = !DILocation(line: 585, column: 26, scope: !211)
!948 = !DILocation(line: 0, scope: !211)
!949 = !DILocation(line: 586, column: 23, scope: !211)
!950 = !DILocation(line: 586, column: 28, scope: !211)
!951 = !DILocation(line: 586, column: 32, scope: !211)
!952 = !{!877, !877, i64 0}
!953 = !DILocation(line: 586, column: 38, scope: !211)
!954 = !DILocalVariable(name: "__s1", arg: 1, scope: !955, file: !956, line: 1359, type: !128)
!955 = distinct !DISubprogram(name: "streq", scope: !956, file: !956, line: 1359, type: !957, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !959)
!956 = !DIFile(filename: "./lib/string.h", directory: "/src")
!957 = !DISubroutineType(types: !958)
!958 = !{!201, !128, !128}
!959 = !{!954, !960}
!960 = !DILocalVariable(name: "__s2", arg: 2, scope: !955, file: !956, line: 1359, type: !128)
!961 = !DILocation(line: 0, scope: !955, inlinedAt: !962)
!962 = distinct !DILocation(line: 586, column: 41, scope: !211)
!963 = !DILocation(line: 1361, column: 11, scope: !955, inlinedAt: !962)
!964 = !DILocation(line: 1361, column: 10, scope: !955, inlinedAt: !962)
!965 = !DILocation(line: 586, column: 19, scope: !211)
!966 = !DILocation(line: 587, column: 5, scope: !211)
!967 = !DILocation(line: 588, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !204, file: !101, line: 588, column: 7)
!969 = !DILocation(line: 588, column: 7, scope: !204)
!970 = !DILocation(line: 590, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !101, line: 589, column: 5)
!972 = !DILocation(line: 591, column: 7, scope: !971)
!973 = !DILocation(line: 595, column: 37, scope: !204)
!974 = !DILocation(line: 595, column: 35, scope: !204)
!975 = !DILocation(line: 596, column: 29, scope: !204)
!976 = !DILocation(line: 597, column: 8, scope: !219)
!977 = !DILocation(line: 597, column: 7, scope: !204)
!978 = !DILocation(line: 604, column: 24, scope: !218)
!979 = !DILocation(line: 604, column: 12, scope: !219)
!980 = !DILocation(line: 0, scope: !217)
!981 = !DILocation(line: 610, column: 16, scope: !217)
!982 = !DILocation(line: 610, column: 7, scope: !217)
!983 = !DILocation(line: 611, column: 21, scope: !217)
!984 = !{!985, !985, i64 0}
!985 = !{!"short", !877, i64 0}
!986 = !DILocation(line: 611, column: 19, scope: !217)
!987 = !DILocation(line: 611, column: 16, scope: !217)
!988 = !DILocation(line: 610, column: 30, scope: !217)
!989 = distinct !{!989, !982, !983, !990}
!990 = !{!"llvm.loop.mustprogress"}
!991 = !DILocation(line: 612, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !217, file: !101, line: 612, column: 11)
!993 = !DILocation(line: 612, column: 11, scope: !217)
!994 = !DILocation(line: 620, column: 23, scope: !204)
!995 = !DILocation(line: 625, column: 39, scope: !204)
!996 = !DILocation(line: 626, column: 3, scope: !204)
!997 = !DILocation(line: 626, column: 10, scope: !204)
!998 = !DILocation(line: 626, column: 21, scope: !204)
!999 = !DILocation(line: 628, column: 44, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !101, line: 628, column: 11)
!1001 = distinct !DILexicalBlock(scope: !204, file: !101, line: 627, column: 5)
!1002 = !DILocation(line: 628, column: 32, scope: !1000)
!1003 = !DILocation(line: 628, column: 49, scope: !1000)
!1004 = !DILocation(line: 628, column: 11, scope: !1001)
!1005 = !DILocation(line: 630, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !101, line: 630, column: 11)
!1007 = !DILocation(line: 630, column: 11, scope: !1001)
!1008 = !DILocation(line: 632, column: 26, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !101, line: 632, column: 15)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !101, line: 631, column: 9)
!1011 = !DILocation(line: 632, column: 34, scope: !1009)
!1012 = !DILocation(line: 632, column: 37, scope: !1009)
!1013 = !DILocation(line: 632, column: 15, scope: !1010)
!1014 = !DILocation(line: 640, column: 16, scope: !1001)
!1015 = distinct !{!1015, !996, !1016, !990}
!1016 = !DILocation(line: 641, column: 5, scope: !204)
!1017 = !DILocation(line: 644, column: 3, scope: !204)
!1018 = !DILocation(line: 0, scope: !955, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 648, column: 31, scope: !204)
!1020 = !DILocation(line: 0, scope: !955, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 649, column: 31, scope: !204)
!1022 = !DILocation(line: 0, scope: !955, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 650, column: 31, scope: !204)
!1024 = !DILocation(line: 0, scope: !955, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 651, column: 31, scope: !204)
!1026 = !DILocation(line: 0, scope: !955, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 652, column: 31, scope: !204)
!1028 = !DILocation(line: 0, scope: !955, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 653, column: 31, scope: !204)
!1030 = !DILocation(line: 0, scope: !955, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 654, column: 31, scope: !204)
!1032 = !DILocation(line: 0, scope: !955, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 655, column: 31, scope: !204)
!1034 = !DILocation(line: 0, scope: !955, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 656, column: 31, scope: !204)
!1036 = !DILocation(line: 0, scope: !955, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 657, column: 31, scope: !204)
!1038 = !DILocation(line: 663, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !204, file: !101, line: 663, column: 7)
!1040 = !DILocation(line: 664, column: 7, scope: !1039)
!1041 = !DILocation(line: 664, column: 10, scope: !1039)
!1042 = !DILocation(line: 663, column: 7, scope: !204)
!1043 = !DILocation(line: 669, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !101, line: 665, column: 5)
!1045 = !DILocation(line: 671, column: 5, scope: !1044)
!1046 = !DILocation(line: 676, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1039, file: !101, line: 673, column: 5)
!1048 = !DILocation(line: 679, column: 3, scope: !204)
!1049 = !DILocation(line: 683, column: 3, scope: !204)
!1050 = !DILocation(line: 686, column: 3, scope: !204)
!1051 = !DILocation(line: 688, column: 3, scope: !204)
!1052 = !DILocation(line: 691, column: 3, scope: !204)
!1053 = !DILocation(line: 695, column: 3, scope: !204)
!1054 = !DILocation(line: 696, column: 1, scope: !204)
!1055 = !DISubprogram(name: "setlocale", scope: !1056, file: !1056, line: 122, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!122, !102, !128}
!1059 = !DISubprogram(name: "strncmp", scope: !1060, file: !1060, line: 159, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!102, !128, !128, !125}
!1063 = !DISubprogram(name: "exit", scope: !1064, file: !1064, line: 624, type: !865, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1064 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1065 = !DISubprogram(name: "getenv", scope: !1064, file: !1064, line: 641, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!122, !128}
!1068 = !DISubprogram(name: "strcmp", scope: !1060, file: !1060, line: 156, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!102, !128, !128}
!1071 = !DISubprogram(name: "strspn", scope: !1060, file: !1060, line: 297, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!127, !128, !128}
!1074 = !DISubprogram(name: "strchr", scope: !1060, file: !1060, line: 246, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!122, !128, !102}
!1077 = !DISubprogram(name: "__ctype_b_loc", scope: !107, file: !107, line: 79, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1083 = !DISubprogram(name: "strcspn", scope: !1060, file: !1060, line: 293, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1084 = !DISubprogram(name: "fwrite_unlocked", scope: !449, file: !449, line: 704, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!125, !1087, !125, !125, !933}
!1087 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1090 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 154, type: !1091, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1094)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!102, !102, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1115, !1120, !1124, !1127, !1129}
!1095 = !DILocalVariable(name: "argc", arg: 1, scope: !1090, file: !2, line: 154, type: !102)
!1096 = !DILocalVariable(name: "argv", arg: 2, scope: !1090, file: !2, line: 154, type: !1093)
!1097 = !DILocalVariable(name: "dest_dir", scope: !1090, file: !2, line: 156, type: !128)
!1098 = !DILocalVariable(name: "dest_dir_arg", scope: !1090, file: !2, line: 157, type: !128)
!1099 = !DILocalVariable(name: "suppress_file_err", scope: !1090, file: !2, line: 158, type: !201)
!1100 = !DILocalVariable(name: "c", scope: !1090, file: !2, line: 159, type: !102)
!1101 = !DILocalVariable(name: "template", scope: !1090, file: !2, line: 160, type: !122)
!1102 = !DILocalVariable(name: "suffix", scope: !1090, file: !2, line: 161, type: !122)
!1103 = !DILocalVariable(name: "use_dest_dir", scope: !1090, file: !2, line: 162, type: !201)
!1104 = !DILocalVariable(name: "deprecated_t_option", scope: !1090, file: !2, line: 163, type: !201)
!1105 = !DILocalVariable(name: "create_directory", scope: !1090, file: !2, line: 164, type: !201)
!1106 = !DILocalVariable(name: "dry_run", scope: !1090, file: !2, line: 165, type: !201)
!1107 = !DILocalVariable(name: "status", scope: !1090, file: !2, line: 166, type: !102)
!1108 = !DILocalVariable(name: "x_count", scope: !1090, file: !2, line: 167, type: !125)
!1109 = !DILocalVariable(name: "suffix_len", scope: !1090, file: !2, line: 168, type: !125)
!1110 = !DILocalVariable(name: "dest_name", scope: !1090, file: !2, line: 169, type: !122)
!1111 = !DILocalVariable(name: "n_args", scope: !1090, file: !2, line: 215, type: !102)
!1112 = !DILocalVariable(name: "len", scope: !1113, file: !2, line: 234, type: !125)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 233, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 232, column: 7)
!1115 = !DILocalVariable(name: "env", scope: !1116, file: !2, line: 280, type: !122)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 279, column: 9)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 278, column: 11)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 277, column: 5)
!1119 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 276, column: 7)
!1120 = !DILocalVariable(name: "env", scope: !1121, file: !2, line: 299, type: !122)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 298, column: 13)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 295, column: 15)
!1123 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 294, column: 9)
!1124 = !DILocalVariable(name: "err", scope: !1125, file: !2, line: 321, type: !102)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 320, column: 5)
!1126 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 319, column: 7)
!1127 = !DILocalVariable(name: "fd", scope: !1128, file: !2, line: 332, type: !102)
!1128 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 331, column: 5)
!1129 = !DILocalVariable(name: "saved_errno", scope: !1130, file: !2, line: 349, type: !102)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 348, column: 9)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 347, column: 11)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 343, column: 5)
!1133 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 342, column: 7)
!1134 = !DILocation(line: 0, scope: !1090)
!1135 = !DILocation(line: 172, column: 21, scope: !1090)
!1136 = !DILocation(line: 172, column: 3, scope: !1090)
!1137 = !DILocation(line: 173, column: 3, scope: !1090)
!1138 = !DILocation(line: 174, column: 3, scope: !1090)
!1139 = !DILocation(line: 175, column: 3, scope: !1090)
!1140 = !DILocation(line: 177, column: 3, scope: !1090)
!1141 = !DILocation(line: 179, column: 3, scope: !1090)
!1142 = distinct !{!1142, !1141, !1143, !990}
!1143 = !DILocation(line: 213, column: 5, scope: !1090)
!1144 = !DILocation(line: 179, column: 15, scope: !1090)
!1145 = distinct !{!1145, !1141, !1143, !990, !1146}
!1146 = !{!"llvm.loop.peeled.count", i32 1}
!1147 = !DILocation(line: 187, column: 26, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 182, column: 9)
!1149 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 180, column: 5)
!1150 = !DILocation(line: 189, column: 11, scope: !1148)
!1151 = !DILocation(line: 196, column: 11, scope: !1148)
!1152 = !DILocation(line: 199, column: 11, scope: !1148)
!1153 = !DILocation(line: 202, column: 20, scope: !1148)
!1154 = !DILocation(line: 203, column: 11, scope: !1148)
!1155 = !DILocation(line: 205, column: 9, scope: !1148)
!1156 = !DILocation(line: 209, column: 9, scope: !1148)
!1157 = !DILocation(line: 211, column: 11, scope: !1148)
!1158 = !DILocation(line: 215, column: 23, scope: !1090)
!1159 = !DILocation(line: 215, column: 21, scope: !1090)
!1160 = !DILocation(line: 216, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 216, column: 7)
!1162 = !DILocation(line: 216, column: 7, scope: !1090)
!1163 = !DILocation(line: 218, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 217, column: 5)
!1165 = !DILocation(line: 219, column: 7, scope: !1164)
!1166 = !DILocation(line: 222, column: 14, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 222, column: 7)
!1168 = !DILocation(line: 222, column: 7, scope: !1090)
!1169 = !DILocation(line: 229, column: 18, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 228, column: 5)
!1171 = !DILocation(line: 0, scope: !1167)
!1172 = !DILocation(line: 232, column: 7, scope: !1114)
!1173 = !DILocation(line: 232, column: 7, scope: !1090)
!1174 = !DILocation(line: 234, column: 20, scope: !1113)
!1175 = !DILocation(line: 0, scope: !1113)
!1176 = !DILocation(line: 235, column: 12, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 235, column: 11)
!1178 = !DILocation(line: 235, column: 16, scope: !1177)
!1179 = !DILocation(line: 235, column: 32, scope: !1177)
!1180 = !DILocation(line: 235, column: 19, scope: !1177)
!1181 = !DILocation(line: 235, column: 37, scope: !1177)
!1182 = !DILocation(line: 235, column: 11, scope: !1113)
!1183 = !DILocation(line: 237, column: 11, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 236, column: 9)
!1185 = !DILocation(line: 241, column: 20, scope: !1113)
!1186 = !DILocation(line: 242, column: 35, scope: !1113)
!1187 = !DILocation(line: 242, column: 48, scope: !1113)
!1188 = !DILocation(line: 242, column: 19, scope: !1113)
!1189 = !DILocalVariable(name: "__dest", arg: 1, scope: !1190, file: !1191, line: 26, type: !1194)
!1190 = distinct !DISubprogram(name: "memcpy", scope: !1191, file: !1191, line: 26, type: !1192, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1195)
!1191 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!123, !1194, !1087, !125}
!1194 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!1195 = !{!1189, !1196, !1197}
!1196 = !DILocalVariable(name: "__src", arg: 2, scope: !1190, file: !1191, line: 26, type: !1087)
!1197 = !DILocalVariable(name: "__len", arg: 3, scope: !1190, file: !1191, line: 26, type: !125)
!1198 = !DILocation(line: 0, scope: !1190, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 243, column: 7, scope: !1113)
!1200 = !DILocation(line: 29, column: 10, scope: !1190, inlinedAt: !1199)
!1201 = !DILocation(line: 244, column: 25, scope: !1113)
!1202 = !DILocation(line: 244, column: 51, scope: !1113)
!1203 = !DILocation(line: 0, scope: !1190, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 244, column: 7, scope: !1113)
!1205 = !DILocation(line: 29, column: 10, scope: !1190, inlinedAt: !1204)
!1206 = !DILocation(line: 247, column: 5, scope: !1113)
!1207 = !DILocation(line: 250, column: 18, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 249, column: 5)
!1209 = !DILocation(line: 251, column: 16, scope: !1208)
!1210 = !DILocation(line: 252, column: 12, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 252, column: 11)
!1212 = !DILocation(line: 252, column: 11, scope: !1208)
!1213 = !DILocation(line: 253, column: 18, scope: !1211)
!1214 = !DILocation(line: 253, column: 9, scope: !1211)
!1215 = !DILocation(line: 255, column: 15, scope: !1211)
!1216 = !DILocation(line: 0, scope: !1211)
!1217 = !DILocation(line: 256, column: 20, scope: !1208)
!1218 = !DILocation(line: 0, scope: !1114)
!1219 = !DILocation(line: 260, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 260, column: 7)
!1221 = !DILocation(line: 260, column: 18, scope: !1220)
!1222 = !DILocation(line: 260, column: 21, scope: !1220)
!1223 = !DILocation(line: 260, column: 45, scope: !1220)
!1224 = !DILocation(line: 260, column: 7, scope: !1090)
!1225 = !DILocation(line: 262, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 261, column: 5)
!1227 = !DILocation(line: 266, column: 53, scope: !1090)
!1228 = !DILocalVariable(name: "s", arg: 1, scope: !1229, file: !2, line: 115, type: !128)
!1229 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !2, file: !2, line: 115, type: !1230, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!125, !128, !125}
!1232 = !{!1228, !1233, !1234}
!1233 = !DILocalVariable(name: "len", arg: 2, scope: !1229, file: !2, line: 115, type: !125)
!1234 = !DILocalVariable(name: "n", scope: !1229, file: !2, line: 117, type: !125)
!1235 = !DILocation(line: 0, scope: !1229, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 266, column: 13, scope: !1090)
!1237 = !DILocation(line: 118, column: 3, scope: !1229, inlinedAt: !1236)
!1238 = !DILocation(line: 118, column: 11, scope: !1239, inlinedAt: !1236)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 118, column: 3)
!1240 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 118, column: 3)
!1241 = !DILocation(line: 118, column: 15, scope: !1239, inlinedAt: !1236)
!1242 = !DILocation(line: 118, column: 3, scope: !1240, inlinedAt: !1236)
!1243 = !DILocation(line: 118, column: 18, scope: !1239, inlinedAt: !1236)
!1244 = !DILocation(line: 118, column: 29, scope: !1239, inlinedAt: !1236)
!1245 = !DILocation(line: 119, column: 5, scope: !1239, inlinedAt: !1236)
!1246 = !DILocation(line: 118, column: 40, scope: !1239, inlinedAt: !1236)
!1247 = distinct !{!1247, !1242, !1248, !990}
!1248 = !DILocation(line: 119, column: 7, scope: !1240, inlinedAt: !1236)
!1249 = !DILocation(line: 267, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 267, column: 7)
!1251 = !DILocation(line: 267, column: 7, scope: !1090)
!1252 = !DILocation(line: 270, column: 20, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 270, column: 11)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 268, column: 5)
!1255 = !DILocation(line: 270, column: 11, scope: !1254)
!1256 = !DILocation(line: 271, column: 9, scope: !1253)
!1257 = !DILocation(line: 271, column: 37, scope: !1253)
!1258 = !DILocation(line: 272, column: 7, scope: !1254)
!1259 = !DILocation(line: 276, column: 7, scope: !1090)
!1260 = !DILocation(line: 278, column: 11, scope: !1118)
!1261 = !DILocation(line: 280, column: 23, scope: !1116)
!1262 = !DILocation(line: 0, scope: !1116)
!1263 = !DILocation(line: 281, column: 15, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 281, column: 15)
!1265 = !DILocation(line: 281, column: 19, scope: !1264)
!1266 = !DILocation(line: 281, column: 22, scope: !1264)
!1267 = !DILocation(line: 281, column: 15, scope: !1116)
!1268 = !DILocation(line: 283, column: 20, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 283, column: 20)
!1270 = !DILocation(line: 283, column: 33, scope: !1269)
!1271 = !DILocation(line: 283, column: 36, scope: !1269)
!1272 = !DILocation(line: 283, column: 20, scope: !1264)
!1273 = !DILocation(line: 0, scope: !1264)
!1274 = !DILocation(line: 288, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 288, column: 15)
!1276 = !DILocation(line: 288, column: 41, scope: !1275)
!1277 = !DILocation(line: 288, column: 15, scope: !1116)
!1278 = !DILocation(line: 289, column: 13, scope: !1275)
!1279 = !DILocation(line: 295, column: 15, scope: !1122)
!1280 = !DILocation(line: 295, column: 28, scope: !1122)
!1281 = !DILocation(line: 295, column: 31, scope: !1122)
!1282 = !DILocation(line: 295, column: 15, scope: !1123)
!1283 = !DILocation(line: 299, column: 27, scope: !1121)
!1284 = !DILocation(line: 0, scope: !1121)
!1285 = !DILocation(line: 300, column: 27, scope: !1121)
!1286 = !DILocation(line: 300, column: 31, scope: !1121)
!1287 = !DILocation(line: 300, column: 34, scope: !1121)
!1288 = !DILocation(line: 0, scope: !1122)
!1289 = !DILocation(line: 302, column: 15, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 302, column: 15)
!1291 = !DILocation(line: 302, column: 15, scope: !1123)
!1292 = !DILocation(line: 303, column: 13, scope: !1290)
!1293 = !DILocation(line: 0, scope: !1117)
!1294 = !DILocation(line: 309, column: 19, scope: !1118)
!1295 = !DILocation(line: 310, column: 7, scope: !1118)
!1296 = !DILocation(line: 313, column: 5, scope: !1118)
!1297 = !DILocation(line: 317, column: 15, scope: !1090)
!1298 = !DILocation(line: 0, scope: !1126)
!1299 = !DILocation(line: 319, column: 7, scope: !1090)
!1300 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1301, file: !2, line: 131, type: !122)
!1301 = distinct !DISubprogram(name: "mkdtemp_len", scope: !2, file: !2, line: 131, type: !1302, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!102, !122, !125, !125, !201}
!1304 = !{!1300, !1305, !1306, !1307}
!1305 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1301, file: !2, line: 131, type: !125)
!1306 = !DILocalVariable(name: "x_len", arg: 3, scope: !1301, file: !2, line: 131, type: !125)
!1307 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1301, file: !2, line: 131, type: !201)
!1308 = !DILocation(line: 0, scope: !1301, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 321, column: 17, scope: !1125)
!1310 = !DILocation(line: 133, column: 47, scope: !1301, inlinedAt: !1309)
!1311 = !DILocation(line: 133, column: 10, scope: !1301, inlinedAt: !1309)
!1312 = !DILocation(line: 0, scope: !1125)
!1313 = !DILocation(line: 322, column: 15, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 322, column: 11)
!1315 = !DILocation(line: 322, column: 11, scope: !1125)
!1316 = !DILocation(line: 325, column: 13, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 324, column: 15)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 323, column: 9)
!1319 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1320, file: !2, line: 124, type: !122)
!1320 = distinct !DISubprogram(name: "mkstemp_len", scope: !2, file: !2, line: 124, type: !1302, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1321)
!1321 = !{!1319, !1322, !1323, !1324}
!1322 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1320, file: !2, line: 124, type: !125)
!1323 = !DILocalVariable(name: "x_len", arg: 3, scope: !1320, file: !2, line: 124, type: !125)
!1324 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1320, file: !2, line: 124, type: !201)
!1325 = !DILocation(line: 0, scope: !1320, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 332, column: 16, scope: !1128)
!1327 = !DILocation(line: 126, column: 47, scope: !1320, inlinedAt: !1326)
!1328 = !DILocation(line: 126, column: 10, scope: !1320, inlinedAt: !1326)
!1329 = !DILocation(line: 0, scope: !1128)
!1330 = !DILocation(line: 333, column: 14, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 333, column: 11)
!1332 = !DILocation(line: 333, column: 18, scope: !1331)
!1333 = !DILocation(line: 333, column: 31, scope: !1331)
!1334 = !DILocation(line: 344, column: 7, scope: !1132)
!1335 = !DILocation(line: 347, column: 20, scope: !1131)
!1336 = !DILocation(line: 333, column: 34, scope: !1331)
!1337 = !DILocation(line: 333, column: 45, scope: !1331)
!1338 = !DILocation(line: 333, column: 11, scope: !1128)
!1339 = !DILocation(line: 335, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 334, column: 9)
!1341 = !DILocation(line: 336, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 335, column: 15)
!1343 = !DILocation(line: 342, column: 7, scope: !1090)
!1344 = !DILocation(line: 347, column: 39, scope: !1131)
!1345 = !DILocation(line: 347, column: 62, scope: !1131)
!1346 = !DILocation(line: 347, column: 48, scope: !1131)
!1347 = !DILocation(line: 347, column: 70, scope: !1131)
!1348 = !DILocation(line: 347, column: 11, scope: !1132)
!1349 = !DILocation(line: 349, column: 29, scope: !1130)
!1350 = !DILocation(line: 0, scope: !1130)
!1351 = !DILocation(line: 350, column: 11, scope: !1130)
!1352 = !DILocation(line: 351, column: 15, scope: !1130)
!1353 = !DILocation(line: 352, column: 13, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 351, column: 15)
!1355 = !DILocation(line: 357, column: 3, scope: !1090)
!1356 = !DISubprogram(name: "bindtextdomain", scope: !926, file: !926, line: 86, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!122, !128, !128}
!1359 = !DISubprogram(name: "textdomain", scope: !926, file: !926, line: 82, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !2, file: !2, line: 145, type: !489, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!1361 = !DILocation(line: 147, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 147, column: 7)
!1363 = !DILocation(line: 147, column: 7, scope: !1360)
!1364 = !DILocation(line: 148, column: 5, scope: !1362)
!1365 = !DILocation(line: 149, column: 26, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 149, column: 12)
!1367 = !DILocation(line: 149, column: 12, scope: !1366)
!1368 = !DILocation(line: 149, column: 34, scope: !1366)
!1369 = !DILocation(line: 149, column: 12, scope: !1362)
!1370 = !DILocation(line: 150, column: 5, scope: !1366)
!1371 = !DILocation(line: 151, column: 1, scope: !1360)
!1372 = !DISubprogram(name: "atexit", scope: !1064, file: !1064, line: 602, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!102, !488}
!1375 = !DISubprogram(name: "getopt_long", scope: !405, file: !405, line: 66, type: !1376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!102, !102, !1378, !128, !1380, !410}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1381 = !DISubprogram(name: "strlen", scope: !1060, file: !1060, line: 407, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!127, !128}
!1384 = !DISubprogram(name: "strrchr", scope: !1060, file: !1060, line: 273, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DISubprogram(name: "free", scope: !1064, file: !1064, line: 555, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !123}
!1388 = !DISubprogram(name: "__errno_location", scope: !1389, file: !1389, line: 37, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1389 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!410}
!1392 = !DISubprogram(name: "puts", scope: !449, file: !449, line: 661, type: !1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!102, !128}
!1395 = !DISubprogram(name: "close", scope: !1396, file: !1396, line: 358, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!102, !102}
!1399 = !DISubprogram(name: "remove", scope: !449, file: !449, line: 152, type: !1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DISubprogram(name: "_exit", scope: !1396, file: !1396, line: 624, type: !865, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1401 = distinct !DISubprogram(name: "last_component", scope: !787, file: !787, line: 29, type: !1066, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !1402)
!1402 = !{!1403, !1404, !1405, !1406}
!1403 = !DILocalVariable(name: "name", arg: 1, scope: !1401, file: !787, line: 29, type: !128)
!1404 = !DILocalVariable(name: "base", scope: !1401, file: !787, line: 31, type: !128)
!1405 = !DILocalVariable(name: "last_was_slash", scope: !1401, file: !787, line: 35, type: !201)
!1406 = !DILocalVariable(name: "p", scope: !1407, file: !787, line: 36, type: !128)
!1407 = distinct !DILexicalBlock(scope: !1401, file: !787, line: 36, column: 3)
!1408 = !DILocation(line: 0, scope: !1401)
!1409 = !DILocation(line: 32, column: 3, scope: !1401)
!1410 = !DILocation(line: 32, column: 10, scope: !1401)
!1411 = !DILocation(line: 33, column: 9, scope: !1401)
!1412 = distinct !{!1412, !1409, !1411, !990}
!1413 = !DILocation(line: 36, column: 3, scope: !1407)
!1414 = !DILocation(line: 36, column: 30, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1407, file: !787, line: 36, column: 3)
!1416 = !DILocation(line: 31, column: 15, scope: !1401)
!1417 = !DILocation(line: 36, scope: !1407)
!1418 = !DILocation(line: 0, scope: !1407)
!1419 = !DILocation(line: 47, column: 3, scope: !1401)
!1420 = !DILocation(line: 40, column: 16, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !787, line: 38, column: 11)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !787, line: 37, column: 5)
!1423 = !DILocation(line: 36, column: 35, scope: !1415)
!1424 = !DILocation(line: 36, column: 3, scope: !1415)
!1425 = distinct !{!1425, !1413, !1426, !990}
!1426 = !DILocation(line: 45, column: 5, scope: !1407)
!1427 = distinct !DISubprogram(name: "base_len", scope: !787, file: !787, line: 51, type: !1428, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!125, !128}
!1430 = !{!1431, !1432, !1433}
!1431 = !DILocalVariable(name: "name", arg: 1, scope: !1427, file: !787, line: 51, type: !128)
!1432 = !DILocalVariable(name: "len", scope: !1427, file: !787, line: 53, type: !125)
!1433 = !DILocalVariable(name: "prefix_len", scope: !1427, file: !787, line: 61, type: !125)
!1434 = !DILocation(line: 0, scope: !1427)
!1435 = !DILocation(line: 54, column: 14, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !787, line: 54, column: 3)
!1437 = !DILocation(line: 54, column: 8, scope: !1436)
!1438 = !DILocation(line: 54, column: 32, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !787, line: 54, column: 3)
!1440 = !DILocation(line: 54, column: 38, scope: !1439)
!1441 = !DILocation(line: 54, column: 3, scope: !1436)
!1442 = !DILocation(line: 54, column: 41, scope: !1439)
!1443 = !DILocation(line: 54, column: 70, scope: !1439)
!1444 = distinct !{!1444, !1441, !1445, !990}
!1445 = !DILocation(line: 55, column: 5, scope: !1436)
!1446 = !DILocation(line: 66, column: 3, scope: !1427)
!1447 = !DILocation(line: 54, scope: !1436)
!1448 = distinct !DISubprogram(name: "close_stream", scope: !790, file: !790, line: 55, type: !1449, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1485)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!102, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1453, file: !230, line: 51, baseType: !102, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1453, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1453, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1453, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1453, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1453, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1453, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1453, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1453, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1453, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1453, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1453, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1453, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1453, file: !230, line: 70, baseType: !1469, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1453, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1453, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1453, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1453, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1453, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1453, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1453, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1453, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1453, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1453, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1453, file: !230, line: 93, baseType: !1469, size: 64, offset: 1344)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1453, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1453, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1453, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1453, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1485 = !{!1486, !1487, !1489, !1490}
!1486 = !DILocalVariable(name: "stream", arg: 1, scope: !1448, file: !790, line: 55, type: !1451)
!1487 = !DILocalVariable(name: "some_pending", scope: !1448, file: !790, line: 57, type: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!1489 = !DILocalVariable(name: "prev_fail", scope: !1448, file: !790, line: 58, type: !1488)
!1490 = !DILocalVariable(name: "fclose_fail", scope: !1448, file: !790, line: 59, type: !1488)
!1491 = !DILocation(line: 0, scope: !1448)
!1492 = !DILocation(line: 57, column: 30, scope: !1448)
!1493 = !DILocalVariable(name: "__stream", arg: 1, scope: !1494, file: !1495, line: 135, type: !1451)
!1494 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1495, file: !1495, line: 135, type: !1449, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1496)
!1495 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1496 = !{!1493}
!1497 = !DILocation(line: 0, scope: !1494, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 58, column: 27, scope: !1448)
!1499 = !DILocation(line: 137, column: 10, scope: !1494, inlinedAt: !1498)
!1500 = !{!1501, !944, i64 0}
!1501 = !{!"_IO_FILE", !944, i64 0, !876, i64 8, !876, i64 16, !876, i64 24, !876, i64 32, !876, i64 40, !876, i64 48, !876, i64 56, !876, i64 64, !876, i64 72, !876, i64 80, !876, i64 88, !876, i64 96, !876, i64 104, !944, i64 112, !944, i64 116, !1502, i64 120, !985, i64 128, !877, i64 130, !877, i64 131, !876, i64 136, !1502, i64 144, !876, i64 152, !876, i64 160, !876, i64 168, !876, i64 176, !1502, i64 184, !944, i64 192, !877, i64 196}
!1502 = !{!"long", !877, i64 0}
!1503 = !DILocation(line: 58, column: 43, scope: !1448)
!1504 = !DILocation(line: 59, column: 29, scope: !1448)
!1505 = !DILocation(line: 59, column: 45, scope: !1448)
!1506 = !DILocation(line: 69, column: 17, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1448, file: !790, line: 69, column: 7)
!1508 = !DILocation(line: 57, column: 50, scope: !1448)
!1509 = !DILocation(line: 69, column: 33, scope: !1507)
!1510 = !DILocation(line: 69, column: 53, scope: !1507)
!1511 = !DILocation(line: 69, column: 59, scope: !1507)
!1512 = !DILocation(line: 69, column: 7, scope: !1448)
!1513 = !DILocation(line: 71, column: 11, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1507, file: !790, line: 70, column: 5)
!1515 = !DILocation(line: 72, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !790, line: 71, column: 11)
!1517 = !DILocation(line: 72, column: 15, scope: !1516)
!1518 = !DILocation(line: 77, column: 1, scope: !1448)
!1519 = !DISubprogram(name: "__fpending", scope: !1520, file: !1520, line: 75, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1520 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!125, !1451}
!1523 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !423, file: !423, line: 50, type: !894, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1524)
!1524 = !{!1525}
!1525 = !DILocalVariable(name: "file", arg: 1, scope: !1523, file: !423, line: 50, type: !128)
!1526 = !DILocation(line: 0, scope: !1523)
!1527 = !DILocation(line: 52, column: 13, scope: !1523)
!1528 = !DILocation(line: 53, column: 1, scope: !1523)
!1529 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !423, file: !423, line: 87, type: !1530, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !201}
!1532 = !{!1533}
!1533 = !DILocalVariable(name: "ignore", arg: 1, scope: !1529, file: !423, line: 87, type: !201)
!1534 = !DILocation(line: 0, scope: !1529)
!1535 = !DILocation(line: 89, column: 16, scope: !1529)
!1536 = !{!1537, !1537, i64 0}
!1537 = !{!"_Bool", !877, i64 0}
!1538 = !DILocation(line: 90, column: 1, scope: !1529)
!1539 = distinct !DISubprogram(name: "close_stdout", scope: !423, file: !423, line: 116, type: !489, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1540)
!1540 = !{!1541}
!1541 = !DILocalVariable(name: "write_error", scope: !1542, file: !423, line: 121, type: !128)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !423, line: 120, column: 5)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !423, line: 118, column: 7)
!1544 = !DILocation(line: 118, column: 21, scope: !1543)
!1545 = !DILocation(line: 118, column: 7, scope: !1543)
!1546 = !DILocation(line: 118, column: 29, scope: !1543)
!1547 = !DILocation(line: 119, column: 7, scope: !1543)
!1548 = !DILocation(line: 119, column: 12, scope: !1543)
!1549 = !{i8 0, i8 2}
!1550 = !DILocation(line: 119, column: 25, scope: !1543)
!1551 = !DILocation(line: 119, column: 28, scope: !1543)
!1552 = !DILocation(line: 119, column: 34, scope: !1543)
!1553 = !DILocation(line: 118, column: 7, scope: !1539)
!1554 = !DILocation(line: 121, column: 33, scope: !1542)
!1555 = !DILocation(line: 0, scope: !1542)
!1556 = !DILocation(line: 122, column: 11, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1542, file: !423, line: 122, column: 11)
!1558 = !DILocation(line: 0, scope: !1557)
!1559 = !DILocation(line: 122, column: 11, scope: !1542)
!1560 = !DILocation(line: 123, column: 9, scope: !1557)
!1561 = !DILocation(line: 126, column: 9, scope: !1557)
!1562 = !DILocation(line: 128, column: 14, scope: !1542)
!1563 = !DILocation(line: 128, column: 7, scope: !1542)
!1564 = !DILocation(line: 133, column: 42, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1539, file: !423, line: 133, column: 7)
!1566 = !DILocation(line: 133, column: 28, scope: !1565)
!1567 = !DILocation(line: 133, column: 50, scope: !1565)
!1568 = !DILocation(line: 133, column: 7, scope: !1539)
!1569 = !DILocation(line: 134, column: 12, scope: !1565)
!1570 = !DILocation(line: 134, column: 5, scope: !1565)
!1571 = !DILocation(line: 135, column: 1, scope: !1539)
!1572 = distinct !DISubprogram(name: "verror", scope: !438, file: !438, line: 251, type: !1573, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !102, !102, !128, !448}
!1575 = !{!1576, !1577, !1578, !1579}
!1576 = !DILocalVariable(name: "status", arg: 1, scope: !1572, file: !438, line: 251, type: !102)
!1577 = !DILocalVariable(name: "errnum", arg: 2, scope: !1572, file: !438, line: 251, type: !102)
!1578 = !DILocalVariable(name: "message", arg: 3, scope: !1572, file: !438, line: 251, type: !128)
!1579 = !DILocalVariable(name: "args", arg: 4, scope: !1572, file: !438, line: 251, type: !448)
!1580 = !DILocation(line: 0, scope: !1572)
!1581 = !DILocation(line: 261, column: 3, scope: !1572)
!1582 = !DILocation(line: 265, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !438, line: 265, column: 7)
!1584 = !DILocation(line: 265, column: 7, scope: !1572)
!1585 = !DILocation(line: 266, column: 5, scope: !1583)
!1586 = !DILocation(line: 272, column: 7, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !438, line: 268, column: 5)
!1588 = !DILocation(line: 276, column: 3, scope: !1572)
!1589 = !{i64 0, i64 8, !875, i64 8, i64 8, !875, i64 16, i64 8, !875, i64 24, i64 4, !943, i64 28, i64 4, !943}
!1590 = !DILocation(line: 282, column: 1, scope: !1572)
!1591 = distinct !DISubprogram(name: "flush_stdout", scope: !438, file: !438, line: 163, type: !489, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1592)
!1592 = !{!1593}
!1593 = !DILocalVariable(name: "stdout_fd", scope: !1591, file: !438, line: 166, type: !102)
!1594 = !DILocation(line: 0, scope: !1591)
!1595 = !DILocalVariable(name: "fd", arg: 1, scope: !1596, file: !438, line: 145, type: !102)
!1596 = distinct !DISubprogram(name: "is_open", scope: !438, file: !438, line: 145, type: !1397, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1597)
!1597 = !{!1595}
!1598 = !DILocation(line: 0, scope: !1596, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 182, column: 25, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1591, file: !438, line: 182, column: 7)
!1601 = !DILocation(line: 157, column: 15, scope: !1596, inlinedAt: !1599)
!1602 = !DILocation(line: 157, column: 12, scope: !1596, inlinedAt: !1599)
!1603 = !DILocation(line: 182, column: 7, scope: !1591)
!1604 = !DILocation(line: 184, column: 5, scope: !1600)
!1605 = !DILocation(line: 185, column: 1, scope: !1591)
!1606 = distinct !DISubprogram(name: "error_tail", scope: !438, file: !438, line: 219, type: !1573, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1607)
!1607 = !{!1608, !1609, !1610, !1611}
!1608 = !DILocalVariable(name: "status", arg: 1, scope: !1606, file: !438, line: 219, type: !102)
!1609 = !DILocalVariable(name: "errnum", arg: 2, scope: !1606, file: !438, line: 219, type: !102)
!1610 = !DILocalVariable(name: "message", arg: 3, scope: !1606, file: !438, line: 219, type: !128)
!1611 = !DILocalVariable(name: "args", arg: 4, scope: !1606, file: !438, line: 219, type: !448)
!1612 = distinct !DIAssignID()
!1613 = !DILocation(line: 0, scope: !1606)
!1614 = !DILocation(line: 229, column: 13, scope: !1606)
!1615 = !DILocation(line: 135, column: 10, scope: !1616, inlinedAt: !1658)
!1616 = distinct !DISubprogram(name: "vfprintf", scope: !930, file: !930, line: 132, type: !1617, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1654)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!102, !1619, !934, !450}
!1619 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1622, file: !230, line: 51, baseType: !102, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1622, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1622, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1622, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1622, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1622, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1622, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1622, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1622, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1622, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1622, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1622, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1622, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1622, file: !230, line: 70, baseType: !1638, size: 64, offset: 832)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1622, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1622, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1622, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1622, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1622, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1622, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1622, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1622, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1622, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1622, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1622, file: !230, line: 93, baseType: !1638, size: 64, offset: 1344)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1622, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1622, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1622, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1622, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1654 = !{!1655, !1656, !1657}
!1655 = !DILocalVariable(name: "__stream", arg: 1, scope: !1616, file: !930, line: 132, type: !1619)
!1656 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1616, file: !930, line: 133, type: !934)
!1657 = !DILocalVariable(name: "__ap", arg: 3, scope: !1616, file: !930, line: 133, type: !450)
!1658 = distinct !DILocation(line: 229, column: 3, scope: !1606)
!1659 = !{!1660, !1662}
!1660 = distinct !{!1660, !1661, !"vfprintf.inline: argument 0"}
!1661 = distinct !{!1661, !"vfprintf.inline"}
!1662 = distinct !{!1662, !1661, !"vfprintf.inline: argument 1"}
!1663 = !DILocation(line: 229, column: 3, scope: !1606)
!1664 = !DILocation(line: 0, scope: !1616, inlinedAt: !1658)
!1665 = !DILocation(line: 232, column: 3, scope: !1606)
!1666 = !DILocation(line: 233, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1606, file: !438, line: 233, column: 7)
!1668 = !DILocation(line: 233, column: 7, scope: !1606)
!1669 = !DILocalVariable(name: "errbuf", scope: !1670, file: !438, line: 193, type: !1674)
!1670 = distinct !DISubprogram(name: "print_errno_message", scope: !438, file: !438, line: 188, type: !865, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1671)
!1671 = !{!1672, !1673, !1669}
!1672 = !DILocalVariable(name: "errnum", arg: 1, scope: !1670, file: !438, line: 188, type: !102)
!1673 = !DILocalVariable(name: "s", scope: !1670, file: !438, line: 190, type: !128)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1675)
!1675 = !{!1676}
!1676 = !DISubrange(count: 1024)
!1677 = !DILocation(line: 0, scope: !1670, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 234, column: 5, scope: !1667)
!1679 = !DILocation(line: 193, column: 3, scope: !1670, inlinedAt: !1678)
!1680 = !DILocation(line: 195, column: 7, scope: !1670, inlinedAt: !1678)
!1681 = !DILocation(line: 207, column: 9, scope: !1682, inlinedAt: !1678)
!1682 = distinct !DILexicalBlock(scope: !1670, file: !438, line: 207, column: 7)
!1683 = !DILocation(line: 207, column: 7, scope: !1670, inlinedAt: !1678)
!1684 = !DILocation(line: 208, column: 9, scope: !1682, inlinedAt: !1678)
!1685 = !DILocation(line: 208, column: 5, scope: !1682, inlinedAt: !1678)
!1686 = !DILocation(line: 214, column: 3, scope: !1670, inlinedAt: !1678)
!1687 = !DILocation(line: 216, column: 1, scope: !1670, inlinedAt: !1678)
!1688 = !DILocation(line: 234, column: 5, scope: !1667)
!1689 = !DILocation(line: 238, column: 3, scope: !1606)
!1690 = !DILocalVariable(name: "__c", arg: 1, scope: !1691, file: !1495, line: 101, type: !102)
!1691 = distinct !DISubprogram(name: "putc_unlocked", scope: !1495, file: !1495, line: 101, type: !1692, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!102, !102, !1620}
!1694 = !{!1690, !1695}
!1695 = !DILocalVariable(name: "__stream", arg: 2, scope: !1691, file: !1495, line: 101, type: !1620)
!1696 = !DILocation(line: 0, scope: !1691, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 238, column: 3, scope: !1606)
!1698 = !DILocation(line: 103, column: 10, scope: !1691, inlinedAt: !1697)
!1699 = !{!1501, !876, i64 40}
!1700 = !{!1501, !876, i64 48}
!1701 = !{!"branch_weights", i32 2000, i32 1}
!1702 = !DILocation(line: 240, column: 3, scope: !1606)
!1703 = !DILocation(line: 241, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1606, file: !438, line: 241, column: 7)
!1705 = !DILocation(line: 241, column: 7, scope: !1606)
!1706 = !DILocation(line: 242, column: 5, scope: !1704)
!1707 = !DILocation(line: 243, column: 1, scope: !1606)
!1708 = !DISubprogram(name: "__vfprintf_chk", scope: !930, file: !930, line: 96, type: !1709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!102, !1619, !102, !934, !450}
!1711 = !DISubprogram(name: "strerror_r", scope: !1060, file: !1060, line: 444, type: !1712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!122, !102, !122, !125}
!1714 = !DISubprogram(name: "__overflow", scope: !449, file: !449, line: 886, type: !1715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!102, !1620, !102}
!1717 = !DISubprogram(name: "fflush_unlocked", scope: !449, file: !449, line: 239, type: !1718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!102, !1620}
!1720 = !DISubprogram(name: "fcntl", scope: !1721, file: !1721, line: 149, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1721 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!102, !102, !102, null}
!1724 = distinct !DISubprogram(name: "error", scope: !438, file: !438, line: 285, type: !1725, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !102, !102, !128, null}
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DILocalVariable(name: "status", arg: 1, scope: !1724, file: !438, line: 285, type: !102)
!1729 = !DILocalVariable(name: "errnum", arg: 2, scope: !1724, file: !438, line: 285, type: !102)
!1730 = !DILocalVariable(name: "message", arg: 3, scope: !1724, file: !438, line: 285, type: !128)
!1731 = !DILocalVariable(name: "ap", scope: !1724, file: !438, line: 287, type: !448)
!1732 = distinct !DIAssignID()
!1733 = !DILocation(line: 0, scope: !1724)
!1734 = !DILocation(line: 287, column: 3, scope: !1724)
!1735 = !DILocation(line: 288, column: 3, scope: !1724)
!1736 = !DILocation(line: 289, column: 3, scope: !1724)
!1737 = !DILocation(line: 290, column: 3, scope: !1724)
!1738 = !DILocation(line: 291, column: 1, scope: !1724)
!1739 = !DILocation(line: 0, scope: !445)
!1740 = !DILocation(line: 302, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !445, file: !438, line: 302, column: 7)
!1742 = !DILocation(line: 302, column: 7, scope: !445)
!1743 = !DILocation(line: 307, column: 11, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !438, line: 307, column: 11)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !438, line: 303, column: 5)
!1746 = !DILocation(line: 307, column: 27, scope: !1744)
!1747 = !DILocation(line: 308, column: 11, scope: !1744)
!1748 = !DILocation(line: 308, column: 28, scope: !1744)
!1749 = !DILocation(line: 308, column: 25, scope: !1744)
!1750 = !DILocation(line: 309, column: 15, scope: !1744)
!1751 = !DILocation(line: 309, column: 33, scope: !1744)
!1752 = !DILocation(line: 310, column: 19, scope: !1744)
!1753 = !DILocation(line: 311, column: 22, scope: !1744)
!1754 = !DILocation(line: 311, column: 56, scope: !1744)
!1755 = !DILocation(line: 307, column: 11, scope: !1745)
!1756 = !DILocation(line: 316, column: 21, scope: !1745)
!1757 = !DILocation(line: 317, column: 23, scope: !1745)
!1758 = !DILocation(line: 318, column: 5, scope: !1745)
!1759 = !DILocation(line: 327, column: 3, scope: !445)
!1760 = !DILocation(line: 331, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !445, file: !438, line: 331, column: 7)
!1762 = !DILocation(line: 331, column: 7, scope: !445)
!1763 = !DILocation(line: 332, column: 5, scope: !1761)
!1764 = !DILocation(line: 338, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !438, line: 334, column: 5)
!1766 = !DILocation(line: 346, column: 3, scope: !445)
!1767 = !DILocation(line: 350, column: 3, scope: !445)
!1768 = !DILocation(line: 356, column: 1, scope: !445)
!1769 = distinct !DISubprogram(name: "error_at_line", scope: !438, file: !438, line: 359, type: !1770, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !102, !102, !128, !97, !128, null}
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778}
!1773 = !DILocalVariable(name: "status", arg: 1, scope: !1769, file: !438, line: 359, type: !102)
!1774 = !DILocalVariable(name: "errnum", arg: 2, scope: !1769, file: !438, line: 359, type: !102)
!1775 = !DILocalVariable(name: "file_name", arg: 3, scope: !1769, file: !438, line: 359, type: !128)
!1776 = !DILocalVariable(name: "line_number", arg: 4, scope: !1769, file: !438, line: 360, type: !97)
!1777 = !DILocalVariable(name: "message", arg: 5, scope: !1769, file: !438, line: 360, type: !128)
!1778 = !DILocalVariable(name: "ap", scope: !1769, file: !438, line: 362, type: !448)
!1779 = distinct !DIAssignID()
!1780 = !DILocation(line: 0, scope: !1769)
!1781 = !DILocation(line: 362, column: 3, scope: !1769)
!1782 = !DILocation(line: 363, column: 3, scope: !1769)
!1783 = !DILocation(line: 364, column: 3, scope: !1769)
!1784 = !DILocation(line: 366, column: 3, scope: !1769)
!1785 = !DILocation(line: 367, column: 1, scope: !1769)
!1786 = distinct !DISubprogram(name: "rpl_fclose", scope: !792, file: !792, line: 58, type: !1787, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1823)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!102, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1791, file: !230, line: 51, baseType: !102, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1791, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1791, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1791, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1791, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1791, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1791, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1791, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1791, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1791, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1791, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1791, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1791, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1791, file: !230, line: 70, baseType: !1807, size: 64, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1791, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1791, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1791, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1791, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1791, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1791, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1791, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1791, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1791, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1791, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1791, file: !230, line: 93, baseType: !1807, size: 64, offset: 1344)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1791, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1791, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1791, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1791, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1823 = !{!1824, !1825, !1826, !1827}
!1824 = !DILocalVariable(name: "fp", arg: 1, scope: !1786, file: !792, line: 58, type: !1789)
!1825 = !DILocalVariable(name: "saved_errno", scope: !1786, file: !792, line: 60, type: !102)
!1826 = !DILocalVariable(name: "fd", scope: !1786, file: !792, line: 63, type: !102)
!1827 = !DILocalVariable(name: "result", scope: !1786, file: !792, line: 74, type: !102)
!1828 = !DILocation(line: 0, scope: !1786)
!1829 = !DILocation(line: 63, column: 12, scope: !1786)
!1830 = !DILocation(line: 64, column: 10, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1786, file: !792, line: 64, column: 7)
!1832 = !DILocation(line: 64, column: 7, scope: !1786)
!1833 = !DILocation(line: 65, column: 12, scope: !1831)
!1834 = !DILocation(line: 65, column: 5, scope: !1831)
!1835 = !DILocation(line: 70, column: 9, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1786, file: !792, line: 70, column: 7)
!1837 = !DILocation(line: 70, column: 23, scope: !1836)
!1838 = !DILocation(line: 70, column: 33, scope: !1836)
!1839 = !DILocation(line: 70, column: 26, scope: !1836)
!1840 = !DILocation(line: 70, column: 59, scope: !1836)
!1841 = !DILocation(line: 71, column: 7, scope: !1836)
!1842 = !DILocation(line: 71, column: 10, scope: !1836)
!1843 = !DILocation(line: 70, column: 7, scope: !1786)
!1844 = !DILocation(line: 100, column: 12, scope: !1786)
!1845 = !DILocation(line: 105, column: 7, scope: !1786)
!1846 = !DILocation(line: 72, column: 19, scope: !1836)
!1847 = !DILocation(line: 105, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1786, file: !792, line: 105, column: 7)
!1849 = !DILocation(line: 107, column: 13, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1848, file: !792, line: 106, column: 5)
!1851 = !DILocation(line: 109, column: 5, scope: !1850)
!1852 = !DILocation(line: 112, column: 1, scope: !1786)
!1853 = !DISubprogram(name: "fileno", scope: !449, file: !449, line: 809, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1854 = !DISubprogram(name: "fclose", scope: !449, file: !449, line: 178, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1855 = !DISubprogram(name: "__freading", scope: !1520, file: !1520, line: 51, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1856 = !DISubprogram(name: "lseek", scope: !1396, file: !1396, line: 339, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!252, !102, !252, !102}
!1859 = distinct !DISubprogram(name: "rpl_fflush", scope: !794, file: !794, line: 130, type: !1860, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !1896)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!102, !1862}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1864, file: !230, line: 51, baseType: !102, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1864, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1864, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1864, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1864, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1864, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1864, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1864, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1864, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1864, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1864, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1864, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1864, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1864, file: !230, line: 70, baseType: !1880, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1864, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1864, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1864, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1864, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1864, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1864, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1864, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1864, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1864, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1864, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1864, file: !230, line: 93, baseType: !1880, size: 64, offset: 1344)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1864, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1864, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1864, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1864, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "stream", arg: 1, scope: !1859, file: !794, line: 130, type: !1862)
!1898 = !DILocation(line: 0, scope: !1859)
!1899 = !DILocation(line: 151, column: 14, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1859, file: !794, line: 151, column: 7)
!1901 = !DILocation(line: 151, column: 22, scope: !1900)
!1902 = !DILocation(line: 151, column: 27, scope: !1900)
!1903 = !DILocation(line: 151, column: 7, scope: !1859)
!1904 = !DILocation(line: 152, column: 12, scope: !1900)
!1905 = !DILocation(line: 152, column: 5, scope: !1900)
!1906 = !DILocalVariable(name: "fp", arg: 1, scope: !1907, file: !794, line: 42, type: !1862)
!1907 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !794, file: !794, line: 42, type: !1908, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1862}
!1910 = !{!1906}
!1911 = !DILocation(line: 0, scope: !1907, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 157, column: 3, scope: !1859)
!1913 = !DILocation(line: 44, column: 12, scope: !1914, inlinedAt: !1912)
!1914 = distinct !DILexicalBlock(scope: !1907, file: !794, line: 44, column: 7)
!1915 = !DILocation(line: 44, column: 19, scope: !1914, inlinedAt: !1912)
!1916 = !DILocation(line: 44, column: 7, scope: !1907, inlinedAt: !1912)
!1917 = !DILocation(line: 46, column: 5, scope: !1914, inlinedAt: !1912)
!1918 = !DILocation(line: 159, column: 10, scope: !1859)
!1919 = !DILocation(line: 159, column: 3, scope: !1859)
!1920 = !DILocation(line: 236, column: 1, scope: !1859)
!1921 = !DISubprogram(name: "fflush", scope: !449, file: !449, line: 230, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1922 = distinct !DISubprogram(name: "file_name_concat", scope: !797, file: !797, line: 35, type: !1923, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!122, !128, !128, !1093}
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DILocalVariable(name: "dir", arg: 1, scope: !1922, file: !797, line: 35, type: !128)
!1927 = !DILocalVariable(name: "base", arg: 2, scope: !1922, file: !797, line: 35, type: !128)
!1928 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1922, file: !797, line: 35, type: !1093)
!1929 = !DILocalVariable(name: "p", scope: !1922, file: !797, line: 37, type: !122)
!1930 = !DILocation(line: 0, scope: !1922)
!1931 = !DILocation(line: 37, column: 13, scope: !1922)
!1932 = !DILocation(line: 38, column: 9, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1922, file: !797, line: 38, column: 7)
!1934 = !DILocation(line: 38, column: 7, scope: !1922)
!1935 = !DILocation(line: 39, column: 5, scope: !1933)
!1936 = !DILocation(line: 40, column: 3, scope: !1922)
!1937 = distinct !DISubprogram(name: "mfile_name_concat", scope: !799, file: !799, line: 48, type: !1923, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1939 = !DILocalVariable(name: "dir", arg: 1, scope: !1937, file: !799, line: 48, type: !128)
!1940 = !DILocalVariable(name: "base", arg: 2, scope: !1937, file: !799, line: 48, type: !128)
!1941 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1937, file: !799, line: 48, type: !1093)
!1942 = !DILocalVariable(name: "dirbase", scope: !1937, file: !799, line: 50, type: !128)
!1943 = !DILocalVariable(name: "dirbaselen", scope: !1937, file: !799, line: 51, type: !125)
!1944 = !DILocalVariable(name: "dirlen", scope: !1937, file: !799, line: 52, type: !125)
!1945 = !DILocalVariable(name: "baselen", scope: !1937, file: !799, line: 53, type: !125)
!1946 = !DILocalVariable(name: "sep", scope: !1937, file: !799, line: 54, type: !4)
!1947 = !DILocalVariable(name: "p_concat", scope: !1937, file: !799, line: 71, type: !122)
!1948 = !DILocalVariable(name: "p", scope: !1949, file: !799, line: 76, type: !122)
!1949 = distinct !DILexicalBlock(scope: !1937, file: !799, line: 75, column: 3)
!1950 = !DILocation(line: 0, scope: !1937)
!1951 = !DILocation(line: 50, column: 25, scope: !1937)
!1952 = !DILocation(line: 51, column: 23, scope: !1937)
!1953 = !DILocation(line: 52, column: 27, scope: !1937)
!1954 = !DILocation(line: 52, column: 33, scope: !1937)
!1955 = !DILocation(line: 53, column: 20, scope: !1937)
!1956 = !DILocation(line: 55, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1937, file: !799, line: 55, column: 7)
!1958 = !DILocation(line: 55, column: 7, scope: !1937)
!1959 = !DILocation(line: 58, column: 13, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !799, line: 58, column: 11)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !799, line: 56, column: 5)
!1962 = !DILocation(line: 58, column: 39, scope: !1960)
!1963 = !DILocation(line: 58, column: 44, scope: !1960)
!1964 = !DILocation(line: 58, column: 11, scope: !1961)
!1965 = !DILocation(line: 61, column: 12, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1957, file: !799, line: 61, column: 12)
!1967 = !DILocation(line: 61, column: 12, scope: !1957)
!1968 = !DILocation(line: 71, column: 35, scope: !1937)
!1969 = !DILocation(line: 71, column: 52, scope: !1937)
!1970 = !DILocation(line: 71, column: 62, scope: !1937)
!1971 = !DILocation(line: 71, column: 20, scope: !1937)
!1972 = !DILocation(line: 72, column: 16, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1937, file: !799, line: 72, column: 7)
!1974 = !DILocation(line: 72, column: 7, scope: !1937)
!1975 = !DILocalVariable(name: "__dest", arg: 1, scope: !1976, file: !1191, line: 42, type: !1194)
!1976 = distinct !DISubprogram(name: "mempcpy", scope: !1191, file: !1191, line: 42, type: !1192, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !1977)
!1977 = !{!1975, !1978, !1979}
!1978 = !DILocalVariable(name: "__src", arg: 2, scope: !1976, file: !1191, line: 42, type: !1087)
!1979 = !DILocalVariable(name: "__len", arg: 3, scope: !1976, file: !1191, line: 42, type: !125)
!1980 = !DILocation(line: 0, scope: !1976, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 78, column: 9, scope: !1949)
!1982 = !DILocation(line: 45, column: 10, scope: !1976, inlinedAt: !1981)
!1983 = !DILocation(line: 0, scope: !1949)
!1984 = !DILocation(line: 79, column: 8, scope: !1949)
!1985 = !DILocation(line: 80, column: 7, scope: !1949)
!1986 = !DILocation(line: 82, column: 9, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1949, file: !799, line: 82, column: 9)
!1988 = !DILocation(line: 82, column: 9, scope: !1949)
!1989 = !DILocation(line: 83, column: 23, scope: !1987)
!1990 = !DILocation(line: 83, column: 7, scope: !1987)
!1991 = !DILocation(line: 0, scope: !1976, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 85, column: 9, scope: !1949)
!1993 = !DILocation(line: 45, column: 10, scope: !1976, inlinedAt: !1992)
!1994 = !DILocation(line: 86, column: 8, scope: !1949)
!1995 = !DILocation(line: 89, column: 3, scope: !1937)
!1996 = !DILocation(line: 90, column: 1, scope: !1937)
!1997 = !DISubprogram(name: "malloc", scope: !1064, file: !1064, line: 540, type: !1998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!123, !125}
!2000 = distinct !DISubprogram(name: "rpl_fseeko", scope: !801, file: !801, line: 28, type: !2001, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !2038)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!102, !2003, !2037, !102}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2005, file: !230, line: 51, baseType: !102, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2005, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2005, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2005, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2005, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2005, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2005, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2005, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2005, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2005, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2005, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2005, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2005, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2005, file: !230, line: 70, baseType: !2021, size: 64, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2005, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2005, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2005, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2005, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2005, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2005, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2005, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2005, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2005, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2005, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2005, file: !230, line: 93, baseType: !2021, size: 64, offset: 1344)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2005, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2005, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2005, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2005, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !449, line: 63, baseType: !252)
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DILocalVariable(name: "fp", arg: 1, scope: !2000, file: !801, line: 28, type: !2003)
!2040 = !DILocalVariable(name: "offset", arg: 2, scope: !2000, file: !801, line: 28, type: !2037)
!2041 = !DILocalVariable(name: "whence", arg: 3, scope: !2000, file: !801, line: 28, type: !102)
!2042 = !DILocalVariable(name: "pos", scope: !2043, file: !801, line: 123, type: !2037)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !801, line: 119, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2000, file: !801, line: 55, column: 7)
!2045 = !DILocation(line: 0, scope: !2000)
!2046 = !DILocation(line: 55, column: 12, scope: !2044)
!2047 = !{!1501, !876, i64 16}
!2048 = !DILocation(line: 55, column: 33, scope: !2044)
!2049 = !{!1501, !876, i64 8}
!2050 = !DILocation(line: 55, column: 25, scope: !2044)
!2051 = !DILocation(line: 56, column: 7, scope: !2044)
!2052 = !DILocation(line: 56, column: 15, scope: !2044)
!2053 = !DILocation(line: 56, column: 37, scope: !2044)
!2054 = !{!1501, !876, i64 32}
!2055 = !DILocation(line: 56, column: 29, scope: !2044)
!2056 = !DILocation(line: 57, column: 7, scope: !2044)
!2057 = !DILocation(line: 57, column: 15, scope: !2044)
!2058 = !{!1501, !876, i64 72}
!2059 = !DILocation(line: 57, column: 29, scope: !2044)
!2060 = !DILocation(line: 55, column: 7, scope: !2000)
!2061 = !DILocation(line: 123, column: 26, scope: !2043)
!2062 = !DILocation(line: 123, column: 19, scope: !2043)
!2063 = !DILocation(line: 0, scope: !2043)
!2064 = !DILocation(line: 124, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2043, file: !801, line: 124, column: 11)
!2066 = !DILocation(line: 124, column: 11, scope: !2043)
!2067 = !DILocation(line: 135, column: 19, scope: !2043)
!2068 = !DILocation(line: 136, column: 12, scope: !2043)
!2069 = !DILocation(line: 136, column: 20, scope: !2043)
!2070 = !{!1501, !1502, i64 144}
!2071 = !DILocation(line: 167, column: 7, scope: !2043)
!2072 = !DILocation(line: 169, column: 10, scope: !2000)
!2073 = !DILocation(line: 169, column: 3, scope: !2000)
!2074 = !DILocation(line: 170, column: 1, scope: !2000)
!2075 = !DISubprogram(name: "fseeko", scope: !449, file: !449, line: 736, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!102, !2003, !252, !102}
!2078 = distinct !DISubprogram(name: "getprogname", scope: !803, file: !803, line: 54, type: !2079, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!128}
!2081 = !DILocation(line: 58, column: 10, scope: !2078)
!2082 = !DILocation(line: 58, column: 3, scope: !2078)
!2083 = distinct !DISubprogram(name: "set_program_name", scope: !494, file: !494, line: 37, type: !894, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !2084)
!2084 = !{!2085, !2086, !2087}
!2085 = !DILocalVariable(name: "argv0", arg: 1, scope: !2083, file: !494, line: 37, type: !128)
!2086 = !DILocalVariable(name: "slash", scope: !2083, file: !494, line: 44, type: !128)
!2087 = !DILocalVariable(name: "base", scope: !2083, file: !494, line: 45, type: !128)
!2088 = !DILocation(line: 0, scope: !2083)
!2089 = !DILocation(line: 44, column: 23, scope: !2083)
!2090 = !DILocation(line: 45, column: 22, scope: !2083)
!2091 = !DILocation(line: 46, column: 17, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !494, line: 46, column: 7)
!2093 = !DILocation(line: 46, column: 9, scope: !2092)
!2094 = !DILocation(line: 46, column: 25, scope: !2092)
!2095 = !DILocation(line: 46, column: 40, scope: !2092)
!2096 = !DILocalVariable(name: "__s1", arg: 1, scope: !2097, file: !956, line: 974, type: !1088)
!2097 = distinct !DISubprogram(name: "memeq", scope: !956, file: !956, line: 974, type: !2098, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!201, !1088, !1088, !125}
!2100 = !{!2096, !2101, !2102}
!2101 = !DILocalVariable(name: "__s2", arg: 2, scope: !2097, file: !956, line: 974, type: !1088)
!2102 = !DILocalVariable(name: "__n", arg: 3, scope: !2097, file: !956, line: 974, type: !125)
!2103 = !DILocation(line: 0, scope: !2097, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 46, column: 28, scope: !2092)
!2105 = !DILocation(line: 976, column: 11, scope: !2097, inlinedAt: !2104)
!2106 = !DILocation(line: 976, column: 10, scope: !2097, inlinedAt: !2104)
!2107 = !DILocation(line: 46, column: 7, scope: !2083)
!2108 = !DILocation(line: 49, column: 11, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !494, line: 49, column: 11)
!2110 = distinct !DILexicalBlock(scope: !2092, file: !494, line: 47, column: 5)
!2111 = !DILocation(line: 49, column: 36, scope: !2109)
!2112 = !DILocation(line: 49, column: 11, scope: !2110)
!2113 = !DILocation(line: 65, column: 16, scope: !2083)
!2114 = !DILocation(line: 71, column: 27, scope: !2083)
!2115 = !DILocation(line: 74, column: 33, scope: !2083)
!2116 = !DILocation(line: 76, column: 1, scope: !2083)
!2117 = distinct !DIAssignID()
!2118 = !DILocation(line: 0, scope: !503)
!2119 = distinct !DIAssignID()
!2120 = !DILocation(line: 40, column: 29, scope: !503)
!2121 = !DILocation(line: 41, column: 19, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !503, file: !504, line: 41, column: 7)
!2123 = !DILocation(line: 41, column: 7, scope: !503)
!2124 = !DILocation(line: 47, column: 3, scope: !503)
!2125 = !DILocation(line: 48, column: 3, scope: !503)
!2126 = !DILocalVariable(name: "ps", arg: 1, scope: !2127, file: !2128, line: 1135, type: !2131)
!2127 = distinct !DISubprogram(name: "mbszero", scope: !2128, file: !2128, line: 1135, type: !2129, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2132)
!2128 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!2132 = !{!2126}
!2133 = !DILocation(line: 0, scope: !2127, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 48, column: 18, scope: !503)
!2135 = !DILocalVariable(name: "__dest", arg: 1, scope: !2136, file: !1191, line: 57, type: !123)
!2136 = distinct !DISubprogram(name: "memset", scope: !1191, file: !1191, line: 57, type: !2137, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!123, !123, !102, !125}
!2139 = !{!2135, !2140, !2141}
!2140 = !DILocalVariable(name: "__ch", arg: 2, scope: !2136, file: !1191, line: 57, type: !102)
!2141 = !DILocalVariable(name: "__len", arg: 3, scope: !2136, file: !1191, line: 57, type: !125)
!2142 = !DILocation(line: 0, scope: !2136, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 1137, column: 3, scope: !2127, inlinedAt: !2134)
!2144 = !DILocation(line: 59, column: 10, scope: !2136, inlinedAt: !2143)
!2145 = !DILocation(line: 49, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !503, file: !504, line: 49, column: 7)
!2147 = !DILocation(line: 49, column: 39, scope: !2146)
!2148 = !DILocation(line: 49, column: 44, scope: !2146)
!2149 = !DILocation(line: 54, column: 1, scope: !503)
!2150 = !DISubprogram(name: "mbrtoc32", scope: !515, file: !515, line: 57, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!125, !2153, !934, !125, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2131)
!2156 = distinct !DISubprogram(name: "clone_quoting_options", scope: !534, file: !534, line: 113, type: !2157, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2160)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!2159, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2160 = !{!2161, !2162, !2163}
!2161 = !DILocalVariable(name: "o", arg: 1, scope: !2156, file: !534, line: 113, type: !2159)
!2162 = !DILocalVariable(name: "saved_errno", scope: !2156, file: !534, line: 115, type: !102)
!2163 = !DILocalVariable(name: "p", scope: !2156, file: !534, line: 116, type: !2159)
!2164 = !DILocation(line: 0, scope: !2156)
!2165 = !DILocation(line: 115, column: 21, scope: !2156)
!2166 = !DILocation(line: 116, column: 40, scope: !2156)
!2167 = !DILocation(line: 116, column: 31, scope: !2156)
!2168 = !DILocation(line: 118, column: 9, scope: !2156)
!2169 = !DILocation(line: 119, column: 3, scope: !2156)
!2170 = distinct !DISubprogram(name: "get_quoting_style", scope: !534, file: !534, line: 124, type: !2171, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2175)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!557, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!2175 = !{!2176}
!2176 = !DILocalVariable(name: "o", arg: 1, scope: !2170, file: !534, line: 124, type: !2173)
!2177 = !DILocation(line: 0, scope: !2170)
!2178 = !DILocation(line: 126, column: 11, scope: !2170)
!2179 = !DILocation(line: 126, column: 46, scope: !2170)
!2180 = !{!2181, !944, i64 0}
!2181 = !{!"quoting_options", !944, i64 0, !944, i64 4, !877, i64 8, !876, i64 40, !876, i64 48}
!2182 = !DILocation(line: 126, column: 3, scope: !2170)
!2183 = distinct !DISubprogram(name: "set_quoting_style", scope: !534, file: !534, line: 132, type: !2184, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2159, !557}
!2186 = !{!2187, !2188}
!2187 = !DILocalVariable(name: "o", arg: 1, scope: !2183, file: !534, line: 132, type: !2159)
!2188 = !DILocalVariable(name: "s", arg: 2, scope: !2183, file: !534, line: 132, type: !557)
!2189 = !DILocation(line: 0, scope: !2183)
!2190 = !DILocation(line: 134, column: 4, scope: !2183)
!2191 = !DILocation(line: 134, column: 45, scope: !2183)
!2192 = !DILocation(line: 135, column: 1, scope: !2183)
!2193 = distinct !DISubprogram(name: "set_char_quoting", scope: !534, file: !534, line: 143, type: !2194, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!102, !2159, !4, !102}
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2203, !2204}
!2197 = !DILocalVariable(name: "o", arg: 1, scope: !2193, file: !534, line: 143, type: !2159)
!2198 = !DILocalVariable(name: "c", arg: 2, scope: !2193, file: !534, line: 143, type: !4)
!2199 = !DILocalVariable(name: "i", arg: 3, scope: !2193, file: !534, line: 143, type: !102)
!2200 = !DILocalVariable(name: "uc", scope: !2193, file: !534, line: 145, type: !130)
!2201 = !DILocalVariable(name: "p", scope: !2193, file: !534, line: 146, type: !2202)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2203 = !DILocalVariable(name: "shift", scope: !2193, file: !534, line: 148, type: !102)
!2204 = !DILocalVariable(name: "r", scope: !2193, file: !534, line: 149, type: !97)
!2205 = !DILocation(line: 0, scope: !2193)
!2206 = !DILocation(line: 147, column: 6, scope: !2193)
!2207 = !DILocation(line: 147, column: 41, scope: !2193)
!2208 = !DILocation(line: 147, column: 62, scope: !2193)
!2209 = !DILocation(line: 147, column: 57, scope: !2193)
!2210 = !DILocation(line: 148, column: 15, scope: !2193)
!2211 = !DILocation(line: 149, column: 21, scope: !2193)
!2212 = !DILocation(line: 149, column: 24, scope: !2193)
!2213 = !DILocation(line: 149, column: 34, scope: !2193)
!2214 = !DILocation(line: 150, column: 19, scope: !2193)
!2215 = !DILocation(line: 150, column: 24, scope: !2193)
!2216 = !DILocation(line: 150, column: 6, scope: !2193)
!2217 = !DILocation(line: 151, column: 3, scope: !2193)
!2218 = distinct !DISubprogram(name: "set_quoting_flags", scope: !534, file: !534, line: 159, type: !2219, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!102, !2159, !102}
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "o", arg: 1, scope: !2218, file: !534, line: 159, type: !2159)
!2223 = !DILocalVariable(name: "i", arg: 2, scope: !2218, file: !534, line: 159, type: !102)
!2224 = !DILocalVariable(name: "r", scope: !2218, file: !534, line: 163, type: !102)
!2225 = !DILocation(line: 0, scope: !2218)
!2226 = !DILocation(line: 161, column: 8, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2218, file: !534, line: 161, column: 7)
!2228 = !DILocation(line: 161, column: 7, scope: !2218)
!2229 = !DILocation(line: 163, column: 14, scope: !2218)
!2230 = !{!2181, !944, i64 4}
!2231 = !DILocation(line: 164, column: 12, scope: !2218)
!2232 = !DILocation(line: 165, column: 3, scope: !2218)
!2233 = distinct !DISubprogram(name: "set_custom_quoting", scope: !534, file: !534, line: 169, type: !2234, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !2159, !128, !128}
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "o", arg: 1, scope: !2233, file: !534, line: 169, type: !2159)
!2238 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2233, file: !534, line: 170, type: !128)
!2239 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2233, file: !534, line: 170, type: !128)
!2240 = !DILocation(line: 0, scope: !2233)
!2241 = !DILocation(line: 172, column: 8, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2233, file: !534, line: 172, column: 7)
!2243 = !DILocation(line: 172, column: 7, scope: !2233)
!2244 = !DILocation(line: 174, column: 12, scope: !2233)
!2245 = !DILocation(line: 175, column: 8, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2233, file: !534, line: 175, column: 7)
!2247 = !DILocation(line: 175, column: 19, scope: !2246)
!2248 = !DILocation(line: 176, column: 5, scope: !2246)
!2249 = !DILocation(line: 177, column: 6, scope: !2233)
!2250 = !DILocation(line: 177, column: 17, scope: !2233)
!2251 = !{!2181, !876, i64 40}
!2252 = !DILocation(line: 178, column: 6, scope: !2233)
!2253 = !DILocation(line: 178, column: 18, scope: !2233)
!2254 = !{!2181, !876, i64 48}
!2255 = !DILocation(line: 179, column: 1, scope: !2233)
!2256 = !DISubprogram(name: "abort", scope: !1064, file: !1064, line: 598, type: !489, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2257 = distinct !DISubprogram(name: "quotearg_buffer", scope: !534, file: !534, line: 774, type: !2258, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!125, !122, !125, !128, !125, !2173}
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2261 = !DILocalVariable(name: "buffer", arg: 1, scope: !2257, file: !534, line: 774, type: !122)
!2262 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2257, file: !534, line: 774, type: !125)
!2263 = !DILocalVariable(name: "arg", arg: 3, scope: !2257, file: !534, line: 775, type: !128)
!2264 = !DILocalVariable(name: "argsize", arg: 4, scope: !2257, file: !534, line: 775, type: !125)
!2265 = !DILocalVariable(name: "o", arg: 5, scope: !2257, file: !534, line: 776, type: !2173)
!2266 = !DILocalVariable(name: "p", scope: !2257, file: !534, line: 778, type: !2173)
!2267 = !DILocalVariable(name: "saved_errno", scope: !2257, file: !534, line: 779, type: !102)
!2268 = !DILocalVariable(name: "r", scope: !2257, file: !534, line: 780, type: !125)
!2269 = !DILocation(line: 0, scope: !2257)
!2270 = !DILocation(line: 778, column: 37, scope: !2257)
!2271 = !DILocation(line: 779, column: 21, scope: !2257)
!2272 = !DILocation(line: 781, column: 43, scope: !2257)
!2273 = !DILocation(line: 781, column: 53, scope: !2257)
!2274 = !DILocation(line: 781, column: 63, scope: !2257)
!2275 = !DILocation(line: 782, column: 43, scope: !2257)
!2276 = !DILocation(line: 782, column: 58, scope: !2257)
!2277 = !DILocation(line: 780, column: 14, scope: !2257)
!2278 = !DILocation(line: 783, column: 9, scope: !2257)
!2279 = !DILocation(line: 784, column: 3, scope: !2257)
!2280 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !534, file: !534, line: 251, type: !2281, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2285)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!125, !122, !125, !128, !125, !557, !102, !2283, !128, !128}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2311, !2313, !2316, !2317, !2318, !2319, !2322, !2323, !2325, !2326, !2329, !2333, !2334, !2342, !2345, !2346, !2347}
!2286 = !DILocalVariable(name: "buffer", arg: 1, scope: !2280, file: !534, line: 251, type: !122)
!2287 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2280, file: !534, line: 251, type: !125)
!2288 = !DILocalVariable(name: "arg", arg: 3, scope: !2280, file: !534, line: 252, type: !128)
!2289 = !DILocalVariable(name: "argsize", arg: 4, scope: !2280, file: !534, line: 252, type: !125)
!2290 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2280, file: !534, line: 253, type: !557)
!2291 = !DILocalVariable(name: "flags", arg: 6, scope: !2280, file: !534, line: 253, type: !102)
!2292 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2280, file: !534, line: 254, type: !2283)
!2293 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2280, file: !534, line: 255, type: !128)
!2294 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2280, file: !534, line: 256, type: !128)
!2295 = !DILocalVariable(name: "unibyte_locale", scope: !2280, file: !534, line: 258, type: !201)
!2296 = !DILocalVariable(name: "len", scope: !2280, file: !534, line: 260, type: !125)
!2297 = !DILocalVariable(name: "orig_buffersize", scope: !2280, file: !534, line: 261, type: !125)
!2298 = !DILocalVariable(name: "quote_string", scope: !2280, file: !534, line: 262, type: !128)
!2299 = !DILocalVariable(name: "quote_string_len", scope: !2280, file: !534, line: 263, type: !125)
!2300 = !DILocalVariable(name: "backslash_escapes", scope: !2280, file: !534, line: 264, type: !201)
!2301 = !DILocalVariable(name: "elide_outer_quotes", scope: !2280, file: !534, line: 265, type: !201)
!2302 = !DILocalVariable(name: "encountered_single_quote", scope: !2280, file: !534, line: 266, type: !201)
!2303 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2280, file: !534, line: 267, type: !201)
!2304 = !DILabel(scope: !2280, name: "process_input", file: !534, line: 308)
!2305 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2280, file: !534, line: 309, type: !201)
!2306 = !DILocalVariable(name: "lq", scope: !2307, file: !534, line: 361, type: !128)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !534, line: 361, column: 11)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !534, line: 360, column: 13)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !534, line: 333, column: 7)
!2310 = distinct !DILexicalBlock(scope: !2280, file: !534, line: 312, column: 5)
!2311 = !DILocalVariable(name: "i", scope: !2312, file: !534, line: 395, type: !125)
!2312 = distinct !DILexicalBlock(scope: !2280, file: !534, line: 395, column: 3)
!2313 = !DILocalVariable(name: "is_right_quote", scope: !2314, file: !534, line: 397, type: !201)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !534, line: 396, column: 5)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !534, line: 395, column: 3)
!2316 = !DILocalVariable(name: "escaping", scope: !2314, file: !534, line: 398, type: !201)
!2317 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2314, file: !534, line: 399, type: !201)
!2318 = !DILocalVariable(name: "c", scope: !2314, file: !534, line: 417, type: !130)
!2319 = !DILabel(scope: !2320, name: "c_and_shell_escape", file: !534, line: 502)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 478, column: 9)
!2321 = distinct !DILexicalBlock(scope: !2314, file: !534, line: 419, column: 9)
!2322 = !DILabel(scope: !2320, name: "c_escape", file: !534, line: 507)
!2323 = !DILocalVariable(name: "m", scope: !2324, file: !534, line: 598, type: !125)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 596, column: 11)
!2325 = !DILocalVariable(name: "printable", scope: !2324, file: !534, line: 600, type: !201)
!2326 = !DILocalVariable(name: "mbs", scope: !2327, file: !534, line: 609, type: !618)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !534, line: 608, column: 15)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !534, line: 602, column: 17)
!2329 = !DILocalVariable(name: "w", scope: !2330, file: !534, line: 618, type: !514)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !534, line: 617, column: 19)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !534, line: 616, column: 17)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !534, line: 616, column: 17)
!2333 = !DILocalVariable(name: "bytes", scope: !2330, file: !534, line: 619, type: !125)
!2334 = !DILocalVariable(name: "j", scope: !2335, file: !534, line: 648, type: !125)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !534, line: 648, column: 29)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !534, line: 647, column: 27)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !534, line: 645, column: 29)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !534, line: 636, column: 23)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !534, line: 628, column: 30)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !534, line: 623, column: 30)
!2341 = distinct !DILexicalBlock(scope: !2330, file: !534, line: 621, column: 25)
!2342 = !DILocalVariable(name: "ilim", scope: !2343, file: !534, line: 674, type: !125)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !534, line: 671, column: 15)
!2344 = distinct !DILexicalBlock(scope: !2324, file: !534, line: 670, column: 17)
!2345 = !DILabel(scope: !2314, name: "store_escape", file: !534, line: 709)
!2346 = !DILabel(scope: !2314, name: "store_c", file: !534, line: 712)
!2347 = !DILabel(scope: !2280, name: "force_outer_quoting_style", file: !534, line: 753)
!2348 = distinct !DIAssignID()
!2349 = distinct !DIAssignID()
!2350 = distinct !DIAssignID()
!2351 = distinct !DIAssignID()
!2352 = distinct !DIAssignID()
!2353 = !DILocation(line: 0, scope: !2327)
!2354 = distinct !DIAssignID()
!2355 = !DILocation(line: 0, scope: !2330)
!2356 = !DILocation(line: 0, scope: !2280)
!2357 = !DILocation(line: 258, column: 25, scope: !2280)
!2358 = !DILocation(line: 258, column: 36, scope: !2280)
!2359 = !DILocation(line: 267, column: 3, scope: !2280)
!2360 = !DILocation(line: 261, column: 10, scope: !2280)
!2361 = !DILocation(line: 262, column: 15, scope: !2280)
!2362 = !DILocation(line: 263, column: 10, scope: !2280)
!2363 = !DILocation(line: 308, column: 2, scope: !2280)
!2364 = !DILocation(line: 311, column: 3, scope: !2280)
!2365 = !DILocation(line: 318, column: 11, scope: !2310)
!2366 = !DILocation(line: 319, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !534, line: 319, column: 9)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !534, line: 319, column: 9)
!2369 = distinct !DILexicalBlock(scope: !2310, file: !534, line: 318, column: 11)
!2370 = !DILocation(line: 319, column: 9, scope: !2368)
!2371 = !DILocation(line: 0, scope: !609, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 357, column: 26, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !534, line: 335, column: 11)
!2374 = distinct !DILexicalBlock(scope: !2309, file: !534, line: 334, column: 13)
!2375 = !DILocation(line: 199, column: 29, scope: !609, inlinedAt: !2372)
!2376 = !DILocation(line: 201, column: 19, scope: !2377, inlinedAt: !2372)
!2377 = distinct !DILexicalBlock(scope: !609, file: !534, line: 201, column: 7)
!2378 = !DILocation(line: 201, column: 7, scope: !609, inlinedAt: !2372)
!2379 = !DILocation(line: 229, column: 3, scope: !609, inlinedAt: !2372)
!2380 = !DILocation(line: 230, column: 3, scope: !609, inlinedAt: !2372)
!2381 = !DILocalVariable(name: "ps", arg: 1, scope: !2382, file: !2128, line: 1135, type: !2385)
!2382 = distinct !DISubprogram(name: "mbszero", scope: !2128, file: !2128, line: 1135, type: !2383, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2386)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!2386 = !{!2381}
!2387 = !DILocation(line: 0, scope: !2382, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 230, column: 18, scope: !609, inlinedAt: !2372)
!2389 = !DILocalVariable(name: "__dest", arg: 1, scope: !2390, file: !1191, line: 57, type: !123)
!2390 = distinct !DISubprogram(name: "memset", scope: !1191, file: !1191, line: 57, type: !2137, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2391)
!2391 = !{!2389, !2392, !2393}
!2392 = !DILocalVariable(name: "__ch", arg: 2, scope: !2390, file: !1191, line: 57, type: !102)
!2393 = !DILocalVariable(name: "__len", arg: 3, scope: !2390, file: !1191, line: 57, type: !125)
!2394 = !DILocation(line: 0, scope: !2390, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1137, column: 3, scope: !2382, inlinedAt: !2388)
!2396 = !DILocation(line: 59, column: 10, scope: !2390, inlinedAt: !2395)
!2397 = !DILocation(line: 231, column: 7, scope: !2398, inlinedAt: !2372)
!2398 = distinct !DILexicalBlock(scope: !609, file: !534, line: 231, column: 7)
!2399 = !DILocation(line: 231, column: 40, scope: !2398, inlinedAt: !2372)
!2400 = !DILocation(line: 231, column: 45, scope: !2398, inlinedAt: !2372)
!2401 = !DILocation(line: 235, column: 1, scope: !609, inlinedAt: !2372)
!2402 = !DILocation(line: 0, scope: !609, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 358, column: 27, scope: !2373)
!2404 = !DILocation(line: 199, column: 29, scope: !609, inlinedAt: !2403)
!2405 = !DILocation(line: 201, column: 19, scope: !2377, inlinedAt: !2403)
!2406 = !DILocation(line: 201, column: 7, scope: !609, inlinedAt: !2403)
!2407 = !DILocation(line: 229, column: 3, scope: !609, inlinedAt: !2403)
!2408 = !DILocation(line: 230, column: 3, scope: !609, inlinedAt: !2403)
!2409 = !DILocation(line: 0, scope: !2382, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 230, column: 18, scope: !609, inlinedAt: !2403)
!2411 = !DILocation(line: 0, scope: !2390, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 1137, column: 3, scope: !2382, inlinedAt: !2410)
!2413 = !DILocation(line: 59, column: 10, scope: !2390, inlinedAt: !2412)
!2414 = !DILocation(line: 231, column: 7, scope: !2398, inlinedAt: !2403)
!2415 = !DILocation(line: 231, column: 40, scope: !2398, inlinedAt: !2403)
!2416 = !DILocation(line: 231, column: 45, scope: !2398, inlinedAt: !2403)
!2417 = !DILocation(line: 235, column: 1, scope: !609, inlinedAt: !2403)
!2418 = !DILocation(line: 360, column: 13, scope: !2309)
!2419 = !DILocation(line: 0, scope: !2307)
!2420 = !DILocation(line: 361, column: 45, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2307, file: !534, line: 361, column: 11)
!2422 = !DILocation(line: 361, column: 11, scope: !2307)
!2423 = !DILocation(line: 362, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !534, line: 362, column: 13)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !534, line: 362, column: 13)
!2426 = !DILocation(line: 362, column: 13, scope: !2425)
!2427 = !DILocation(line: 361, column: 52, scope: !2421)
!2428 = distinct !{!2428, !2422, !2429, !990}
!2429 = !DILocation(line: 362, column: 13, scope: !2307)
!2430 = !DILocation(line: 365, column: 28, scope: !2309)
!2431 = !DILocation(line: 260, column: 10, scope: !2280)
!2432 = !DILocation(line: 367, column: 7, scope: !2310)
!2433 = !DILocation(line: 373, column: 7, scope: !2310)
!2434 = !DILocation(line: 381, column: 11, scope: !2310)
!2435 = !DILocation(line: 376, column: 11, scope: !2310)
!2436 = !DILocation(line: 382, column: 9, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !534, line: 382, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !534, line: 382, column: 9)
!2439 = distinct !DILexicalBlock(scope: !2310, file: !534, line: 381, column: 11)
!2440 = !DILocation(line: 382, column: 9, scope: !2438)
!2441 = !DILocation(line: 389, column: 7, scope: !2310)
!2442 = !DILocation(line: 392, column: 7, scope: !2310)
!2443 = !DILocation(line: 0, scope: !2312)
!2444 = !DILocation(line: 395, column: 8, scope: !2312)
!2445 = !DILocation(line: 395, scope: !2312)
!2446 = !DILocation(line: 395, column: 34, scope: !2315)
!2447 = !DILocation(line: 395, column: 26, scope: !2315)
!2448 = !DILocation(line: 395, column: 48, scope: !2315)
!2449 = !DILocation(line: 395, column: 55, scope: !2315)
!2450 = !DILocation(line: 395, column: 3, scope: !2312)
!2451 = !DILocation(line: 395, column: 67, scope: !2315)
!2452 = !DILocation(line: 0, scope: !2314)
!2453 = !DILocation(line: 402, column: 11, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2314, file: !534, line: 401, column: 11)
!2455 = !DILocation(line: 404, column: 17, scope: !2454)
!2456 = !DILocation(line: 405, column: 39, scope: !2454)
!2457 = !DILocation(line: 409, column: 32, scope: !2454)
!2458 = !DILocation(line: 405, column: 19, scope: !2454)
!2459 = !DILocation(line: 405, column: 15, scope: !2454)
!2460 = !DILocation(line: 410, column: 11, scope: !2454)
!2461 = !DILocation(line: 410, column: 25, scope: !2454)
!2462 = !DILocalVariable(name: "__s1", arg: 1, scope: !2463, file: !956, line: 974, type: !1088)
!2463 = distinct !DISubprogram(name: "memeq", scope: !956, file: !956, line: 974, type: !2098, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2464)
!2464 = !{!2462, !2465, !2466}
!2465 = !DILocalVariable(name: "__s2", arg: 2, scope: !2463, file: !956, line: 974, type: !1088)
!2466 = !DILocalVariable(name: "__n", arg: 3, scope: !2463, file: !956, line: 974, type: !125)
!2467 = !DILocation(line: 0, scope: !2463, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 410, column: 14, scope: !2454)
!2469 = !DILocation(line: 976, column: 11, scope: !2463, inlinedAt: !2468)
!2470 = !DILocation(line: 976, column: 10, scope: !2463, inlinedAt: !2468)
!2471 = !DILocation(line: 401, column: 11, scope: !2314)
!2472 = !DILocation(line: 417, column: 25, scope: !2314)
!2473 = !DILocation(line: 418, column: 7, scope: !2314)
!2474 = !DILocation(line: 421, column: 15, scope: !2321)
!2475 = !DILocation(line: 423, column: 15, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !534, line: 423, column: 15)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !534, line: 422, column: 13)
!2478 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 421, column: 15)
!2479 = !DILocation(line: 423, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !534, line: 423, column: 15)
!2481 = !DILocation(line: 423, column: 15, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !534, line: 423, column: 15)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !534, line: 423, column: 15)
!2484 = distinct !DILexicalBlock(scope: !2480, file: !534, line: 423, column: 15)
!2485 = !DILocation(line: 423, column: 15, scope: !2483)
!2486 = !DILocation(line: 423, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !534, line: 423, column: 15)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !534, line: 423, column: 15)
!2489 = !DILocation(line: 423, column: 15, scope: !2488)
!2490 = !DILocation(line: 423, column: 15, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !534, line: 423, column: 15)
!2492 = distinct !DILexicalBlock(scope: !2484, file: !534, line: 423, column: 15)
!2493 = !DILocation(line: 423, column: 15, scope: !2492)
!2494 = !DILocation(line: 423, column: 15, scope: !2484)
!2495 = !DILocation(line: 423, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !534, line: 423, column: 15)
!2497 = distinct !DILexicalBlock(scope: !2476, file: !534, line: 423, column: 15)
!2498 = !DILocation(line: 423, column: 15, scope: !2497)
!2499 = !DILocation(line: 431, column: 19, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2477, file: !534, line: 430, column: 19)
!2501 = !DILocation(line: 431, column: 24, scope: !2500)
!2502 = !DILocation(line: 431, column: 28, scope: !2500)
!2503 = !DILocation(line: 431, column: 38, scope: !2500)
!2504 = !DILocation(line: 431, column: 48, scope: !2500)
!2505 = !DILocation(line: 431, column: 59, scope: !2500)
!2506 = !DILocation(line: 433, column: 19, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !534, line: 433, column: 19)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !534, line: 433, column: 19)
!2509 = distinct !DILexicalBlock(scope: !2500, file: !534, line: 432, column: 17)
!2510 = !DILocation(line: 433, column: 19, scope: !2508)
!2511 = !DILocation(line: 434, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !534, line: 434, column: 19)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !534, line: 434, column: 19)
!2514 = !DILocation(line: 434, column: 19, scope: !2513)
!2515 = !DILocation(line: 435, column: 17, scope: !2509)
!2516 = !DILocation(line: 442, column: 20, scope: !2478)
!2517 = !DILocation(line: 447, column: 11, scope: !2321)
!2518 = !DILocation(line: 450, column: 19, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 448, column: 13)
!2520 = !DILocation(line: 456, column: 19, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2519, file: !534, line: 455, column: 19)
!2522 = !DILocation(line: 456, column: 24, scope: !2521)
!2523 = !DILocation(line: 456, column: 28, scope: !2521)
!2524 = !DILocation(line: 456, column: 38, scope: !2521)
!2525 = !DILocation(line: 456, column: 41, scope: !2521)
!2526 = !DILocation(line: 456, column: 52, scope: !2521)
!2527 = !DILocation(line: 455, column: 19, scope: !2519)
!2528 = !DILocation(line: 457, column: 25, scope: !2521)
!2529 = !DILocation(line: 457, column: 17, scope: !2521)
!2530 = !DILocation(line: 464, column: 25, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2521, file: !534, line: 458, column: 19)
!2532 = !DILocation(line: 468, column: 21, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !534, line: 468, column: 21)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !534, line: 468, column: 21)
!2535 = !DILocation(line: 468, column: 21, scope: !2534)
!2536 = !DILocation(line: 469, column: 21, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !534, line: 469, column: 21)
!2538 = distinct !DILexicalBlock(scope: !2531, file: !534, line: 469, column: 21)
!2539 = !DILocation(line: 469, column: 21, scope: !2538)
!2540 = !DILocation(line: 470, column: 21, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !534, line: 470, column: 21)
!2542 = distinct !DILexicalBlock(scope: !2531, file: !534, line: 470, column: 21)
!2543 = !DILocation(line: 470, column: 21, scope: !2542)
!2544 = !DILocation(line: 471, column: 21, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !534, line: 471, column: 21)
!2546 = distinct !DILexicalBlock(scope: !2531, file: !534, line: 471, column: 21)
!2547 = !DILocation(line: 471, column: 21, scope: !2546)
!2548 = !DILocation(line: 472, column: 21, scope: !2531)
!2549 = !DILocation(line: 482, column: 33, scope: !2320)
!2550 = !DILocation(line: 483, column: 33, scope: !2320)
!2551 = !DILocation(line: 485, column: 33, scope: !2320)
!2552 = !DILocation(line: 486, column: 33, scope: !2320)
!2553 = !DILocation(line: 487, column: 33, scope: !2320)
!2554 = !DILocation(line: 490, column: 17, scope: !2320)
!2555 = !DILocation(line: 492, column: 21, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !534, line: 491, column: 15)
!2557 = distinct !DILexicalBlock(scope: !2320, file: !534, line: 490, column: 17)
!2558 = !DILocation(line: 499, column: 35, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2320, file: !534, line: 499, column: 17)
!2560 = !DILocation(line: 0, scope: !2320)
!2561 = !DILocation(line: 502, column: 11, scope: !2320)
!2562 = !DILocation(line: 504, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2320, file: !534, line: 503, column: 17)
!2564 = !DILocation(line: 507, column: 11, scope: !2320)
!2565 = !DILocation(line: 508, column: 17, scope: !2320)
!2566 = !DILocation(line: 517, column: 15, scope: !2321)
!2567 = !DILocation(line: 517, column: 40, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 517, column: 15)
!2569 = !DILocation(line: 517, column: 47, scope: !2568)
!2570 = !DILocation(line: 517, column: 18, scope: !2568)
!2571 = !DILocation(line: 521, column: 17, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 521, column: 15)
!2573 = !DILocation(line: 521, column: 15, scope: !2321)
!2574 = !DILocation(line: 525, column: 11, scope: !2321)
!2575 = !DILocation(line: 537, column: 15, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 536, column: 15)
!2577 = !DILocation(line: 536, column: 15, scope: !2321)
!2578 = !DILocation(line: 544, column: 15, scope: !2321)
!2579 = !DILocation(line: 546, column: 19, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !534, line: 545, column: 13)
!2581 = distinct !DILexicalBlock(scope: !2321, file: !534, line: 544, column: 15)
!2582 = !DILocation(line: 549, column: 19, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !534, line: 549, column: 19)
!2584 = !DILocation(line: 549, column: 30, scope: !2583)
!2585 = !DILocation(line: 558, column: 15, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !534, line: 558, column: 15)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !534, line: 558, column: 15)
!2588 = !DILocation(line: 558, column: 15, scope: !2587)
!2589 = !DILocation(line: 559, column: 15, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !534, line: 559, column: 15)
!2591 = distinct !DILexicalBlock(scope: !2580, file: !534, line: 559, column: 15)
!2592 = !DILocation(line: 559, column: 15, scope: !2591)
!2593 = !DILocation(line: 560, column: 15, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !534, line: 560, column: 15)
!2595 = distinct !DILexicalBlock(scope: !2580, file: !534, line: 560, column: 15)
!2596 = !DILocation(line: 560, column: 15, scope: !2595)
!2597 = !DILocation(line: 562, column: 13, scope: !2580)
!2598 = !DILocation(line: 602, column: 17, scope: !2324)
!2599 = !DILocation(line: 0, scope: !2324)
!2600 = !DILocation(line: 605, column: 29, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2328, file: !534, line: 603, column: 15)
!2602 = !DILocation(line: 605, column: 41, scope: !2601)
!2603 = !DILocation(line: 606, column: 15, scope: !2601)
!2604 = !DILocation(line: 609, column: 17, scope: !2327)
!2605 = !DILocation(line: 0, scope: !2382, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 609, column: 32, scope: !2327)
!2607 = !DILocation(line: 0, scope: !2390, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 1137, column: 3, scope: !2382, inlinedAt: !2606)
!2609 = !DILocation(line: 59, column: 10, scope: !2390, inlinedAt: !2608)
!2610 = !DILocation(line: 613, column: 29, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2327, file: !534, line: 613, column: 21)
!2612 = !DILocation(line: 613, column: 21, scope: !2327)
!2613 = !DILocation(line: 614, column: 29, scope: !2611)
!2614 = !DILocation(line: 614, column: 19, scope: !2611)
!2615 = !DILocation(line: 618, column: 21, scope: !2330)
!2616 = !DILocation(line: 620, column: 54, scope: !2330)
!2617 = !DILocation(line: 619, column: 36, scope: !2330)
!2618 = !DILocation(line: 621, column: 25, scope: !2330)
!2619 = !DILocation(line: 631, column: 38, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2339, file: !534, line: 629, column: 23)
!2621 = !DILocation(line: 631, column: 48, scope: !2620)
!2622 = !DILocation(line: 631, column: 25, scope: !2620)
!2623 = !DILocation(line: 626, column: 25, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2340, file: !534, line: 624, column: 23)
!2625 = !DILocation(line: 631, column: 51, scope: !2620)
!2626 = !DILocation(line: 632, column: 28, scope: !2620)
!2627 = !DILocation(line: 631, column: 34, scope: !2620)
!2628 = distinct !{!2628, !2622, !2626, !990}
!2629 = !DILocation(line: 0, scope: !2335)
!2630 = !DILocation(line: 646, column: 29, scope: !2337)
!2631 = !DILocation(line: 648, column: 29, scope: !2335)
!2632 = !DILocation(line: 649, column: 39, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2335, file: !534, line: 648, column: 29)
!2634 = !DILocation(line: 649, column: 31, scope: !2633)
!2635 = !DILocation(line: 648, column: 60, scope: !2633)
!2636 = !DILocation(line: 648, column: 50, scope: !2633)
!2637 = distinct !{!2637, !2631, !2638, !990}
!2638 = !DILocation(line: 654, column: 33, scope: !2335)
!2639 = !DILocation(line: 657, column: 43, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2338, file: !534, line: 657, column: 29)
!2641 = !DILocalVariable(name: "wc", arg: 1, scope: !2642, file: !2643, line: 865, type: !2646)
!2642 = distinct !DISubprogram(name: "c32isprint", scope: !2643, file: !2643, line: 865, type: !2644, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2648)
!2643 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!102, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2647, line: 20, baseType: !97)
!2647 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2648 = !{!2641}
!2649 = !DILocation(line: 0, scope: !2642, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 657, column: 31, scope: !2640)
!2651 = !DILocation(line: 871, column: 10, scope: !2642, inlinedAt: !2650)
!2652 = !DILocation(line: 657, column: 31, scope: !2640)
!2653 = !DILocation(line: 664, column: 23, scope: !2330)
!2654 = !DILocation(line: 665, column: 19, scope: !2331)
!2655 = !DILocation(line: 666, column: 15, scope: !2328)
!2656 = !DILocation(line: 753, column: 2, scope: !2280)
!2657 = !DILocation(line: 756, column: 51, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2280, file: !534, line: 756, column: 7)
!2659 = !DILocation(line: 0, scope: !2328)
!2660 = !DILocation(line: 670, column: 19, scope: !2344)
!2661 = !DILocation(line: 670, column: 23, scope: !2344)
!2662 = !DILocation(line: 674, column: 33, scope: !2343)
!2663 = !DILocation(line: 0, scope: !2343)
!2664 = !DILocation(line: 676, column: 17, scope: !2343)
!2665 = !DILocation(line: 678, column: 43, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !534, line: 678, column: 25)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !534, line: 677, column: 19)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !534, line: 676, column: 17)
!2669 = distinct !DILexicalBlock(scope: !2343, file: !534, line: 676, column: 17)
!2670 = !DILocation(line: 680, column: 25, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !534, line: 680, column: 25)
!2672 = distinct !DILexicalBlock(scope: !2666, file: !534, line: 679, column: 23)
!2673 = !DILocation(line: 680, column: 25, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !534, line: 680, column: 25)
!2675 = !DILocation(line: 680, column: 25, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !534, line: 680, column: 25)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !534, line: 680, column: 25)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !534, line: 680, column: 25)
!2679 = !DILocation(line: 680, column: 25, scope: !2677)
!2680 = !DILocation(line: 680, column: 25, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !534, line: 680, column: 25)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !534, line: 680, column: 25)
!2683 = !DILocation(line: 680, column: 25, scope: !2682)
!2684 = !DILocation(line: 680, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !534, line: 680, column: 25)
!2686 = distinct !DILexicalBlock(scope: !2678, file: !534, line: 680, column: 25)
!2687 = !DILocation(line: 680, column: 25, scope: !2686)
!2688 = !DILocation(line: 680, column: 25, scope: !2678)
!2689 = !DILocation(line: 680, column: 25, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !534, line: 680, column: 25)
!2691 = distinct !DILexicalBlock(scope: !2671, file: !534, line: 680, column: 25)
!2692 = !DILocation(line: 680, column: 25, scope: !2691)
!2693 = !DILocation(line: 681, column: 25, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !534, line: 681, column: 25)
!2695 = distinct !DILexicalBlock(scope: !2672, file: !534, line: 681, column: 25)
!2696 = !DILocation(line: 681, column: 25, scope: !2695)
!2697 = !DILocation(line: 682, column: 25, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !534, line: 682, column: 25)
!2699 = distinct !DILexicalBlock(scope: !2672, file: !534, line: 682, column: 25)
!2700 = !DILocation(line: 682, column: 25, scope: !2699)
!2701 = !DILocation(line: 683, column: 38, scope: !2672)
!2702 = !DILocation(line: 683, column: 33, scope: !2672)
!2703 = !DILocation(line: 684, column: 23, scope: !2672)
!2704 = !DILocation(line: 685, column: 30, scope: !2666)
!2705 = !DILocation(line: 687, column: 25, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !534, line: 687, column: 25)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !534, line: 687, column: 25)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !534, line: 686, column: 23)
!2709 = distinct !DILexicalBlock(scope: !2666, file: !534, line: 685, column: 30)
!2710 = !DILocation(line: 687, column: 25, scope: !2707)
!2711 = !DILocation(line: 689, column: 23, scope: !2708)
!2712 = !DILocation(line: 690, column: 35, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2667, file: !534, line: 690, column: 25)
!2714 = !DILocation(line: 690, column: 30, scope: !2713)
!2715 = !DILocation(line: 690, column: 25, scope: !2667)
!2716 = !DILocation(line: 692, column: 21, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !534, line: 692, column: 21)
!2718 = distinct !DILexicalBlock(scope: !2667, file: !534, line: 692, column: 21)
!2719 = !DILocation(line: 692, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !534, line: 692, column: 21)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !534, line: 692, column: 21)
!2722 = distinct !DILexicalBlock(scope: !2717, file: !534, line: 692, column: 21)
!2723 = !DILocation(line: 692, column: 21, scope: !2721)
!2724 = !DILocation(line: 692, column: 21, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !534, line: 692, column: 21)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !534, line: 692, column: 21)
!2727 = !DILocation(line: 692, column: 21, scope: !2726)
!2728 = !DILocation(line: 692, column: 21, scope: !2722)
!2729 = !DILocation(line: 0, scope: !2667)
!2730 = !DILocation(line: 693, column: 21, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !534, line: 693, column: 21)
!2732 = distinct !DILexicalBlock(scope: !2667, file: !534, line: 693, column: 21)
!2733 = !DILocation(line: 693, column: 21, scope: !2732)
!2734 = !DILocation(line: 694, column: 25, scope: !2667)
!2735 = !DILocation(line: 676, column: 17, scope: !2668)
!2736 = distinct !{!2736, !2737, !2738}
!2737 = !DILocation(line: 676, column: 17, scope: !2669)
!2738 = !DILocation(line: 695, column: 19, scope: !2669)
!2739 = !DILocation(line: 409, column: 30, scope: !2454)
!2740 = !DILocation(line: 702, column: 34, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2314, file: !534, line: 702, column: 11)
!2742 = !DILocation(line: 704, column: 14, scope: !2741)
!2743 = !DILocation(line: 705, column: 14, scope: !2741)
!2744 = !DILocation(line: 705, column: 35, scope: !2741)
!2745 = !DILocation(line: 705, column: 17, scope: !2741)
!2746 = !DILocation(line: 705, column: 47, scope: !2741)
!2747 = !DILocation(line: 705, column: 65, scope: !2741)
!2748 = !DILocation(line: 706, column: 11, scope: !2741)
!2749 = !DILocation(line: 702, column: 11, scope: !2314)
!2750 = !DILocation(line: 395, column: 15, scope: !2312)
!2751 = !DILocation(line: 709, column: 5, scope: !2314)
!2752 = !DILocation(line: 710, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2314, file: !534, line: 710, column: 7)
!2754 = !DILocation(line: 710, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2753, file: !534, line: 710, column: 7)
!2756 = !DILocation(line: 710, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !534, line: 710, column: 7)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !534, line: 710, column: 7)
!2759 = distinct !DILexicalBlock(scope: !2755, file: !534, line: 710, column: 7)
!2760 = !DILocation(line: 710, column: 7, scope: !2758)
!2761 = !DILocation(line: 710, column: 7, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !534, line: 710, column: 7)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !534, line: 710, column: 7)
!2764 = !DILocation(line: 710, column: 7, scope: !2763)
!2765 = !DILocation(line: 710, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !534, line: 710, column: 7)
!2767 = distinct !DILexicalBlock(scope: !2759, file: !534, line: 710, column: 7)
!2768 = !DILocation(line: 710, column: 7, scope: !2767)
!2769 = !DILocation(line: 710, column: 7, scope: !2759)
!2770 = !DILocation(line: 710, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !534, line: 710, column: 7)
!2772 = distinct !DILexicalBlock(scope: !2753, file: !534, line: 710, column: 7)
!2773 = !DILocation(line: 710, column: 7, scope: !2772)
!2774 = !DILocation(line: 712, column: 5, scope: !2314)
!2775 = !DILocation(line: 713, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !534, line: 713, column: 7)
!2777 = distinct !DILexicalBlock(scope: !2314, file: !534, line: 713, column: 7)
!2778 = !DILocation(line: 417, column: 21, scope: !2314)
!2779 = !DILocation(line: 713, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !534, line: 713, column: 7)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !534, line: 713, column: 7)
!2782 = distinct !DILexicalBlock(scope: !2776, file: !534, line: 713, column: 7)
!2783 = !DILocation(line: 713, column: 7, scope: !2781)
!2784 = !DILocation(line: 713, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !534, line: 713, column: 7)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !534, line: 713, column: 7)
!2787 = !DILocation(line: 713, column: 7, scope: !2786)
!2788 = !DILocation(line: 713, column: 7, scope: !2782)
!2789 = !DILocation(line: 714, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !534, line: 714, column: 7)
!2791 = distinct !DILexicalBlock(scope: !2314, file: !534, line: 714, column: 7)
!2792 = !DILocation(line: 714, column: 7, scope: !2791)
!2793 = !DILocation(line: 716, column: 11, scope: !2314)
!2794 = !DILocation(line: 718, column: 5, scope: !2315)
!2795 = !DILocation(line: 395, column: 82, scope: !2315)
!2796 = !DILocation(line: 395, column: 3, scope: !2315)
!2797 = distinct !{!2797, !2450, !2798, !990}
!2798 = !DILocation(line: 718, column: 5, scope: !2312)
!2799 = !DILocation(line: 720, column: 11, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2280, file: !534, line: 720, column: 7)
!2801 = !DILocation(line: 720, column: 16, scope: !2800)
!2802 = !DILocation(line: 728, column: 51, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2280, file: !534, line: 728, column: 7)
!2804 = !DILocation(line: 731, column: 11, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2803, file: !534, line: 730, column: 5)
!2806 = !DILocation(line: 732, column: 16, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2805, file: !534, line: 731, column: 11)
!2808 = !DILocation(line: 732, column: 9, scope: !2807)
!2809 = !DILocation(line: 736, column: 18, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !534, line: 736, column: 16)
!2811 = !DILocation(line: 736, column: 29, scope: !2810)
!2812 = !DILocation(line: 745, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2280, file: !534, line: 745, column: 7)
!2814 = !DILocation(line: 745, column: 20, scope: !2813)
!2815 = !DILocation(line: 746, column: 12, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !534, line: 746, column: 5)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !534, line: 746, column: 5)
!2818 = !DILocation(line: 746, column: 5, scope: !2817)
!2819 = !DILocation(line: 747, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !534, line: 747, column: 7)
!2821 = distinct !DILexicalBlock(scope: !2816, file: !534, line: 747, column: 7)
!2822 = !DILocation(line: 747, column: 7, scope: !2821)
!2823 = !DILocation(line: 746, column: 39, scope: !2816)
!2824 = distinct !{!2824, !2818, !2825, !990}
!2825 = !DILocation(line: 747, column: 7, scope: !2817)
!2826 = !DILocation(line: 749, column: 11, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2280, file: !534, line: 749, column: 7)
!2828 = !DILocation(line: 749, column: 7, scope: !2280)
!2829 = !DILocation(line: 750, column: 5, scope: !2827)
!2830 = !DILocation(line: 750, column: 17, scope: !2827)
!2831 = !DILocation(line: 756, column: 21, scope: !2658)
!2832 = !DILocation(line: 760, column: 42, scope: !2280)
!2833 = !DILocation(line: 758, column: 10, scope: !2280)
!2834 = !DILocation(line: 758, column: 3, scope: !2280)
!2835 = !DILocation(line: 762, column: 1, scope: !2280)
!2836 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1064, file: !1064, line: 98, type: !2837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!125}
!2839 = !DISubprogram(name: "iswprint", scope: !2840, file: !2840, line: 120, type: !2644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2840 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2841 = distinct !DISubprogram(name: "quotearg_alloc", scope: !534, file: !534, line: 788, type: !2842, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!122, !128, !125, !2173}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "arg", arg: 1, scope: !2841, file: !534, line: 788, type: !128)
!2846 = !DILocalVariable(name: "argsize", arg: 2, scope: !2841, file: !534, line: 788, type: !125)
!2847 = !DILocalVariable(name: "o", arg: 3, scope: !2841, file: !534, line: 789, type: !2173)
!2848 = !DILocation(line: 0, scope: !2841)
!2849 = !DILocalVariable(name: "arg", arg: 1, scope: !2850, file: !534, line: 801, type: !128)
!2850 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !534, file: !534, line: 801, type: !2851, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!122, !128, !125, !817, !2173}
!2853 = !{!2849, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2854 = !DILocalVariable(name: "argsize", arg: 2, scope: !2850, file: !534, line: 801, type: !125)
!2855 = !DILocalVariable(name: "size", arg: 3, scope: !2850, file: !534, line: 801, type: !817)
!2856 = !DILocalVariable(name: "o", arg: 4, scope: !2850, file: !534, line: 802, type: !2173)
!2857 = !DILocalVariable(name: "p", scope: !2850, file: !534, line: 804, type: !2173)
!2858 = !DILocalVariable(name: "saved_errno", scope: !2850, file: !534, line: 805, type: !102)
!2859 = !DILocalVariable(name: "flags", scope: !2850, file: !534, line: 807, type: !102)
!2860 = !DILocalVariable(name: "bufsize", scope: !2850, file: !534, line: 808, type: !125)
!2861 = !DILocalVariable(name: "buf", scope: !2850, file: !534, line: 812, type: !122)
!2862 = !DILocation(line: 0, scope: !2850, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 791, column: 10, scope: !2841)
!2864 = !DILocation(line: 804, column: 37, scope: !2850, inlinedAt: !2863)
!2865 = !DILocation(line: 805, column: 21, scope: !2850, inlinedAt: !2863)
!2866 = !DILocation(line: 807, column: 18, scope: !2850, inlinedAt: !2863)
!2867 = !DILocation(line: 807, column: 24, scope: !2850, inlinedAt: !2863)
!2868 = !DILocation(line: 808, column: 72, scope: !2850, inlinedAt: !2863)
!2869 = !DILocation(line: 809, column: 56, scope: !2850, inlinedAt: !2863)
!2870 = !DILocation(line: 810, column: 49, scope: !2850, inlinedAt: !2863)
!2871 = !DILocation(line: 811, column: 49, scope: !2850, inlinedAt: !2863)
!2872 = !DILocation(line: 808, column: 20, scope: !2850, inlinedAt: !2863)
!2873 = !DILocation(line: 811, column: 62, scope: !2850, inlinedAt: !2863)
!2874 = !DILocation(line: 812, column: 15, scope: !2850, inlinedAt: !2863)
!2875 = !DILocation(line: 813, column: 60, scope: !2850, inlinedAt: !2863)
!2876 = !DILocation(line: 815, column: 32, scope: !2850, inlinedAt: !2863)
!2877 = !DILocation(line: 815, column: 47, scope: !2850, inlinedAt: !2863)
!2878 = !DILocation(line: 813, column: 3, scope: !2850, inlinedAt: !2863)
!2879 = !DILocation(line: 816, column: 9, scope: !2850, inlinedAt: !2863)
!2880 = !DILocation(line: 791, column: 3, scope: !2841)
!2881 = !DILocation(line: 0, scope: !2850)
!2882 = !DILocation(line: 804, column: 37, scope: !2850)
!2883 = !DILocation(line: 805, column: 21, scope: !2850)
!2884 = !DILocation(line: 807, column: 18, scope: !2850)
!2885 = !DILocation(line: 807, column: 27, scope: !2850)
!2886 = !DILocation(line: 807, column: 24, scope: !2850)
!2887 = !DILocation(line: 808, column: 72, scope: !2850)
!2888 = !DILocation(line: 809, column: 56, scope: !2850)
!2889 = !DILocation(line: 810, column: 49, scope: !2850)
!2890 = !DILocation(line: 811, column: 49, scope: !2850)
!2891 = !DILocation(line: 808, column: 20, scope: !2850)
!2892 = !DILocation(line: 811, column: 62, scope: !2850)
!2893 = !DILocation(line: 812, column: 15, scope: !2850)
!2894 = !DILocation(line: 813, column: 60, scope: !2850)
!2895 = !DILocation(line: 815, column: 32, scope: !2850)
!2896 = !DILocation(line: 815, column: 47, scope: !2850)
!2897 = !DILocation(line: 813, column: 3, scope: !2850)
!2898 = !DILocation(line: 816, column: 9, scope: !2850)
!2899 = !DILocation(line: 817, column: 7, scope: !2850)
!2900 = !DILocation(line: 818, column: 11, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2850, file: !534, line: 817, column: 7)
!2902 = !{!1502, !1502, i64 0}
!2903 = !DILocation(line: 818, column: 5, scope: !2901)
!2904 = !DILocation(line: 819, column: 3, scope: !2850)
!2905 = distinct !DISubprogram(name: "quotearg_free", scope: !534, file: !534, line: 837, type: !489, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2906)
!2906 = !{!2907, !2908}
!2907 = !DILocalVariable(name: "sv", scope: !2905, file: !534, line: 839, type: !632)
!2908 = !DILocalVariable(name: "i", scope: !2909, file: !534, line: 840, type: !102)
!2909 = distinct !DILexicalBlock(scope: !2905, file: !534, line: 840, column: 3)
!2910 = !DILocation(line: 839, column: 24, scope: !2905)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocation(line: 0, scope: !2909)
!2913 = !DILocation(line: 840, column: 21, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2909, file: !534, line: 840, column: 3)
!2915 = !DILocation(line: 840, column: 3, scope: !2909)
!2916 = !DILocation(line: 842, column: 13, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2905, file: !534, line: 842, column: 7)
!2918 = !{!2919, !876, i64 8}
!2919 = !{!"slotvec", !1502, i64 0, !876, i64 8}
!2920 = !DILocation(line: 842, column: 17, scope: !2917)
!2921 = !DILocation(line: 842, column: 7, scope: !2905)
!2922 = !DILocation(line: 841, column: 17, scope: !2914)
!2923 = !DILocation(line: 841, column: 5, scope: !2914)
!2924 = !DILocation(line: 840, column: 32, scope: !2914)
!2925 = distinct !{!2925, !2915, !2926, !990}
!2926 = !DILocation(line: 841, column: 20, scope: !2909)
!2927 = !DILocation(line: 844, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2917, file: !534, line: 843, column: 5)
!2929 = !DILocation(line: 845, column: 21, scope: !2928)
!2930 = !{!2919, !1502, i64 0}
!2931 = !DILocation(line: 846, column: 20, scope: !2928)
!2932 = !DILocation(line: 847, column: 5, scope: !2928)
!2933 = !DILocation(line: 848, column: 10, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2905, file: !534, line: 848, column: 7)
!2935 = !DILocation(line: 848, column: 7, scope: !2905)
!2936 = !DILocation(line: 850, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !534, line: 849, column: 5)
!2938 = !DILocation(line: 851, column: 15, scope: !2937)
!2939 = !DILocation(line: 852, column: 5, scope: !2937)
!2940 = !DILocation(line: 853, column: 10, scope: !2905)
!2941 = !DILocation(line: 854, column: 1, scope: !2905)
!2942 = distinct !DISubprogram(name: "quotearg_n", scope: !534, file: !534, line: 919, type: !1057, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2943)
!2943 = !{!2944, !2945}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2942, file: !534, line: 919, type: !102)
!2945 = !DILocalVariable(name: "arg", arg: 2, scope: !2942, file: !534, line: 919, type: !128)
!2946 = !DILocation(line: 0, scope: !2942)
!2947 = !DILocation(line: 921, column: 10, scope: !2942)
!2948 = !DILocation(line: 921, column: 3, scope: !2942)
!2949 = distinct !DISubprogram(name: "quotearg_n_options", scope: !534, file: !534, line: 866, type: !2950, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!122, !102, !128, !125, !2173}
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2963, !2964, !2966, !2967, !2968}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !534, line: 866, type: !102)
!2954 = !DILocalVariable(name: "arg", arg: 2, scope: !2949, file: !534, line: 866, type: !128)
!2955 = !DILocalVariable(name: "argsize", arg: 3, scope: !2949, file: !534, line: 866, type: !125)
!2956 = !DILocalVariable(name: "options", arg: 4, scope: !2949, file: !534, line: 867, type: !2173)
!2957 = !DILocalVariable(name: "saved_errno", scope: !2949, file: !534, line: 869, type: !102)
!2958 = !DILocalVariable(name: "sv", scope: !2949, file: !534, line: 871, type: !632)
!2959 = !DILocalVariable(name: "nslots_max", scope: !2949, file: !534, line: 873, type: !102)
!2960 = !DILocalVariable(name: "preallocated", scope: !2961, file: !534, line: 879, type: !201)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !534, line: 878, column: 5)
!2962 = distinct !DILexicalBlock(scope: !2949, file: !534, line: 877, column: 7)
!2963 = !DILocalVariable(name: "new_nslots", scope: !2961, file: !534, line: 880, type: !830)
!2964 = !DILocalVariable(name: "size", scope: !2965, file: !534, line: 891, type: !125)
!2965 = distinct !DILexicalBlock(scope: !2949, file: !534, line: 890, column: 3)
!2966 = !DILocalVariable(name: "val", scope: !2965, file: !534, line: 892, type: !122)
!2967 = !DILocalVariable(name: "flags", scope: !2965, file: !534, line: 894, type: !102)
!2968 = !DILocalVariable(name: "qsize", scope: !2965, file: !534, line: 895, type: !125)
!2969 = distinct !DIAssignID()
!2970 = !DILocation(line: 0, scope: !2961)
!2971 = !DILocation(line: 0, scope: !2949)
!2972 = !DILocation(line: 869, column: 21, scope: !2949)
!2973 = !DILocation(line: 871, column: 24, scope: !2949)
!2974 = !DILocation(line: 874, column: 17, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2949, file: !534, line: 874, column: 7)
!2976 = !DILocation(line: 875, column: 5, scope: !2975)
!2977 = !DILocation(line: 877, column: 7, scope: !2962)
!2978 = !DILocation(line: 877, column: 14, scope: !2962)
!2979 = !DILocation(line: 877, column: 7, scope: !2949)
!2980 = !DILocation(line: 879, column: 31, scope: !2961)
!2981 = !DILocation(line: 880, column: 7, scope: !2961)
!2982 = !DILocation(line: 880, column: 26, scope: !2961)
!2983 = !DILocation(line: 880, column: 13, scope: !2961)
!2984 = distinct !DIAssignID()
!2985 = !DILocation(line: 882, column: 31, scope: !2961)
!2986 = !DILocation(line: 883, column: 33, scope: !2961)
!2987 = !DILocation(line: 883, column: 42, scope: !2961)
!2988 = !DILocation(line: 883, column: 31, scope: !2961)
!2989 = !DILocation(line: 882, column: 22, scope: !2961)
!2990 = !DILocation(line: 882, column: 15, scope: !2961)
!2991 = !DILocation(line: 884, column: 11, scope: !2961)
!2992 = !DILocation(line: 885, column: 15, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2961, file: !534, line: 884, column: 11)
!2994 = !{i64 0, i64 8, !2902, i64 8, i64 8, !875}
!2995 = !DILocation(line: 885, column: 9, scope: !2993)
!2996 = !DILocation(line: 886, column: 20, scope: !2961)
!2997 = !DILocation(line: 886, column: 18, scope: !2961)
!2998 = !DILocation(line: 886, column: 32, scope: !2961)
!2999 = !DILocation(line: 886, column: 43, scope: !2961)
!3000 = !DILocation(line: 886, column: 53, scope: !2961)
!3001 = !DILocation(line: 0, scope: !2390, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 886, column: 7, scope: !2961)
!3003 = !DILocation(line: 59, column: 10, scope: !2390, inlinedAt: !3002)
!3004 = !DILocation(line: 887, column: 16, scope: !2961)
!3005 = !DILocation(line: 887, column: 14, scope: !2961)
!3006 = !DILocation(line: 888, column: 5, scope: !2962)
!3007 = !DILocation(line: 888, column: 5, scope: !2961)
!3008 = !DILocation(line: 891, column: 19, scope: !2965)
!3009 = !DILocation(line: 891, column: 25, scope: !2965)
!3010 = !DILocation(line: 0, scope: !2965)
!3011 = !DILocation(line: 892, column: 23, scope: !2965)
!3012 = !DILocation(line: 894, column: 26, scope: !2965)
!3013 = !DILocation(line: 894, column: 32, scope: !2965)
!3014 = !DILocation(line: 896, column: 55, scope: !2965)
!3015 = !DILocation(line: 897, column: 55, scope: !2965)
!3016 = !DILocation(line: 898, column: 55, scope: !2965)
!3017 = !DILocation(line: 899, column: 55, scope: !2965)
!3018 = !DILocation(line: 895, column: 20, scope: !2965)
!3019 = !DILocation(line: 901, column: 14, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2965, file: !534, line: 901, column: 9)
!3021 = !DILocation(line: 901, column: 9, scope: !2965)
!3022 = !DILocation(line: 903, column: 35, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !534, line: 902, column: 7)
!3024 = !DILocation(line: 903, column: 20, scope: !3023)
!3025 = !DILocation(line: 904, column: 17, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3023, file: !534, line: 904, column: 13)
!3027 = !DILocation(line: 904, column: 13, scope: !3023)
!3028 = !DILocation(line: 905, column: 11, scope: !3026)
!3029 = !DILocation(line: 906, column: 27, scope: !3023)
!3030 = !DILocation(line: 906, column: 19, scope: !3023)
!3031 = !DILocation(line: 907, column: 69, scope: !3023)
!3032 = !DILocation(line: 909, column: 44, scope: !3023)
!3033 = !DILocation(line: 910, column: 44, scope: !3023)
!3034 = !DILocation(line: 907, column: 9, scope: !3023)
!3035 = !DILocation(line: 911, column: 7, scope: !3023)
!3036 = !DILocation(line: 913, column: 11, scope: !2965)
!3037 = !DILocation(line: 914, column: 5, scope: !2965)
!3038 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !534, file: !534, line: 925, type: !3039, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!122, !102, !128, !125}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "n", arg: 1, scope: !3038, file: !534, line: 925, type: !102)
!3043 = !DILocalVariable(name: "arg", arg: 2, scope: !3038, file: !534, line: 925, type: !128)
!3044 = !DILocalVariable(name: "argsize", arg: 3, scope: !3038, file: !534, line: 925, type: !125)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 927, column: 10, scope: !3038)
!3047 = !DILocation(line: 927, column: 3, scope: !3038)
!3048 = distinct !DISubprogram(name: "quotearg", scope: !534, file: !534, line: 931, type: !1066, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3049)
!3049 = !{!3050}
!3050 = !DILocalVariable(name: "arg", arg: 1, scope: !3048, file: !534, line: 931, type: !128)
!3051 = !DILocation(line: 0, scope: !3048)
!3052 = !DILocation(line: 0, scope: !2942, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 933, column: 10, scope: !3048)
!3054 = !DILocation(line: 921, column: 10, scope: !2942, inlinedAt: !3053)
!3055 = !DILocation(line: 933, column: 3, scope: !3048)
!3056 = distinct !DISubprogram(name: "quotearg_mem", scope: !534, file: !534, line: 937, type: !3057, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!122, !128, !125}
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !534, line: 937, type: !128)
!3061 = !DILocalVariable(name: "argsize", arg: 2, scope: !3056, file: !534, line: 937, type: !125)
!3062 = !DILocation(line: 0, scope: !3056)
!3063 = !DILocation(line: 0, scope: !3038, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 939, column: 10, scope: !3056)
!3065 = !DILocation(line: 927, column: 10, scope: !3038, inlinedAt: !3064)
!3066 = !DILocation(line: 939, column: 3, scope: !3056)
!3067 = distinct !DISubprogram(name: "quotearg_n_style", scope: !534, file: !534, line: 943, type: !3068, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!122, !102, !557, !128}
!3070 = !{!3071, !3072, !3073, !3074}
!3071 = !DILocalVariable(name: "n", arg: 1, scope: !3067, file: !534, line: 943, type: !102)
!3072 = !DILocalVariable(name: "s", arg: 2, scope: !3067, file: !534, line: 943, type: !557)
!3073 = !DILocalVariable(name: "arg", arg: 3, scope: !3067, file: !534, line: 943, type: !128)
!3074 = !DILocalVariable(name: "o", scope: !3067, file: !534, line: 945, type: !2174)
!3075 = distinct !DIAssignID()
!3076 = !DILocation(line: 0, scope: !3067)
!3077 = !DILocation(line: 945, column: 3, scope: !3067)
!3078 = !{!3079}
!3079 = distinct !{!3079, !3080, !"quoting_options_from_style: argument 0"}
!3080 = distinct !{!3080, !"quoting_options_from_style"}
!3081 = !DILocation(line: 945, column: 36, scope: !3067)
!3082 = !DILocalVariable(name: "style", arg: 1, scope: !3083, file: !534, line: 183, type: !557)
!3083 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !534, file: !534, line: 183, type: !3084, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!584, !557}
!3086 = !{!3082, !3087}
!3087 = !DILocalVariable(name: "o", scope: !3083, file: !534, line: 185, type: !584)
!3088 = !DILocation(line: 0, scope: !3083, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 945, column: 36, scope: !3067)
!3090 = !DILocation(line: 185, column: 26, scope: !3083, inlinedAt: !3089)
!3091 = distinct !DIAssignID()
!3092 = !DILocation(line: 186, column: 13, scope: !3093, inlinedAt: !3089)
!3093 = distinct !DILexicalBlock(scope: !3083, file: !534, line: 186, column: 7)
!3094 = !DILocation(line: 186, column: 7, scope: !3083, inlinedAt: !3089)
!3095 = !DILocation(line: 187, column: 5, scope: !3093, inlinedAt: !3089)
!3096 = !DILocation(line: 188, column: 11, scope: !3083, inlinedAt: !3089)
!3097 = distinct !DIAssignID()
!3098 = !DILocation(line: 946, column: 10, scope: !3067)
!3099 = !DILocation(line: 947, column: 1, scope: !3067)
!3100 = !DILocation(line: 946, column: 3, scope: !3067)
!3101 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !534, file: !534, line: 950, type: !3102, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!122, !102, !557, !128, !125}
!3104 = !{!3105, !3106, !3107, !3108, !3109}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !534, line: 950, type: !102)
!3106 = !DILocalVariable(name: "s", arg: 2, scope: !3101, file: !534, line: 950, type: !557)
!3107 = !DILocalVariable(name: "arg", arg: 3, scope: !3101, file: !534, line: 951, type: !128)
!3108 = !DILocalVariable(name: "argsize", arg: 4, scope: !3101, file: !534, line: 951, type: !125)
!3109 = !DILocalVariable(name: "o", scope: !3101, file: !534, line: 953, type: !2174)
!3110 = distinct !DIAssignID()
!3111 = !DILocation(line: 0, scope: !3101)
!3112 = !DILocation(line: 953, column: 3, scope: !3101)
!3113 = !{!3114}
!3114 = distinct !{!3114, !3115, !"quoting_options_from_style: argument 0"}
!3115 = distinct !{!3115, !"quoting_options_from_style"}
!3116 = !DILocation(line: 953, column: 36, scope: !3101)
!3117 = !DILocation(line: 0, scope: !3083, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 953, column: 36, scope: !3101)
!3119 = !DILocation(line: 185, column: 26, scope: !3083, inlinedAt: !3118)
!3120 = distinct !DIAssignID()
!3121 = !DILocation(line: 186, column: 13, scope: !3093, inlinedAt: !3118)
!3122 = !DILocation(line: 186, column: 7, scope: !3083, inlinedAt: !3118)
!3123 = !DILocation(line: 187, column: 5, scope: !3093, inlinedAt: !3118)
!3124 = !DILocation(line: 188, column: 11, scope: !3083, inlinedAt: !3118)
!3125 = distinct !DIAssignID()
!3126 = !DILocation(line: 954, column: 10, scope: !3101)
!3127 = !DILocation(line: 955, column: 1, scope: !3101)
!3128 = !DILocation(line: 954, column: 3, scope: !3101)
!3129 = distinct !DISubprogram(name: "quotearg_style", scope: !534, file: !534, line: 958, type: !3130, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!122, !557, !128}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "s", arg: 1, scope: !3129, file: !534, line: 958, type: !557)
!3134 = !DILocalVariable(name: "arg", arg: 2, scope: !3129, file: !534, line: 958, type: !128)
!3135 = distinct !DIAssignID()
!3136 = !DILocation(line: 0, scope: !3129)
!3137 = !DILocation(line: 0, scope: !3067, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 960, column: 10, scope: !3129)
!3139 = !DILocation(line: 945, column: 3, scope: !3067, inlinedAt: !3138)
!3140 = !{!3141}
!3141 = distinct !{!3141, !3142, !"quoting_options_from_style: argument 0"}
!3142 = distinct !{!3142, !"quoting_options_from_style"}
!3143 = !DILocation(line: 945, column: 36, scope: !3067, inlinedAt: !3138)
!3144 = !DILocation(line: 0, scope: !3083, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 945, column: 36, scope: !3067, inlinedAt: !3138)
!3146 = !DILocation(line: 185, column: 26, scope: !3083, inlinedAt: !3145)
!3147 = distinct !DIAssignID()
!3148 = !DILocation(line: 186, column: 13, scope: !3093, inlinedAt: !3145)
!3149 = !DILocation(line: 186, column: 7, scope: !3083, inlinedAt: !3145)
!3150 = !DILocation(line: 187, column: 5, scope: !3093, inlinedAt: !3145)
!3151 = !DILocation(line: 188, column: 11, scope: !3083, inlinedAt: !3145)
!3152 = distinct !DIAssignID()
!3153 = !DILocation(line: 946, column: 10, scope: !3067, inlinedAt: !3138)
!3154 = !DILocation(line: 947, column: 1, scope: !3067, inlinedAt: !3138)
!3155 = !DILocation(line: 960, column: 3, scope: !3129)
!3156 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !534, file: !534, line: 964, type: !3157, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!122, !557, !128, !125}
!3159 = !{!3160, !3161, !3162}
!3160 = !DILocalVariable(name: "s", arg: 1, scope: !3156, file: !534, line: 964, type: !557)
!3161 = !DILocalVariable(name: "arg", arg: 2, scope: !3156, file: !534, line: 964, type: !128)
!3162 = !DILocalVariable(name: "argsize", arg: 3, scope: !3156, file: !534, line: 964, type: !125)
!3163 = distinct !DIAssignID()
!3164 = !DILocation(line: 0, scope: !3156)
!3165 = !DILocation(line: 0, scope: !3101, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 966, column: 10, scope: !3156)
!3167 = !DILocation(line: 953, column: 3, scope: !3101, inlinedAt: !3166)
!3168 = !{!3169}
!3169 = distinct !{!3169, !3170, !"quoting_options_from_style: argument 0"}
!3170 = distinct !{!3170, !"quoting_options_from_style"}
!3171 = !DILocation(line: 953, column: 36, scope: !3101, inlinedAt: !3166)
!3172 = !DILocation(line: 0, scope: !3083, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 953, column: 36, scope: !3101, inlinedAt: !3166)
!3174 = !DILocation(line: 185, column: 26, scope: !3083, inlinedAt: !3173)
!3175 = distinct !DIAssignID()
!3176 = !DILocation(line: 186, column: 13, scope: !3093, inlinedAt: !3173)
!3177 = !DILocation(line: 186, column: 7, scope: !3083, inlinedAt: !3173)
!3178 = !DILocation(line: 187, column: 5, scope: !3093, inlinedAt: !3173)
!3179 = !DILocation(line: 188, column: 11, scope: !3083, inlinedAt: !3173)
!3180 = distinct !DIAssignID()
!3181 = !DILocation(line: 954, column: 10, scope: !3101, inlinedAt: !3166)
!3182 = !DILocation(line: 955, column: 1, scope: !3101, inlinedAt: !3166)
!3183 = !DILocation(line: 966, column: 3, scope: !3156)
!3184 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !534, file: !534, line: 970, type: !3185, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!122, !128, !125, !4}
!3187 = !{!3188, !3189, !3190, !3191}
!3188 = !DILocalVariable(name: "arg", arg: 1, scope: !3184, file: !534, line: 970, type: !128)
!3189 = !DILocalVariable(name: "argsize", arg: 2, scope: !3184, file: !534, line: 970, type: !125)
!3190 = !DILocalVariable(name: "ch", arg: 3, scope: !3184, file: !534, line: 970, type: !4)
!3191 = !DILocalVariable(name: "options", scope: !3184, file: !534, line: 972, type: !584)
!3192 = distinct !DIAssignID()
!3193 = !DILocation(line: 0, scope: !3184)
!3194 = !DILocation(line: 972, column: 3, scope: !3184)
!3195 = !DILocation(line: 973, column: 13, scope: !3184)
!3196 = !{i64 0, i64 4, !943, i64 4, i64 4, !943, i64 8, i64 32, !952, i64 40, i64 8, !875, i64 48, i64 8, !875}
!3197 = distinct !DIAssignID()
!3198 = !DILocation(line: 0, scope: !2193, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 974, column: 3, scope: !3184)
!3200 = !DILocation(line: 147, column: 41, scope: !2193, inlinedAt: !3199)
!3201 = !DILocation(line: 147, column: 62, scope: !2193, inlinedAt: !3199)
!3202 = !DILocation(line: 147, column: 57, scope: !2193, inlinedAt: !3199)
!3203 = !DILocation(line: 148, column: 15, scope: !2193, inlinedAt: !3199)
!3204 = !DILocation(line: 149, column: 21, scope: !2193, inlinedAt: !3199)
!3205 = !DILocation(line: 149, column: 24, scope: !2193, inlinedAt: !3199)
!3206 = !DILocation(line: 150, column: 19, scope: !2193, inlinedAt: !3199)
!3207 = !DILocation(line: 150, column: 24, scope: !2193, inlinedAt: !3199)
!3208 = !DILocation(line: 150, column: 6, scope: !2193, inlinedAt: !3199)
!3209 = !DILocation(line: 975, column: 10, scope: !3184)
!3210 = !DILocation(line: 976, column: 1, scope: !3184)
!3211 = !DILocation(line: 975, column: 3, scope: !3184)
!3212 = distinct !DISubprogram(name: "quotearg_char", scope: !534, file: !534, line: 979, type: !3213, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!122, !128, !4}
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "arg", arg: 1, scope: !3212, file: !534, line: 979, type: !128)
!3217 = !DILocalVariable(name: "ch", arg: 2, scope: !3212, file: !534, line: 979, type: !4)
!3218 = distinct !DIAssignID()
!3219 = !DILocation(line: 0, scope: !3212)
!3220 = !DILocation(line: 0, scope: !3184, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 981, column: 10, scope: !3212)
!3222 = !DILocation(line: 972, column: 3, scope: !3184, inlinedAt: !3221)
!3223 = !DILocation(line: 973, column: 13, scope: !3184, inlinedAt: !3221)
!3224 = distinct !DIAssignID()
!3225 = !DILocation(line: 0, scope: !2193, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 974, column: 3, scope: !3184, inlinedAt: !3221)
!3227 = !DILocation(line: 147, column: 41, scope: !2193, inlinedAt: !3226)
!3228 = !DILocation(line: 147, column: 62, scope: !2193, inlinedAt: !3226)
!3229 = !DILocation(line: 147, column: 57, scope: !2193, inlinedAt: !3226)
!3230 = !DILocation(line: 148, column: 15, scope: !2193, inlinedAt: !3226)
!3231 = !DILocation(line: 149, column: 21, scope: !2193, inlinedAt: !3226)
!3232 = !DILocation(line: 149, column: 24, scope: !2193, inlinedAt: !3226)
!3233 = !DILocation(line: 150, column: 19, scope: !2193, inlinedAt: !3226)
!3234 = !DILocation(line: 150, column: 24, scope: !2193, inlinedAt: !3226)
!3235 = !DILocation(line: 150, column: 6, scope: !2193, inlinedAt: !3226)
!3236 = !DILocation(line: 975, column: 10, scope: !3184, inlinedAt: !3221)
!3237 = !DILocation(line: 976, column: 1, scope: !3184, inlinedAt: !3221)
!3238 = !DILocation(line: 981, column: 3, scope: !3212)
!3239 = distinct !DISubprogram(name: "quotearg_colon", scope: !534, file: !534, line: 985, type: !1066, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3240)
!3240 = !{!3241}
!3241 = !DILocalVariable(name: "arg", arg: 1, scope: !3239, file: !534, line: 985, type: !128)
!3242 = distinct !DIAssignID()
!3243 = !DILocation(line: 0, scope: !3239)
!3244 = !DILocation(line: 0, scope: !3212, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 987, column: 10, scope: !3239)
!3246 = !DILocation(line: 0, scope: !3184, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 981, column: 10, scope: !3212, inlinedAt: !3245)
!3248 = !DILocation(line: 972, column: 3, scope: !3184, inlinedAt: !3247)
!3249 = !DILocation(line: 973, column: 13, scope: !3184, inlinedAt: !3247)
!3250 = distinct !DIAssignID()
!3251 = !DILocation(line: 0, scope: !2193, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 974, column: 3, scope: !3184, inlinedAt: !3247)
!3253 = !DILocation(line: 147, column: 57, scope: !2193, inlinedAt: !3252)
!3254 = !DILocation(line: 149, column: 21, scope: !2193, inlinedAt: !3252)
!3255 = !DILocation(line: 150, column: 6, scope: !2193, inlinedAt: !3252)
!3256 = !DILocation(line: 975, column: 10, scope: !3184, inlinedAt: !3247)
!3257 = !DILocation(line: 976, column: 1, scope: !3184, inlinedAt: !3247)
!3258 = !DILocation(line: 987, column: 3, scope: !3239)
!3259 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !534, file: !534, line: 991, type: !3057, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3260)
!3260 = !{!3261, !3262}
!3261 = !DILocalVariable(name: "arg", arg: 1, scope: !3259, file: !534, line: 991, type: !128)
!3262 = !DILocalVariable(name: "argsize", arg: 2, scope: !3259, file: !534, line: 991, type: !125)
!3263 = distinct !DIAssignID()
!3264 = !DILocation(line: 0, scope: !3259)
!3265 = !DILocation(line: 0, scope: !3184, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 993, column: 10, scope: !3259)
!3267 = !DILocation(line: 972, column: 3, scope: !3184, inlinedAt: !3266)
!3268 = !DILocation(line: 973, column: 13, scope: !3184, inlinedAt: !3266)
!3269 = distinct !DIAssignID()
!3270 = !DILocation(line: 0, scope: !2193, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 974, column: 3, scope: !3184, inlinedAt: !3266)
!3272 = !DILocation(line: 147, column: 57, scope: !2193, inlinedAt: !3271)
!3273 = !DILocation(line: 149, column: 21, scope: !2193, inlinedAt: !3271)
!3274 = !DILocation(line: 150, column: 6, scope: !2193, inlinedAt: !3271)
!3275 = !DILocation(line: 975, column: 10, scope: !3184, inlinedAt: !3266)
!3276 = !DILocation(line: 976, column: 1, scope: !3184, inlinedAt: !3266)
!3277 = !DILocation(line: 993, column: 3, scope: !3259)
!3278 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !534, file: !534, line: 997, type: !3068, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3279)
!3279 = !{!3280, !3281, !3282, !3283}
!3280 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !534, line: 997, type: !102)
!3281 = !DILocalVariable(name: "s", arg: 2, scope: !3278, file: !534, line: 997, type: !557)
!3282 = !DILocalVariable(name: "arg", arg: 3, scope: !3278, file: !534, line: 997, type: !128)
!3283 = !DILocalVariable(name: "options", scope: !3278, file: !534, line: 999, type: !584)
!3284 = distinct !DIAssignID()
!3285 = !DILocation(line: 0, scope: !3278)
!3286 = !DILocation(line: 185, column: 26, scope: !3083, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1000, column: 13, scope: !3278)
!3288 = !DILocation(line: 999, column: 3, scope: !3278)
!3289 = !DILocation(line: 0, scope: !3083, inlinedAt: !3287)
!3290 = !DILocation(line: 186, column: 13, scope: !3093, inlinedAt: !3287)
!3291 = !DILocation(line: 186, column: 7, scope: !3083, inlinedAt: !3287)
!3292 = !DILocation(line: 187, column: 5, scope: !3093, inlinedAt: !3287)
!3293 = !{!3294}
!3294 = distinct !{!3294, !3295, !"quoting_options_from_style: argument 0"}
!3295 = distinct !{!3295, !"quoting_options_from_style"}
!3296 = !DILocation(line: 1000, column: 13, scope: !3278)
!3297 = distinct !DIAssignID()
!3298 = distinct !DIAssignID()
!3299 = !DILocation(line: 0, scope: !2193, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1001, column: 3, scope: !3278)
!3301 = !DILocation(line: 147, column: 57, scope: !2193, inlinedAt: !3300)
!3302 = !DILocation(line: 149, column: 21, scope: !2193, inlinedAt: !3300)
!3303 = !DILocation(line: 150, column: 6, scope: !2193, inlinedAt: !3300)
!3304 = distinct !DIAssignID()
!3305 = !DILocation(line: 1002, column: 10, scope: !3278)
!3306 = !DILocation(line: 1003, column: 1, scope: !3278)
!3307 = !DILocation(line: 1002, column: 3, scope: !3278)
!3308 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !534, file: !534, line: 1006, type: !3309, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!122, !102, !128, !128, !128}
!3311 = !{!3312, !3313, !3314, !3315}
!3312 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !534, line: 1006, type: !102)
!3313 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3308, file: !534, line: 1006, type: !128)
!3314 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3308, file: !534, line: 1007, type: !128)
!3315 = !DILocalVariable(name: "arg", arg: 4, scope: !3308, file: !534, line: 1007, type: !128)
!3316 = distinct !DIAssignID()
!3317 = !DILocation(line: 0, scope: !3308)
!3318 = !DILocalVariable(name: "o", scope: !3319, file: !534, line: 1018, type: !584)
!3319 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !534, file: !534, line: 1014, type: !3320, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!122, !102, !128, !128, !128, !125}
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3318}
!3323 = !DILocalVariable(name: "n", arg: 1, scope: !3319, file: !534, line: 1014, type: !102)
!3324 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3319, file: !534, line: 1014, type: !128)
!3325 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3319, file: !534, line: 1015, type: !128)
!3326 = !DILocalVariable(name: "arg", arg: 4, scope: !3319, file: !534, line: 1016, type: !128)
!3327 = !DILocalVariable(name: "argsize", arg: 5, scope: !3319, file: !534, line: 1016, type: !125)
!3328 = !DILocation(line: 0, scope: !3319, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 1009, column: 10, scope: !3308)
!3330 = !DILocation(line: 1018, column: 3, scope: !3319, inlinedAt: !3329)
!3331 = !DILocation(line: 1018, column: 30, scope: !3319, inlinedAt: !3329)
!3332 = distinct !DIAssignID()
!3333 = distinct !DIAssignID()
!3334 = !DILocation(line: 0, scope: !2233, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 1019, column: 3, scope: !3319, inlinedAt: !3329)
!3336 = !DILocation(line: 174, column: 12, scope: !2233, inlinedAt: !3335)
!3337 = distinct !DIAssignID()
!3338 = !DILocation(line: 175, column: 8, scope: !2246, inlinedAt: !3335)
!3339 = !DILocation(line: 175, column: 19, scope: !2246, inlinedAt: !3335)
!3340 = !DILocation(line: 176, column: 5, scope: !2246, inlinedAt: !3335)
!3341 = !DILocation(line: 177, column: 6, scope: !2233, inlinedAt: !3335)
!3342 = !DILocation(line: 177, column: 17, scope: !2233, inlinedAt: !3335)
!3343 = distinct !DIAssignID()
!3344 = !DILocation(line: 178, column: 6, scope: !2233, inlinedAt: !3335)
!3345 = !DILocation(line: 178, column: 18, scope: !2233, inlinedAt: !3335)
!3346 = distinct !DIAssignID()
!3347 = !DILocation(line: 1020, column: 10, scope: !3319, inlinedAt: !3329)
!3348 = !DILocation(line: 1021, column: 1, scope: !3319, inlinedAt: !3329)
!3349 = !DILocation(line: 1009, column: 3, scope: !3308)
!3350 = distinct !DIAssignID()
!3351 = !DILocation(line: 0, scope: !3319)
!3352 = !DILocation(line: 1018, column: 3, scope: !3319)
!3353 = !DILocation(line: 1018, column: 30, scope: !3319)
!3354 = distinct !DIAssignID()
!3355 = distinct !DIAssignID()
!3356 = !DILocation(line: 0, scope: !2233, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1019, column: 3, scope: !3319)
!3358 = !DILocation(line: 174, column: 12, scope: !2233, inlinedAt: !3357)
!3359 = distinct !DIAssignID()
!3360 = !DILocation(line: 175, column: 8, scope: !2246, inlinedAt: !3357)
!3361 = !DILocation(line: 175, column: 19, scope: !2246, inlinedAt: !3357)
!3362 = !DILocation(line: 176, column: 5, scope: !2246, inlinedAt: !3357)
!3363 = !DILocation(line: 177, column: 6, scope: !2233, inlinedAt: !3357)
!3364 = !DILocation(line: 177, column: 17, scope: !2233, inlinedAt: !3357)
!3365 = distinct !DIAssignID()
!3366 = !DILocation(line: 178, column: 6, scope: !2233, inlinedAt: !3357)
!3367 = !DILocation(line: 178, column: 18, scope: !2233, inlinedAt: !3357)
!3368 = distinct !DIAssignID()
!3369 = !DILocation(line: 1020, column: 10, scope: !3319)
!3370 = !DILocation(line: 1021, column: 1, scope: !3319)
!3371 = !DILocation(line: 1020, column: 3, scope: !3319)
!3372 = distinct !DISubprogram(name: "quotearg_custom", scope: !534, file: !534, line: 1024, type: !3373, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!122, !128, !128, !128}
!3375 = !{!3376, !3377, !3378}
!3376 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3372, file: !534, line: 1024, type: !128)
!3377 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3372, file: !534, line: 1024, type: !128)
!3378 = !DILocalVariable(name: "arg", arg: 3, scope: !3372, file: !534, line: 1025, type: !128)
!3379 = distinct !DIAssignID()
!3380 = !DILocation(line: 0, scope: !3372)
!3381 = !DILocation(line: 0, scope: !3308, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 1027, column: 10, scope: !3372)
!3383 = !DILocation(line: 0, scope: !3319, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1009, column: 10, scope: !3308, inlinedAt: !3382)
!3385 = !DILocation(line: 1018, column: 3, scope: !3319, inlinedAt: !3384)
!3386 = !DILocation(line: 1018, column: 30, scope: !3319, inlinedAt: !3384)
!3387 = distinct !DIAssignID()
!3388 = distinct !DIAssignID()
!3389 = !DILocation(line: 0, scope: !2233, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 1019, column: 3, scope: !3319, inlinedAt: !3384)
!3391 = !DILocation(line: 174, column: 12, scope: !2233, inlinedAt: !3390)
!3392 = distinct !DIAssignID()
!3393 = !DILocation(line: 175, column: 8, scope: !2246, inlinedAt: !3390)
!3394 = !DILocation(line: 175, column: 19, scope: !2246, inlinedAt: !3390)
!3395 = !DILocation(line: 176, column: 5, scope: !2246, inlinedAt: !3390)
!3396 = !DILocation(line: 177, column: 6, scope: !2233, inlinedAt: !3390)
!3397 = !DILocation(line: 177, column: 17, scope: !2233, inlinedAt: !3390)
!3398 = distinct !DIAssignID()
!3399 = !DILocation(line: 178, column: 6, scope: !2233, inlinedAt: !3390)
!3400 = !DILocation(line: 178, column: 18, scope: !2233, inlinedAt: !3390)
!3401 = distinct !DIAssignID()
!3402 = !DILocation(line: 1020, column: 10, scope: !3319, inlinedAt: !3384)
!3403 = !DILocation(line: 1021, column: 1, scope: !3319, inlinedAt: !3384)
!3404 = !DILocation(line: 1027, column: 3, scope: !3372)
!3405 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !534, file: !534, line: 1031, type: !3406, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!122, !128, !128, !128, !125}
!3408 = !{!3409, !3410, !3411, !3412}
!3409 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3405, file: !534, line: 1031, type: !128)
!3410 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3405, file: !534, line: 1031, type: !128)
!3411 = !DILocalVariable(name: "arg", arg: 3, scope: !3405, file: !534, line: 1032, type: !128)
!3412 = !DILocalVariable(name: "argsize", arg: 4, scope: !3405, file: !534, line: 1032, type: !125)
!3413 = distinct !DIAssignID()
!3414 = !DILocation(line: 0, scope: !3405)
!3415 = !DILocation(line: 0, scope: !3319, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1034, column: 10, scope: !3405)
!3417 = !DILocation(line: 1018, column: 3, scope: !3319, inlinedAt: !3416)
!3418 = !DILocation(line: 1018, column: 30, scope: !3319, inlinedAt: !3416)
!3419 = distinct !DIAssignID()
!3420 = distinct !DIAssignID()
!3421 = !DILocation(line: 0, scope: !2233, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 1019, column: 3, scope: !3319, inlinedAt: !3416)
!3423 = !DILocation(line: 174, column: 12, scope: !2233, inlinedAt: !3422)
!3424 = distinct !DIAssignID()
!3425 = !DILocation(line: 175, column: 8, scope: !2246, inlinedAt: !3422)
!3426 = !DILocation(line: 175, column: 19, scope: !2246, inlinedAt: !3422)
!3427 = !DILocation(line: 176, column: 5, scope: !2246, inlinedAt: !3422)
!3428 = !DILocation(line: 177, column: 6, scope: !2233, inlinedAt: !3422)
!3429 = !DILocation(line: 177, column: 17, scope: !2233, inlinedAt: !3422)
!3430 = distinct !DIAssignID()
!3431 = !DILocation(line: 178, column: 6, scope: !2233, inlinedAt: !3422)
!3432 = !DILocation(line: 178, column: 18, scope: !2233, inlinedAt: !3422)
!3433 = distinct !DIAssignID()
!3434 = !DILocation(line: 1020, column: 10, scope: !3319, inlinedAt: !3416)
!3435 = !DILocation(line: 1021, column: 1, scope: !3319, inlinedAt: !3416)
!3436 = !DILocation(line: 1034, column: 3, scope: !3405)
!3437 = distinct !DISubprogram(name: "quote_n_mem", scope: !534, file: !534, line: 1049, type: !3438, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!128, !102, !128, !125}
!3440 = !{!3441, !3442, !3443}
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3437, file: !534, line: 1049, type: !102)
!3442 = !DILocalVariable(name: "arg", arg: 2, scope: !3437, file: !534, line: 1049, type: !128)
!3443 = !DILocalVariable(name: "argsize", arg: 3, scope: !3437, file: !534, line: 1049, type: !125)
!3444 = !DILocation(line: 0, scope: !3437)
!3445 = !DILocation(line: 1051, column: 10, scope: !3437)
!3446 = !DILocation(line: 1051, column: 3, scope: !3437)
!3447 = distinct !DISubprogram(name: "quote_mem", scope: !534, file: !534, line: 1055, type: !3448, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!128, !128, !125}
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "arg", arg: 1, scope: !3447, file: !534, line: 1055, type: !128)
!3452 = !DILocalVariable(name: "argsize", arg: 2, scope: !3447, file: !534, line: 1055, type: !125)
!3453 = !DILocation(line: 0, scope: !3447)
!3454 = !DILocation(line: 0, scope: !3437, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1057, column: 10, scope: !3447)
!3456 = !DILocation(line: 1051, column: 10, scope: !3437, inlinedAt: !3455)
!3457 = !DILocation(line: 1057, column: 3, scope: !3447)
!3458 = distinct !DISubprogram(name: "quote_n", scope: !534, file: !534, line: 1061, type: !3459, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!128, !102, !128}
!3461 = !{!3462, !3463}
!3462 = !DILocalVariable(name: "n", arg: 1, scope: !3458, file: !534, line: 1061, type: !102)
!3463 = !DILocalVariable(name: "arg", arg: 2, scope: !3458, file: !534, line: 1061, type: !128)
!3464 = !DILocation(line: 0, scope: !3458)
!3465 = !DILocation(line: 0, scope: !3437, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 1063, column: 10, scope: !3458)
!3467 = !DILocation(line: 1051, column: 10, scope: !3437, inlinedAt: !3466)
!3468 = !DILocation(line: 1063, column: 3, scope: !3458)
!3469 = distinct !DISubprogram(name: "quote", scope: !534, file: !534, line: 1067, type: !3470, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!128, !128}
!3472 = !{!3473}
!3473 = !DILocalVariable(name: "arg", arg: 1, scope: !3469, file: !534, line: 1067, type: !128)
!3474 = !DILocation(line: 0, scope: !3469)
!3475 = !DILocation(line: 0, scope: !3458, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 1069, column: 10, scope: !3469)
!3477 = !DILocation(line: 0, scope: !3437, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 1063, column: 10, scope: !3458, inlinedAt: !3476)
!3479 = !DILocation(line: 1051, column: 10, scope: !3437, inlinedAt: !3478)
!3480 = !DILocation(line: 1069, column: 3, scope: !3469)
!3481 = distinct !DIAssignID()
!3482 = !DILocation(line: 0, scope: !645)
!3483 = distinct !DIAssignID()
!3484 = !DILocation(line: 181, column: 53, scope: !645)
!3485 = !DILocation(line: 181, column: 10, scope: !645)
!3486 = !DILocation(line: 181, column: 3, scope: !645)
!3487 = distinct !DISubprogram(name: "try_tempname_len", scope: !646, file: !646, line: 189, type: !3488, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!102, !122, !102, !123, !666, !125}
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3502, !3503, !3504, !3506, !3507, !3508, !3510, !3514}
!3491 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3487, file: !646, line: 189, type: !122)
!3492 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3487, file: !646, line: 189, type: !102)
!3493 = !DILocalVariable(name: "args", arg: 3, scope: !3487, file: !646, line: 189, type: !123)
!3494 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3487, file: !646, line: 190, type: !666)
!3495 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3487, file: !646, line: 190, type: !125)
!3496 = !DILocalVariable(name: "saved_errno", scope: !3487, file: !646, line: 192, type: !102)
!3497 = !DILocalVariable(name: "attempts", scope: !3487, file: !646, line: 208, type: !97)
!3498 = !DILocalVariable(name: "v", scope: !3487, file: !646, line: 212, type: !3499)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "random_value", file: !646, line: 64, baseType: !3500)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3501, line: 75, baseType: !127)
!3501 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!3502 = !DILocalVariable(name: "vdigbuf", scope: !3487, file: !646, line: 216, type: !3499)
!3503 = !DILocalVariable(name: "vdigits", scope: !3487, file: !646, line: 217, type: !102)
!3504 = !DILocalVariable(name: "biased_min", scope: !3487, file: !646, line: 221, type: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3506 = !DILocalVariable(name: "len", scope: !3487, file: !646, line: 224, type: !125)
!3507 = !DILocalVariable(name: "XXXXXX", scope: !3487, file: !646, line: 233, type: !122)
!3508 = !DILocalVariable(name: "count", scope: !3509, file: !646, line: 235, type: !97)
!3509 = distinct !DILexicalBlock(scope: !3487, file: !646, line: 235, column: 3)
!3510 = !DILocalVariable(name: "i", scope: !3511, file: !646, line: 237, type: !125)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !646, line: 237, column: 7)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !646, line: 236, column: 5)
!3513 = distinct !DILexicalBlock(scope: !3509, file: !646, line: 235, column: 3)
!3514 = !DILocalVariable(name: "fd", scope: !3512, file: !646, line: 254, type: !102)
!3515 = distinct !DIAssignID()
!3516 = distinct !DIAssignID()
!3517 = !DILocation(line: 0, scope: !3487)
!3518 = !DILocation(line: 192, column: 21, scope: !3487)
!3519 = !DILocation(line: 212, column: 3, scope: !3487)
!3520 = !DILocation(line: 212, column: 16, scope: !3487)
!3521 = distinct !DIAssignID()
!3522 = !DILocation(line: 224, column: 16, scope: !3487)
!3523 = !DILocation(line: 225, column: 28, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3487, file: !646, line: 225, column: 7)
!3525 = !DILocation(line: 225, column: 26, scope: !3524)
!3526 = !DILocation(line: 225, column: 11, scope: !3524)
!3527 = !DILocation(line: 226, column: 7, scope: !3524)
!3528 = !DILocation(line: 226, column: 43, scope: !3524)
!3529 = !DILocation(line: 226, column: 19, scope: !3524)
!3530 = !DILocation(line: 226, column: 10, scope: !3524)
!3531 = !DILocation(line: 226, column: 62, scope: !3524)
!3532 = !DILocation(line: 225, column: 7, scope: !3487)
!3533 = !DILocation(line: 0, scope: !3509)
!3534 = !DILocation(line: 235, column: 3, scope: !3509)
!3535 = !DILocation(line: 235, column: 50, scope: !3513)
!3536 = !DILocation(line: 235, column: 38, scope: !3513)
!3537 = distinct !{!3537, !3534, !3538, !990}
!3538 = !DILocation(line: 262, column: 5, scope: !3509)
!3539 = !DILocation(line: 0, scope: !3511)
!3540 = !DILocation(line: 237, column: 7, scope: !3511)
!3541 = !DILocation(line: 250, column: 19, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !646, line: 238, column: 9)
!3543 = distinct !DILexicalBlock(scope: !3511, file: !646, line: 237, column: 7)
!3544 = !DILocation(line: 251, column: 18, scope: !3542)
!3545 = !DILocation(line: 254, column: 16, scope: !3512)
!3546 = !DILocation(line: 0, scope: !3512)
!3547 = !DILocation(line: 255, column: 14, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3512, file: !646, line: 255, column: 11)
!3549 = !DILocation(line: 255, column: 11, scope: !3512)
!3550 = !DILocation(line: 239, column: 23, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3542, file: !646, line: 239, column: 15)
!3552 = !DILocation(line: 239, column: 15, scope: !3542)
!3553 = !DILocation(line: 242, column: 39, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3551, file: !646, line: 240, column: 13)
!3555 = !DILocalVariable(name: "tv", scope: !3556, file: !646, line: 110, type: !3564)
!3556 = distinct !DISubprogram(name: "random_bits", scope: !646, file: !646, line: 93, type: !3557, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3560)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!201, !3559, !3499}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3560 = !{!3561, !3562, !3563, !3555}
!3561 = !DILocalVariable(name: "r", arg: 1, scope: !3556, file: !646, line: 93, type: !3559)
!3562 = !DILocalVariable(name: "s", arg: 2, scope: !3556, file: !646, line: 93, type: !3499)
!3563 = !DILocalVariable(name: "v", scope: !3556, file: !646, line: 107, type: !3499)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3565, line: 11, size: 128, elements: !3566)
!3565 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3566 = !{!3567, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3564, file: !3565, line: 16, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !253, line: 160, baseType: !254)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3564, file: !3565, line: 21, baseType: !3570, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !253, line: 197, baseType: !254)
!3571 = !DILocation(line: 0, scope: !3556, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 242, column: 22, scope: !3554)
!3573 = !DILocation(line: 96, column: 7, scope: !3574, inlinedAt: !3572)
!3574 = distinct !DILexicalBlock(scope: !3556, file: !646, line: 96, column: 7)
!3575 = !DILocation(line: 96, column: 49, scope: !3574, inlinedAt: !3572)
!3576 = !DILocation(line: 96, column: 7, scope: !3556, inlinedAt: !3572)
!3577 = !DILocation(line: 242, column: 15, scope: !3554)
!3578 = distinct !{!3578, !3577, !3579, !990}
!3579 = !DILocation(line: 243, column: 17, scope: !3554)
!3580 = !DILocation(line: 242, column: 42, scope: !3554)
!3581 = !DILocation(line: 110, column: 3, scope: !3556, inlinedAt: !3572)
!3582 = !DILocation(line: 111, column: 3, scope: !3556, inlinedAt: !3572)
!3583 = !DILocation(line: 112, column: 32, scope: !3556, inlinedAt: !3572)
!3584 = !{!3585, !1502, i64 0}
!3585 = !{!"timespec", !1502, i64 0, !1502, i64 8}
!3586 = !DILocalVariable(name: "r", arg: 1, scope: !3587, file: !646, line: 74, type: !3499)
!3587 = distinct !DISubprogram(name: "mix_random_values", scope: !646, file: !646, line: 74, type: !3588, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!3499, !3499, !3499}
!3590 = !{!3586, !3591}
!3591 = !DILocalVariable(name: "s", arg: 2, scope: !3587, file: !646, line: 74, type: !3499)
!3592 = !DILocation(line: 0, scope: !3587, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 112, column: 7, scope: !3556, inlinedAt: !3572)
!3594 = !DILocation(line: 79, column: 31, scope: !3587, inlinedAt: !3593)
!3595 = !DILocation(line: 79, column: 35, scope: !3587, inlinedAt: !3593)
!3596 = !DILocation(line: 79, column: 49, scope: !3587, inlinedAt: !3593)
!3597 = !DILocation(line: 113, column: 32, scope: !3556, inlinedAt: !3572)
!3598 = !{!3585, !1502, i64 8}
!3599 = !DILocation(line: 0, scope: !3587, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 113, column: 7, scope: !3556, inlinedAt: !3572)
!3601 = !DILocation(line: 79, column: 31, scope: !3587, inlinedAt: !3600)
!3602 = !DILocation(line: 79, column: 35, scope: !3587, inlinedAt: !3600)
!3603 = !DILocation(line: 79, column: 49, scope: !3587, inlinedAt: !3600)
!3604 = !DILocation(line: 116, column: 30, scope: !3556, inlinedAt: !3572)
!3605 = !DILocation(line: 0, scope: !3587, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 116, column: 8, scope: !3556, inlinedAt: !3572)
!3607 = !DILocation(line: 79, column: 31, scope: !3587, inlinedAt: !3606)
!3608 = !DILocation(line: 79, column: 35, scope: !3587, inlinedAt: !3606)
!3609 = !DILocation(line: 79, column: 49, scope: !3587, inlinedAt: !3606)
!3610 = !DILocation(line: 116, column: 6, scope: !3556, inlinedAt: !3572)
!3611 = distinct !DIAssignID()
!3612 = !DILocation(line: 118, column: 1, scope: !3556, inlinedAt: !3572)
!3613 = !DILocation(line: 249, column: 23, scope: !3542)
!3614 = !DILocation(line: 249, column: 11, scope: !3542)
!3615 = !DILocation(line: 249, column: 21, scope: !3542)
!3616 = !DILocation(line: 237, column: 45, scope: !3543)
!3617 = !DILocation(line: 237, column: 28, scope: !3543)
!3618 = distinct !{!3618, !3540, !3619, !990}
!3619 = !DILocation(line: 252, column: 9, scope: !3511)
!3620 = !DILocation(line: 260, column: 16, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3548, file: !646, line: 260, column: 16)
!3622 = !DILocation(line: 260, column: 22, scope: !3621)
!3623 = !DILocation(line: 267, column: 1, scope: !3487)
!3624 = !DISubprogram(name: "getrandom", scope: !3625, file: !3625, line: 34, type: !3626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3625 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/random.h", directory: "", checksumkind: CSK_MD5, checksum: "993db293d7c3a15007a82e16d5213f99")
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!3628, !123, !125, !97}
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !449, line: 77, baseType: !3629)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !253, line: 194, baseType: !254)
!3630 = !DISubprogram(name: "clock_gettime", scope: !3631, file: !3631, line: 279, type: !3632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3631 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!102, !3634, !3637}
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3635, line: 7, baseType: !3636)
!3635 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !253, line: 169, baseType: !102)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3638 = !DISubprogram(name: "clock", scope: !3631, file: !3631, line: 72, type: !3639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3642, line: 7, baseType: !3643)
!3642 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !253, line: 156, baseType: !254)
!3644 = distinct !DISubprogram(name: "try_file", scope: !646, file: !646, line: 126, type: !667, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3644, file: !646, line: 126, type: !122)
!3647 = !DILocalVariable(name: "flags", arg: 2, scope: !3644, file: !646, line: 126, type: !123)
!3648 = !DILocalVariable(name: "openflags", scope: !3644, file: !646, line: 128, type: !410)
!3649 = !DILocation(line: 0, scope: !3644)
!3650 = !DILocation(line: 130, column: 19, scope: !3644)
!3651 = !DILocation(line: 130, column: 30, scope: !3644)
!3652 = !DILocation(line: 131, column: 37, scope: !3644)
!3653 = !DILocation(line: 129, column: 10, scope: !3644)
!3654 = !DILocation(line: 129, column: 3, scope: !3644)
!3655 = distinct !DISubprogram(name: "try_dir", scope: !646, file: !646, line: 135, type: !667, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3656)
!3656 = !{!3657, !3658}
!3657 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3655, file: !646, line: 135, type: !122)
!3658 = !DILocalVariable(name: "flags", arg: 2, scope: !3655, file: !646, line: 135, type: !123)
!3659 = !DILocation(line: 0, scope: !3655)
!3660 = !DILocation(line: 137, column: 10, scope: !3655)
!3661 = !DILocation(line: 137, column: 3, scope: !3655)
!3662 = distinct !DISubprogram(name: "try_nocreate", scope: !646, file: !646, line: 141, type: !667, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3663)
!3663 = !{!3664, !3665, !3666}
!3664 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3662, file: !646, line: 141, type: !122)
!3665 = !DILocalVariable(name: "flags", arg: 2, scope: !3662, file: !646, line: 141, type: !123)
!3666 = !DILocalVariable(name: "st", scope: !3662, file: !646, line: 143, type: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3668, line: 44, size: 1024, elements: !3669)
!3668 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3669 = !{!3670, !3672, !3674, !3676, !3678, !3680, !3682, !3683, !3684, !3685, !3687, !3688, !3690, !3691, !3692, !3693}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3667, file: !3668, line: 46, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !253, line: 145, baseType: !127)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3667, file: !3668, line: 47, baseType: !3673, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !253, line: 148, baseType: !127)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3667, file: !3668, line: 48, baseType: !3675, size: 32, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !253, line: 150, baseType: !97)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3667, file: !3668, line: 49, baseType: !3677, size: 32, offset: 160)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !253, line: 151, baseType: !97)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3667, file: !3668, line: 50, baseType: !3679, size: 32, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !253, line: 146, baseType: !97)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3667, file: !3668, line: 51, baseType: !3681, size: 32, offset: 224)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !253, line: 147, baseType: !97)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3667, file: !3668, line: 52, baseType: !3671, size: 64, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3667, file: !3668, line: 53, baseType: !3671, size: 64, offset: 320)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3667, file: !3668, line: 54, baseType: !252, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3667, file: !3668, line: 55, baseType: !3686, size: 32, offset: 448)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !253, line: 175, baseType: !102)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3667, file: !3668, line: 56, baseType: !102, size: 32, offset: 480)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3667, file: !3668, line: 57, baseType: !3689, size: 64, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !253, line: 180, baseType: !254)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3667, file: !3668, line: 65, baseType: !3564, size: 128, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3667, file: !3668, line: 66, baseType: !3564, size: 128, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3667, file: !3668, line: 67, baseType: !3564, size: 128, offset: 832)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3667, file: !3668, line: 79, baseType: !3694, size: 64, offset: 960)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !25)
!3695 = distinct !DIAssignID()
!3696 = !DILocation(line: 0, scope: !3662)
!3697 = !DILocation(line: 143, column: 3, scope: !3662)
!3698 = !DILocation(line: 145, column: 7, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3662, file: !646, line: 145, column: 7)
!3700 = !DILocation(line: 145, column: 36, scope: !3699)
!3701 = !DILocation(line: 0, scope: !3699)
!3702 = !DILocation(line: 145, column: 41, scope: !3699)
!3703 = !DILocation(line: 145, column: 44, scope: !3699)
!3704 = !DILocation(line: 145, column: 50, scope: !3699)
!3705 = !DILocation(line: 145, column: 7, scope: !3662)
!3706 = !DILocation(line: 146, column: 5, scope: !3699)
!3707 = !DILocation(line: 147, column: 10, scope: !3662)
!3708 = !DILocation(line: 147, column: 16, scope: !3662)
!3709 = !DILocation(line: 148, column: 1, scope: !3662)
!3710 = !DILocation(line: 147, column: 3, scope: !3662)
!3711 = !DISubprogram(name: "lstat", scope: !3712, file: !3712, line: 313, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3712 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!102, !934, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3716)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3717 = !DISubprogram(name: "mkdir", scope: !3712, file: !3712, line: 389, type: !3718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!102, !128, !3675}
!3720 = !DISubprogram(name: "open", scope: !1721, file: !1721, line: 181, type: !3721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!102, !128, !102, null}
!3723 = distinct !DISubprogram(name: "gen_tempname", scope: !646, file: !646, line: 270, type: !3724, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!102, !122, !102, !102, !102}
!3726 = !{!3727, !3728, !3729, !3730}
!3727 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3723, file: !646, line: 270, type: !122)
!3728 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3723, file: !646, line: 270, type: !102)
!3729 = !DILocalVariable(name: "flags", arg: 3, scope: !3723, file: !646, line: 270, type: !102)
!3730 = !DILocalVariable(name: "kind", arg: 4, scope: !3723, file: !646, line: 270, type: !102)
!3731 = distinct !DIAssignID()
!3732 = !DILocation(line: 0, scope: !3723)
!3733 = !DILocation(line: 0, scope: !645, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 272, column: 10, scope: !3723)
!3735 = distinct !DIAssignID()
!3736 = !DILocation(line: 181, column: 53, scope: !645, inlinedAt: !3734)
!3737 = !DILocation(line: 181, column: 10, scope: !645, inlinedAt: !3734)
!3738 = !DILocation(line: 181, column: 3, scope: !645, inlinedAt: !3734)
!3739 = !DILocation(line: 272, column: 3, scope: !3723)
!3740 = distinct !DISubprogram(name: "try_tempname", scope: !646, file: !646, line: 277, type: !3741, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!102, !122, !102, !123, !666}
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3740, file: !646, line: 277, type: !122)
!3745 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3740, file: !646, line: 277, type: !102)
!3746 = !DILocalVariable(name: "args", arg: 3, scope: !3740, file: !646, line: 277, type: !123)
!3747 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3740, file: !646, line: 278, type: !666)
!3748 = !DILocation(line: 0, scope: !3740)
!3749 = !DILocation(line: 280, column: 10, scope: !3740)
!3750 = !DILocation(line: 280, column: 3, scope: !3740)
!3751 = distinct !DISubprogram(name: "version_etc_arn", scope: !671, file: !671, line: 61, type: !3752, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3789)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !3754, !128, !128, !128, !3788, !125}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !3757)
!3757 = !{!3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3756, file: !230, line: 51, baseType: !102, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3756, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3756, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3756, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3756, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3756, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3756, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3756, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3756, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3756, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3756, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3756, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3756, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3756, file: !230, line: 70, baseType: !3772, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3756, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3756, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3756, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3756, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3756, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3756, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3756, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3756, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3756, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3756, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3756, file: !230, line: 93, baseType: !3772, size: 64, offset: 1344)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3756, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3756, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3756, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3756, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3789 = !{!3790, !3791, !3792, !3793, !3794, !3795}
!3790 = !DILocalVariable(name: "stream", arg: 1, scope: !3751, file: !671, line: 61, type: !3754)
!3791 = !DILocalVariable(name: "command_name", arg: 2, scope: !3751, file: !671, line: 62, type: !128)
!3792 = !DILocalVariable(name: "package", arg: 3, scope: !3751, file: !671, line: 62, type: !128)
!3793 = !DILocalVariable(name: "version", arg: 4, scope: !3751, file: !671, line: 63, type: !128)
!3794 = !DILocalVariable(name: "authors", arg: 5, scope: !3751, file: !671, line: 64, type: !3788)
!3795 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3751, file: !671, line: 64, type: !125)
!3796 = !DILocation(line: 0, scope: !3751)
!3797 = !DILocation(line: 66, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3751, file: !671, line: 66, column: 7)
!3799 = !DILocation(line: 66, column: 7, scope: !3751)
!3800 = !DILocation(line: 67, column: 5, scope: !3798)
!3801 = !DILocation(line: 69, column: 5, scope: !3798)
!3802 = !DILocation(line: 83, column: 3, scope: !3751)
!3803 = !DILocation(line: 85, column: 3, scope: !3751)
!3804 = !DILocation(line: 88, column: 3, scope: !3751)
!3805 = !DILocation(line: 95, column: 3, scope: !3751)
!3806 = !DILocation(line: 97, column: 3, scope: !3751)
!3807 = !DILocation(line: 105, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3751, file: !671, line: 98, column: 5)
!3809 = !DILocation(line: 106, column: 7, scope: !3808)
!3810 = !DILocation(line: 109, column: 7, scope: !3808)
!3811 = !DILocation(line: 110, column: 7, scope: !3808)
!3812 = !DILocation(line: 113, column: 7, scope: !3808)
!3813 = !DILocation(line: 115, column: 7, scope: !3808)
!3814 = !DILocation(line: 120, column: 7, scope: !3808)
!3815 = !DILocation(line: 122, column: 7, scope: !3808)
!3816 = !DILocation(line: 127, column: 7, scope: !3808)
!3817 = !DILocation(line: 129, column: 7, scope: !3808)
!3818 = !DILocation(line: 134, column: 7, scope: !3808)
!3819 = !DILocation(line: 137, column: 7, scope: !3808)
!3820 = !DILocation(line: 142, column: 7, scope: !3808)
!3821 = !DILocation(line: 145, column: 7, scope: !3808)
!3822 = !DILocation(line: 150, column: 7, scope: !3808)
!3823 = !DILocation(line: 154, column: 7, scope: !3808)
!3824 = !DILocation(line: 159, column: 7, scope: !3808)
!3825 = !DILocation(line: 163, column: 7, scope: !3808)
!3826 = !DILocation(line: 170, column: 7, scope: !3808)
!3827 = !DILocation(line: 174, column: 7, scope: !3808)
!3828 = !DILocation(line: 176, column: 1, scope: !3751)
!3829 = distinct !DISubprogram(name: "version_etc_ar", scope: !671, file: !671, line: 183, type: !3830, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3754, !128, !128, !128, !3788}
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838}
!3833 = !DILocalVariable(name: "stream", arg: 1, scope: !3829, file: !671, line: 183, type: !3754)
!3834 = !DILocalVariable(name: "command_name", arg: 2, scope: !3829, file: !671, line: 184, type: !128)
!3835 = !DILocalVariable(name: "package", arg: 3, scope: !3829, file: !671, line: 184, type: !128)
!3836 = !DILocalVariable(name: "version", arg: 4, scope: !3829, file: !671, line: 185, type: !128)
!3837 = !DILocalVariable(name: "authors", arg: 5, scope: !3829, file: !671, line: 185, type: !3788)
!3838 = !DILocalVariable(name: "n_authors", scope: !3829, file: !671, line: 187, type: !125)
!3839 = !DILocation(line: 0, scope: !3829)
!3840 = !DILocation(line: 189, column: 8, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3829, file: !671, line: 189, column: 3)
!3842 = !DILocation(line: 189, scope: !3841)
!3843 = !DILocation(line: 189, column: 23, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3841, file: !671, line: 189, column: 3)
!3845 = !DILocation(line: 189, column: 3, scope: !3841)
!3846 = !DILocation(line: 189, column: 52, scope: !3844)
!3847 = distinct !{!3847, !3845, !3848, !990}
!3848 = !DILocation(line: 190, column: 5, scope: !3841)
!3849 = !DILocation(line: 191, column: 3, scope: !3829)
!3850 = !DILocation(line: 192, column: 1, scope: !3829)
!3851 = distinct !DISubprogram(name: "version_etc_va", scope: !671, file: !671, line: 199, type: !3852, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3864)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3754, !128, !128, !128, !3854}
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !449, line: 52, baseType: !3855)
!3855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !451, line: 12, baseType: !3856)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !671, baseType: !3857)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3857, file: !671, line: 192, baseType: !123, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3857, file: !671, line: 192, baseType: !123, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3857, file: !671, line: 192, baseType: !123, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3857, file: !671, line: 192, baseType: !102, size: 32, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3857, file: !671, line: 192, baseType: !102, size: 32, offset: 224)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3865 = !DILocalVariable(name: "stream", arg: 1, scope: !3851, file: !671, line: 199, type: !3754)
!3866 = !DILocalVariable(name: "command_name", arg: 2, scope: !3851, file: !671, line: 200, type: !128)
!3867 = !DILocalVariable(name: "package", arg: 3, scope: !3851, file: !671, line: 200, type: !128)
!3868 = !DILocalVariable(name: "version", arg: 4, scope: !3851, file: !671, line: 201, type: !128)
!3869 = !DILocalVariable(name: "authors", arg: 5, scope: !3851, file: !671, line: 201, type: !3854)
!3870 = !DILocalVariable(name: "n_authors", scope: !3851, file: !671, line: 203, type: !125)
!3871 = !DILocalVariable(name: "authtab", scope: !3851, file: !671, line: 204, type: !3872)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !80)
!3873 = distinct !DIAssignID()
!3874 = !DILocation(line: 0, scope: !3851)
!3875 = !DILocation(line: 204, column: 3, scope: !3851)
!3876 = !DILocation(line: 208, column: 35, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !671, line: 206, column: 3)
!3878 = distinct !DILexicalBlock(scope: !3851, file: !671, line: 206, column: 3)
!3879 = !DILocation(line: 208, column: 33, scope: !3877)
!3880 = !DILocation(line: 208, column: 67, scope: !3877)
!3881 = !DILocation(line: 206, column: 3, scope: !3878)
!3882 = !DILocation(line: 208, column: 14, scope: !3877)
!3883 = !DILocation(line: 0, scope: !3878)
!3884 = !DILocation(line: 211, column: 3, scope: !3851)
!3885 = !DILocation(line: 213, column: 1, scope: !3851)
!3886 = distinct !DISubprogram(name: "version_etc", scope: !671, file: !671, line: 230, type: !3887, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3754, !128, !128, !128, null}
!3889 = !{!3890, !3891, !3892, !3893, !3894}
!3890 = !DILocalVariable(name: "stream", arg: 1, scope: !3886, file: !671, line: 230, type: !3754)
!3891 = !DILocalVariable(name: "command_name", arg: 2, scope: !3886, file: !671, line: 231, type: !128)
!3892 = !DILocalVariable(name: "package", arg: 3, scope: !3886, file: !671, line: 231, type: !128)
!3893 = !DILocalVariable(name: "version", arg: 4, scope: !3886, file: !671, line: 232, type: !128)
!3894 = !DILocalVariable(name: "authors", scope: !3886, file: !671, line: 234, type: !3854)
!3895 = distinct !DIAssignID()
!3896 = !DILocation(line: 0, scope: !3886)
!3897 = !DILocation(line: 234, column: 3, scope: !3886)
!3898 = !DILocation(line: 235, column: 3, scope: !3886)
!3899 = !DILocation(line: 236, column: 3, scope: !3886)
!3900 = !DILocation(line: 237, column: 3, scope: !3886)
!3901 = !DILocation(line: 238, column: 1, scope: !3886)
!3902 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !671, file: !671, line: 241, type: !489, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804)
!3903 = !DILocation(line: 243, column: 3, scope: !3902)
!3904 = !DILocation(line: 248, column: 3, scope: !3902)
!3905 = !DILocation(line: 254, column: 3, scope: !3902)
!3906 = !DILocation(line: 259, column: 3, scope: !3902)
!3907 = !DILocation(line: 261, column: 1, scope: !3902)
!3908 = distinct !DISubprogram(name: "xnrealloc", scope: !3909, file: !3909, line: 147, type: !3910, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3912)
!3909 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!123, !123, !125, !125}
!3912 = !{!3913, !3914, !3915}
!3913 = !DILocalVariable(name: "p", arg: 1, scope: !3908, file: !3909, line: 147, type: !123)
!3914 = !DILocalVariable(name: "n", arg: 2, scope: !3908, file: !3909, line: 147, type: !125)
!3915 = !DILocalVariable(name: "s", arg: 3, scope: !3908, file: !3909, line: 147, type: !125)
!3916 = !DILocation(line: 0, scope: !3908)
!3917 = !DILocalVariable(name: "p", arg: 1, scope: !3918, file: !811, line: 83, type: !123)
!3918 = distinct !DISubprogram(name: "xreallocarray", scope: !811, file: !811, line: 83, type: !3910, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3919)
!3919 = !{!3917, !3920, !3921}
!3920 = !DILocalVariable(name: "n", arg: 2, scope: !3918, file: !811, line: 83, type: !125)
!3921 = !DILocalVariable(name: "s", arg: 3, scope: !3918, file: !811, line: 83, type: !125)
!3922 = !DILocation(line: 0, scope: !3918, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 149, column: 10, scope: !3908)
!3924 = !DILocation(line: 85, column: 25, scope: !3918, inlinedAt: !3923)
!3925 = !DILocalVariable(name: "p", arg: 1, scope: !3926, file: !811, line: 37, type: !123)
!3926 = distinct !DISubprogram(name: "check_nonnull", scope: !811, file: !811, line: 37, type: !3927, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3929)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!123, !123}
!3929 = !{!3925}
!3930 = !DILocation(line: 0, scope: !3926, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 85, column: 10, scope: !3918, inlinedAt: !3923)
!3932 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !3931)
!3933 = distinct !DILexicalBlock(scope: !3926, file: !811, line: 39, column: 7)
!3934 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !3931)
!3935 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !3931)
!3936 = !DILocation(line: 149, column: 3, scope: !3908)
!3937 = !DILocation(line: 0, scope: !3918)
!3938 = !DILocation(line: 85, column: 25, scope: !3918)
!3939 = !DILocation(line: 0, scope: !3926, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 85, column: 10, scope: !3918)
!3941 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !3940)
!3942 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !3940)
!3943 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !3940)
!3944 = !DILocation(line: 85, column: 3, scope: !3918)
!3945 = distinct !DISubprogram(name: "xmalloc", scope: !811, file: !811, line: 47, type: !1998, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3946)
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "s", arg: 1, scope: !3945, file: !811, line: 47, type: !125)
!3948 = !DILocation(line: 0, scope: !3945)
!3949 = !DILocation(line: 49, column: 25, scope: !3945)
!3950 = !DILocation(line: 0, scope: !3926, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 49, column: 10, scope: !3945)
!3952 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !3951)
!3953 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !3951)
!3954 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !3951)
!3955 = !DILocation(line: 49, column: 3, scope: !3945)
!3956 = distinct !DISubprogram(name: "ximalloc", scope: !811, file: !811, line: 53, type: !3957, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!123, !830}
!3959 = !{!3960}
!3960 = !DILocalVariable(name: "s", arg: 1, scope: !3956, file: !811, line: 53, type: !830)
!3961 = !DILocation(line: 0, scope: !3956)
!3962 = !DILocalVariable(name: "s", arg: 1, scope: !3963, file: !3964, line: 55, type: !830)
!3963 = distinct !DISubprogram(name: "imalloc", scope: !3964, file: !3964, line: 55, type: !3957, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3965)
!3964 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3965 = !{!3962}
!3966 = !DILocation(line: 0, scope: !3963, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 55, column: 25, scope: !3956)
!3968 = !DILocation(line: 57, column: 26, scope: !3963, inlinedAt: !3967)
!3969 = !DILocation(line: 0, scope: !3926, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 55, column: 10, scope: !3956)
!3971 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !3970)
!3972 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !3970)
!3973 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !3970)
!3974 = !DILocation(line: 55, column: 3, scope: !3956)
!3975 = distinct !DISubprogram(name: "xcharalloc", scope: !811, file: !811, line: 59, type: !3976, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!122, !125}
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "n", arg: 1, scope: !3975, file: !811, line: 59, type: !125)
!3980 = !DILocation(line: 0, scope: !3975)
!3981 = !DILocation(line: 0, scope: !3945, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 61, column: 10, scope: !3975)
!3983 = !DILocation(line: 49, column: 25, scope: !3945, inlinedAt: !3982)
!3984 = !DILocation(line: 0, scope: !3926, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 49, column: 10, scope: !3945, inlinedAt: !3982)
!3986 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !3985)
!3987 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !3985)
!3988 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !3985)
!3989 = !DILocation(line: 61, column: 3, scope: !3975)
!3990 = distinct !DISubprogram(name: "xrealloc", scope: !811, file: !811, line: 68, type: !3991, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!123, !123, !125}
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "p", arg: 1, scope: !3990, file: !811, line: 68, type: !123)
!3995 = !DILocalVariable(name: "s", arg: 2, scope: !3990, file: !811, line: 68, type: !125)
!3996 = !DILocation(line: 0, scope: !3990)
!3997 = !DILocalVariable(name: "ptr", arg: 1, scope: !3998, file: !3999, line: 2057, type: !123)
!3998 = distinct !DISubprogram(name: "rpl_realloc", scope: !3999, file: !3999, line: 2057, type: !3991, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4000)
!3999 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4000 = !{!3997, !4001}
!4001 = !DILocalVariable(name: "size", arg: 2, scope: !3998, file: !3999, line: 2057, type: !125)
!4002 = !DILocation(line: 0, scope: !3998, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 70, column: 25, scope: !3990)
!4004 = !DILocation(line: 2059, column: 24, scope: !3998, inlinedAt: !4003)
!4005 = !DILocation(line: 2059, column: 10, scope: !3998, inlinedAt: !4003)
!4006 = !DILocation(line: 0, scope: !3926, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 70, column: 10, scope: !3990)
!4008 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4007)
!4009 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4007)
!4010 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4007)
!4011 = !DILocation(line: 70, column: 3, scope: !3990)
!4012 = !DISubprogram(name: "realloc", scope: !1064, file: !1064, line: 551, type: !3991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4013 = distinct !DISubprogram(name: "xirealloc", scope: !811, file: !811, line: 74, type: !4014, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!123, !123, !830}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "p", arg: 1, scope: !4013, file: !811, line: 74, type: !123)
!4018 = !DILocalVariable(name: "s", arg: 2, scope: !4013, file: !811, line: 74, type: !830)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocalVariable(name: "p", arg: 1, scope: !4021, file: !3964, line: 66, type: !123)
!4021 = distinct !DISubprogram(name: "irealloc", scope: !3964, file: !3964, line: 66, type: !4014, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4022)
!4022 = !{!4020, !4023}
!4023 = !DILocalVariable(name: "s", arg: 2, scope: !4021, file: !3964, line: 66, type: !830)
!4024 = !DILocation(line: 0, scope: !4021, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 76, column: 25, scope: !4013)
!4026 = !DILocation(line: 0, scope: !3998, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 68, column: 26, scope: !4021, inlinedAt: !4025)
!4028 = !DILocation(line: 2059, column: 24, scope: !3998, inlinedAt: !4027)
!4029 = !DILocation(line: 2059, column: 10, scope: !3998, inlinedAt: !4027)
!4030 = !DILocation(line: 0, scope: !3926, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 76, column: 10, scope: !4013)
!4032 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4031)
!4033 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4031)
!4034 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4031)
!4035 = !DILocation(line: 76, column: 3, scope: !4013)
!4036 = distinct !DISubprogram(name: "xireallocarray", scope: !811, file: !811, line: 89, type: !4037, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!123, !123, !830, !830}
!4039 = !{!4040, !4041, !4042}
!4040 = !DILocalVariable(name: "p", arg: 1, scope: !4036, file: !811, line: 89, type: !123)
!4041 = !DILocalVariable(name: "n", arg: 2, scope: !4036, file: !811, line: 89, type: !830)
!4042 = !DILocalVariable(name: "s", arg: 3, scope: !4036, file: !811, line: 89, type: !830)
!4043 = !DILocation(line: 0, scope: !4036)
!4044 = !DILocalVariable(name: "p", arg: 1, scope: !4045, file: !3964, line: 98, type: !123)
!4045 = distinct !DISubprogram(name: "ireallocarray", scope: !3964, file: !3964, line: 98, type: !4037, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4046)
!4046 = !{!4044, !4047, !4048}
!4047 = !DILocalVariable(name: "n", arg: 2, scope: !4045, file: !3964, line: 98, type: !830)
!4048 = !DILocalVariable(name: "s", arg: 3, scope: !4045, file: !3964, line: 98, type: !830)
!4049 = !DILocation(line: 0, scope: !4045, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 91, column: 25, scope: !4036)
!4051 = !DILocation(line: 101, column: 13, scope: !4045, inlinedAt: !4050)
!4052 = !DILocation(line: 0, scope: !3926, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 91, column: 10, scope: !4036)
!4054 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4053)
!4055 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4053)
!4056 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4053)
!4057 = !DILocation(line: 91, column: 3, scope: !4036)
!4058 = distinct !DISubprogram(name: "xnmalloc", scope: !811, file: !811, line: 98, type: !4059, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!123, !125, !125}
!4061 = !{!4062, !4063}
!4062 = !DILocalVariable(name: "n", arg: 1, scope: !4058, file: !811, line: 98, type: !125)
!4063 = !DILocalVariable(name: "s", arg: 2, scope: !4058, file: !811, line: 98, type: !125)
!4064 = !DILocation(line: 0, scope: !4058)
!4065 = !DILocation(line: 0, scope: !3918, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 100, column: 10, scope: !4058)
!4067 = !DILocation(line: 85, column: 25, scope: !3918, inlinedAt: !4066)
!4068 = !DILocation(line: 0, scope: !3926, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 85, column: 10, scope: !3918, inlinedAt: !4066)
!4070 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4069)
!4071 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4069)
!4072 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4069)
!4073 = !DILocation(line: 100, column: 3, scope: !4058)
!4074 = distinct !DISubprogram(name: "xinmalloc", scope: !811, file: !811, line: 104, type: !4075, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!123, !830, !830}
!4077 = !{!4078, !4079}
!4078 = !DILocalVariable(name: "n", arg: 1, scope: !4074, file: !811, line: 104, type: !830)
!4079 = !DILocalVariable(name: "s", arg: 2, scope: !4074, file: !811, line: 104, type: !830)
!4080 = !DILocation(line: 0, scope: !4074)
!4081 = !DILocation(line: 0, scope: !4036, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 106, column: 10, scope: !4074)
!4083 = !DILocation(line: 0, scope: !4045, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 91, column: 25, scope: !4036, inlinedAt: !4082)
!4085 = !DILocation(line: 101, column: 13, scope: !4045, inlinedAt: !4084)
!4086 = !DILocation(line: 0, scope: !3926, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 91, column: 10, scope: !4036, inlinedAt: !4082)
!4088 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4087)
!4089 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4087)
!4090 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4087)
!4091 = !DILocation(line: 106, column: 3, scope: !4074)
!4092 = distinct !DISubprogram(name: "x2realloc", scope: !811, file: !811, line: 116, type: !4093, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!123, !123, !817}
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "p", arg: 1, scope: !4092, file: !811, line: 116, type: !123)
!4097 = !DILocalVariable(name: "ps", arg: 2, scope: !4092, file: !811, line: 116, type: !817)
!4098 = !DILocation(line: 0, scope: !4092)
!4099 = !DILocation(line: 0, scope: !814, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 118, column: 10, scope: !4092)
!4101 = !DILocation(line: 178, column: 14, scope: !814, inlinedAt: !4100)
!4102 = !DILocation(line: 180, column: 9, scope: !4103, inlinedAt: !4100)
!4103 = distinct !DILexicalBlock(scope: !814, file: !811, line: 180, column: 7)
!4104 = !DILocation(line: 180, column: 7, scope: !814, inlinedAt: !4100)
!4105 = !DILocation(line: 182, column: 13, scope: !4106, inlinedAt: !4100)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !811, line: 182, column: 11)
!4107 = distinct !DILexicalBlock(scope: !4103, file: !811, line: 181, column: 5)
!4108 = !DILocation(line: 182, column: 11, scope: !4107, inlinedAt: !4100)
!4109 = !DILocation(line: 197, column: 11, scope: !4110, inlinedAt: !4100)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !811, line: 197, column: 11)
!4111 = distinct !DILexicalBlock(scope: !4103, file: !811, line: 195, column: 5)
!4112 = !DILocation(line: 197, column: 11, scope: !4111, inlinedAt: !4100)
!4113 = !DILocation(line: 198, column: 9, scope: !4110, inlinedAt: !4100)
!4114 = !DILocation(line: 0, scope: !3918, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 201, column: 7, scope: !814, inlinedAt: !4100)
!4116 = !DILocation(line: 85, column: 25, scope: !3918, inlinedAt: !4115)
!4117 = !DILocation(line: 0, scope: !3926, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 85, column: 10, scope: !3918, inlinedAt: !4115)
!4119 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4118)
!4120 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4118)
!4121 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4118)
!4122 = !DILocation(line: 202, column: 7, scope: !814, inlinedAt: !4100)
!4123 = !DILocation(line: 118, column: 3, scope: !4092)
!4124 = !DILocation(line: 0, scope: !814)
!4125 = !DILocation(line: 178, column: 14, scope: !814)
!4126 = !DILocation(line: 180, column: 9, scope: !4103)
!4127 = !DILocation(line: 180, column: 7, scope: !814)
!4128 = !DILocation(line: 182, column: 13, scope: !4106)
!4129 = !DILocation(line: 182, column: 11, scope: !4107)
!4130 = !DILocation(line: 190, column: 30, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4106, file: !811, line: 183, column: 9)
!4132 = !DILocation(line: 191, column: 16, scope: !4131)
!4133 = !DILocation(line: 191, column: 13, scope: !4131)
!4134 = !DILocation(line: 192, column: 9, scope: !4131)
!4135 = !DILocation(line: 197, column: 11, scope: !4110)
!4136 = !DILocation(line: 197, column: 11, scope: !4111)
!4137 = !DILocation(line: 198, column: 9, scope: !4110)
!4138 = !DILocation(line: 0, scope: !3918, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 201, column: 7, scope: !814)
!4140 = !DILocation(line: 85, column: 25, scope: !3918, inlinedAt: !4139)
!4141 = !DILocation(line: 0, scope: !3926, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 85, column: 10, scope: !3918, inlinedAt: !4139)
!4143 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4142)
!4144 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4142)
!4145 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4142)
!4146 = !DILocation(line: 202, column: 7, scope: !814)
!4147 = !DILocation(line: 203, column: 3, scope: !814)
!4148 = !DILocation(line: 0, scope: !826)
!4149 = !DILocation(line: 230, column: 14, scope: !826)
!4150 = !DILocation(line: 238, column: 7, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !826, file: !811, line: 238, column: 7)
!4152 = !DILocation(line: 238, column: 7, scope: !826)
!4153 = !DILocation(line: 240, column: 9, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !826, file: !811, line: 240, column: 7)
!4155 = !DILocation(line: 240, column: 18, scope: !4154)
!4156 = !DILocation(line: 253, column: 8, scope: !826)
!4157 = !DILocation(line: 256, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !826, file: !811, line: 256, column: 7)
!4159 = !DILocation(line: 256, column: 7, scope: !826)
!4160 = !DILocation(line: 258, column: 27, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4158, file: !811, line: 257, column: 5)
!4162 = !DILocation(line: 259, column: 32, scope: !4161)
!4163 = !DILocation(line: 260, column: 5, scope: !4161)
!4164 = !DILocation(line: 262, column: 9, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !826, file: !811, line: 262, column: 7)
!4166 = !DILocation(line: 262, column: 7, scope: !826)
!4167 = !DILocation(line: 263, column: 9, scope: !4165)
!4168 = !DILocation(line: 263, column: 5, scope: !4165)
!4169 = !DILocation(line: 264, column: 9, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !826, file: !811, line: 264, column: 7)
!4171 = !DILocation(line: 264, column: 14, scope: !4170)
!4172 = !DILocation(line: 265, column: 7, scope: !4170)
!4173 = !DILocation(line: 265, column: 11, scope: !4170)
!4174 = !DILocation(line: 266, column: 11, scope: !4170)
!4175 = !DILocation(line: 267, column: 14, scope: !4170)
!4176 = !DILocation(line: 264, column: 7, scope: !826)
!4177 = !DILocation(line: 268, column: 5, scope: !4170)
!4178 = !DILocation(line: 0, scope: !3990, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 269, column: 8, scope: !826)
!4180 = !DILocation(line: 0, scope: !3998, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 70, column: 25, scope: !3990, inlinedAt: !4179)
!4182 = !DILocation(line: 2059, column: 24, scope: !3998, inlinedAt: !4181)
!4183 = !DILocation(line: 2059, column: 10, scope: !3998, inlinedAt: !4181)
!4184 = !DILocation(line: 0, scope: !3926, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 70, column: 10, scope: !3990, inlinedAt: !4179)
!4186 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4185)
!4187 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4185)
!4188 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4185)
!4189 = !DILocation(line: 270, column: 7, scope: !826)
!4190 = !DILocation(line: 271, column: 3, scope: !826)
!4191 = distinct !DISubprogram(name: "xzalloc", scope: !811, file: !811, line: 279, type: !1998, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4192)
!4192 = !{!4193}
!4193 = !DILocalVariable(name: "s", arg: 1, scope: !4191, file: !811, line: 279, type: !125)
!4194 = !DILocation(line: 0, scope: !4191)
!4195 = !DILocalVariable(name: "n", arg: 1, scope: !4196, file: !811, line: 294, type: !125)
!4196 = distinct !DISubprogram(name: "xcalloc", scope: !811, file: !811, line: 294, type: !4059, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4197)
!4197 = !{!4195, !4198}
!4198 = !DILocalVariable(name: "s", arg: 2, scope: !4196, file: !811, line: 294, type: !125)
!4199 = !DILocation(line: 0, scope: !4196, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 281, column: 10, scope: !4191)
!4201 = !DILocation(line: 296, column: 25, scope: !4196, inlinedAt: !4200)
!4202 = !DILocation(line: 0, scope: !3926, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 296, column: 10, scope: !4196, inlinedAt: !4200)
!4204 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4203)
!4205 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4203)
!4206 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4203)
!4207 = !DILocation(line: 281, column: 3, scope: !4191)
!4208 = !DISubprogram(name: "calloc", scope: !1064, file: !1064, line: 543, type: !4059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4209 = !DILocation(line: 0, scope: !4196)
!4210 = !DILocation(line: 296, column: 25, scope: !4196)
!4211 = !DILocation(line: 0, scope: !3926, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 296, column: 10, scope: !4196)
!4213 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4212)
!4214 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4212)
!4215 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4212)
!4216 = !DILocation(line: 296, column: 3, scope: !4196)
!4217 = distinct !DISubprogram(name: "xizalloc", scope: !811, file: !811, line: 285, type: !3957, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4218)
!4218 = !{!4219}
!4219 = !DILocalVariable(name: "s", arg: 1, scope: !4217, file: !811, line: 285, type: !830)
!4220 = !DILocation(line: 0, scope: !4217)
!4221 = !DILocalVariable(name: "n", arg: 1, scope: !4222, file: !811, line: 300, type: !830)
!4222 = distinct !DISubprogram(name: "xicalloc", scope: !811, file: !811, line: 300, type: !4075, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4223)
!4223 = !{!4221, !4224}
!4224 = !DILocalVariable(name: "s", arg: 2, scope: !4222, file: !811, line: 300, type: !830)
!4225 = !DILocation(line: 0, scope: !4222, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 287, column: 10, scope: !4217)
!4227 = !DILocalVariable(name: "n", arg: 1, scope: !4228, file: !3964, line: 77, type: !830)
!4228 = distinct !DISubprogram(name: "icalloc", scope: !3964, file: !3964, line: 77, type: !4075, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4229)
!4229 = !{!4227, !4230}
!4230 = !DILocalVariable(name: "s", arg: 2, scope: !4228, file: !3964, line: 77, type: !830)
!4231 = !DILocation(line: 0, scope: !4228, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 302, column: 25, scope: !4222, inlinedAt: !4226)
!4233 = !DILocation(line: 91, column: 10, scope: !4228, inlinedAt: !4232)
!4234 = !DILocation(line: 0, scope: !3926, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 302, column: 10, scope: !4222, inlinedAt: !4226)
!4236 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4235)
!4239 = !DILocation(line: 287, column: 3, scope: !4217)
!4240 = !DILocation(line: 0, scope: !4222)
!4241 = !DILocation(line: 0, scope: !4228, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 302, column: 25, scope: !4222)
!4243 = !DILocation(line: 91, column: 10, scope: !4228, inlinedAt: !4242)
!4244 = !DILocation(line: 0, scope: !3926, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 302, column: 10, scope: !4222)
!4246 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4245)
!4247 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4245)
!4248 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4245)
!4249 = !DILocation(line: 302, column: 3, scope: !4222)
!4250 = distinct !DISubprogram(name: "xmemdup", scope: !811, file: !811, line: 310, type: !4251, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!123, !1088, !125}
!4253 = !{!4254, !4255}
!4254 = !DILocalVariable(name: "p", arg: 1, scope: !4250, file: !811, line: 310, type: !1088)
!4255 = !DILocalVariable(name: "s", arg: 2, scope: !4250, file: !811, line: 310, type: !125)
!4256 = !DILocation(line: 0, scope: !4250)
!4257 = !DILocation(line: 0, scope: !3945, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 312, column: 18, scope: !4250)
!4259 = !DILocation(line: 49, column: 25, scope: !3945, inlinedAt: !4258)
!4260 = !DILocation(line: 0, scope: !3926, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 49, column: 10, scope: !3945, inlinedAt: !4258)
!4262 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4261)
!4263 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4261)
!4264 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4261)
!4265 = !DILocalVariable(name: "__dest", arg: 1, scope: !4266, file: !1191, line: 26, type: !1194)
!4266 = distinct !DISubprogram(name: "memcpy", scope: !1191, file: !1191, line: 26, type: !1192, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4267)
!4267 = !{!4265, !4268, !4269}
!4268 = !DILocalVariable(name: "__src", arg: 2, scope: !4266, file: !1191, line: 26, type: !1087)
!4269 = !DILocalVariable(name: "__len", arg: 3, scope: !4266, file: !1191, line: 26, type: !125)
!4270 = !DILocation(line: 0, scope: !4266, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 312, column: 10, scope: !4250)
!4272 = !DILocation(line: 29, column: 10, scope: !4266, inlinedAt: !4271)
!4273 = !DILocation(line: 312, column: 3, scope: !4250)
!4274 = distinct !DISubprogram(name: "ximemdup", scope: !811, file: !811, line: 316, type: !4275, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!123, !1088, !830}
!4277 = !{!4278, !4279}
!4278 = !DILocalVariable(name: "p", arg: 1, scope: !4274, file: !811, line: 316, type: !1088)
!4279 = !DILocalVariable(name: "s", arg: 2, scope: !4274, file: !811, line: 316, type: !830)
!4280 = !DILocation(line: 0, scope: !4274)
!4281 = !DILocation(line: 0, scope: !3956, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 318, column: 18, scope: !4274)
!4283 = !DILocation(line: 0, scope: !3963, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 55, column: 25, scope: !3956, inlinedAt: !4282)
!4285 = !DILocation(line: 57, column: 26, scope: !3963, inlinedAt: !4284)
!4286 = !DILocation(line: 0, scope: !3926, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 55, column: 10, scope: !3956, inlinedAt: !4282)
!4288 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4287)
!4289 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4287)
!4290 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4287)
!4291 = !DILocation(line: 0, scope: !4266, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 318, column: 10, scope: !4274)
!4293 = !DILocation(line: 29, column: 10, scope: !4266, inlinedAt: !4292)
!4294 = !DILocation(line: 318, column: 3, scope: !4274)
!4295 = distinct !DISubprogram(name: "ximemdup0", scope: !811, file: !811, line: 325, type: !4296, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!122, !1088, !830}
!4298 = !{!4299, !4300, !4301}
!4299 = !DILocalVariable(name: "p", arg: 1, scope: !4295, file: !811, line: 325, type: !1088)
!4300 = !DILocalVariable(name: "s", arg: 2, scope: !4295, file: !811, line: 325, type: !830)
!4301 = !DILocalVariable(name: "result", scope: !4295, file: !811, line: 327, type: !122)
!4302 = !DILocation(line: 0, scope: !4295)
!4303 = !DILocation(line: 327, column: 30, scope: !4295)
!4304 = !DILocation(line: 0, scope: !3956, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 327, column: 18, scope: !4295)
!4306 = !DILocation(line: 0, scope: !3963, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 55, column: 25, scope: !3956, inlinedAt: !4305)
!4308 = !DILocation(line: 57, column: 26, scope: !3963, inlinedAt: !4307)
!4309 = !DILocation(line: 0, scope: !3926, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 55, column: 10, scope: !3956, inlinedAt: !4305)
!4311 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4310)
!4312 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4310)
!4313 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4310)
!4314 = !DILocation(line: 328, column: 3, scope: !4295)
!4315 = !DILocation(line: 328, column: 13, scope: !4295)
!4316 = !DILocation(line: 0, scope: !4266, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 329, column: 10, scope: !4295)
!4318 = !DILocation(line: 29, column: 10, scope: !4266, inlinedAt: !4317)
!4319 = !DILocation(line: 329, column: 3, scope: !4295)
!4320 = distinct !DISubprogram(name: "xstrdup", scope: !811, file: !811, line: 335, type: !1066, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4321)
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "string", arg: 1, scope: !4320, file: !811, line: 335, type: !128)
!4323 = !DILocation(line: 0, scope: !4320)
!4324 = !DILocation(line: 337, column: 27, scope: !4320)
!4325 = !DILocation(line: 337, column: 43, scope: !4320)
!4326 = !DILocation(line: 0, scope: !4250, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 337, column: 10, scope: !4320)
!4328 = !DILocation(line: 0, scope: !3945, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 312, column: 18, scope: !4250, inlinedAt: !4327)
!4330 = !DILocation(line: 49, column: 25, scope: !3945, inlinedAt: !4329)
!4331 = !DILocation(line: 0, scope: !3926, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 49, column: 10, scope: !3945, inlinedAt: !4329)
!4333 = !DILocation(line: 39, column: 8, scope: !3933, inlinedAt: !4332)
!4334 = !DILocation(line: 39, column: 7, scope: !3926, inlinedAt: !4332)
!4335 = !DILocation(line: 40, column: 5, scope: !3933, inlinedAt: !4332)
!4336 = !DILocation(line: 0, scope: !4266, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 312, column: 10, scope: !4250, inlinedAt: !4327)
!4338 = !DILocation(line: 29, column: 10, scope: !4266, inlinedAt: !4337)
!4339 = !DILocation(line: 337, column: 3, scope: !4320)
!4340 = distinct !DISubprogram(name: "xalloc_die", scope: !758, file: !758, line: 32, type: !489, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !4341)
!4341 = !{!4342}
!4342 = !DILocalVariable(name: "__errstatus", scope: !4343, file: !758, line: 34, type: !4344)
!4343 = distinct !DILexicalBlock(scope: !4340, file: !758, line: 34, column: 3)
!4344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4345 = !DILocation(line: 34, column: 3, scope: !4343)
!4346 = !DILocation(line: 0, scope: !4343)
!4347 = !DILocation(line: 40, column: 3, scope: !4340)
!4348 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !765, file: !765, line: 100, type: !4349, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4352)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!125, !2154, !128, !125, !4351}
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!4352 = !{!4353, !4354, !4355, !4356, !4357}
!4353 = !DILocalVariable(name: "pwc", arg: 1, scope: !4348, file: !765, line: 100, type: !2154)
!4354 = !DILocalVariable(name: "s", arg: 2, scope: !4348, file: !765, line: 100, type: !128)
!4355 = !DILocalVariable(name: "n", arg: 3, scope: !4348, file: !765, line: 100, type: !125)
!4356 = !DILocalVariable(name: "ps", arg: 4, scope: !4348, file: !765, line: 100, type: !4351)
!4357 = !DILocalVariable(name: "ret", scope: !4348, file: !765, line: 130, type: !125)
!4358 = !DILocation(line: 0, scope: !4348)
!4359 = !DILocation(line: 105, column: 9, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4348, file: !765, line: 105, column: 7)
!4361 = !DILocation(line: 105, column: 7, scope: !4348)
!4362 = !DILocation(line: 117, column: 10, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4348, file: !765, line: 117, column: 7)
!4364 = !DILocation(line: 117, column: 7, scope: !4348)
!4365 = !DILocation(line: 130, column: 16, scope: !4348)
!4366 = !DILocation(line: 135, column: 11, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4348, file: !765, line: 135, column: 7)
!4368 = !DILocation(line: 135, column: 25, scope: !4367)
!4369 = !DILocation(line: 135, column: 30, scope: !4367)
!4370 = !DILocation(line: 135, column: 7, scope: !4348)
!4371 = !DILocalVariable(name: "ps", arg: 1, scope: !4372, file: !2128, line: 1135, type: !4351)
!4372 = distinct !DISubprogram(name: "mbszero", scope: !2128, file: !2128, line: 1135, type: !4373, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{null, !4351}
!4375 = !{!4371}
!4376 = !DILocation(line: 0, scope: !4372, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 137, column: 5, scope: !4367)
!4378 = !DILocalVariable(name: "__dest", arg: 1, scope: !4379, file: !1191, line: 57, type: !123)
!4379 = distinct !DISubprogram(name: "memset", scope: !1191, file: !1191, line: 57, type: !2137, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4380)
!4380 = !{!4378, !4381, !4382}
!4381 = !DILocalVariable(name: "__ch", arg: 2, scope: !4379, file: !1191, line: 57, type: !102)
!4382 = !DILocalVariable(name: "__len", arg: 3, scope: !4379, file: !1191, line: 57, type: !125)
!4383 = !DILocation(line: 0, scope: !4379, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 1137, column: 3, scope: !4372, inlinedAt: !4377)
!4385 = !DILocation(line: 59, column: 10, scope: !4379, inlinedAt: !4384)
!4386 = !DILocation(line: 137, column: 5, scope: !4367)
!4387 = !DILocation(line: 138, column: 11, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4348, file: !765, line: 138, column: 7)
!4389 = !DILocation(line: 138, column: 7, scope: !4348)
!4390 = !DILocation(line: 139, column: 5, scope: !4388)
!4391 = !DILocation(line: 143, column: 26, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4348, file: !765, line: 143, column: 7)
!4393 = !DILocation(line: 143, column: 41, scope: !4392)
!4394 = !DILocation(line: 143, column: 7, scope: !4348)
!4395 = !DILocation(line: 145, column: 15, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !765, line: 145, column: 11)
!4397 = distinct !DILexicalBlock(scope: !4392, file: !765, line: 144, column: 5)
!4398 = !DILocation(line: 145, column: 11, scope: !4397)
!4399 = !DILocation(line: 146, column: 32, scope: !4396)
!4400 = !DILocation(line: 146, column: 16, scope: !4396)
!4401 = !DILocation(line: 146, column: 14, scope: !4396)
!4402 = !DILocation(line: 146, column: 9, scope: !4396)
!4403 = !DILocation(line: 286, column: 1, scope: !4348)
!4404 = !DISubprogram(name: "mbsinit", scope: !4405, file: !4405, line: 293, type: !4406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4405 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!102, !4408}
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!4410 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !848, file: !848, line: 27, type: !3910, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !4411)
!4411 = !{!4412, !4413, !4414, !4415}
!4412 = !DILocalVariable(name: "ptr", arg: 1, scope: !4410, file: !848, line: 27, type: !123)
!4413 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4410, file: !848, line: 27, type: !125)
!4414 = !DILocalVariable(name: "size", arg: 3, scope: !4410, file: !848, line: 27, type: !125)
!4415 = !DILocalVariable(name: "nbytes", scope: !4410, file: !848, line: 29, type: !125)
!4416 = !DILocation(line: 0, scope: !4410)
!4417 = !DILocation(line: 30, column: 7, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4410, file: !848, line: 30, column: 7)
!4419 = !DILocation(line: 30, column: 7, scope: !4410)
!4420 = !DILocation(line: 32, column: 7, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4418, file: !848, line: 31, column: 5)
!4422 = !DILocation(line: 32, column: 13, scope: !4421)
!4423 = !DILocation(line: 33, column: 7, scope: !4421)
!4424 = !DILocalVariable(name: "ptr", arg: 1, scope: !4425, file: !3999, line: 2057, type: !123)
!4425 = distinct !DISubprogram(name: "rpl_realloc", scope: !3999, file: !3999, line: 2057, type: !3991, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !4426)
!4426 = !{!4424, !4427}
!4427 = !DILocalVariable(name: "size", arg: 2, scope: !4425, file: !3999, line: 2057, type: !125)
!4428 = !DILocation(line: 0, scope: !4425, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 37, column: 10, scope: !4410)
!4430 = !DILocation(line: 2059, column: 24, scope: !4425, inlinedAt: !4429)
!4431 = !DILocation(line: 2059, column: 10, scope: !4425, inlinedAt: !4429)
!4432 = !DILocation(line: 37, column: 3, scope: !4410)
!4433 = !DILocation(line: 38, column: 1, scope: !4410)
!4434 = distinct !DISubprogram(name: "hard_locale", scope: !783, file: !783, line: 28, type: !4435, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4437)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!201, !102}
!4437 = !{!4438, !4439}
!4438 = !DILocalVariable(name: "category", arg: 1, scope: !4434, file: !783, line: 28, type: !102)
!4439 = !DILocalVariable(name: "locale", scope: !4434, file: !783, line: 30, type: !4440)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4441)
!4441 = !{!4442}
!4442 = !DISubrange(count: 257)
!4443 = distinct !DIAssignID()
!4444 = !DILocation(line: 0, scope: !4434)
!4445 = !DILocation(line: 30, column: 3, scope: !4434)
!4446 = !DILocation(line: 32, column: 7, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4434, file: !783, line: 32, column: 7)
!4448 = !DILocation(line: 32, column: 7, scope: !4434)
!4449 = !DILocalVariable(name: "__s1", arg: 1, scope: !4450, file: !956, line: 1359, type: !128)
!4450 = distinct !DISubprogram(name: "streq", scope: !956, file: !956, line: 1359, type: !957, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4451)
!4451 = !{!4449, !4452}
!4452 = !DILocalVariable(name: "__s2", arg: 2, scope: !4450, file: !956, line: 1359, type: !128)
!4453 = !DILocation(line: 0, scope: !4450, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 35, column: 9, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4434, file: !783, line: 35, column: 7)
!4456 = !DILocation(line: 1361, column: 11, scope: !4450, inlinedAt: !4454)
!4457 = !DILocation(line: 1361, column: 10, scope: !4450, inlinedAt: !4454)
!4458 = !DILocation(line: 35, column: 29, scope: !4455)
!4459 = !DILocation(line: 0, scope: !4450, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 35, column: 32, scope: !4455)
!4461 = !DILocation(line: 1361, column: 11, scope: !4450, inlinedAt: !4460)
!4462 = !DILocation(line: 1361, column: 10, scope: !4450, inlinedAt: !4460)
!4463 = !DILocation(line: 35, column: 7, scope: !4434)
!4464 = !DILocation(line: 46, column: 3, scope: !4434)
!4465 = !DILocation(line: 47, column: 1, scope: !4434)
!4466 = distinct !DISubprogram(name: "setlocale_null_r", scope: !852, file: !852, line: 154, type: !4467, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4469)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!102, !102, !122, !125}
!4469 = !{!4470, !4471, !4472}
!4470 = !DILocalVariable(name: "category", arg: 1, scope: !4466, file: !852, line: 154, type: !102)
!4471 = !DILocalVariable(name: "buf", arg: 2, scope: !4466, file: !852, line: 154, type: !122)
!4472 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4466, file: !852, line: 154, type: !125)
!4473 = !DILocation(line: 0, scope: !4466)
!4474 = !DILocation(line: 159, column: 10, scope: !4466)
!4475 = !DILocation(line: 159, column: 3, scope: !4466)
!4476 = distinct !DISubprogram(name: "setlocale_null", scope: !852, file: !852, line: 186, type: !4477, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!128, !102}
!4479 = !{!4480}
!4480 = !DILocalVariable(name: "category", arg: 1, scope: !4476, file: !852, line: 186, type: !102)
!4481 = !DILocation(line: 0, scope: !4476)
!4482 = !DILocation(line: 189, column: 10, scope: !4476)
!4483 = !DILocation(line: 189, column: 3, scope: !4476)
!4484 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !854, file: !854, line: 35, type: !4477, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4485)
!4485 = !{!4486, !4487}
!4486 = !DILocalVariable(name: "category", arg: 1, scope: !4484, file: !854, line: 35, type: !102)
!4487 = !DILocalVariable(name: "result", scope: !4484, file: !854, line: 37, type: !128)
!4488 = !DILocation(line: 0, scope: !4484)
!4489 = !DILocation(line: 37, column: 24, scope: !4484)
!4490 = !DILocation(line: 62, column: 3, scope: !4484)
!4491 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !854, file: !854, line: 66, type: !4467, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497}
!4493 = !DILocalVariable(name: "category", arg: 1, scope: !4491, file: !854, line: 66, type: !102)
!4494 = !DILocalVariable(name: "buf", arg: 2, scope: !4491, file: !854, line: 66, type: !122)
!4495 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4491, file: !854, line: 66, type: !125)
!4496 = !DILocalVariable(name: "result", scope: !4491, file: !854, line: 111, type: !128)
!4497 = !DILocalVariable(name: "length", scope: !4498, file: !854, line: 125, type: !125)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !854, line: 124, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4491, file: !854, line: 113, column: 7)
!4500 = !DILocation(line: 0, scope: !4491)
!4501 = !DILocation(line: 0, scope: !4484, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 111, column: 24, scope: !4491)
!4503 = !DILocation(line: 37, column: 24, scope: !4484, inlinedAt: !4502)
!4504 = !DILocation(line: 113, column: 14, scope: !4499)
!4505 = !DILocation(line: 113, column: 7, scope: !4491)
!4506 = !DILocation(line: 116, column: 19, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !854, line: 116, column: 11)
!4508 = distinct !DILexicalBlock(scope: !4499, file: !854, line: 114, column: 5)
!4509 = !DILocation(line: 116, column: 11, scope: !4508)
!4510 = !DILocation(line: 120, column: 16, scope: !4507)
!4511 = !DILocation(line: 120, column: 9, scope: !4507)
!4512 = !DILocation(line: 125, column: 23, scope: !4498)
!4513 = !DILocation(line: 0, scope: !4498)
!4514 = !DILocation(line: 126, column: 18, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4498, file: !854, line: 126, column: 11)
!4516 = !DILocation(line: 126, column: 11, scope: !4498)
!4517 = !DILocation(line: 128, column: 39, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4515, file: !854, line: 127, column: 9)
!4519 = !DILocalVariable(name: "__dest", arg: 1, scope: !4520, file: !1191, line: 26, type: !1194)
!4520 = distinct !DISubprogram(name: "memcpy", scope: !1191, file: !1191, line: 26, type: !1192, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4521)
!4521 = !{!4519, !4522, !4523}
!4522 = !DILocalVariable(name: "__src", arg: 2, scope: !4520, file: !1191, line: 26, type: !1087)
!4523 = !DILocalVariable(name: "__len", arg: 3, scope: !4520, file: !1191, line: 26, type: !125)
!4524 = !DILocation(line: 0, scope: !4520, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 128, column: 11, scope: !4518)
!4526 = !DILocation(line: 29, column: 10, scope: !4520, inlinedAt: !4525)
!4527 = !DILocation(line: 129, column: 11, scope: !4518)
!4528 = !DILocation(line: 133, column: 23, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !854, line: 133, column: 15)
!4530 = distinct !DILexicalBlock(scope: !4515, file: !854, line: 132, column: 9)
!4531 = !DILocation(line: 133, column: 15, scope: !4530)
!4532 = !DILocation(line: 138, column: 44, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4529, file: !854, line: 134, column: 13)
!4534 = !DILocation(line: 0, scope: !4520, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 138, column: 15, scope: !4533)
!4536 = !DILocation(line: 29, column: 10, scope: !4520, inlinedAt: !4535)
!4537 = !DILocation(line: 139, column: 15, scope: !4533)
!4538 = !DILocation(line: 139, column: 32, scope: !4533)
!4539 = !DILocation(line: 140, column: 13, scope: !4533)
!4540 = !DILocation(line: 0, scope: !4499)
!4541 = !DILocation(line: 145, column: 1, scope: !4491)
