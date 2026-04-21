; ModuleID = 'src/mktemp.bc'
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
%struct.timespec = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

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
@longopts = internal constant [8 x %struct.option] [%struct.option { ptr @.str.67, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 117 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 128 }, %struct.option { ptr @.str.71, i32 2, ptr null, i32 112 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !92
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !433
@.str.43 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !425
@.str.1.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !427
@.str.2.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !429
@.str.3.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !431
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !435
@stderr = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !441
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !473
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !443
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !463
@.str.1.53 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !465
@.str.2.55 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !467
@.str.3.54 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !469
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !471
@.str.4.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !475
@.str.5.49 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !477
@.str.6.50 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !482
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !487
@.str.75 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !493
@.str.1.76 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !495
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !497
@.str.79 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !528
@.str.1.80 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !531
@.str.2.81 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !533
@.str.3.82 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !535
@.str.4.83 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !537
@.str.5.84 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !539
@.str.6.85 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !541
@.str.7.86 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !543
@.str.8.87 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !545
@.str.9.88 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !547
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.79, ptr @.str.1.80, ptr @.str.2.81, ptr @.str.3.82, ptr @.str.4.83, ptr @.str.5.84, ptr @.str.6.85, ptr @.str.7.86, ptr @.str.8.87, ptr @.str.9.88, ptr null], align 16, !dbg !549
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !574
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !588
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !626
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !633
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !590
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !635
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !578
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !595
@.str.11.89 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !597
@.str.12.92 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !599
@.str.13.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !601
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !603
@gen_tempname_len.tryfunc = internal unnamed_addr constant [3 x ptr] [ptr @try_file, ptr @try_dir, ptr @try_nocreate], align 16, !dbg !639
@.str.99 = private unnamed_addr constant [2 x i8] c"X\00", align 1, !dbg !647
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !649
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !665
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !668
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !670
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !672
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !674
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !676
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !681
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !683
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !685
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !690
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !695
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !700
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !705
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !707
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !712
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !714
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !719
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !721
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !723
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !725
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !727
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !729
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !731
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !733
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !738
@exit_failure = dso_local global i32 1, align 4, !dbg !746
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !752
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !755
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !757
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !759
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !762
@.str.1.150 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !777

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !861, metadata !DIExpression()), !dbg !862
  %2 = icmp eq i32 %0, 0, !dbg !863
  br i1 %2, label %8, label %3, !dbg !865

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !866, !tbaa !868
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !866
  %6 = load ptr, ptr @program_name, align 8, !dbg !866, !tbaa !868
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !866
  br label %42, !dbg !866

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !872
  %10 = load ptr, ptr @program_name, align 8, !dbg !872, !tbaa !868
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !872
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !874
  %13 = load ptr, ptr @stdout, align 8, !dbg !874, !tbaa !868
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !874
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #39, !dbg !875
  %16 = load ptr, ptr @stdout, align 8, !dbg !875, !tbaa !868
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !875
  %18 = load ptr, ptr @stdout, align 8, !dbg !876, !tbaa !868
  %19 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4, ptr noundef %18), !dbg !876
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !877
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !877
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !878
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !878
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !879
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !879
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !880
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !880
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !881
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !881
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !882
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !882
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !883
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !883
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !884
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !884
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !885, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr poison, metadata !897, metadata !DIExpression()), !dbg !902
  tail call void @emit_bug_reporting_address() #39, !dbg !904
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !905
  call void @llvm.dbg.value(metadata ptr %28, metadata !900, metadata !DIExpression()), !dbg !902
  %29 = icmp eq ptr %28, null, !dbg !906
  br i1 %29, label %37, label %30, !dbg !908

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.62, i64 noundef 3) #40, !dbg !909
  %32 = icmp eq i32 %31, 0, !dbg !909
  br i1 %32, label %37, label %33, !dbg !910

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #39, !dbg !911
  %35 = load ptr, ptr @stdout, align 8, !dbg !911, !tbaa !868
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !911
  br label %37, !dbg !913

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !901, metadata !DIExpression()), !dbg !902
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #39, !dbg !914
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5) #39, !dbg !914
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !915
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.66) #39, !dbg !915
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !916
  unreachable, !dbg !916
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !917 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !922 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !928 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !931 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !204 {
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !208, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !935
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !936, !tbaa !937
  %3 = icmp eq i32 %2, -1, !dbg !939
  br i1 %3, label %4, label %16, !dbg !940

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.32) #39, !dbg !941
  call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !942
  %6 = icmp eq ptr %5, null, !dbg !943
  br i1 %6, label %14, label %7, !dbg !944

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !945, !tbaa !946
  %9 = icmp eq i8 %8, 0, !dbg !945
  br i1 %9, label %14, label %10, !dbg !947

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !948, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !954, metadata !DIExpression()), !dbg !955
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.33) #40, !dbg !957
  %12 = icmp eq i32 %11, 0, !dbg !958
  %13 = zext i1 %12 to i32, !dbg !947
  br label %14, !dbg !947

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !959, !tbaa !937
  br label %16, !dbg !960

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !961
  %18 = icmp eq i32 %17, 0, !dbg !961
  br i1 %18, label %22, label %19, !dbg !963

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !964, !tbaa !868
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !964
  br label %128, !dbg !966

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !935
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.34) #40, !dbg !967
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !968
  call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !935
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !969
  call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !935
  %26 = icmp eq ptr %25, null, !dbg !970
  br i1 %26, label %58, label %27, !dbg !971

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !972
  br i1 %28, label %58, label %29, !dbg !973

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !974
  %30 = icmp ult ptr %24, %25, !dbg !975
  br i1 %30, label %31, label %52, !dbg !976

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !935
  %33 = load ptr, ptr %32, align 8, !tbaa !868
  br label %34, !dbg !976

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !974
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !977
  call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !974
  %38 = load i8, ptr %35, align 1, !dbg !977, !tbaa !946
  %39 = sext i8 %38 to i64, !dbg !977
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !977
  %41 = load i16, ptr %40, align 2, !dbg !977, !tbaa !978
  %42 = freeze i16 %41, !dbg !980
  %43 = lshr i16 %42, 13, !dbg !980
  %44 = and i16 %43, 1, !dbg !980
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !981
  call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !974
  %47 = icmp ult ptr %37, %25, !dbg !975
  %48 = icmp ult i64 %46, 2, !dbg !982
  %49 = select i1 %47, i1 %48, i1 false, !dbg !982
  br i1 %49, label %34, label %50, !dbg !976, !llvm.loop !983

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !985
  br i1 %51, label %52, label %54, !dbg !987

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !987

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !987
  call void @llvm.dbg.value(metadata i8 %57, metadata !213, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr %56, metadata !215, metadata !DIExpression()), !dbg !935
  br label %58, !dbg !988

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !935
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !935
  call void @llvm.dbg.value(metadata i8 %60, metadata !213, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr %59, metadata !215, metadata !DIExpression()), !dbg !935
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.35) #40, !dbg !989
  call void @llvm.dbg.value(metadata i64 %61, metadata !221, metadata !DIExpression()), !dbg !935
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !990
  call void @llvm.dbg.value(metadata ptr %62, metadata !222, metadata !DIExpression()), !dbg !935
  br label %63, !dbg !991

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !935
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !935
  call void @llvm.dbg.value(metadata i8 %65, metadata !213, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr %64, metadata !222, metadata !DIExpression()), !dbg !935
  %66 = load i8, ptr %64, align 1, !dbg !992, !tbaa !946
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !993

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !994
  %69 = load i8, ptr %68, align 1, !dbg !997, !tbaa !946
  %70 = icmp eq i8 %69, 45, !dbg !998
  %71 = select i1 %70, i8 0, i8 %65, !dbg !999
  br label %72, !dbg !999

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !935
  call void @llvm.dbg.value(metadata i8 %73, metadata !213, metadata !DIExpression()), !dbg !935
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !1000
  %75 = load ptr, ptr %74, align 8, !dbg !1000, !tbaa !868
  %76 = sext i8 %66 to i64, !dbg !1000
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1000
  %78 = load i16, ptr %77, align 2, !dbg !1000, !tbaa !978
  %79 = and i16 %78, 8192, !dbg !1000
  %80 = icmp eq i16 %79, 0, !dbg !1000
  br i1 %80, label %96, label %81, !dbg !1002

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1003
  br i1 %82, label %98, label %83, !dbg !1006

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1007
  %85 = load i8, ptr %84, align 1, !dbg !1007, !tbaa !946
  %86 = sext i8 %85 to i64, !dbg !1007
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1007
  %88 = load i16, ptr %87, align 2, !dbg !1007, !tbaa !978
  %89 = and i16 %88, 8192, !dbg !1007
  %90 = icmp eq i16 %89, 0, !dbg !1007
  br i1 %90, label %91, label %98, !dbg !1008

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1009
  %93 = icmp ne i8 %92, 0, !dbg !1009
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1011
  br i1 %95, label %96, label %98, !dbg !1011

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1012
  call void @llvm.dbg.value(metadata ptr %97, metadata !222, metadata !DIExpression()), !dbg !935
  br label %63, !dbg !991, !llvm.loop !1013

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1015
  %100 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !868
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1015
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !948, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !279, metadata !DIExpression()), !dbg !935
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.49, i64 noundef 6) #40, !dbg !1036
  %103 = icmp eq i32 %102, 0, !dbg !1036
  br i1 %103, label %107, label %104, !dbg !1038

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.50, i64 noundef 9) #40, !dbg !1039
  %106 = icmp eq i32 %105, 0, !dbg !1039
  br i1 %106, label %107, label %110, !dbg !1040

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1041
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %108, ptr noundef %59) #39, !dbg !1041
  br label %113, !dbg !1043

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1044
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.5, i32 noundef %111, ptr noundef %59) #39, !dbg !1044
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !868
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %114), !dbg !1046
  %116 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !868
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.56, ptr noundef %116), !dbg !1047
  %118 = ptrtoint ptr %64 to i64, !dbg !1048
  %119 = sub i64 %118, %99, !dbg !1048
  %120 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !868
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1048
  %122 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !868
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %122), !dbg !1049
  %124 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !868
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %124), !dbg !1050
  %126 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !868
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1051
  br label %128, !dbg !1052

128:                                              ; preds = %113, %19
  ret void, !dbg !1052
}

; Function Attrs: nounwind
declare !dbg !1053 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1057 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1061 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1063 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1066 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1069 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1072 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1075 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1081 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1082 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1088 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1093, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %1, metadata !1094, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr null, metadata !1096, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 0, metadata !1097, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr null, metadata !1100, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 0, metadata !1102, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 0, metadata !1104, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr null, metadata !1108, metadata !DIExpression()), !dbg !1132
  %3 = load ptr, ptr %1, align 8, !dbg !1133, !tbaa !868
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1134
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #39, !dbg !1135
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #39, !dbg !1136
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #39, !dbg !1137
  %7 = tail call i32 @atexit(ptr noundef nonnull @maybe_close_stdout) #39, !dbg !1138
  br label %8, !dbg !1139

8:                                                ; preds = %49, %2
  %9 = phi i32 [ 2, %49 ], [ 1, %2 ]
  %10 = phi i1 [ false, %49 ], [ true, %2 ]
  %11 = phi i32 [ 2, %49 ], [ 0, %2 ]
  %12 = phi i8 [ %21, %49 ], [ 0, %2 ]
  %13 = phi i8 [ %28, %49 ], [ 0, %2 ]
  %14 = phi i8 [ %34, %49 ], [ 0, %2 ]
  %15 = phi ptr [ %39, %49 ], [ null, %2 ]
  %16 = phi i8 [ %50, %49 ], [ 0, %2 ]
  %17 = phi ptr [ %37, %49 ], [ null, %2 ]
  br label %20, !dbg !1139

18:                                               ; preds = %38, %42
  %19 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  br label %20, !dbg !1139, !llvm.loop !1141

20:                                               ; preds = %18, %8
  %21 = phi i8 [ %12, %8 ], [ 1, %18 ]
  %22 = phi i8 [ %13, %8 ], [ %28, %18 ]
  %23 = phi i8 [ %14, %8 ], [ %34, %18 ]
  %24 = phi ptr [ %15, %8 ], [ %39, %18 ]
  %25 = phi i8 [ %16, %8 ], [ %19, %18 ]
  %26 = phi ptr [ %17, %8 ], [ %37, %18 ]
  br label %27, !dbg !1139

27:                                               ; preds = %20, %47
  %28 = phi i8 [ %22, %20 ], [ 1, %47 ]
  %29 = phi i8 [ %23, %20 ], [ 1, %47 ]
  %30 = phi ptr [ %24, %20 ], [ %39, %47 ]
  %31 = phi i8 [ %25, %20 ], [ %48, %47 ]
  %32 = phi ptr [ %26, %20 ], [ %37, %47 ]
  br label %33, !dbg !1139

33:                                               ; preds = %27, %44
  %34 = phi i8 [ %29, %27 ], [ 1, %44 ]
  %35 = phi ptr [ %30, %27 ], [ %39, %44 ]
  %36 = phi i8 [ %31, %27 ], [ %45, %44 ]
  %37 = phi ptr [ %32, %27 ], [ %46, %44 ]
  br label %38, !dbg !1139

38:                                               ; preds = %33, %51
  %39 = phi ptr [ %35, %33 ], [ %53, %51 ]
  %40 = phi i8 [ %36, %33 ], [ %52, %51 ]
  call void @llvm.dbg.value(metadata ptr %37, metadata !1096, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %40, metadata !1097, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %39, metadata !1100, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %34, metadata !1101, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %28, metadata !1102, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %21, metadata !1103, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1132
  %41 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %41, metadata !1098, metadata !DIExpression()), !dbg !1132
  switch i32 %41, label %60 [
    i32 -1, label %61
    i32 100, label %18
    i32 112, label %44
    i32 113, label %42
    i32 116, label %47
    i32 117, label %49
    i32 128, label %51
    i32 -130, label %54
    i32 86, label %55
    i32 -131, label %55
  ], !dbg !1139

42:                                               ; preds = %42, %38
  call void @llvm.dbg.value(metadata ptr %37, metadata !1096, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 1, metadata !1097, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %39, metadata !1100, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %34, metadata !1101, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %28, metadata !1102, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %21, metadata !1103, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1132
  %43 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %43, metadata !1098, metadata !DIExpression()), !dbg !1132
  switch i32 %43, label %60 [
    i32 -1, label %61
    i32 100, label %18
    i32 112, label %44
    i32 113, label %42
    i32 116, label %47
    i32 117, label %49
    i32 128, label %51
    i32 -130, label %54
    i32 86, label %55
    i32 -131, label %55
  ], !dbg !1139, !llvm.loop !1144

44:                                               ; preds = %38, %42
  %45 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  %46 = load ptr, ptr @optarg, align 8, !dbg !1146, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %46, metadata !1096, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 1, metadata !1101, metadata !DIExpression()), !dbg !1132
  br label %33, !dbg !1149, !llvm.loop !1141

47:                                               ; preds = %38, %42
  %48 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  call void @llvm.dbg.value(metadata i8 1, metadata !1101, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1132
  br label %27, !dbg !1150, !llvm.loop !1141

49:                                               ; preds = %38, %42
  %50 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  call void @llvm.dbg.value(metadata i8 1, metadata !1104, metadata !DIExpression()), !dbg !1132
  br label %8, !dbg !1151, !llvm.loop !1141

51:                                               ; preds = %42, %38
  %52 = phi i8 [ %40, %38 ], [ 1, %42 ], !dbg !1140
  %53 = load ptr, ptr @optarg, align 8, !dbg !1152, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %53, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %38, !dbg !1153, !llvm.loop !1141

54:                                               ; preds = %38, %42
  tail call void @usage(i32 noundef 0) #43, !dbg !1154
  unreachable, !dbg !1154

55:                                               ; preds = %38, %38, %42, %42
  %56 = load ptr, ptr @stdout, align 8, !dbg !1155, !tbaa !868
  %57 = load ptr, ptr @Version, align 8, !dbg !1155, !tbaa !868
  %58 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #39, !dbg !1155
  %59 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.20) #39, !dbg !1155
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %56, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef null) #39, !dbg !1155
  tail call void @exit(i32 noundef 0) #41, !dbg !1155
  unreachable, !dbg !1155

60:                                               ; preds = %38, %42
  tail call void @usage(i32 noundef 1) #43, !dbg !1156
  unreachable, !dbg !1156

61:                                               ; preds = %38, %42
  %62 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  %63 = load i32, ptr @optind, align 4, !dbg !1157, !tbaa !937
  %64 = sub nsw i32 %0, %63, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %64, metadata !1109, metadata !DIExpression()), !dbg !1132
  %65 = icmp sgt i32 %64, 1, !dbg !1159
  br i1 %65, label %66, label %68, !dbg !1161

66:                                               ; preds = %61
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1162
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67) #39, !dbg !1162
  tail call void @usage(i32 noundef 1) #43, !dbg !1164
  unreachable, !dbg !1164

68:                                               ; preds = %61
  %69 = icmp eq i32 %63, %0, !dbg !1165
  br i1 %69, label %74, label %70, !dbg !1167

70:                                               ; preds = %68
  %71 = sext i32 %63 to i64, !dbg !1168
  %72 = getelementptr inbounds ptr, ptr %1, i64 %71, !dbg !1168
  %73 = load ptr, ptr %72, align 8, !dbg !1168, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %73, metadata !1099, metadata !DIExpression()), !dbg !1132
  br label %74

74:                                               ; preds = %68, %70
  %75 = phi i8 [ %34, %70 ], [ 1, %68 ], !dbg !1132
  %76 = phi ptr [ %73, %70 ], [ @.str.74, %68 ], !dbg !1170
  call void @llvm.dbg.value(metadata ptr %76, metadata !1099, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %75, metadata !1101, metadata !DIExpression()), !dbg !1132
  %77 = icmp eq ptr %39, null, !dbg !1171
  br i1 %77, label %95, label %78, !dbg !1172

78:                                               ; preds = %74
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76) #40, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %79, metadata !1110, metadata !DIExpression()), !dbg !1174
  %80 = icmp eq i64 %79, 0, !dbg !1175
  br i1 %80, label %86, label %81, !dbg !1177

81:                                               ; preds = %78
  %82 = add i64 %79, -1, !dbg !1178
  %83 = getelementptr inbounds i8, ptr %76, i64 %82, !dbg !1179
  %84 = load i8, ptr %83, align 1, !dbg !1179, !tbaa !946
  %85 = icmp eq i8 %84, 88, !dbg !1180
  br i1 %85, label %89, label %86, !dbg !1181

86:                                               ; preds = %81, %78
  %87 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !1182
  %88 = tail call ptr @quote(ptr noundef %76) #39, !dbg !1182
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %87, ptr noundef %88) #39, !dbg !1182
  unreachable, !dbg !1182

89:                                               ; preds = %81
  %90 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #40, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %90, metadata !1107, metadata !DIExpression()), !dbg !1132
  %91 = add i64 %90, 1, !dbg !1185
  %92 = add i64 %91, %79, !dbg !1186
  %93 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %92) #44, !dbg !1187
  call void @llvm.dbg.value(metadata ptr %93, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %93, metadata !1188, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %76, metadata !1195, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %79, metadata !1196, metadata !DIExpression()), !dbg !1197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %93, ptr noundef nonnull align 1 %76, i64 noundef %79, i1 noundef false) #39, !dbg !1199
  %94 = getelementptr inbounds i8, ptr %93, i64 %79, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %94, metadata !1188, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %39, metadata !1195, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %91, metadata !1196, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %94, ptr noundef nonnull align 1 %39, i64 noundef %91, i1 noundef false) #39, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %93, metadata !1099, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %94, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %107, !dbg !1204

95:                                               ; preds = %74
  %96 = tail call noalias nonnull ptr @xstrdup(ptr noundef %76) #39, !dbg !1205
  call void @llvm.dbg.value(metadata ptr %96, metadata !1099, metadata !DIExpression()), !dbg !1132
  %97 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %96, i32 noundef 88) #40, !dbg !1207
  call void @llvm.dbg.value(metadata ptr %97, metadata !1100, metadata !DIExpression()), !dbg !1132
  %98 = icmp eq ptr %97, null, !dbg !1208
  br i1 %98, label %99, label %102, !dbg !1210

99:                                               ; preds = %95
  %100 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %96), !dbg !1211
  %101 = getelementptr inbounds i8, ptr %96, i64 %100, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %101, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %104, !dbg !1212

102:                                              ; preds = %95
  %103 = getelementptr inbounds i8, ptr %97, i64 1, !dbg !1213
  call void @llvm.dbg.value(metadata ptr %103, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi ptr [ %103, %102 ], [ %101, %99 ], !dbg !1214
  call void @llvm.dbg.value(metadata ptr %105, metadata !1100, metadata !DIExpression()), !dbg !1132
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %105) #40, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %106, metadata !1107, metadata !DIExpression()), !dbg !1132
  br label %107

107:                                              ; preds = %104, %89
  %108 = phi i64 [ %90, %89 ], [ %106, %104 ], !dbg !1216
  %109 = phi ptr [ %93, %89 ], [ null, %104 ], !dbg !1132
  %110 = phi ptr [ %94, %89 ], [ %105, %104 ], !dbg !1216
  %111 = phi ptr [ %93, %89 ], [ %96, %104 ], !dbg !1216
  call void @llvm.dbg.value(metadata ptr %111, metadata !1099, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %110, metadata !1100, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %109, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %108, metadata !1107, metadata !DIExpression()), !dbg !1132
  %112 = icmp eq i64 %108, 0, !dbg !1217
  br i1 %112, label %119, label %113, !dbg !1219

113:                                              ; preds = %107
  %114 = tail call ptr @last_component(ptr noundef nonnull %110) #40, !dbg !1220
  %115 = icmp eq ptr %114, %110, !dbg !1221
  br i1 %115, label %119, label %116, !dbg !1222

116:                                              ; preds = %113
  %117 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !1223
  %118 = tail call ptr @quote(ptr noundef nonnull %110) #39, !dbg !1223
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %117, ptr noundef %118) #39, !dbg !1223
  unreachable, !dbg !1223

119:                                              ; preds = %113, %107
  %120 = ptrtoint ptr %110 to i64, !dbg !1225
  %121 = ptrtoint ptr %111 to i64, !dbg !1225
  %122 = sub i64 %120, %121, !dbg !1225
  call void @llvm.dbg.value(metadata ptr %111, metadata !1226, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %122, metadata !1231, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1232, metadata !DIExpression()), !dbg !1233
  %123 = icmp eq i64 %122, 0, !dbg !1235
  br i1 %123, label %137, label %124, !dbg !1238

124:                                              ; preds = %119, %131
  %125 = phi i64 [ %132, %131 ], [ 0, %119 ]
  %126 = phi i64 [ %127, %131 ], [ %122, %119 ]
  call void @llvm.dbg.value(metadata i64 %125, metadata !1232, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %126, metadata !1231, metadata !DIExpression()), !dbg !1233
  %127 = add i64 %126, -1, !dbg !1239
  %128 = getelementptr inbounds i8, ptr %111, i64 %127, !dbg !1240
  %129 = load i8, ptr %128, align 1, !dbg !1240, !tbaa !946
  %130 = icmp eq i8 %129, 88, !dbg !1241
  br i1 %130, label %131, label %134, !dbg !1242

131:                                              ; preds = %124
  %132 = add nuw i64 %125, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %132, metadata !1232, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %127, metadata !1231, metadata !DIExpression()), !dbg !1233
  %133 = icmp eq i64 %127, 0, !dbg !1235
  br i1 %133, label %134, label %124, !dbg !1238, !llvm.loop !1244

134:                                              ; preds = %124, %131
  %135 = phi i64 [ %122, %131 ], [ %125, %124 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %135, metadata !1106, metadata !DIExpression()), !dbg !1132
  %136 = icmp ult i64 %135, 3, !dbg !1246
  br i1 %136, label %137, label %144, !dbg !1248

137:                                              ; preds = %119, %134
  %138 = icmp eq ptr %111, %109, !dbg !1249
  br i1 %138, label %139, label %141, !dbg !1252

139:                                              ; preds = %137
  %140 = getelementptr inbounds i8, ptr %109, i64 %122, !dbg !1253
  store i8 0, ptr %140, align 1, !dbg !1254, !tbaa !946
  br label %141, !dbg !1253

141:                                              ; preds = %139, %137
  %142 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !1255
  %143 = tail call ptr @quote(ptr noundef nonnull %111) #39, !dbg !1255
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %142, ptr noundef %143) #39, !dbg !1255
  unreachable, !dbg !1255

144:                                              ; preds = %134
  %145 = and i8 %75, 1, !dbg !1256
  %146 = icmp eq i8 %145, 0, !dbg !1256
  br i1 %146, label %190, label %147, !dbg !1257

147:                                              ; preds = %144
  %148 = icmp eq i8 %28, 0, !dbg !1258
  br i1 %148, label %168, label %149, !dbg !1259

149:                                              ; preds = %147
  %150 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #39, !dbg !1260
  call void @llvm.dbg.value(metadata ptr %150, metadata !1113, metadata !DIExpression()), !dbg !1261
  %151 = icmp eq ptr %150, null, !dbg !1262
  br i1 %151, label %155, label %152, !dbg !1264

152:                                              ; preds = %149
  %153 = load i8, ptr %150, align 1, !dbg !1265, !tbaa !946
  %154 = icmp eq i8 %153, 0, !dbg !1265
  br i1 %154, label %155, label %161, !dbg !1266

155:                                              ; preds = %152, %149
  %156 = icmp eq ptr %37, null, !dbg !1267
  br i1 %156, label %160, label %157, !dbg !1269

157:                                              ; preds = %155
  %158 = load i8, ptr %37, align 1, !dbg !1270, !tbaa !946
  %159 = icmp eq i8 %158, 0, !dbg !1270
  br i1 %159, label %160, label %161, !dbg !1271

160:                                              ; preds = %157, %155
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !1095, metadata !DIExpression()), !dbg !1132
  br label %161

161:                                              ; preds = %157, %152, %160
  %162 = phi ptr [ @.str.26, %160 ], [ %150, %152 ], [ %37, %157 ], !dbg !1272
  call void @llvm.dbg.value(metadata ptr %162, metadata !1095, metadata !DIExpression()), !dbg !1132
  %163 = tail call ptr @last_component(ptr noundef nonnull %111) #40, !dbg !1273
  %164 = icmp eq ptr %163, %111, !dbg !1275
  br i1 %164, label %187, label %165, !dbg !1276

165:                                              ; preds = %161
  %166 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #39, !dbg !1277
  %167 = tail call ptr @quote(ptr noundef nonnull %111) #39, !dbg !1277
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %166, ptr noundef %167) #39, !dbg !1277
  unreachable, !dbg !1277

168:                                              ; preds = %147
  %169 = icmp eq ptr %37, null, !dbg !1278
  br i1 %169, label %173, label %170, !dbg !1279

170:                                              ; preds = %168
  %171 = load i8, ptr %37, align 1, !dbg !1280, !tbaa !946
  %172 = icmp eq i8 %171, 0, !dbg !1280
  br i1 %172, label %173, label %180, !dbg !1281

173:                                              ; preds = %170, %168
  %174 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #39, !dbg !1282
  call void @llvm.dbg.value(metadata ptr %174, metadata !1118, metadata !DIExpression()), !dbg !1283
  %175 = icmp eq ptr %174, null, !dbg !1284
  br i1 %175, label %180, label %176, !dbg !1285

176:                                              ; preds = %173
  %177 = load i8, ptr %174, align 1, !dbg !1286, !tbaa !946
  %178 = icmp eq i8 %177, 0, !dbg !1286
  %179 = select i1 %178, ptr @.str.26, ptr %174, !dbg !1284
  br label %180, !dbg !1284

180:                                              ; preds = %173, %176, %170
  %181 = phi ptr [ %37, %170 ], [ @.str.26, %173 ], [ %179, %176 ], !dbg !1287
  call void @llvm.dbg.value(metadata ptr %181, metadata !1095, metadata !DIExpression()), !dbg !1132
  %182 = load i8, ptr %111, align 1, !dbg !1288, !tbaa !946
  %183 = icmp eq i8 %182, 47, !dbg !1288
  br i1 %183, label %184, label %187, !dbg !1290

184:                                              ; preds = %180
  %185 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #39, !dbg !1291
  %186 = tail call ptr @quote(ptr noundef nonnull %111) #39, !dbg !1291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %185, ptr noundef %186) #39, !dbg !1291
  unreachable, !dbg !1291

187:                                              ; preds = %161, %180
  %188 = phi ptr [ %181, %180 ], [ %162, %161 ], !dbg !1292
  call void @llvm.dbg.value(metadata ptr %188, metadata !1095, metadata !DIExpression()), !dbg !1132
  %189 = tail call noalias nonnull ptr @file_name_concat(ptr noundef %188, ptr noundef nonnull %111, ptr noundef null) #39, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %189, metadata !1108, metadata !DIExpression()), !dbg !1132
  tail call void @free(ptr noundef nonnull %111) #39, !dbg !1294
  call void @llvm.dbg.value(metadata ptr %189, metadata !1099, metadata !DIExpression()), !dbg !1132
  br label %190, !dbg !1295

190:                                              ; preds = %187, %144
  %191 = phi ptr [ %189, %187 ], [ %111, %144 ], !dbg !1132
  call void @llvm.dbg.value(metadata ptr %191, metadata !1099, metadata !DIExpression()), !dbg !1132
  %192 = tail call noalias nonnull ptr @xstrdup(ptr noundef %191) #39, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %192, metadata !1108, metadata !DIExpression()), !dbg !1132
  %193 = icmp eq i8 %21, 0, !dbg !1297
  br i1 %193, label %205, label %194, !dbg !1298

194:                                              ; preds = %190
  call void @llvm.dbg.value(metadata ptr %192, metadata !1299, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i64 %108, metadata !1304, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i64 %135, metadata !1305, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i1 poison, metadata !1306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1307
  %195 = trunc i64 %108 to i32, !dbg !1309
  %196 = tail call i32 @gen_tempname_len(ptr noundef nonnull %192, i32 noundef %195, i32 noundef 0, i32 noundef %9, i64 noundef %135) #39, !dbg !1310
  call void @llvm.dbg.value(metadata i32 %196, metadata !1122, metadata !DIExpression()), !dbg !1311
  %197 = icmp eq i32 %196, 0, !dbg !1312
  br i1 %197, label %224, label %198, !dbg !1314

198:                                              ; preds = %194
  %199 = icmp eq i8 %62, 0, !dbg !1315
  br i1 %199, label %200, label %237, !dbg !1318

200:                                              ; preds = %198
  %201 = tail call ptr @__errno_location() #42, !dbg !1319
  %202 = load i32, ptr %201, align 4, !dbg !1319, !tbaa !937
  %203 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !1319
  %204 = tail call ptr @quote(ptr noundef %191) #39, !dbg !1319
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %202, ptr noundef %203, ptr noundef %204) #39, !dbg !1319
  br label %237, !dbg !1319

205:                                              ; preds = %190
  call void @llvm.dbg.value(metadata ptr %192, metadata !1320, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %108, metadata !1323, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %135, metadata !1324, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i1 poison, metadata !1325, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1326
  %206 = trunc i64 %108 to i32, !dbg !1328
  %207 = tail call i32 @gen_tempname_len(ptr noundef nonnull %192, i32 noundef %206, i32 noundef 0, i32 noundef %11, i64 noundef %135) #39, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %207, metadata !1125, metadata !DIExpression()), !dbg !1330
  %208 = icmp slt i32 %207, 0, !dbg !1331
  br i1 %208, label %217, label %209, !dbg !1333

209:                                              ; preds = %205
  call void @llvm.dbg.value(metadata i1 %10, metadata !1325, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1326
  br i1 %10, label %212, label %210, !dbg !1334

210:                                              ; preds = %209
  call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  %211 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %192), !dbg !1335
  br label %237, !dbg !1336

212:                                              ; preds = %209
  %213 = tail call i32 @close(i32 noundef %207) #39, !dbg !1337
  %214 = icmp eq i32 %213, 0, !dbg !1338
  br i1 %214, label %215, label %217, !dbg !1339

215:                                              ; preds = %212
  call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  %216 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %192), !dbg !1335
  br label %226, !dbg !1336

217:                                              ; preds = %212, %205
  %218 = icmp eq i8 %62, 0, !dbg !1340
  br i1 %218, label %219, label %237, !dbg !1343

219:                                              ; preds = %217
  %220 = tail call ptr @__errno_location() #42, !dbg !1344
  %221 = load i32, ptr %220, align 4, !dbg !1344, !tbaa !937
  %222 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !1344
  %223 = tail call ptr @quote(ptr noundef %191) #39, !dbg !1344
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %221, ptr noundef %222, ptr noundef %223) #39, !dbg !1344
  br label %237, !dbg !1344

224:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  %225 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %192), !dbg !1335
  br i1 %10, label %226, label %237, !dbg !1336

226:                                              ; preds = %215, %224
  store i1 true, ptr @stdout_closed, align 1, !dbg !1345
  %227 = load ptr, ptr @stdout, align 8, !dbg !1346, !tbaa !868
  %228 = tail call i32 @close_stream(ptr noundef %227) #39, !dbg !1347
  %229 = icmp eq i32 %228, 0, !dbg !1348
  br i1 %229, label %237, label %230, !dbg !1349

230:                                              ; preds = %226
  %231 = tail call ptr @__errno_location() #42, !dbg !1350
  %232 = load i32, ptr %231, align 4, !dbg !1350, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %232, metadata !1127, metadata !DIExpression()), !dbg !1351
  %233 = tail call i32 @remove(ptr noundef nonnull %192) #39, !dbg !1352
  %234 = icmp eq i8 %62, 0, !dbg !1353
  br i1 %234, label %235, label %237, !dbg !1355

235:                                              ; preds = %230
  %236 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !1356
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %232, ptr noundef %236) #39, !dbg !1356
  br label %237, !dbg !1356

237:                                              ; preds = %210, %217, %219, %198, %200, %230, %235, %224, %226
  %238 = phi i32 [ 0, %224 ], [ 0, %226 ], [ 1, %235 ], [ 1, %230 ], [ 1, %200 ], [ 1, %198 ], [ 1, %219 ], [ 1, %217 ], [ 0, %210 ], !dbg !1132
  call void @llvm.dbg.value(metadata i32 %238, metadata !1105, metadata !DIExpression()), !dbg !1132
  ret i32 %238, !dbg !1357
}

; Function Attrs: nounwind
declare !dbg !1358 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1361 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @maybe_close_stdout() #10 !dbg !1362 {
  %1 = load i1, ptr @stdout_closed, align 1, !dbg !1363
  br i1 %1, label %3, label %2, !dbg !1365

2:                                                ; preds = %0
  tail call void @close_stdout() #39, !dbg !1366
  br label %8, !dbg !1366

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !1367, !tbaa !868
  %5 = tail call i32 @close_stream(ptr noundef %4) #39, !dbg !1369
  %6 = icmp eq i32 %5, 0, !dbg !1370
  br i1 %6, label %8, label %7, !dbg !1371

7:                                                ; preds = %3
  tail call void @_exit(i32 noundef 1) #41, !dbg !1372
  unreachable, !dbg !1372

8:                                                ; preds = %3, %2
  ret void, !dbg !1373
}

; Function Attrs: nounwind
declare !dbg !1374 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1377 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1383 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1386 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1387 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1390 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1394 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1397 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1401 noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn
declare !dbg !1402 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1403 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1405, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %0, metadata !1406, metadata !DIExpression()), !dbg !1410
  br label %2, !dbg !1411

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1410
  call void @llvm.dbg.value(metadata ptr %3, metadata !1406, metadata !DIExpression()), !dbg !1410
  %4 = load i8, ptr %3, align 1, !dbg !1412, !tbaa !946
  %5 = icmp eq i8 %4, 47, !dbg !1412
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1413
  call void @llvm.dbg.value(metadata ptr %6, metadata !1406, metadata !DIExpression()), !dbg !1410
  br i1 %5, label %2, label %7, !dbg !1411, !llvm.loop !1414

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !1415
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !1417
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !1410
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !1418
  call void @llvm.dbg.value(metadata ptr %11, metadata !1408, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %10, metadata !1407, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %9, metadata !1406, metadata !DIExpression()), !dbg !1410
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !1420

12:                                               ; preds = %7
  ret ptr %9, !dbg !1421

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !1422
  %15 = icmp eq i8 %14, 0, !dbg !1422
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !1426
  %17 = select i1 %15, i8 %10, i8 0, !dbg !1426
  br label %18, !dbg !1426

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !1410
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !1410
  call void @llvm.dbg.value(metadata i8 %20, metadata !1407, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %19, metadata !1406, metadata !DIExpression()), !dbg !1410
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1427
  call void @llvm.dbg.value(metadata ptr %21, metadata !1408, metadata !DIExpression()), !dbg !1419
  %22 = load i8, ptr %21, align 1, !dbg !1415, !tbaa !946
  br label %7, !dbg !1428, !llvm.loop !1429
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1431 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1435, metadata !DIExpression()), !dbg !1438
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %2, metadata !1436, metadata !DIExpression()), !dbg !1438
  %3 = icmp ne i64 %2, 0, !dbg !1441
  %4 = zext i1 %3 to i64, !dbg !1441
  br label %5, !dbg !1441

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1442
  call void @llvm.dbg.value(metadata i64 %6, metadata !1436, metadata !DIExpression()), !dbg !1438
  %7 = icmp ugt i64 %6, 1, !dbg !1443
  br i1 %7, label %8, label %13, !dbg !1445

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1446
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !1446
  %11 = load i8, ptr %10, align 1, !dbg !1446, !tbaa !946
  %12 = icmp eq i8 %11, 47, !dbg !1446
  br i1 %12, label %5, label %13, !dbg !1447, !llvm.loop !1448

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1442
  call void @llvm.dbg.value(metadata i64 0, metadata !1437, metadata !DIExpression()), !dbg !1438
  ret i64 %14, !dbg !1450
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !1451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1489, metadata !DIExpression()), !dbg !1494
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !1495
  call void @llvm.dbg.value(metadata i1 poison, metadata !1490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  call void @llvm.dbg.value(metadata ptr %0, metadata !1496, metadata !DIExpression()), !dbg !1500
  %3 = load i32, ptr %0, align 8, !dbg !1502, !tbaa !1503
  %4 = and i32 %3, 32, !dbg !1506
  %5 = icmp eq i32 %4, 0, !dbg !1506
  call void @llvm.dbg.value(metadata i1 %5, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !1507
  %7 = icmp eq i32 %6, 0, !dbg !1508
  call void @llvm.dbg.value(metadata i1 %7, metadata !1493, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  br i1 %5, label %8, label %18, !dbg !1509

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !1511
  call void @llvm.dbg.value(metadata i1 %9, metadata !1490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  %10 = select i1 %7, i1 true, i1 %9, !dbg !1512
  %11 = xor i1 %7, true, !dbg !1512
  %12 = sext i1 %11 to i32, !dbg !1512
  br i1 %10, label %21, label %13, !dbg !1512

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !1513
  %15 = load i32, ptr %14, align 4, !dbg !1513, !tbaa !937
  %16 = icmp ne i32 %15, 9, !dbg !1514
  %17 = sext i1 %16 to i32, !dbg !1515
  br label %21, !dbg !1515

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !1516

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !1518
  store i32 0, ptr %20, align 4, !dbg !1520, !tbaa !937
  br label %21, !dbg !1518

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !1494
  ret i32 %22, !dbg !1521
}

; Function Attrs: nounwind
declare !dbg !1522 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1526 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1528, metadata !DIExpression()), !dbg !1529
  store ptr %0, ptr @file_name, align 8, !dbg !1530, !tbaa !868
  ret void, !dbg !1531
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1532 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1536, metadata !DIExpression()), !dbg !1537
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1538, !tbaa !1539
  ret void, !dbg !1541
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() local_unnamed_addr #10 !dbg !1542 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1547, !tbaa !868
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1548
  %3 = icmp eq i32 %2, 0, !dbg !1549
  br i1 %3, label %22, label %4, !dbg !1550

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1551, !tbaa !1539, !range !1552, !noundef !921
  %6 = icmp eq i8 %5, 0, !dbg !1551
  br i1 %6, label %11, label %7, !dbg !1553

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1554
  %9 = load i32, ptr %8, align 4, !dbg !1554, !tbaa !937
  %10 = icmp eq i32 %9, 32, !dbg !1555
  br i1 %10, label %22, label %11, !dbg !1556

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1.44, i32 noundef 5) #39, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %12, metadata !1544, metadata !DIExpression()), !dbg !1558
  %13 = load ptr, ptr @file_name, align 8, !dbg !1559, !tbaa !868
  %14 = icmp eq ptr %13, null, !dbg !1559
  %15 = tail call ptr @__errno_location() #42, !dbg !1561
  %16 = load i32, ptr %15, align 4, !dbg !1561, !tbaa !937
  br i1 %14, label %19, label %17, !dbg !1562

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1563
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.45, ptr noundef %18, ptr noundef %12) #39, !dbg !1563
  br label %20, !dbg !1563

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.46, ptr noundef %12) #39, !dbg !1564
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1565, !tbaa !937
  tail call void @_exit(i32 noundef %21) #41, !dbg !1566
  unreachable, !dbg !1566

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1567, !tbaa !868
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1569
  %25 = icmp eq i32 %24, 0, !dbg !1570
  br i1 %25, label %28, label %26, !dbg !1571

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1572, !tbaa !937
  tail call void @_exit(i32 noundef %27) #41, !dbg !1573
  unreachable, !dbg !1573

28:                                               ; preds = %22
  ret void, !dbg !1574
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1575 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1579, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %1, metadata !1580, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata ptr %2, metadata !1581, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata ptr %3, metadata !1582, metadata !DIExpression()), !dbg !1583
  tail call fastcc void @flush_stdout(), !dbg !1584
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1585, !tbaa !868
  %6 = icmp eq ptr %5, null, !dbg !1585
  br i1 %6, label %8, label %7, !dbg !1587

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1588
  br label %12, !dbg !1588

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1589, !tbaa !868
  %10 = tail call ptr @getprogname() #40, !dbg !1589
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef %10) #39, !dbg !1589
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1591
  ret void, !dbg !1592
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1593 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1595, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i32 1, metadata !1597, metadata !DIExpression()), !dbg !1600
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1603
  %2 = icmp slt i32 %1, 0, !dbg !1604
  br i1 %2, label %6, label %3, !dbg !1605

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1606, !tbaa !868
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1606
  br label %6, !dbg !1606

6:                                                ; preds = %3, %0
  ret void, !dbg !1607
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1608 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1610, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i32 %1, metadata !1611, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %2, metadata !1612, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %3, metadata !1613, metadata !DIExpression()), !dbg !1614
  %6 = load ptr, ptr @stderr, align 8, !dbg !1615, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %6, metadata !1616, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %2, metadata !1656, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %3, metadata !1657, metadata !DIExpression()), !dbg !1658
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1660
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1661, !tbaa !937
  %9 = add i32 %8, 1, !dbg !1661
  store i32 %9, ptr @error_message_count, align 4, !dbg !1661, !tbaa !937
  %10 = icmp eq i32 %1, 0, !dbg !1662
  br i1 %10, label %20, label %11, !dbg !1664

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1665, metadata !DIExpression()), !dbg !1673
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1675
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1669, metadata !DIExpression()), !dbg !1676
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1677
  call void @llvm.dbg.value(metadata ptr %12, metadata !1668, metadata !DIExpression()), !dbg !1673
  %13 = icmp eq ptr %12, null, !dbg !1678
  br i1 %13, label %14, label %16, !dbg !1680

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.48, ptr noundef nonnull @.str.5.49, i32 noundef 5) #39, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %15, metadata !1668, metadata !DIExpression()), !dbg !1673
  br label %16, !dbg !1682

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1673
  call void @llvm.dbg.value(metadata ptr %17, metadata !1668, metadata !DIExpression()), !dbg !1673
  %18 = load ptr, ptr @stderr, align 8, !dbg !1683, !tbaa !868
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.50, ptr noundef %17) #39, !dbg !1683
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1684
  br label %20, !dbg !1685

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1686, !tbaa !868
  call void @llvm.dbg.value(metadata i32 10, metadata !1687, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata ptr %21, metadata !1692, metadata !DIExpression()), !dbg !1693
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1695
  %23 = load ptr, ptr %22, align 8, !dbg !1695, !tbaa !1696
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1695
  %25 = load ptr, ptr %24, align 8, !dbg !1695, !tbaa !1697
  %26 = icmp ult ptr %23, %25, !dbg !1695
  br i1 %26, label %29, label %27, !dbg !1695, !prof !1698

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1695
  br label %31, !dbg !1695

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1695
  store ptr %30, ptr %22, align 8, !dbg !1695, !tbaa !1696
  store i8 10, ptr %23, align 1, !dbg !1695, !tbaa !946
  br label %31, !dbg !1695

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1699, !tbaa !868
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1699
  %34 = icmp eq i32 %0, 0, !dbg !1700
  br i1 %34, label %36, label %35, !dbg !1702

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1703
  unreachable, !dbg !1703

36:                                               ; preds = %31
  ret void, !dbg !1704
}

declare !dbg !1705 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1708 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1711 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1714 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1717 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1721 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1725, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %1, metadata !1726, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr %2, metadata !1727, metadata !DIExpression()), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1728, metadata !DIExpression()), !dbg !1736
  call void @llvm.va_start(ptr nonnull %4), !dbg !1737
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1738
  call void @llvm.va_end(ptr nonnull %4), !dbg !1739
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1740
  ret void, !dbg !1740
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !445 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !457, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %1, metadata !458, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %2, metadata !459, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %3, metadata !460, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %4, metadata !461, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %5, metadata !462, metadata !DIExpression()), !dbg !1741
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1742, !tbaa !937
  %8 = icmp eq i32 %7, 0, !dbg !1742
  br i1 %8, label %23, label %9, !dbg !1744

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1745, !tbaa !937
  %11 = icmp eq i32 %10, %3, !dbg !1748
  br i1 %11, label %12, label %22, !dbg !1749

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1750, !tbaa !868
  %14 = icmp eq ptr %13, %2, !dbg !1751
  br i1 %14, label %36, label %15, !dbg !1752

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1753
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1754
  br i1 %18, label %19, label %22, !dbg !1754

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1755
  %21 = icmp eq i32 %20, 0, !dbg !1756
  br i1 %21, label %36, label %22, !dbg !1757

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1758, !tbaa !868
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1759, !tbaa !937
  br label %23, !dbg !1760

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1761
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1762, !tbaa !868
  %25 = icmp eq ptr %24, null, !dbg !1762
  br i1 %25, label %27, label %26, !dbg !1764

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1765
  br label %31, !dbg !1765

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1766, !tbaa !868
  %29 = tail call ptr @getprogname() #40, !dbg !1766
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.53, ptr noundef %29) #39, !dbg !1766
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1768, !tbaa !868
  %33 = icmp eq ptr %2, null, !dbg !1768
  %34 = select i1 %33, ptr @.str.3.54, ptr @.str.2.55, !dbg !1768
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1768
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1769
  br label %36, !dbg !1770

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1770
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1771 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %1, metadata !1776, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %2, metadata !1777, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %3, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %4, metadata !1779, metadata !DIExpression()), !dbg !1781
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1782
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1780, metadata !DIExpression()), !dbg !1783
  call void @llvm.va_start(ptr nonnull %6), !dbg !1784
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1785
  call void @llvm.va_end(ptr nonnull %6), !dbg !1786
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1787
  ret void, !dbg !1787
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1788 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1826, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1830
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %2, metadata !1828, metadata !DIExpression()), !dbg !1830
  %3 = icmp slt i32 %2, 0, !dbg !1832
  br i1 %3, label %4, label %6, !dbg !1834

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1835
  br label %24, !dbg !1836

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !1837
  %8 = icmp eq i32 %7, 0, !dbg !1837
  br i1 %8, label %13, label %9, !dbg !1839

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1840
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !1841
  %12 = icmp eq i64 %11, -1, !dbg !1842
  br i1 %12, label %16, label %13, !dbg !1843

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !1844
  %15 = icmp eq i32 %14, 0, !dbg !1844
  br i1 %15, label %16, label %18, !dbg !1845

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1829, metadata !DIExpression()), !dbg !1830
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1846
  call void @llvm.dbg.value(metadata i32 %17, metadata !1829, metadata !DIExpression()), !dbg !1830
  br label %24, !dbg !1847

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !1848
  %20 = load i32, ptr %19, align 4, !dbg !1848, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %20, metadata !1827, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1829, metadata !DIExpression()), !dbg !1830
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1846
  call void @llvm.dbg.value(metadata i32 %21, metadata !1829, metadata !DIExpression()), !dbg !1830
  %22 = icmp eq i32 %20, 0, !dbg !1849
  br i1 %22, label %24, label %23, !dbg !1847

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1851, !tbaa !937
  call void @llvm.dbg.value(metadata i32 -1, metadata !1829, metadata !DIExpression()), !dbg !1830
  br label %24, !dbg !1853

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1830
  ret i32 %25, !dbg !1854
}

; Function Attrs: nofree nounwind
declare !dbg !1855 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1856 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1857 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1858 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !1861 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1899, metadata !DIExpression()), !dbg !1900
  %2 = icmp eq ptr %0, null, !dbg !1901
  br i1 %2, label %6, label %3, !dbg !1903

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !1904
  %5 = icmp eq i32 %4, 0, !dbg !1904
  br i1 %5, label %6, label %8, !dbg !1905

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !1906
  br label %16, !dbg !1907

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !1908, metadata !DIExpression()), !dbg !1913
  %9 = load i32, ptr %0, align 8, !dbg !1915, !tbaa !1503
  %10 = and i32 %9, 256, !dbg !1917
  %11 = icmp eq i32 %10, 0, !dbg !1917
  br i1 %11, label %14, label %12, !dbg !1918

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !1919
  br label %14, !dbg !1919

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !1920
  br label %16, !dbg !1921

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !1900
  ret i32 %17, !dbg !1922
}

; Function Attrs: nofree nounwind
declare !dbg !1923 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @file_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1924 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %1, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %2, metadata !1930, metadata !DIExpression()), !dbg !1932
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #39, !dbg !1933
  call void @llvm.dbg.value(metadata ptr %4, metadata !1931, metadata !DIExpression()), !dbg !1932
  %5 = icmp eq ptr %4, null, !dbg !1934
  br i1 %5, label %6, label %7, !dbg !1936

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !1937
  unreachable, !dbg !1937

7:                                                ; preds = %3
  ret ptr %4, !dbg !1938
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #20 !dbg !1939 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1941, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata ptr %1, metadata !1942, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata ptr %2, metadata !1943, metadata !DIExpression()), !dbg !1952
  %4 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1953
  call void @llvm.dbg.value(metadata ptr %4, metadata !1944, metadata !DIExpression()), !dbg !1952
  %5 = tail call i64 @base_len(ptr noundef %4) #40, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %5, metadata !1945, metadata !DIExpression()), !dbg !1952
  %6 = ptrtoint ptr %4 to i64, !dbg !1955
  %7 = ptrtoint ptr %0 to i64, !dbg !1955
  %8 = sub i64 %6, %7, !dbg !1955
  %9 = add i64 %8, %5, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %9, metadata !1946, metadata !DIExpression()), !dbg !1952
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %10, metadata !1947, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1952
  %11 = icmp eq i64 %5, 0, !dbg !1958
  br i1 %11, label %21, label %12, !dbg !1960

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1961
  %14 = getelementptr inbounds i8, ptr %0, i64 %13, !dbg !1961
  %15 = load i8, ptr %14, align 1, !dbg !1961, !tbaa !946
  %16 = icmp eq i8 %15, 47, !dbg !1961
  br i1 %16, label %25, label %17, !dbg !1964

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1965, !tbaa !946
  %19 = icmp ne i8 %18, 47, !dbg !1965
  %20 = select i1 %19, i8 47, i8 0, !dbg !1966
  br label %25, !dbg !1966

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1967, !tbaa !946
  %23 = icmp eq i8 %22, 47, !dbg !1967
  %24 = select i1 %23, i8 46, i8 0, !dbg !1969
  br label %25, !dbg !1969

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1952
  %28 = zext i1 %26 to i64
  call void @llvm.dbg.value(metadata i8 %27, metadata !1948, metadata !DIExpression()), !dbg !1952
  %29 = add i64 %10, 1, !dbg !1970
  %30 = add i64 %29, %9, !dbg !1971
  %31 = add i64 %30, %28, !dbg !1972
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #44, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %32, metadata !1949, metadata !DIExpression()), !dbg !1952
  %33 = icmp eq ptr %32, null, !dbg !1974
  br i1 %33, label %41, label %34, !dbg !1976

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1977, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata ptr %0, metadata !1980, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %9, metadata !1981, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #39, !dbg !1984
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1984
  call void @llvm.dbg.value(metadata ptr %35, metadata !1950, metadata !DIExpression()), !dbg !1985
  store i8 %27, ptr %35, align 1, !dbg !1986, !tbaa !946
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1987
  call void @llvm.dbg.value(metadata ptr %36, metadata !1950, metadata !DIExpression()), !dbg !1985
  %37 = icmp eq ptr %2, null, !dbg !1988
  br i1 %37, label %39, label %38, !dbg !1990

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1991, !tbaa !868
  br label %39, !dbg !1992

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1977, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata ptr %1, metadata !1980, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i64 %10, metadata !1981, metadata !DIExpression()), !dbg !1993
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #39, !dbg !1995
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1995
  call void @llvm.dbg.value(metadata ptr %40, metadata !1950, metadata !DIExpression()), !dbg !1985
  store i8 0, ptr %40, align 1, !dbg !1996, !tbaa !946
  br label %41, !dbg !1997

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !1998
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1999 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2002 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2041, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %1, metadata !2042, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %2, metadata !2043, metadata !DIExpression()), !dbg !2047
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2048
  %5 = load ptr, ptr %4, align 8, !dbg !2048, !tbaa !2049
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2050
  %7 = load ptr, ptr %6, align 8, !dbg !2050, !tbaa !2051
  %8 = icmp eq ptr %5, %7, !dbg !2052
  br i1 %8, label %9, label %27, !dbg !2053

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2054
  %11 = load ptr, ptr %10, align 8, !dbg !2054, !tbaa !1696
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2055
  %13 = load ptr, ptr %12, align 8, !dbg !2055, !tbaa !2056
  %14 = icmp eq ptr %11, %13, !dbg !2057
  br i1 %14, label %15, label %27, !dbg !2058

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2059
  %17 = load ptr, ptr %16, align 8, !dbg !2059, !tbaa !2060
  %18 = icmp eq ptr %17, null, !dbg !2061
  br i1 %18, label %19, label %27, !dbg !2062

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2063
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %21, metadata !2044, metadata !DIExpression()), !dbg !2065
  %22 = icmp eq i64 %21, -1, !dbg !2066
  br i1 %22, label %29, label %23, !dbg !2068

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2069, !tbaa !1503
  %25 = and i32 %24, -17, !dbg !2069
  store i32 %25, ptr %0, align 8, !dbg !2069, !tbaa !1503
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2070
  store i64 %21, ptr %26, align 8, !dbg !2071, !tbaa !2072
  br label %29, !dbg !2073

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2074
  br label %29, !dbg !2075

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2047
  ret i32 %30, !dbg !2076
}

; Function Attrs: nofree nounwind
declare !dbg !2077 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2080 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2083, !tbaa !868
  ret ptr %1, !dbg !2084
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2085 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2087, metadata !DIExpression()), !dbg !2090
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2091
  call void @llvm.dbg.value(metadata ptr %2, metadata !2088, metadata !DIExpression()), !dbg !2090
  %3 = icmp eq ptr %2, null, !dbg !2092
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2092
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %5, metadata !2089, metadata !DIExpression()), !dbg !2090
  %6 = ptrtoint ptr %5 to i64, !dbg !2093
  %7 = ptrtoint ptr %0 to i64, !dbg !2093
  %8 = sub i64 %6, %7, !dbg !2093
  %9 = icmp sgt i64 %8, 6, !dbg !2095
  br i1 %9, label %10, label %19, !dbg !2096

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2097
  call void @llvm.dbg.value(metadata ptr %11, metadata !2098, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata ptr @.str.75, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 7, metadata !2104, metadata !DIExpression()), !dbg !2105
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.75, i64 7), !dbg !2107
  %13 = icmp eq i32 %12, 0, !dbg !2108
  br i1 %13, label %14, label %19, !dbg !2109

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2087, metadata !DIExpression()), !dbg !2090
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.76, i64 noundef 3) #40, !dbg !2110
  %16 = icmp eq i32 %15, 0, !dbg !2113
  %17 = select i1 %16, i64 3, i64 0, !dbg !2114
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2114
  br label %19, !dbg !2114

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2090
  call void @llvm.dbg.value(metadata ptr %21, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr %20, metadata !2087, metadata !DIExpression()), !dbg !2090
  store ptr %20, ptr @program_name, align 8, !dbg !2115, !tbaa !868
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2116, !tbaa !868
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2117, !tbaa !868
  ret void, !dbg !2118
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !499 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !506, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata ptr %1, metadata !507, metadata !DIExpression()), !dbg !2119
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %5, metadata !508, metadata !DIExpression()), !dbg !2119
  %6 = icmp eq ptr %5, %0, !dbg !2121
  br i1 %6, label %7, label %14, !dbg !2123

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2125
  call void @llvm.dbg.declare(metadata ptr %4, metadata !514, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr %4, metadata !2127, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata ptr %4, metadata !2136, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 0, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 8, metadata !2142, metadata !DIExpression()), !dbg !2143
  store i64 0, ptr %4, align 8, !dbg !2145
  call void @llvm.dbg.value(metadata ptr %3, metadata !509, metadata !DIExpression(DW_OP_deref)), !dbg !2119
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2146
  %9 = icmp eq i64 %8, 2, !dbg !2148
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !509, metadata !DIExpression()), !dbg !2119
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2149
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2150
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2119
  ret ptr %15, !dbg !2150
}

; Function Attrs: nounwind
declare !dbg !2151 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2157 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2162, metadata !DIExpression()), !dbg !2165
  %2 = tail call ptr @__errno_location() #42, !dbg !2166
  %3 = load i32, ptr %2, align 4, !dbg !2166, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %3, metadata !2163, metadata !DIExpression()), !dbg !2165
  %4 = icmp eq ptr %0, null, !dbg !2167
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2167
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2168
  call void @llvm.dbg.value(metadata ptr %6, metadata !2164, metadata !DIExpression()), !dbg !2165
  store i32 %3, ptr %2, align 4, !dbg !2169, !tbaa !937
  ret ptr %6, !dbg !2170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !2171 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2177, metadata !DIExpression()), !dbg !2178
  %2 = icmp eq ptr %0, null, !dbg !2179
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2179
  %4 = load i32, ptr %3, align 8, !dbg !2180, !tbaa !2181
  ret i32 %4, !dbg !2183
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2184 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 %1, metadata !2189, metadata !DIExpression()), !dbg !2190
  %3 = icmp eq ptr %0, null, !dbg !2191
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2191
  store i32 %1, ptr %4, align 8, !dbg !2192, !tbaa !2181
  ret void, !dbg !2193
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2194 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2198, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 %1, metadata !2199, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32 %2, metadata !2200, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 %1, metadata !2201, metadata !DIExpression()), !dbg !2206
  %4 = icmp eq ptr %0, null, !dbg !2207
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2207
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2208
  %7 = lshr i8 %1, 5, !dbg !2209
  %8 = zext i8 %7 to i64, !dbg !2209
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %9, metadata !2202, metadata !DIExpression()), !dbg !2206
  %10 = and i8 %1, 31, !dbg !2211
  %11 = zext i8 %10 to i32, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %11, metadata !2204, metadata !DIExpression()), !dbg !2206
  %12 = load i32, ptr %9, align 4, !dbg !2212, !tbaa !937
  %13 = lshr i32 %12, %11, !dbg !2213
  %14 = and i32 %13, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %14, metadata !2205, metadata !DIExpression()), !dbg !2206
  %15 = xor i32 %13, %2, !dbg !2215
  %16 = and i32 %15, 1, !dbg !2215
  %17 = shl nuw i32 %16, %11, !dbg !2216
  %18 = xor i32 %17, %12, !dbg !2217
  store i32 %18, ptr %9, align 4, !dbg !2217, !tbaa !937
  ret i32 %14, !dbg !2218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2219 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %1, metadata !2224, metadata !DIExpression()), !dbg !2226
  %3 = icmp eq ptr %0, null, !dbg !2227
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2229
  call void @llvm.dbg.value(metadata ptr %4, metadata !2223, metadata !DIExpression()), !dbg !2226
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2230
  %6 = load i32, ptr %5, align 4, !dbg !2230, !tbaa !2231
  call void @llvm.dbg.value(metadata i32 %6, metadata !2225, metadata !DIExpression()), !dbg !2226
  store i32 %1, ptr %5, align 4, !dbg !2232, !tbaa !2231
  ret i32 %6, !dbg !2233
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2234 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata ptr %1, metadata !2239, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata ptr %2, metadata !2240, metadata !DIExpression()), !dbg !2241
  %4 = icmp eq ptr %0, null, !dbg !2242
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2244
  call void @llvm.dbg.value(metadata ptr %5, metadata !2238, metadata !DIExpression()), !dbg !2241
  store i32 10, ptr %5, align 8, !dbg !2245, !tbaa !2181
  %6 = icmp ne ptr %1, null, !dbg !2246
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2248
  br i1 %8, label %10, label %9, !dbg !2248

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2249
  unreachable, !dbg !2249

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2250
  store ptr %1, ptr %11, align 8, !dbg !2251, !tbaa !2252
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2253
  store ptr %2, ptr %12, align 8, !dbg !2254, !tbaa !2255
  ret void, !dbg !2256
}

; Function Attrs: noreturn nounwind
declare !dbg !2257 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2258 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2262, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %1, metadata !2263, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata ptr %2, metadata !2264, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %3, metadata !2265, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata ptr %4, metadata !2266, metadata !DIExpression()), !dbg !2270
  %6 = icmp eq ptr %4, null, !dbg !2271
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %7, metadata !2267, metadata !DIExpression()), !dbg !2270
  %8 = tail call ptr @__errno_location() #42, !dbg !2272
  %9 = load i32, ptr %8, align 4, !dbg !2272, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %9, metadata !2268, metadata !DIExpression()), !dbg !2270
  %10 = load i32, ptr %7, align 8, !dbg !2273, !tbaa !2181
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2274
  %12 = load i32, ptr %11, align 4, !dbg !2274, !tbaa !2231
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2275
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2276
  %15 = load ptr, ptr %14, align 8, !dbg !2276, !tbaa !2252
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2277
  %17 = load ptr, ptr %16, align 8, !dbg !2277, !tbaa !2255
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %18, metadata !2269, metadata !DIExpression()), !dbg !2270
  store i32 %9, ptr %8, align 4, !dbg !2279, !tbaa !937
  ret i64 %18, !dbg !2280
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2281 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2287, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %1, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %2, metadata !2289, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %3, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %4, metadata !2291, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %5, metadata !2292, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %6, metadata !2293, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %7, metadata !2294, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %8, metadata !2295, metadata !DIExpression()), !dbg !2349
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2350
  %17 = icmp eq i64 %16, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i1 %17, metadata !2296, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2349
  call void @llvm.dbg.value(metadata i64 0, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 0, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr null, metadata !2299, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2301, metadata !DIExpression()), !dbg !2349
  %18 = trunc i32 %5 to i8, !dbg !2352
  %19 = lshr i8 %18, 1, !dbg !2352
  %20 = and i8 %19, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i8 %20, metadata !2302, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 1, metadata !2304, metadata !DIExpression()), !dbg !2349
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2353

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2354
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2355
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2356
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2357
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2349
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2358
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2359
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %39, metadata !2304, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %38, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %37, metadata !2302, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %36, metadata !2301, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %35, metadata !2300, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %34, metadata !2299, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %33, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 0, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %32, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %31, metadata !2295, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %30, metadata !2294, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %29, metadata !2291, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.label(metadata !2342), !dbg !2360
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2349
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
  ], !dbg !2361

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2302, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 5, metadata !2291, metadata !DIExpression()), !dbg !2349
  br label %115, !dbg !2362

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2302, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 5, metadata !2291, metadata !DIExpression()), !dbg !2349
  %43 = and i8 %37, 1, !dbg !2363
  %44 = icmp eq i8 %43, 0, !dbg !2363
  br i1 %44, label %45, label %115, !dbg !2362

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2365
  br i1 %46, label %115, label %47, !dbg !2368

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2365, !tbaa !946
  br label %115, !dbg !2365

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.89, metadata !609, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %29, metadata !610, metadata !DIExpression()), !dbg !2369
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.11.89, i32 noundef 5) #39, !dbg !2373
  call void @llvm.dbg.value(metadata ptr %49, metadata !611, metadata !DIExpression()), !dbg !2369
  %50 = icmp eq ptr %49, @.str.11.89, !dbg !2374
  br i1 %50, label %51, label %60, !dbg !2376

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2377
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2378
  call void @llvm.dbg.declare(metadata ptr %13, metadata !613, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr %13, metadata !2380, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata ptr %13, metadata !2388, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 8, metadata !2392, metadata !DIExpression()), !dbg !2393
  store i64 0, ptr %13, align 8, !dbg !2395
  call void @llvm.dbg.value(metadata ptr %12, metadata !612, metadata !DIExpression(DW_OP_deref)), !dbg !2369
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2396
  %53 = icmp eq i64 %52, 3, !dbg !2398
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !612, metadata !DIExpression()), !dbg !2369
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2399
  %57 = icmp eq i32 %29, 9, !dbg !2399
  %58 = select i1 %57, ptr @.str.10.91, ptr @.str.12.92, !dbg !2399
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2400
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2400
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2369
  call void @llvm.dbg.value(metadata ptr %61, metadata !2294, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr @.str.12.92, metadata !609, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i32 %29, metadata !610, metadata !DIExpression()), !dbg !2401
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.12.92, i32 noundef 5) #39, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %62, metadata !611, metadata !DIExpression()), !dbg !2401
  %63 = icmp eq ptr %62, @.str.12.92, !dbg !2404
  br i1 %63, label %64, label %73, !dbg !2405

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2406
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %11, metadata !613, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata ptr %11, metadata !2380, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata ptr %11, metadata !2388, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i64 8, metadata !2392, metadata !DIExpression()), !dbg !2411
  store i64 0, ptr %11, align 8, !dbg !2413
  call void @llvm.dbg.value(metadata ptr %10, metadata !612, metadata !DIExpression(DW_OP_deref)), !dbg !2401
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2414
  %66 = icmp eq i64 %65, 3, !dbg !2415
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !612, metadata !DIExpression()), !dbg !2401
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2416
  %70 = icmp eq i32 %29, 9, !dbg !2416
  %71 = select i1 %70, ptr @.str.10.91, ptr @.str.12.92, !dbg !2416
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2417
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2295, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %74, metadata !2294, metadata !DIExpression()), !dbg !2349
  %76 = and i8 %37, 1, !dbg !2418
  %77 = icmp eq i8 %76, 0, !dbg !2418
  br i1 %77, label %78, label %93, !dbg !2419

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2306, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i64 0, metadata !2297, metadata !DIExpression()), !dbg !2349
  %79 = load i8, ptr %74, align 1, !dbg !2421, !tbaa !946
  %80 = icmp eq i8 %79, 0, !dbg !2423
  br i1 %80, label %93, label %81, !dbg !2423

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2306, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i64 %84, metadata !2297, metadata !DIExpression()), !dbg !2349
  %85 = icmp ult i64 %84, %40, !dbg !2424
  br i1 %85, label %86, label %88, !dbg !2427

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2424
  store i8 %82, ptr %87, align 1, !dbg !2424, !tbaa !946
  br label %88, !dbg !2424

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %89, metadata !2297, metadata !DIExpression()), !dbg !2349
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2428
  call void @llvm.dbg.value(metadata ptr %90, metadata !2306, metadata !DIExpression()), !dbg !2420
  %91 = load i8, ptr %90, align 1, !dbg !2421, !tbaa !946
  %92 = icmp eq i8 %91, 0, !dbg !2423
  br i1 %92, label %93, label %81, !dbg !2423, !llvm.loop !2429

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2431
  call void @llvm.dbg.value(metadata i64 %94, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 1, metadata !2301, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %75, metadata !2299, metadata !DIExpression()), !dbg !2349
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %95, metadata !2300, metadata !DIExpression()), !dbg !2349
  br label %115, !dbg !2433

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2301, metadata !DIExpression()), !dbg !2349
  br label %97, !dbg !2434

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %98, metadata !2301, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 1, metadata !2302, metadata !DIExpression()), !dbg !2349
  br label %99, !dbg !2435

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2357
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %101, metadata !2302, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %100, metadata !2301, metadata !DIExpression()), !dbg !2349
  %102 = and i8 %101, 1, !dbg !2436
  %103 = icmp eq i8 %102, 0, !dbg !2436
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2438
  br label %105, !dbg !2438

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2349
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2352
  call void @llvm.dbg.value(metadata i8 %107, metadata !2302, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %106, metadata !2301, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 2, metadata !2291, metadata !DIExpression()), !dbg !2349
  %108 = and i8 %107, 1, !dbg !2439
  %109 = icmp eq i8 %108, 0, !dbg !2439
  br i1 %109, label %110, label %115, !dbg !2441

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2442
  br i1 %111, label %115, label %112, !dbg !2445

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2442, !tbaa !946
  br label %115, !dbg !2442

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2302, metadata !DIExpression()), !dbg !2349
  br label %115, !dbg !2446

114:                                              ; preds = %28
  call void @abort() #41, !dbg !2447
  unreachable, !dbg !2447

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2431
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.91, %45 ], [ @.str.10.91, %47 ], [ @.str.10.91, %42 ], [ %34, %28 ], [ @.str.12.92, %110 ], [ @.str.12.92, %112 ], [ @.str.12.92, %105 ], [ @.str.10.91, %41 ], !dbg !2349
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2349
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2349
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %123, metadata !2302, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %122, metadata !2301, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %121, metadata !2300, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %120, metadata !2299, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %119, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %118, metadata !2295, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %117, metadata !2294, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %116, metadata !2291, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 0, metadata !2311, metadata !DIExpression()), !dbg !2448
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
  br label %138, !dbg !2449

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2431
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2354
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2358
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2359
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2450
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2451
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %145, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %144, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %143, metadata !2304, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %142, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %141, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %140, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %139, metadata !2290, metadata !DIExpression()), !dbg !2349
  %147 = icmp eq i64 %139, -1, !dbg !2452
  br i1 %147, label %148, label %152, !dbg !2453

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2454
  %150 = load i8, ptr %149, align 1, !dbg !2454, !tbaa !946
  %151 = icmp eq i8 %150, 0, !dbg !2455
  br i1 %151, label %627, label %154, !dbg !2456

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2457
  br i1 %153, label %627, label %154, !dbg !2456

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2316, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2317, metadata !DIExpression()), !dbg !2458
  br i1 %129, label %155, label %170, !dbg !2459

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2461
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2462
  br i1 %157, label %158, label %160, !dbg !2462

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %159, metadata !2290, metadata !DIExpression()), !dbg !2349
  br label %160, !dbg !2464

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2464
  call void @llvm.dbg.value(metadata i64 %161, metadata !2290, metadata !DIExpression()), !dbg !2349
  %162 = icmp ugt i64 %156, %161, !dbg !2465
  br i1 %162, label %170, label %163, !dbg !2466

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2467
  call void @llvm.dbg.value(metadata ptr %164, metadata !2468, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata ptr %120, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %121, metadata !2472, metadata !DIExpression()), !dbg !2473
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2475
  %166 = icmp ne i32 %165, 0, !dbg !2476
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2477
  %168 = xor i1 %166, true, !dbg !2477
  %169 = zext i1 %168 to i8, !dbg !2477
  br i1 %167, label %170, label %688, !dbg !2477

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2458
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2458
  call void @llvm.dbg.value(metadata i8 %173, metadata !2313, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %171, metadata !2290, metadata !DIExpression()), !dbg !2349
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2478
  %175 = load i8, ptr %174, align 1, !dbg !2478, !tbaa !946
  call void @llvm.dbg.value(metadata i8 %175, metadata !2318, metadata !DIExpression()), !dbg !2458
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
  ], !dbg !2479

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2480

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2481

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2458
  %179 = and i8 %144, 1, !dbg !2485
  %180 = icmp eq i8 %179, 0, !dbg !2485
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2485
  br i1 %181, label %182, label %198, !dbg !2485

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2487
  br i1 %183, label %184, label %186, !dbg !2491

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2487
  store i8 39, ptr %185, align 1, !dbg !2487, !tbaa !946
  br label %186, !dbg !2487

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %187, metadata !2297, metadata !DIExpression()), !dbg !2349
  %188 = icmp ult i64 %187, %146, !dbg !2492
  br i1 %188, label %189, label %191, !dbg !2495

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2492
  store i8 36, ptr %190, align 1, !dbg !2492, !tbaa !946
  br label %191, !dbg !2492

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %192, metadata !2297, metadata !DIExpression()), !dbg !2349
  %193 = icmp ult i64 %192, %146, !dbg !2496
  br i1 %193, label %194, label %196, !dbg !2499

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2496
  store i8 39, ptr %195, align 1, !dbg !2496, !tbaa !946
  br label %196, !dbg !2496

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %197, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2349
  br label %198, !dbg !2500

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2349
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %200, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %199, metadata !2297, metadata !DIExpression()), !dbg !2349
  %201 = icmp ult i64 %199, %146, !dbg !2501
  br i1 %201, label %202, label %204, !dbg !2504

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2501
  store i8 92, ptr %203, align 1, !dbg !2501, !tbaa !946
  br label %204, !dbg !2501

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %205, metadata !2297, metadata !DIExpression()), !dbg !2349
  br i1 %126, label %206, label %491, !dbg !2505

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2507
  %208 = icmp ult i64 %207, %171, !dbg !2508
  br i1 %208, label %209, label %480, !dbg !2509

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2510
  %211 = load i8, ptr %210, align 1, !dbg !2510, !tbaa !946
  %212 = add i8 %211, -48, !dbg !2511
  %213 = icmp ult i8 %212, 10, !dbg !2511
  br i1 %213, label %214, label %480, !dbg !2511

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2512
  br i1 %215, label %216, label %218, !dbg !2516

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2512
  store i8 48, ptr %217, align 1, !dbg !2512, !tbaa !946
  br label %218, !dbg !2512

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %219, metadata !2297, metadata !DIExpression()), !dbg !2349
  %220 = icmp ult i64 %219, %146, !dbg !2517
  br i1 %220, label %221, label %223, !dbg !2520

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2517
  store i8 48, ptr %222, align 1, !dbg !2517, !tbaa !946
  br label %223, !dbg !2517

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %224, metadata !2297, metadata !DIExpression()), !dbg !2349
  br label %480, !dbg !2521

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2522

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2523

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2524

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2526

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2528
  %231 = icmp ult i64 %230, %171, !dbg !2529
  br i1 %231, label %232, label %480, !dbg !2530

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2531
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2532
  %235 = load i8, ptr %234, align 1, !dbg !2532, !tbaa !946
  %236 = icmp eq i8 %235, 63, !dbg !2533
  br i1 %236, label %237, label %480, !dbg !2534

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2535
  %239 = load i8, ptr %238, align 1, !dbg !2535, !tbaa !946
  %240 = sext i8 %239 to i32, !dbg !2535
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
  ], !dbg !2536

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2537

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %230, metadata !2311, metadata !DIExpression()), !dbg !2448
  %243 = icmp ult i64 %140, %146, !dbg !2539
  br i1 %243, label %244, label %246, !dbg !2542

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2539
  store i8 63, ptr %245, align 1, !dbg !2539, !tbaa !946
  br label %246, !dbg !2539

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %247, metadata !2297, metadata !DIExpression()), !dbg !2349
  %248 = icmp ult i64 %247, %146, !dbg !2543
  br i1 %248, label %249, label %251, !dbg !2546

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2543
  store i8 34, ptr %250, align 1, !dbg !2543, !tbaa !946
  br label %251, !dbg !2543

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %252, metadata !2297, metadata !DIExpression()), !dbg !2349
  %253 = icmp ult i64 %252, %146, !dbg !2547
  br i1 %253, label %254, label %256, !dbg !2550

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2547
  store i8 34, ptr %255, align 1, !dbg !2547, !tbaa !946
  br label %256, !dbg !2547

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %257, metadata !2297, metadata !DIExpression()), !dbg !2349
  %258 = icmp ult i64 %257, %146, !dbg !2551
  br i1 %258, label %259, label %261, !dbg !2554

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2551
  store i8 63, ptr %260, align 1, !dbg !2551, !tbaa !946
  br label %261, !dbg !2551

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %262, metadata !2297, metadata !DIExpression()), !dbg !2349
  br label %480, !dbg !2555

263:                                              ; preds = %170
  br label %274, !dbg !2556

264:                                              ; preds = %170
  br label %274, !dbg !2557

265:                                              ; preds = %170
  br label %272, !dbg !2558

266:                                              ; preds = %170
  br label %272, !dbg !2559

267:                                              ; preds = %170
  br label %274, !dbg !2560

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2561

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2562

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2565

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2567

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2568
  call void @llvm.dbg.label(metadata !2343), !dbg !2569
  br i1 %134, label %274, label %670, !dbg !2570

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2568
  call void @llvm.dbg.label(metadata !2345), !dbg !2572
  br i1 %125, label %535, label %491, !dbg !2573

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2574

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2575, !tbaa !946
  %279 = icmp eq i8 %278, 0, !dbg !2577
  br i1 %279, label %280, label %480, !dbg !2578

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2579
  br i1 %281, label %282, label %480, !dbg !2581

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2317, metadata !DIExpression()), !dbg !2458
  br label %283, !dbg !2582

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2458
  call void @llvm.dbg.value(metadata i8 %284, metadata !2317, metadata !DIExpression()), !dbg !2458
  br i1 %134, label %480, label %670, !dbg !2583

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 1, metadata !2317, metadata !DIExpression()), !dbg !2458
  br i1 %133, label %286, label %480, !dbg !2585

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2586

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2589
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2591
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2591
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %292, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %291, metadata !2298, metadata !DIExpression()), !dbg !2349
  %293 = icmp ult i64 %140, %292, !dbg !2592
  br i1 %293, label %294, label %296, !dbg !2595

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2592
  store i8 39, ptr %295, align 1, !dbg !2592, !tbaa !946
  br label %296, !dbg !2592

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %297, metadata !2297, metadata !DIExpression()), !dbg !2349
  %298 = icmp ult i64 %297, %292, !dbg !2596
  br i1 %298, label %299, label %301, !dbg !2599

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2596
  store i8 92, ptr %300, align 1, !dbg !2596, !tbaa !946
  br label %301, !dbg !2596

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %302, metadata !2297, metadata !DIExpression()), !dbg !2349
  %303 = icmp ult i64 %302, %292, !dbg !2600
  br i1 %303, label %304, label %306, !dbg !2603

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2600
  store i8 39, ptr %305, align 1, !dbg !2600, !tbaa !946
  br label %306, !dbg !2600

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %307, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2349
  br label %480, !dbg !2604

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2605

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2319, metadata !DIExpression()), !dbg !2606
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !2607
  %311 = load ptr, ptr %310, align 8, !dbg !2607, !tbaa !868
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2607
  %314 = load i16, ptr %313, align 2, !dbg !2607, !tbaa !978
  %315 = lshr i16 %314, 14, !dbg !2609
  %316 = trunc i16 %315 to i8, !dbg !2609
  %317 = and i8 %316, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i8 %317, metadata !2322, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %171, metadata !2290, metadata !DIExpression()), !dbg !2349
  %318 = icmp eq i8 %317, 0, !dbg !2610
  call void @llvm.dbg.value(metadata i1 %318, metadata !2317, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2458
  br label %368, !dbg !2611

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2323, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %14, metadata !2380, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %14, metadata !2388, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 8, metadata !2392, metadata !DIExpression()), !dbg !2616
  store i64 0, ptr %14, align 8, !dbg !2618
  call void @llvm.dbg.value(metadata i64 0, metadata !2319, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 1, metadata !2322, metadata !DIExpression()), !dbg !2606
  %320 = icmp eq i64 %171, -1, !dbg !2619
  br i1 %320, label %321, label %323, !dbg !2621

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %322, metadata !2290, metadata !DIExpression()), !dbg !2349
  br label %323, !dbg !2623

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2458
  call void @llvm.dbg.value(metadata i64 %324, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2624
  %325 = sub i64 %324, %145, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %15, metadata !2326, metadata !DIExpression(DW_OP_deref)), !dbg !2626
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %326, metadata !2330, metadata !DIExpression()), !dbg !2626
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2628

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2319, metadata !DIExpression()), !dbg !2606
  %328 = icmp ugt i64 %324, %145, !dbg !2629
  br i1 %328, label %331, label %329, !dbg !2631

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 0, metadata !2319, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %324, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i1 true, metadata !2317, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2458
  br label %368, !dbg !2611

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2606
  br label %360, !dbg !2634

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2319, metadata !DIExpression()), !dbg !2606
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2636
  %335 = load i8, ptr %334, align 1, !dbg !2636, !tbaa !946
  %336 = icmp eq i8 %335, 0, !dbg !2631
  br i1 %336, label %363, label %337, !dbg !2637

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %338, metadata !2319, metadata !DIExpression()), !dbg !2606
  %339 = add i64 %338, %145, !dbg !2639
  %340 = icmp eq i64 %338, %325, !dbg !2629
  br i1 %340, label %363, label %331, !dbg !2631, !llvm.loop !2640

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2641
  %344 = and i1 %343, %133, !dbg !2641
  call void @llvm.dbg.value(metadata i64 1, metadata !2331, metadata !DIExpression()), !dbg !2642
  br i1 %344, label %345, label %354, !dbg !2641

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2331, metadata !DIExpression()), !dbg !2642
  %347 = add i64 %346, %145, !dbg !2643
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2645
  %349 = load i8, ptr %348, align 1, !dbg !2645, !tbaa !946
  %350 = sext i8 %349 to i32, !dbg !2645
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2646

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %352, metadata !2331, metadata !DIExpression()), !dbg !2642
  %353 = icmp eq i64 %352, %326, !dbg !2648
  br i1 %353, label %354, label %345, !dbg !2649, !llvm.loop !2650

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2652, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %355, metadata !2326, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 %355, metadata !2654, metadata !DIExpression()), !dbg !2662
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !2664
  %357 = icmp ne i32 %356, 0, !dbg !2665
  %358 = zext i1 %357 to i8, !dbg !2666
  call void @llvm.dbg.value(metadata i8 %358, metadata !2322, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %326, metadata !2319, metadata !DIExpression()), !dbg !2606
  br label %363, !dbg !2667

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2322, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 0, metadata !2319, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2633
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2322, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 0, metadata !2319, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %324, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i1 %361, metadata !2317, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2458
  br label %368, !dbg !2611

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2322, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %364, metadata !2319, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %324, metadata !2290, metadata !DIExpression()), !dbg !2349
  %366 = icmp eq i8 %365, 0, !dbg !2610
  call void @llvm.dbg.value(metadata i1 %366, metadata !2317, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2458
  %367 = icmp ugt i64 %364, 1, !dbg !2668
  br i1 %367, label %374, label %368, !dbg !2611

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2669
  br i1 %373, label %374, label %480, !dbg !2669

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %379, metadata !2339, metadata !DIExpression()), !dbg !2671
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2672

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2349
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2450
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2448
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2458
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2673
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2458
  call void @llvm.dbg.value(metadata i8 %387, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %386, metadata !2316, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %385, metadata !2313, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %384, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %383, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %382, metadata !2297, metadata !DIExpression()), !dbg !2349
  br i1 %380, label %388, label %434, !dbg !2674

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2679

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2458
  %390 = and i8 %383, 1, !dbg !2682
  %391 = icmp eq i8 %390, 0, !dbg !2682
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2682
  br i1 %392, label %393, label %409, !dbg !2682

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2684
  br i1 %394, label %395, label %397, !dbg !2688

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2684
  store i8 39, ptr %396, align 1, !dbg !2684, !tbaa !946
  br label %397, !dbg !2684

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %398, metadata !2297, metadata !DIExpression()), !dbg !2349
  %399 = icmp ult i64 %398, %146, !dbg !2689
  br i1 %399, label %400, label %402, !dbg !2692

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2689
  store i8 36, ptr %401, align 1, !dbg !2689, !tbaa !946
  br label %402, !dbg !2689

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %403, metadata !2297, metadata !DIExpression()), !dbg !2349
  %404 = icmp ult i64 %403, %146, !dbg !2693
  br i1 %404, label %405, label %407, !dbg !2696

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2693
  store i8 39, ptr %406, align 1, !dbg !2693, !tbaa !946
  br label %407, !dbg !2693

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %408, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2349
  br label %409, !dbg !2697

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2349
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %411, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %410, metadata !2297, metadata !DIExpression()), !dbg !2349
  %412 = icmp ult i64 %410, %146, !dbg !2698
  br i1 %412, label %413, label %415, !dbg !2701

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2698
  store i8 92, ptr %414, align 1, !dbg !2698, !tbaa !946
  br label %415, !dbg !2698

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %416, metadata !2297, metadata !DIExpression()), !dbg !2349
  %417 = icmp ult i64 %416, %146, !dbg !2702
  br i1 %417, label %418, label %422, !dbg !2705

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2702
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2702
  store i8 %420, ptr %421, align 1, !dbg !2702, !tbaa !946
  br label %422, !dbg !2702

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %423, metadata !2297, metadata !DIExpression()), !dbg !2349
  %424 = icmp ult i64 %423, %146, !dbg !2706
  br i1 %424, label %425, label %430, !dbg !2709

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2706
  %428 = or i8 %427, 48, !dbg !2706
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2706
  store i8 %428, ptr %429, align 1, !dbg !2706, !tbaa !946
  br label %430, !dbg !2706

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %431, metadata !2297, metadata !DIExpression()), !dbg !2349
  %432 = and i8 %387, 7, !dbg !2710
  %433 = or i8 %432, 48, !dbg !2711
  call void @llvm.dbg.value(metadata i8 %433, metadata !2318, metadata !DIExpression()), !dbg !2458
  br label %443, !dbg !2712

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2713
  %436 = icmp eq i8 %435, 0, !dbg !2713
  br i1 %436, label %443, label %437, !dbg !2715

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2716
  br i1 %438, label %439, label %441, !dbg !2720

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2716
  store i8 92, ptr %440, align 1, !dbg !2716, !tbaa !946
  br label %441, !dbg !2716

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %442, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2458
  br label %443, !dbg !2721

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2349
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2450
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2458
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2458
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2458
  call void @llvm.dbg.value(metadata i8 %448, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %447, metadata !2316, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %446, metadata !2313, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %445, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %444, metadata !2297, metadata !DIExpression()), !dbg !2349
  %449 = add i64 %384, 1, !dbg !2722
  %450 = icmp ugt i64 %379, %449, !dbg !2724
  br i1 %450, label %451, label %478, !dbg !2725

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2726
  %453 = icmp ne i8 %452, 0, !dbg !2726
  %454 = and i8 %447, 1, !dbg !2726
  %455 = icmp eq i8 %454, 0, !dbg !2726
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2726
  br i1 %456, label %457, label %468, !dbg !2726

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2729
  br i1 %458, label %459, label %461, !dbg !2733

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2729
  store i8 39, ptr %460, align 1, !dbg !2729, !tbaa !946
  br label %461, !dbg !2729

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %462, metadata !2297, metadata !DIExpression()), !dbg !2349
  %463 = icmp ult i64 %462, %146, !dbg !2734
  br i1 %463, label %464, label %466, !dbg !2737

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2734
  store i8 39, ptr %465, align 1, !dbg !2734, !tbaa !946
  br label %466, !dbg !2734

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %467, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2349
  br label %468, !dbg !2738

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2739
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %470, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %469, metadata !2297, metadata !DIExpression()), !dbg !2349
  %471 = icmp ult i64 %469, %146, !dbg !2740
  br i1 %471, label %472, label %474, !dbg !2743

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2740
  store i8 %448, ptr %473, align 1, !dbg !2740, !tbaa !946
  br label %474, !dbg !2740

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %475, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %449, metadata !2311, metadata !DIExpression()), !dbg !2448
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2744
  %477 = load i8, ptr %476, align 1, !dbg !2744, !tbaa !946
  call void @llvm.dbg.value(metadata i8 %477, metadata !2318, metadata !DIExpression()), !dbg !2458
  br label %381, !dbg !2745, !llvm.loop !2746

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2458
  call void @llvm.dbg.value(metadata i8 %448, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %479, metadata !2317, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %447, metadata !2316, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %446, metadata !2313, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %384, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %445, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %444, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %378, metadata !2290, metadata !DIExpression()), !dbg !2349
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2749
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2349
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2354
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2349
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2349
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2448
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2458
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2458
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2458
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %489, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %488, metadata !2317, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %487, metadata !2316, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %173, metadata !2313, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %486, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %485, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %484, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %483, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %482, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %481, metadata !2290, metadata !DIExpression()), !dbg !2349
  br i1 %127, label %502, label %491, !dbg !2750

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
  br i1 %137, label %503, label %524, !dbg !2752

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2753

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
  %514 = lshr i8 %505, 5, !dbg !2754
  %515 = zext i8 %514 to i64, !dbg !2754
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2755
  %517 = load i32, ptr %516, align 4, !dbg !2755, !tbaa !937
  %518 = and i8 %505, 31, !dbg !2756
  %519 = zext i8 %518 to i32, !dbg !2756
  %520 = shl nuw i32 1, %519, !dbg !2757
  %521 = and i32 %517, %520, !dbg !2757
  %522 = icmp eq i32 %521, 0, !dbg !2757
  %523 = and i1 %172, %522, !dbg !2758
  br i1 %523, label %573, label %535, !dbg !2758

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
  br i1 %172, label %573, label %535, !dbg !2759

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2749
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2349
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2354
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2358
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2450
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2760
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2458
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2458
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %543, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %542, metadata !2317, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %541, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %540, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %539, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %538, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %537, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %536, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.label(metadata !2346), !dbg !2761
  br i1 %132, label %545, label %674, !dbg !2762

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2458
  %546 = and i8 %540, 1, !dbg !2764
  %547 = icmp eq i8 %546, 0, !dbg !2764
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2764
  br i1 %548, label %549, label %565, !dbg !2764

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2766
  br i1 %550, label %551, label %553, !dbg !2770

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2766
  store i8 39, ptr %552, align 1, !dbg !2766, !tbaa !946
  br label %553, !dbg !2766

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %554, metadata !2297, metadata !DIExpression()), !dbg !2349
  %555 = icmp ult i64 %554, %544, !dbg !2771
  br i1 %555, label %556, label %558, !dbg !2774

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2771
  store i8 36, ptr %557, align 1, !dbg !2771, !tbaa !946
  br label %558, !dbg !2771

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %559, metadata !2297, metadata !DIExpression()), !dbg !2349
  %560 = icmp ult i64 %559, %544, !dbg !2775
  br i1 %560, label %561, label %563, !dbg !2778

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2775
  store i8 39, ptr %562, align 1, !dbg !2775, !tbaa !946
  br label %563, !dbg !2775

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %564, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2349
  br label %565, !dbg !2779

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2458
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %567, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %566, metadata !2297, metadata !DIExpression()), !dbg !2349
  %568 = icmp ult i64 %566, %544, !dbg !2780
  br i1 %568, label %569, label %571, !dbg !2783

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2780
  store i8 92, ptr %570, align 1, !dbg !2780, !tbaa !946
  br label %571, !dbg !2780

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %544, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %543, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %542, metadata !2317, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %541, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %567, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %539, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %538, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %572, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %536, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.label(metadata !2347), !dbg !2784
  br label %600, !dbg !2785

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2749
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2349
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2354
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2358
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2450
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2760
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2458
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2458
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2788
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %582, metadata !2318, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %581, metadata !2317, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %580, metadata !2316, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %579, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %578, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %577, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %576, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %575, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %574, metadata !2290, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.label(metadata !2347), !dbg !2784
  %584 = and i8 %578, 1, !dbg !2785
  %585 = icmp ne i8 %584, 0, !dbg !2785
  %586 = and i8 %580, 1, !dbg !2785
  %587 = icmp eq i8 %586, 0, !dbg !2785
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2785
  br i1 %588, label %589, label %600, !dbg !2785

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2789
  br i1 %590, label %591, label %593, !dbg !2793

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2789
  store i8 39, ptr %592, align 1, !dbg !2789, !tbaa !946
  br label %593, !dbg !2789

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %594, metadata !2297, metadata !DIExpression()), !dbg !2349
  %595 = icmp ult i64 %594, %583, !dbg !2794
  br i1 %595, label %596, label %598, !dbg !2797

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2794
  store i8 39, ptr %597, align 1, !dbg !2794, !tbaa !946
  br label %598, !dbg !2794

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %599, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2349
  br label %600, !dbg !2798

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2458
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %609, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %608, metadata !2297, metadata !DIExpression()), !dbg !2349
  %610 = icmp ult i64 %608, %601, !dbg !2799
  br i1 %610, label %611, label %613, !dbg !2802

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2799
  store i8 %602, ptr %612, align 1, !dbg !2799, !tbaa !946
  br label %613, !dbg !2799

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %614, metadata !2297, metadata !DIExpression()), !dbg !2349
  %615 = icmp eq i8 %603, 0, !dbg !2803
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2805
  call void @llvm.dbg.value(metadata i8 %616, metadata !2304, metadata !DIExpression()), !dbg !2349
  br label %617, !dbg !2806

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2749
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2349
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2354
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2358
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2359
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2450
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2760
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %624, metadata !2311, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %623, metadata !2305, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %622, metadata !2304, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %621, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %620, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %619, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %618, metadata !2290, metadata !DIExpression()), !dbg !2349
  %626 = add i64 %624, 1, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %626, metadata !2311, metadata !DIExpression()), !dbg !2448
  br label %138, !dbg !2808, !llvm.loop !2809

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2288, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %143, metadata !2304, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %142, metadata !2303, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %141, metadata !2298, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %140, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %139, metadata !2290, metadata !DIExpression()), !dbg !2349
  %628 = icmp eq i64 %140, 0, !dbg !2811
  %629 = and i1 %133, %628, !dbg !2813
  %630 = xor i1 %629, true, !dbg !2813
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2813
  br i1 %631, label %632, label %670, !dbg !2813

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2814
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2814
  br i1 %636, label %637, label %646, !dbg !2814

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2816
  %639 = icmp eq i8 %638, 0, !dbg !2816
  br i1 %639, label %642, label %640, !dbg !2819

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2820
  br label %694, !dbg !2821

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2822
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2824
  br i1 %645, label %28, label %646, !dbg !2824

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2825
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2827
  br i1 %649, label %650, label %665, !dbg !2827

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2299, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %140, metadata !2297, metadata !DIExpression()), !dbg !2349
  %651 = load i8, ptr %120, align 1, !dbg !2828, !tbaa !946
  %652 = icmp eq i8 %651, 0, !dbg !2831
  br i1 %652, label %665, label %653, !dbg !2831

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2299, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %656, metadata !2297, metadata !DIExpression()), !dbg !2349
  %657 = icmp ult i64 %656, %146, !dbg !2832
  br i1 %657, label %658, label %660, !dbg !2835

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2832
  store i8 %654, ptr %659, align 1, !dbg !2832, !tbaa !946
  br label %660, !dbg !2832

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %661, metadata !2297, metadata !DIExpression()), !dbg !2349
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2836
  call void @llvm.dbg.value(metadata ptr %662, metadata !2299, metadata !DIExpression()), !dbg !2349
  %663 = load i8, ptr %662, align 1, !dbg !2828, !tbaa !946
  %664 = icmp eq i8 %663, 0, !dbg !2831
  br i1 %664, label %665, label %653, !dbg !2831, !llvm.loop !2837

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2431
  call void @llvm.dbg.value(metadata i64 %666, metadata !2297, metadata !DIExpression()), !dbg !2349
  %667 = icmp ult i64 %666, %146, !dbg !2839
  br i1 %667, label %668, label %694, !dbg !2841

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2842
  store i8 0, ptr %669, align 1, !dbg !2843, !tbaa !946
  br label %694, !dbg !2842

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2348), !dbg !2844
  %672 = icmp eq i8 %124, 0, !dbg !2845
  %673 = select i1 %672, i32 2, i32 4, !dbg !2845
  br label %684, !dbg !2845

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2845
  %678 = select i1 %677, i32 2, i32 4, !dbg !2845
  br label %679, !dbg !2847

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2348), !dbg !2844
  %683 = icmp eq i32 %116, 2, !dbg !2847
  br i1 %683, label %684, label %688, !dbg !2845

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2845

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2291, metadata !DIExpression()), !dbg !2349
  %692 = and i32 %5, -3, !dbg !2848
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2849
  br label %694, !dbg !2850

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2851
}

; Function Attrs: nounwind
declare !dbg !2852 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2855 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2857 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %2, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %0, metadata !2865, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %1, metadata !2870, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata ptr null, metadata !2871, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata ptr %2, metadata !2872, metadata !DIExpression()), !dbg !2878
  %4 = icmp eq ptr %2, null, !dbg !2880
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2880
  call void @llvm.dbg.value(metadata ptr %5, metadata !2873, metadata !DIExpression()), !dbg !2878
  %6 = tail call ptr @__errno_location() #42, !dbg !2881
  %7 = load i32, ptr %6, align 4, !dbg !2881, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %7, metadata !2874, metadata !DIExpression()), !dbg !2878
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2882
  %9 = load i32, ptr %8, align 4, !dbg !2882, !tbaa !2231
  %10 = or i32 %9, 1, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %10, metadata !2875, metadata !DIExpression()), !dbg !2878
  %11 = load i32, ptr %5, align 8, !dbg !2884, !tbaa !2181
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2885
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2886
  %14 = load ptr, ptr %13, align 8, !dbg !2886, !tbaa !2252
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2887
  %16 = load ptr, ptr %15, align 8, !dbg !2887, !tbaa !2255
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2888
  %18 = add i64 %17, 1, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %18, metadata !2876, metadata !DIExpression()), !dbg !2878
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2890
  call void @llvm.dbg.value(metadata ptr %19, metadata !2877, metadata !DIExpression()), !dbg !2878
  %20 = load i32, ptr %5, align 8, !dbg !2891, !tbaa !2181
  %21 = load ptr, ptr %13, align 8, !dbg !2892, !tbaa !2252
  %22 = load ptr, ptr %15, align 8, !dbg !2893, !tbaa !2255
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2894
  store i32 %7, ptr %6, align 4, !dbg !2895, !tbaa !937
  ret ptr %19, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2866 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2865, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %1, metadata !2870, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata ptr %2, metadata !2871, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata ptr %3, metadata !2872, metadata !DIExpression()), !dbg !2897
  %5 = icmp eq ptr %3, null, !dbg !2898
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2898
  call void @llvm.dbg.value(metadata ptr %6, metadata !2873, metadata !DIExpression()), !dbg !2897
  %7 = tail call ptr @__errno_location() #42, !dbg !2899
  %8 = load i32, ptr %7, align 4, !dbg !2899, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %8, metadata !2874, metadata !DIExpression()), !dbg !2897
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2900
  %10 = load i32, ptr %9, align 4, !dbg !2900, !tbaa !2231
  %11 = icmp eq ptr %2, null, !dbg !2901
  %12 = zext i1 %11 to i32, !dbg !2901
  %13 = or i32 %10, %12, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %13, metadata !2875, metadata !DIExpression()), !dbg !2897
  %14 = load i32, ptr %6, align 8, !dbg !2903, !tbaa !2181
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2904
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2905
  %17 = load ptr, ptr %16, align 8, !dbg !2905, !tbaa !2252
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2906
  %19 = load ptr, ptr %18, align 8, !dbg !2906, !tbaa !2255
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2907
  %21 = add i64 %20, 1, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %21, metadata !2876, metadata !DIExpression()), !dbg !2897
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2909
  call void @llvm.dbg.value(metadata ptr %22, metadata !2877, metadata !DIExpression()), !dbg !2897
  %23 = load i32, ptr %6, align 8, !dbg !2910, !tbaa !2181
  %24 = load ptr, ptr %16, align 8, !dbg !2911, !tbaa !2252
  %25 = load ptr, ptr %18, align 8, !dbg !2912, !tbaa !2255
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2913
  store i32 %8, ptr %7, align 4, !dbg !2914, !tbaa !937
  br i1 %11, label %28, label %27, !dbg !2915

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2916, !tbaa !2918
  br label %28, !dbg !2919

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2920
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2921 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2926, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 1, metadata !2924, metadata !DIExpression()), !dbg !2928
  %2 = load i32, ptr @nslots, align 4, !tbaa !937
  call void @llvm.dbg.value(metadata i32 1, metadata !2924, metadata !DIExpression()), !dbg !2928
  %3 = icmp sgt i32 %2, 1, !dbg !2929
  br i1 %3, label %4, label %6, !dbg !2931

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2929
  br label %10, !dbg !2931

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2932
  %8 = load ptr, ptr %7, align 8, !dbg !2932, !tbaa !2934
  %9 = icmp eq ptr %8, @slot0, !dbg !2936
  br i1 %9, label %17, label %16, !dbg !2937

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2924, metadata !DIExpression()), !dbg !2928
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2938
  %13 = load ptr, ptr %12, align 8, !dbg !2938, !tbaa !2934
  tail call void @free(ptr noundef %13) #39, !dbg !2939
  %14 = add nuw nsw i64 %11, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %14, metadata !2924, metadata !DIExpression()), !dbg !2928
  %15 = icmp eq i64 %14, %5, !dbg !2929
  br i1 %15, label %6, label %10, !dbg !2931, !llvm.loop !2941

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2943
  store i64 256, ptr @slotvec0, align 8, !dbg !2945, !tbaa !2946
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2947, !tbaa !2934
  br label %17, !dbg !2948

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2949
  br i1 %18, label %20, label %19, !dbg !2951

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2952
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2954, !tbaa !868
  br label %20, !dbg !2955

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2956, !tbaa !937
  ret void, !dbg !2957
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2958 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %1, metadata !2961, metadata !DIExpression()), !dbg !2962
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2963
  ret ptr %3, !dbg !2964
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2965 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2969, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %1, metadata !2970, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %2, metadata !2971, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !2985
  %6 = tail call ptr @__errno_location() #42, !dbg !2986
  %7 = load i32, ptr %6, align 4, !dbg !2986, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %7, metadata !2973, metadata !DIExpression()), !dbg !2985
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2987, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %8, metadata !2974, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2975, metadata !DIExpression()), !dbg !2985
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2988
  br i1 %9, label %10, label %11, !dbg !2988

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2990
  unreachable, !dbg !2990

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2991, !tbaa !937
  %13 = icmp sgt i32 %12, %0, !dbg !2992
  br i1 %13, label %32, label %14, !dbg !2993

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2994
  call void @llvm.dbg.value(metadata i1 %15, metadata !2976, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2995
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2996
  %16 = sext i32 %12 to i64, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %16, metadata !2979, metadata !DIExpression()), !dbg !2995
  store i64 %16, ptr %5, align 8, !dbg !2998, !tbaa !2918
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2999
  %18 = add nuw nsw i32 %0, 1, !dbg !3000
  %19 = sub i32 %18, %12, !dbg !3001
  %20 = sext i32 %19 to i64, !dbg !3002
  call void @llvm.dbg.value(metadata ptr %5, metadata !2979, metadata !DIExpression(DW_OP_deref)), !dbg !2995
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3003
  call void @llvm.dbg.value(metadata ptr %21, metadata !2974, metadata !DIExpression()), !dbg !2985
  store ptr %21, ptr @slotvec, align 8, !dbg !3004, !tbaa !868
  br i1 %15, label %22, label %23, !dbg !3005

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3006, !tbaa.struct !3008
  br label %23, !dbg !3009

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3010, !tbaa !937
  %25 = sext i32 %24 to i64, !dbg !3011
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3011
  %27 = load i64, ptr %5, align 8, !dbg !3012, !tbaa !2918
  call void @llvm.dbg.value(metadata i64 %27, metadata !2979, metadata !DIExpression()), !dbg !2995
  %28 = sub nsw i64 %27, %25, !dbg !3013
  %29 = shl i64 %28, 4, !dbg !3014
  call void @llvm.dbg.value(metadata ptr %26, metadata !2388, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %29, metadata !2392, metadata !DIExpression()), !dbg !3015
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3017
  %30 = load i64, ptr %5, align 8, !dbg !3018, !tbaa !2918
  call void @llvm.dbg.value(metadata i64 %30, metadata !2979, metadata !DIExpression()), !dbg !2995
  %31 = trunc i64 %30 to i32, !dbg !3018
  store i32 %31, ptr @nslots, align 4, !dbg !3019, !tbaa !937
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3020
  br label %32, !dbg !3021

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2985
  call void @llvm.dbg.value(metadata ptr %33, metadata !2974, metadata !DIExpression()), !dbg !2985
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3022
  %36 = load i64, ptr %35, align 8, !dbg !3023, !tbaa !2946
  call void @llvm.dbg.value(metadata i64 %36, metadata !2980, metadata !DIExpression()), !dbg !3024
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3025
  %38 = load ptr, ptr %37, align 8, !dbg !3025, !tbaa !2934
  call void @llvm.dbg.value(metadata ptr %38, metadata !2982, metadata !DIExpression()), !dbg !3024
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3026
  %40 = load i32, ptr %39, align 4, !dbg !3026, !tbaa !2231
  %41 = or i32 %40, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i32 %41, metadata !2983, metadata !DIExpression()), !dbg !3024
  %42 = load i32, ptr %3, align 8, !dbg !3028, !tbaa !2181
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3029
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3030
  %45 = load ptr, ptr %44, align 8, !dbg !3030, !tbaa !2252
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3031
  %47 = load ptr, ptr %46, align 8, !dbg !3031, !tbaa !2255
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %48, metadata !2984, metadata !DIExpression()), !dbg !3024
  %49 = icmp ugt i64 %36, %48, !dbg !3033
  br i1 %49, label %60, label %50, !dbg !3035

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %51, metadata !2980, metadata !DIExpression()), !dbg !3024
  store i64 %51, ptr %35, align 8, !dbg !3038, !tbaa !2946
  %52 = icmp eq ptr %38, @slot0, !dbg !3039
  br i1 %52, label %54, label %53, !dbg !3041

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3042
  br label %54, !dbg !3042

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3043
  call void @llvm.dbg.value(metadata ptr %55, metadata !2982, metadata !DIExpression()), !dbg !3024
  store ptr %55, ptr %37, align 8, !dbg !3044, !tbaa !2934
  %56 = load i32, ptr %3, align 8, !dbg !3045, !tbaa !2181
  %57 = load ptr, ptr %44, align 8, !dbg !3046, !tbaa !2252
  %58 = load ptr, ptr %46, align 8, !dbg !3047, !tbaa !2255
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3048
  br label %60, !dbg !3049

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3024
  call void @llvm.dbg.value(metadata ptr %61, metadata !2982, metadata !DIExpression()), !dbg !3024
  store i32 %7, ptr %6, align 4, !dbg !3050, !tbaa !937
  ret ptr %61, !dbg !3051
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3052 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3056, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %1, metadata !3057, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %2, metadata !3058, metadata !DIExpression()), !dbg !3059
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3060
  ret ptr %4, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3062 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 0, metadata !2960, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !3066
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3068
  ret ptr %2, !dbg !3069
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3070 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !3056, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %0, metadata !3057, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3077
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3079
  ret ptr %3, !dbg !3080
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3081 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3085, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 %1, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %2, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3090
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3088, metadata !DIExpression()), !dbg !3091
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3092), !dbg !3095
  call void @llvm.dbg.value(metadata i32 %1, metadata !3096, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3104, !alias.scope !3092
  %5 = icmp eq i32 %1, 10, !dbg !3105
  br i1 %5, label %6, label %7, !dbg !3107

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3108, !noalias !3092
  unreachable, !dbg !3108

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3109, !tbaa !2181, !alias.scope !3092
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3110
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3111
  ret ptr %8, !dbg !3112
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3113 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3117, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %1, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %3, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3123
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3121, metadata !DIExpression()), !dbg !3124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3125), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %1, metadata !3096, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3101, metadata !DIExpression()), !dbg !3131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3131, !alias.scope !3125
  %6 = icmp eq i32 %1, 10, !dbg !3132
  br i1 %6, label %7, label %8, !dbg !3133

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3134, !noalias !3125
  unreachable, !dbg !3134

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3135, !tbaa !2181, !alias.scope !3125
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3136
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3137
  ret ptr %9, !dbg !3138
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3139 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr %1, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 0, metadata !3085, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata ptr %1, metadata !3087, metadata !DIExpression()), !dbg !3146
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3088, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3101, metadata !DIExpression()), !dbg !3156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3156, !alias.scope !3150
  %4 = icmp eq i32 %0, 10, !dbg !3157
  br i1 %4, label %5, label %6, !dbg !3158

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3159, !noalias !3150
  unreachable, !dbg !3159

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3160, !tbaa !2181, !alias.scope !3150
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3161
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3162
  ret ptr %7, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3164 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %1, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %2, metadata !3170, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 0, metadata !3117, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %1, metadata !3119, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %2, metadata !3120, metadata !DIExpression()), !dbg !3172
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3121, metadata !DIExpression()), !dbg !3175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3101, metadata !DIExpression()), !dbg !3182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3182, !alias.scope !3176
  %5 = icmp eq i32 %0, 10, !dbg !3183
  br i1 %5, label %6, label %7, !dbg !3184

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3185, !noalias !3176
  unreachable, !dbg !3185

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3186, !tbaa !2181, !alias.scope !3176
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3187
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3188
  ret ptr %8, !dbg !3189
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3190 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8 %2, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3199
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3201, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %4, metadata !2198, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8 %2, metadata !2199, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 1, metadata !2200, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8 %2, metadata !2201, metadata !DIExpression()), !dbg !3203
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3205
  %6 = lshr i8 %2, 5, !dbg !3206
  %7 = zext i8 %6 to i64, !dbg !3206
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %8, metadata !2202, metadata !DIExpression()), !dbg !3203
  %9 = and i8 %2, 31, !dbg !3208
  %10 = zext i8 %9 to i32, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %10, metadata !2204, metadata !DIExpression()), !dbg !3203
  %11 = load i32, ptr %8, align 4, !dbg !3209, !tbaa !937
  %12 = lshr i32 %11, %10, !dbg !3210
  call void @llvm.dbg.value(metadata i32 %12, metadata !2205, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3203
  %13 = and i32 %12, 1, !dbg !3211
  %14 = xor i32 %13, 1, !dbg !3211
  %15 = shl nuw i32 %14, %10, !dbg !3212
  %16 = xor i32 %15, %11, !dbg !3213
  store i32 %16, ptr %8, align 4, !dbg !3213, !tbaa !937
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3214
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3215
  ret ptr %17, !dbg !3216
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3217 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8 %1, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 -1, metadata !3195, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8 %1, metadata !3196, metadata !DIExpression()), !dbg !3224
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3197, metadata !DIExpression()), !dbg !3227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3228, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %3, metadata !2198, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %1, metadata !2199, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 1, metadata !2200, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %1, metadata !2201, metadata !DIExpression()), !dbg !3229
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3231
  %5 = lshr i8 %1, 5, !dbg !3232
  %6 = zext i8 %5 to i64, !dbg !3232
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %7, metadata !2202, metadata !DIExpression()), !dbg !3229
  %8 = and i8 %1, 31, !dbg !3234
  %9 = zext i8 %8 to i32, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %9, metadata !2204, metadata !DIExpression()), !dbg !3229
  %10 = load i32, ptr %7, align 4, !dbg !3235, !tbaa !937
  %11 = lshr i32 %10, %9, !dbg !3236
  call void @llvm.dbg.value(metadata i32 %11, metadata !2205, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3229
  %12 = and i32 %11, 1, !dbg !3237
  %13 = xor i32 %12, 1, !dbg !3237
  %14 = shl nuw i32 %13, %9, !dbg !3238
  %15 = xor i32 %14, %10, !dbg !3239
  store i32 %15, ptr %7, align 4, !dbg !3239, !tbaa !937
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3240
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3241
  ret ptr %16, !dbg !3242
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3243 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8 58, metadata !3222, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 -1, metadata !3195, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8 58, metadata !3196, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3197, metadata !DIExpression()), !dbg !3252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3253, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %2, metadata !2198, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 58, metadata !2199, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 1, metadata !2200, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 58, metadata !2201, metadata !DIExpression()), !dbg !3254
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %3, metadata !2202, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 26, metadata !2204, metadata !DIExpression()), !dbg !3254
  %4 = load i32, ptr %3, align 4, !dbg !3257, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %4, metadata !2205, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3254
  %5 = or i32 %4, 67108864, !dbg !3258
  store i32 %5, ptr %3, align 4, !dbg !3258, !tbaa !937
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3259
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3260
  ret ptr %6, !dbg !3261
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3262 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3264, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 58, metadata !3196, metadata !DIExpression()), !dbg !3267
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3269
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3197, metadata !DIExpression()), !dbg !3270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3271, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %3, metadata !2198, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 58, metadata !2199, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 1, metadata !2200, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 58, metadata !2201, metadata !DIExpression()), !dbg !3272
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %4, metadata !2202, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 26, metadata !2204, metadata !DIExpression()), !dbg !3272
  %5 = load i32, ptr %4, align 4, !dbg !3275, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %5, metadata !2205, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3272
  %6 = or i32 %5, 67108864, !dbg !3276
  store i32 %6, ptr %4, align 4, !dbg !3276, !tbaa !937
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3277
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3278
  ret ptr %7, !dbg !3279
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3280 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3101, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3286
  call void @llvm.dbg.value(metadata i32 %0, metadata !3282, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 %1, metadata !3283, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %2, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3285, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %1, metadata !3096, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 0, metadata !3101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3291
  %5 = icmp eq i32 %1, 10, !dbg !3292
  br i1 %5, label %6, label %7, !dbg !3293

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3294, !noalias !3295
  unreachable, !dbg !3294

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3291
  store i32 %1, ptr %4, align 8, !dbg !3298, !tbaa.struct !3202
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %4, metadata !2198, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 58, metadata !2199, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 1, metadata !2200, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 58, metadata !2201, metadata !DIExpression()), !dbg !3299
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3301
  call void @llvm.dbg.value(metadata ptr %9, metadata !2202, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 26, metadata !2204, metadata !DIExpression()), !dbg !3299
  %10 = load i32, ptr %9, align 4, !dbg !3302, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %10, metadata !2205, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3299
  %11 = or i32 %10, 67108864, !dbg !3303
  store i32 %11, ptr %9, align 4, !dbg !3303, !tbaa !937
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3304
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3305
  ret ptr %12, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3307 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %1, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %3, metadata !3314, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 %0, metadata !3316, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %1, metadata !3321, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %2, metadata !3322, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %3, metadata !3323, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 -1, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3328
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3325, metadata !DIExpression()), !dbg !3329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3330, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %5, metadata !2238, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %1, metadata !2239, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %2, metadata !2240, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %5, metadata !2238, metadata !DIExpression()), !dbg !3331
  store i32 10, ptr %5, align 8, !dbg !3333, !tbaa !2181
  %6 = icmp ne ptr %1, null, !dbg !3334
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3335
  br i1 %8, label %10, label %9, !dbg !3335

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3336
  unreachable, !dbg !3336

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3337
  store ptr %1, ptr %11, align 8, !dbg !3338, !tbaa !2252
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3339
  store ptr %2, ptr %12, align 8, !dbg !3340, !tbaa !2255
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3341
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3342
  ret ptr %13, !dbg !3343
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3317 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3316, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %1, metadata !3321, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %2, metadata !3322, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %3, metadata !3323, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %4, metadata !3324, metadata !DIExpression()), !dbg !3344
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3345
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3325, metadata !DIExpression()), !dbg !3346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3347, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %6, metadata !2238, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %1, metadata !2239, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %2, metadata !2240, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %6, metadata !2238, metadata !DIExpression()), !dbg !3348
  store i32 10, ptr %6, align 8, !dbg !3350, !tbaa !2181
  %7 = icmp ne ptr %1, null, !dbg !3351
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3352
  br i1 %9, label %11, label %10, !dbg !3352

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3353
  unreachable, !dbg !3353

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3354
  store ptr %1, ptr %12, align 8, !dbg !3355, !tbaa !2252
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3356
  store ptr %2, ptr %13, align 8, !dbg !3357, !tbaa !2255
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3358
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3359
  ret ptr %14, !dbg !3360
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3361 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %1, metadata !3366, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %2, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %2, metadata !3314, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 0, metadata !3316, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %1, metadata !3322, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %2, metadata !3323, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 -1, metadata !3324, metadata !DIExpression()), !dbg !3371
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3373
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3325, metadata !DIExpression()), !dbg !3374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3375, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %4, metadata !2238, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %0, metadata !2239, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %1, metadata !2240, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %4, metadata !2238, metadata !DIExpression()), !dbg !3376
  store i32 10, ptr %4, align 8, !dbg !3378, !tbaa !2181
  %5 = icmp ne ptr %0, null, !dbg !3379
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3380
  br i1 %7, label %9, label %8, !dbg !3380

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3381
  unreachable, !dbg !3381

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3382
  store ptr %0, ptr %10, align 8, !dbg !3383, !tbaa !2252
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3384
  store ptr %1, ptr %11, align 8, !dbg !3385, !tbaa !2255
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3386
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3387
  ret ptr %12, !dbg !3388
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3389 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %1, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !3316, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %1, metadata !3322, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %2, metadata !3323, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %3, metadata !3324, metadata !DIExpression()), !dbg !3398
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3400
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3325, metadata !DIExpression()), !dbg !3401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3402, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %5, metadata !2238, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %0, metadata !2239, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %1, metadata !2240, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %5, metadata !2238, metadata !DIExpression()), !dbg !3403
  store i32 10, ptr %5, align 8, !dbg !3405, !tbaa !2181
  %6 = icmp ne ptr %0, null, !dbg !3406
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3407
  br i1 %8, label %10, label %9, !dbg !3407

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3408
  unreachable, !dbg !3408

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3409
  store ptr %0, ptr %11, align 8, !dbg !3410, !tbaa !2252
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3411
  store ptr %1, ptr %12, align 8, !dbg !3412, !tbaa !2255
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3413
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3414
  ret ptr %13, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata ptr %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %2, metadata !3422, metadata !DIExpression()), !dbg !3423
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3424
  ret ptr %4, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 0, metadata !3420, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3422, metadata !DIExpression()), !dbg !3433
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3435
  ret ptr %3, !dbg !3436
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata ptr %1, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %0, metadata !3420, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata ptr %1, metadata !3421, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 -1, metadata !3422, metadata !DIExpression()), !dbg !3444
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3446
  ret ptr %3, !dbg !3447
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3452, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 0, metadata !3441, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3420, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 -1, metadata !3422, metadata !DIExpression()), !dbg !3456
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3458
  ret ptr %2, !dbg !3459
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname_len(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !641 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !655, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i32 %1, metadata !656, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i32 %2, metadata !657, metadata !DIExpression()), !dbg !3460
  store i32 %2, ptr %6, align 4, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %3, metadata !658, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %4, metadata !659, metadata !DIExpression()), !dbg !3460
  %7 = sext i32 %3 to i64, !dbg !3461
  %8 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %7, !dbg !3461
  %9 = load ptr, ptr %8, align 8, !dbg !3461, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %6, metadata !657, metadata !DIExpression(DW_OP_deref)), !dbg !3460
  %10 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %9, i64 noundef %4), !dbg !3462
  ret i32 %10, !dbg !3463
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3464 {
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %1, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %2, metadata !3470, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %3, metadata !3471, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %4, metadata !3472, metadata !DIExpression()), !dbg !3492
  %8 = tail call ptr @__errno_location() #42, !dbg !3493
  %9 = load i32, ptr %8, align 4, !dbg !3493, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %9, metadata !3473, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 238328, metadata !3474, metadata !DIExpression()), !dbg !3492
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !3494
  call void @llvm.dbg.value(metadata i64 0, metadata !3475, metadata !DIExpression()), !dbg !3492
  store i64 0, ptr %7, align 8, !dbg !3495, !tbaa !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !3480, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 -821457390474406912, metadata !3481, metadata !DIExpression()), !dbg !3492
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %10, metadata !3483, metadata !DIExpression()), !dbg !3492
  %11 = sext i32 %1 to i64, !dbg !3497
  %12 = add i64 %11, %4, !dbg !3499
  %13 = icmp ult i64 %10, %12, !dbg !3500
  br i1 %13, label %83, label %14, !dbg !3501

14:                                               ; preds = %5
  %15 = sub i64 %10, %12, !dbg !3502
  %16 = getelementptr inbounds i8, ptr %0, i64 %15, !dbg !3503
  %17 = tail call i64 @strspn(ptr noundef %16, ptr noundef nonnull @.str.99) #40, !dbg !3504
  %18 = icmp ult i64 %17, %4, !dbg !3505
  br i1 %18, label %83, label %19, !dbg !3506

19:                                               ; preds = %14
  %20 = icmp eq i64 %4, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !3485, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 undef, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 0, metadata !3480, metadata !DIExpression()), !dbg !3492
  %21 = getelementptr inbounds %struct.timespec, ptr %6, i64 0, i32 1
  br label %26, !dbg !3508

22:                                               ; preds = %78
  %23 = add nuw nsw i32 %28, 1, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %23, metadata !3485, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 %28, metadata !3485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %33, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %32, metadata !3480, metadata !DIExpression()), !dbg !3492
  %24 = icmp ugt i32 %28, 238326, !dbg !3510
  %25 = icmp eq i32 %23, 238328, !dbg !3510
  br i1 %25, label %83, label %26, !dbg !3508, !llvm.loop !3511

26:                                               ; preds = %19, %22
  %27 = phi i1 [ false, %19 ], [ %24, %22 ]
  %28 = phi i32 [ 0, %19 ], [ %23, %22 ]
  %29 = phi i64 [ undef, %19 ], [ %33, %22 ]
  %30 = phi i32 [ 0, %19 ], [ %32, %22 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !3485, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %29, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %30, metadata !3480, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 0, metadata !3487, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %29, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %30, metadata !3480, metadata !DIExpression()), !dbg !3492
  br i1 %20, label %31, label %36, !dbg !3514

31:                                               ; preds = %66, %26
  %32 = phi i32 [ %30, %26 ], [ %74, %66 ], !dbg !3492
  %33 = phi i64 [ %29, %26 ], [ %73, %66 ]
  %34 = call i32 %3(ptr noundef %0, ptr noundef %2) #39, !dbg !3515
  call void @llvm.dbg.value(metadata i32 %34, metadata !3491, metadata !DIExpression()), !dbg !3516
  %35 = icmp sgt i32 %34, -1, !dbg !3517
  br i1 %35, label %77, label %78, !dbg !3519

36:                                               ; preds = %26, %66
  %37 = phi i64 [ %75, %66 ], [ 0, %26 ]
  %38 = phi i64 [ %73, %66 ], [ %29, %26 ]
  %39 = phi i32 [ %74, %66 ], [ %30, %26 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !3487, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %38, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %39, metadata !3480, metadata !DIExpression()), !dbg !3492
  %40 = icmp eq i32 %39, 0, !dbg !3520
  br i1 %40, label %41, label %66, !dbg !3524

41:                                               ; preds = %36
  %42 = load i64, ptr %7, align 8, !dbg !3525, !tbaa !2918
  call void @llvm.dbg.value(metadata ptr %7, metadata !3475, metadata !DIExpression(DW_OP_deref)), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %7, metadata !3527, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %42, metadata !3533, metadata !DIExpression()), !dbg !3543
  %43 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #39, !dbg !3545
  %44 = icmp eq i64 %43, 8, !dbg !3547
  br i1 %44, label %63, label %48, !dbg !3548

45:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %7, metadata !3475, metadata !DIExpression(DW_OP_deref)), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %7, metadata !3527, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %64, metadata !3533, metadata !DIExpression()), !dbg !3543
  %46 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #39, !dbg !3545
  %47 = icmp eq i64 %46, 8, !dbg !3547
  br i1 %47, label %63, label %48, !dbg !3548, !llvm.loop !3549

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %42, %41 ], [ %64, %45 ], !dbg !3525
  call void @llvm.dbg.value(metadata i64 %49, metadata !3534, metadata !DIExpression()), !dbg !3543
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #39, !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3535, metadata !DIExpression()), !dbg !3553
  %50 = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %6) #39, !dbg !3554
  %51 = load i64, ptr %6, align 8, !dbg !3555, !tbaa !3556
  call void @llvm.dbg.value(metadata i64 %49, metadata !3558, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 %51, metadata !3563, metadata !DIExpression()), !dbg !3564
  %52 = mul i64 %49, 2862933555777941757, !dbg !3566
  %53 = add i64 %52, 3037000493, !dbg !3567
  %54 = xor i64 %51, %53, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %54, metadata !3534, metadata !DIExpression()), !dbg !3543
  %55 = load i64, ptr %21, align 8, !dbg !3569, !tbaa !3570
  call void @llvm.dbg.value(metadata i64 %54, metadata !3558, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i64 %55, metadata !3563, metadata !DIExpression()), !dbg !3571
  %56 = mul i64 %54, 2862933555777941757, !dbg !3573
  %57 = add i64 %56, 3037000493, !dbg !3574
  %58 = xor i64 %57, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %58, metadata !3534, metadata !DIExpression()), !dbg !3543
  %59 = call i64 @clock() #39, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %58, metadata !3558, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 %59, metadata !3563, metadata !DIExpression()), !dbg !3577
  %60 = mul i64 %58, 2862933555777941757, !dbg !3579
  %61 = add i64 %60, 3037000493, !dbg !3580
  %62 = xor i64 %61, %59, !dbg !3581
  store i64 %62, ptr %7, align 8, !dbg !3582, !tbaa !2918
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #39, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %62, metadata !3475, metadata !DIExpression()), !dbg !3492
  br label %66, !dbg !3550

63:                                               ; preds = %41, %45
  %64 = load i64, ptr %7, align 8, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %64, metadata !3475, metadata !DIExpression()), !dbg !3492
  %65 = icmp ugt i64 %64, -821457390474406913, !dbg !3584
  br i1 %65, label %45, label %66, !dbg !3550, !llvm.loop !3549

66:                                               ; preds = %63, %48, %36
  %67 = phi i32 [ %39, %36 ], [ 10, %48 ], [ 10, %63 ], !dbg !3492
  %68 = phi i64 [ %38, %36 ], [ %62, %48 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i64 %68, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %67, metadata !3480, metadata !DIExpression()), !dbg !3492
  %69 = urem i64 %68, 62, !dbg !3585
  %70 = getelementptr inbounds [63 x i8], ptr @letters, i64 0, i64 %69, !dbg !3586
  %71 = load i8, ptr %70, align 1, !dbg !3586, !tbaa !946
  %72 = getelementptr inbounds i8, ptr %16, i64 %37, !dbg !3587
  store i8 %71, ptr %72, align 1, !dbg !3588, !tbaa !946
  %73 = udiv i64 %68, 62, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %73, metadata !3479, metadata !DIExpression()), !dbg !3492
  %74 = add nsw i32 %67, -1, !dbg !3590
  call void @llvm.dbg.value(metadata i32 %74, metadata !3480, metadata !DIExpression()), !dbg !3492
  %75 = add nuw i64 %37, 1, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %75, metadata !3487, metadata !DIExpression()), !dbg !3513
  %76 = icmp eq i64 %75, %4, !dbg !3592
  br i1 %76, label %31, label %36, !dbg !3514, !llvm.loop !3593

77:                                               ; preds = %31
  store i32 %9, ptr %8, align 4, !dbg !3595, !tbaa !937
  br label %81

78:                                               ; preds = %31
  %79 = load i32, ptr %8, align 4, !dbg !3597, !tbaa !937
  %80 = icmp eq i32 %79, 17, !dbg !3599
  call void @llvm.dbg.value(metadata i32 %28, metadata !3485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3507
  br i1 %80, label %22, label %81

81:                                               ; preds = %78, %77
  %82 = phi i32 [ %34, %77 ], [ -1, %78 ]
  br i1 %27, label %83, label %85

83:                                               ; preds = %22, %81, %5, %14
  %84 = phi i32 [ 22, %14 ], [ 22, %5 ], [ 17, %81 ], [ 17, %22 ]
  store i32 %84, ptr %8, align 4, !dbg !3492, !tbaa !937
  br label %85, !dbg !3600

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ -1, %83 ], !dbg !3492
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !3600
  ret i32 %86, !dbg !3600
}

declare !dbg !3601 i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3607 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3615 i64 @clock() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_file(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !dbg !3621 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3623, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %1, metadata !3624, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %1, metadata !3625, metadata !DIExpression()), !dbg !3626
  %3 = load i32, ptr %1, align 4, !dbg !3627, !tbaa !937
  %4 = and i32 %3, -196, !dbg !3628
  %5 = or i32 %4, 194, !dbg !3629
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %5, i32 noundef 384) #39, !dbg !3630
  ret i32 %6, !dbg !3631
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_dir(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3632 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3634, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr poison, metadata !3635, metadata !DIExpression()), !dbg !3636
  %3 = tail call i32 @mkdir(ptr noundef %0, i32 noundef 448) #39, !dbg !3637
  ret i32 %3, !dbg !3638
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_nocreate(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3639 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3641, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr poison, metadata !3642, metadata !DIExpression()), !dbg !3671
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #39, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3673
  %4 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #39, !dbg !3674
  %5 = icmp eq i32 %4, 0, !dbg !3676
  %6 = tail call ptr @__errno_location() #42, !dbg !3677
  br i1 %5, label %10, label %7, !dbg !3678

7:                                                ; preds = %2
  %8 = load i32, ptr %6, align 4, !dbg !3679, !tbaa !937
  %9 = icmp eq i32 %8, 75, !dbg !3680
  br i1 %9, label %10, label %11, !dbg !3681

10:                                               ; preds = %2, %7
  store i32 17, ptr %6, align 4, !dbg !3682, !tbaa !937
  br label %11, !dbg !3682

11:                                               ; preds = %10, %7
  %12 = load i32, ptr %6, align 4, !dbg !3683, !tbaa !937
  %13 = icmp ne i32 %12, 2, !dbg !3684
  %14 = sext i1 %13 to i32, !dbg !3683
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #39, !dbg !3685
  ret i32 %14, !dbg !3686
}

; Function Attrs: nofree nounwind
declare !dbg !3687 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3693 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3696 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #29

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3699 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3703, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 %1, metadata !3704, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 %2, metadata !3705, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 %3, metadata !3706, metadata !DIExpression()), !dbg !3707
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5), !dbg !3708
  call void @llvm.dbg.value(metadata ptr %0, metadata !655, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i32 %1, metadata !656, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i32 %2, metadata !657, metadata !DIExpression()), !dbg !3708
  store i32 %2, ptr %5, align 4, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %3, metadata !658, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 6, metadata !659, metadata !DIExpression()), !dbg !3708
  %6 = sext i32 %3 to i64, !dbg !3710
  %7 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %6, !dbg !3710
  %8 = load ptr, ptr %7, align 8, !dbg !3710, !tbaa !868
  call void @llvm.dbg.value(metadata ptr %5, metadata !657, metadata !DIExpression(DW_OP_deref)), !dbg !3708
  %9 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %8, i64 noundef 6), !dbg !3711
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5), !dbg !3712
  ret i32 %9, !dbg !3713
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #10 !dbg !3714 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3718, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 %1, metadata !3719, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %2, metadata !3720, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %3, metadata !3721, metadata !DIExpression()), !dbg !3722
  %5 = tail call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 6), !dbg !3723
  ret i32 %5, !dbg !3724
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3725 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3764, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %1, metadata !3765, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %2, metadata !3766, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %3, metadata !3767, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %4, metadata !3768, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 %5, metadata !3769, metadata !DIExpression()), !dbg !3770
  %7 = icmp eq ptr %1, null, !dbg !3771
  br i1 %7, label %10, label %8, !dbg !3773

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3774
  br label %12, !dbg !3774

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #39, !dbg !3775
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #39, !dbg !3776
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3776
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3777
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #39, !dbg !3778
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #39, !dbg !3778
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3779
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
  ], !dbg !3780

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #39, !dbg !3781
  %21 = load ptr, ptr %4, align 8, !dbg !3781, !tbaa !868
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3781
  br label %147, !dbg !3783

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #39, !dbg !3784
  %25 = load ptr, ptr %4, align 8, !dbg !3784, !tbaa !868
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3784
  %27 = load ptr, ptr %26, align 8, !dbg !3784, !tbaa !868
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3784
  br label %147, !dbg !3785

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #39, !dbg !3786
  %31 = load ptr, ptr %4, align 8, !dbg !3786, !tbaa !868
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3786
  %33 = load ptr, ptr %32, align 8, !dbg !3786, !tbaa !868
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3786
  %35 = load ptr, ptr %34, align 8, !dbg !3786, !tbaa !868
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3786
  br label %147, !dbg !3787

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #39, !dbg !3788
  %39 = load ptr, ptr %4, align 8, !dbg !3788, !tbaa !868
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3788
  %41 = load ptr, ptr %40, align 8, !dbg !3788, !tbaa !868
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3788
  %43 = load ptr, ptr %42, align 8, !dbg !3788, !tbaa !868
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3788
  %45 = load ptr, ptr %44, align 8, !dbg !3788, !tbaa !868
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3788
  br label %147, !dbg !3789

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #39, !dbg !3790
  %49 = load ptr, ptr %4, align 8, !dbg !3790, !tbaa !868
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3790
  %51 = load ptr, ptr %50, align 8, !dbg !3790, !tbaa !868
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3790
  %53 = load ptr, ptr %52, align 8, !dbg !3790, !tbaa !868
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3790
  %55 = load ptr, ptr %54, align 8, !dbg !3790, !tbaa !868
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3790
  %57 = load ptr, ptr %56, align 8, !dbg !3790, !tbaa !868
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3790
  br label %147, !dbg !3791

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #39, !dbg !3792
  %61 = load ptr, ptr %4, align 8, !dbg !3792, !tbaa !868
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3792
  %63 = load ptr, ptr %62, align 8, !dbg !3792, !tbaa !868
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3792
  %65 = load ptr, ptr %64, align 8, !dbg !3792, !tbaa !868
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3792
  %67 = load ptr, ptr %66, align 8, !dbg !3792, !tbaa !868
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3792
  %69 = load ptr, ptr %68, align 8, !dbg !3792, !tbaa !868
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3792
  %71 = load ptr, ptr %70, align 8, !dbg !3792, !tbaa !868
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3792
  br label %147, !dbg !3793

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #39, !dbg !3794
  %75 = load ptr, ptr %4, align 8, !dbg !3794, !tbaa !868
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3794
  %77 = load ptr, ptr %76, align 8, !dbg !3794, !tbaa !868
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3794
  %79 = load ptr, ptr %78, align 8, !dbg !3794, !tbaa !868
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3794
  %81 = load ptr, ptr %80, align 8, !dbg !3794, !tbaa !868
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3794
  %83 = load ptr, ptr %82, align 8, !dbg !3794, !tbaa !868
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3794
  %85 = load ptr, ptr %84, align 8, !dbg !3794, !tbaa !868
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3794
  %87 = load ptr, ptr %86, align 8, !dbg !3794, !tbaa !868
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3794
  br label %147, !dbg !3795

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #39, !dbg !3796
  %91 = load ptr, ptr %4, align 8, !dbg !3796, !tbaa !868
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3796
  %93 = load ptr, ptr %92, align 8, !dbg !3796, !tbaa !868
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3796
  %95 = load ptr, ptr %94, align 8, !dbg !3796, !tbaa !868
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3796
  %97 = load ptr, ptr %96, align 8, !dbg !3796, !tbaa !868
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3796
  %99 = load ptr, ptr %98, align 8, !dbg !3796, !tbaa !868
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3796
  %101 = load ptr, ptr %100, align 8, !dbg !3796, !tbaa !868
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3796
  %103 = load ptr, ptr %102, align 8, !dbg !3796, !tbaa !868
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3796
  %105 = load ptr, ptr %104, align 8, !dbg !3796, !tbaa !868
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3796
  br label %147, !dbg !3797

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #39, !dbg !3798
  %109 = load ptr, ptr %4, align 8, !dbg !3798, !tbaa !868
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3798
  %111 = load ptr, ptr %110, align 8, !dbg !3798, !tbaa !868
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3798
  %113 = load ptr, ptr %112, align 8, !dbg !3798, !tbaa !868
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3798
  %115 = load ptr, ptr %114, align 8, !dbg !3798, !tbaa !868
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3798
  %117 = load ptr, ptr %116, align 8, !dbg !3798, !tbaa !868
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3798
  %119 = load ptr, ptr %118, align 8, !dbg !3798, !tbaa !868
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3798
  %121 = load ptr, ptr %120, align 8, !dbg !3798, !tbaa !868
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3798
  %123 = load ptr, ptr %122, align 8, !dbg !3798, !tbaa !868
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3798
  %125 = load ptr, ptr %124, align 8, !dbg !3798, !tbaa !868
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3798
  br label %147, !dbg !3799

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #39, !dbg !3800
  %129 = load ptr, ptr %4, align 8, !dbg !3800, !tbaa !868
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3800
  %131 = load ptr, ptr %130, align 8, !dbg !3800, !tbaa !868
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3800
  %133 = load ptr, ptr %132, align 8, !dbg !3800, !tbaa !868
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3800
  %135 = load ptr, ptr %134, align 8, !dbg !3800, !tbaa !868
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3800
  %137 = load ptr, ptr %136, align 8, !dbg !3800, !tbaa !868
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3800
  %139 = load ptr, ptr %138, align 8, !dbg !3800, !tbaa !868
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3800
  %141 = load ptr, ptr %140, align 8, !dbg !3800, !tbaa !868
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3800
  %143 = load ptr, ptr %142, align 8, !dbg !3800, !tbaa !868
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3800
  %145 = load ptr, ptr %144, align 8, !dbg !3800, !tbaa !868
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3800
  br label %147, !dbg !3801

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3802
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3803 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3807, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %1, metadata !3808, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %2, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %3, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %4, metadata !3811, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 0, metadata !3812, metadata !DIExpression()), !dbg !3813
  br label %6, !dbg !3814

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3816
  call void @llvm.dbg.value(metadata i64 %7, metadata !3812, metadata !DIExpression()), !dbg !3813
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3817
  %9 = load ptr, ptr %8, align 8, !dbg !3817, !tbaa !868
  %10 = icmp eq ptr %9, null, !dbg !3819
  %11 = add i64 %7, 1, !dbg !3820
  call void @llvm.dbg.value(metadata i64 %11, metadata !3812, metadata !DIExpression()), !dbg !3813
  br i1 %10, label %12, label %6, !dbg !3819, !llvm.loop !3821

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3823
  ret void, !dbg !3824
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3825 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3837, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %1, metadata !3838, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %2, metadata !3839, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %3, metadata !3840, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %4, metadata !3841, metadata !DIExpression()), !dbg !3845
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3846
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3843, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 0, metadata !3842, metadata !DIExpression()), !dbg !3845
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3842, metadata !DIExpression()), !dbg !3845
  %10 = icmp ult i32 %9, 41, !dbg !3848
  br i1 %10, label %11, label %16, !dbg !3848

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3848
  %13 = zext i32 %9 to i64, !dbg !3848
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3848
  %15 = add nuw nsw i32 %9, 8, !dbg !3848
  store i32 %15, ptr %4, align 8, !dbg !3848
  br label %19, !dbg !3848

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3848
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3848
  store ptr %18, ptr %7, align 8, !dbg !3848
  br label %19, !dbg !3848

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3848
  %22 = load ptr, ptr %21, align 8, !dbg !3848
  store ptr %22, ptr %6, align 16, !dbg !3851, !tbaa !868
  %23 = icmp eq ptr %22, null, !dbg !3852
  br i1 %23, label %128, label %24, !dbg !3853

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 1, metadata !3842, metadata !DIExpression()), !dbg !3845
  %25 = icmp ult i32 %20, 41, !dbg !3848
  br i1 %25, label %29, label %26, !dbg !3848

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3848
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3848
  store ptr %28, ptr %7, align 8, !dbg !3848
  br label %34, !dbg !3848

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3848
  %31 = zext i32 %20 to i64, !dbg !3848
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3848
  %33 = add nuw nsw i32 %20, 8, !dbg !3848
  store i32 %33, ptr %4, align 8, !dbg !3848
  br label %34, !dbg !3848

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3848
  %37 = load ptr, ptr %36, align 8, !dbg !3848
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3854
  store ptr %37, ptr %38, align 8, !dbg !3851, !tbaa !868
  %39 = icmp eq ptr %37, null, !dbg !3852
  br i1 %39, label %128, label %40, !dbg !3853

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 2, metadata !3842, metadata !DIExpression()), !dbg !3845
  %41 = icmp ult i32 %35, 41, !dbg !3848
  br i1 %41, label %45, label %42, !dbg !3848

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3848
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3848
  store ptr %44, ptr %7, align 8, !dbg !3848
  br label %50, !dbg !3848

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3848
  %47 = zext i32 %35 to i64, !dbg !3848
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3848
  %49 = add nuw nsw i32 %35, 8, !dbg !3848
  store i32 %49, ptr %4, align 8, !dbg !3848
  br label %50, !dbg !3848

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3848
  %53 = load ptr, ptr %52, align 8, !dbg !3848
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3854
  store ptr %53, ptr %54, align 16, !dbg !3851, !tbaa !868
  %55 = icmp eq ptr %53, null, !dbg !3852
  br i1 %55, label %128, label %56, !dbg !3853

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 3, metadata !3842, metadata !DIExpression()), !dbg !3845
  %57 = icmp ult i32 %51, 41, !dbg !3848
  br i1 %57, label %61, label %58, !dbg !3848

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3848
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3848
  store ptr %60, ptr %7, align 8, !dbg !3848
  br label %66, !dbg !3848

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3848
  %63 = zext i32 %51 to i64, !dbg !3848
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3848
  %65 = add nuw nsw i32 %51, 8, !dbg !3848
  store i32 %65, ptr %4, align 8, !dbg !3848
  br label %66, !dbg !3848

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3848
  %69 = load ptr, ptr %68, align 8, !dbg !3848
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3854
  store ptr %69, ptr %70, align 8, !dbg !3851, !tbaa !868
  %71 = icmp eq ptr %69, null, !dbg !3852
  br i1 %71, label %128, label %72, !dbg !3853

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 4, metadata !3842, metadata !DIExpression()), !dbg !3845
  %73 = icmp ult i32 %67, 41, !dbg !3848
  br i1 %73, label %77, label %74, !dbg !3848

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3848
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3848
  store ptr %76, ptr %7, align 8, !dbg !3848
  br label %82, !dbg !3848

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3848
  %79 = zext i32 %67 to i64, !dbg !3848
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3848
  %81 = add nuw nsw i32 %67, 8, !dbg !3848
  store i32 %81, ptr %4, align 8, !dbg !3848
  br label %82, !dbg !3848

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3848
  %85 = load ptr, ptr %84, align 8, !dbg !3848
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3854
  store ptr %85, ptr %86, align 16, !dbg !3851, !tbaa !868
  %87 = icmp eq ptr %85, null, !dbg !3852
  br i1 %87, label %128, label %88, !dbg !3853

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 5, metadata !3842, metadata !DIExpression()), !dbg !3845
  %89 = icmp ult i32 %83, 41, !dbg !3848
  br i1 %89, label %93, label %90, !dbg !3848

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3848
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3848
  store ptr %92, ptr %7, align 8, !dbg !3848
  br label %98, !dbg !3848

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3848
  %95 = zext i32 %83 to i64, !dbg !3848
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3848
  %97 = add nuw nsw i32 %83, 8, !dbg !3848
  store i32 %97, ptr %4, align 8, !dbg !3848
  br label %98, !dbg !3848

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3848
  %100 = load ptr, ptr %99, align 8, !dbg !3848
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3854
  store ptr %100, ptr %101, align 8, !dbg !3851, !tbaa !868
  %102 = icmp eq ptr %100, null, !dbg !3852
  br i1 %102, label %128, label %103, !dbg !3853

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3842, metadata !DIExpression()), !dbg !3845
  %104 = load ptr, ptr %7, align 8, !dbg !3848
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3848
  store ptr %105, ptr %7, align 8, !dbg !3848
  %106 = load ptr, ptr %104, align 8, !dbg !3848
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3854
  store ptr %106, ptr %107, align 16, !dbg !3851, !tbaa !868
  %108 = icmp eq ptr %106, null, !dbg !3852
  br i1 %108, label %128, label %109, !dbg !3853

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3842, metadata !DIExpression()), !dbg !3845
  %110 = load ptr, ptr %7, align 8, !dbg !3848
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3848
  store ptr %111, ptr %7, align 8, !dbg !3848
  %112 = load ptr, ptr %110, align 8, !dbg !3848
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3854
  store ptr %112, ptr %113, align 8, !dbg !3851, !tbaa !868
  %114 = icmp eq ptr %112, null, !dbg !3852
  br i1 %114, label %128, label %115, !dbg !3853

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3842, metadata !DIExpression()), !dbg !3845
  %116 = load ptr, ptr %7, align 8, !dbg !3848
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3848
  store ptr %117, ptr %7, align 8, !dbg !3848
  %118 = load ptr, ptr %116, align 8, !dbg !3848
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3854
  store ptr %118, ptr %119, align 16, !dbg !3851, !tbaa !868
  %120 = icmp eq ptr %118, null, !dbg !3852
  br i1 %120, label %128, label %121, !dbg !3853

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3842, metadata !DIExpression()), !dbg !3845
  %122 = load ptr, ptr %7, align 8, !dbg !3848
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3848
  store ptr %123, ptr %7, align 8, !dbg !3848
  %124 = load ptr, ptr %122, align 8, !dbg !3848
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3854
  store ptr %124, ptr %125, align 8, !dbg !3851, !tbaa !868
  %126 = icmp eq ptr %124, null, !dbg !3852
  %127 = select i1 %126, i64 9, i64 10, !dbg !3853
  br label %128, !dbg !3853

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3855
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3856
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3857
  ret void, !dbg !3857
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3858 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3862, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata ptr %1, metadata !3863, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata ptr %2, metadata !3864, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata ptr %3, metadata !3865, metadata !DIExpression()), !dbg !3871
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3872
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3866, metadata !DIExpression()), !dbg !3873
  call void @llvm.va_start(ptr nonnull %5), !dbg !3874
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3875
  call void @llvm.va_end(ptr nonnull %5), !dbg !3876
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3877
  ret void, !dbg !3877
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3878 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3879, !tbaa !868
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3879
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #39, !dbg !3880
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #39, !dbg !3880
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #39, !dbg !3881
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #39, !dbg !3881
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #39, !dbg !3882
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #39, !dbg !3882
  ret void, !dbg !3883
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3884 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3889, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %1, metadata !3890, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %2, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata ptr %0, metadata !3893, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %1, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %2, metadata !3897, metadata !DIExpression()), !dbg !3898
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3900
  call void @llvm.dbg.value(metadata ptr %4, metadata !3901, metadata !DIExpression()), !dbg !3906
  %5 = icmp eq ptr %4, null, !dbg !3908
  br i1 %5, label %6, label %7, !dbg !3910

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3911
  unreachable, !dbg !3911

7:                                                ; preds = %3
  ret ptr %4, !dbg !3912
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3893, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %1, metadata !3896, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %2, metadata !3897, metadata !DIExpression()), !dbg !3913
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3914
  call void @llvm.dbg.value(metadata ptr %4, metadata !3901, metadata !DIExpression()), !dbg !3915
  %5 = icmp eq ptr %4, null, !dbg !3917
  br i1 %5, label %6, label %7, !dbg !3918

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3919
  unreachable, !dbg !3919

7:                                                ; preds = %3
  ret ptr %4, !dbg !3920
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3921 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3923, metadata !DIExpression()), !dbg !3924
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3925
  call void @llvm.dbg.value(metadata ptr %2, metadata !3901, metadata !DIExpression()), !dbg !3926
  %3 = icmp eq ptr %2, null, !dbg !3928
  br i1 %3, label %4, label %5, !dbg !3929

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3930
  unreachable, !dbg !3930

5:                                                ; preds = %1
  ret ptr %2, !dbg !3931
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3932 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %0, metadata !3938, metadata !DIExpression()), !dbg !3942
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3944
  call void @llvm.dbg.value(metadata ptr %2, metadata !3901, metadata !DIExpression()), !dbg !3945
  %3 = icmp eq ptr %2, null, !dbg !3947
  br i1 %3, label %4, label %5, !dbg !3948

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3949
  unreachable, !dbg !3949

5:                                                ; preds = %1
  ret ptr %2, !dbg !3950
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3951 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %0, metadata !3923, metadata !DIExpression()), !dbg !3957
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3959
  call void @llvm.dbg.value(metadata ptr %2, metadata !3901, metadata !DIExpression()), !dbg !3960
  %3 = icmp eq ptr %2, null, !dbg !3962
  br i1 %3, label %4, label %5, !dbg !3963

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3964
  unreachable, !dbg !3964

5:                                                ; preds = %1
  ret ptr %2, !dbg !3965
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3966 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3970, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %1, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata ptr %0, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %1, metadata !3977, metadata !DIExpression()), !dbg !3978
  %3 = icmp eq i64 %1, 0, !dbg !3980
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3980
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3981
  call void @llvm.dbg.value(metadata ptr %5, metadata !3901, metadata !DIExpression()), !dbg !3982
  %6 = icmp eq ptr %5, null, !dbg !3984
  br i1 %6, label %7, label %8, !dbg !3985

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3986
  unreachable, !dbg !3986

8:                                                ; preds = %2
  ret ptr %5, !dbg !3987
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3988 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3989 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata ptr %0, metadata !3996, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %1, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %0, metadata !3973, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %1, metadata !3977, metadata !DIExpression()), !dbg !4002
  %3 = icmp eq i64 %1, 0, !dbg !4004
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4004
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4005
  call void @llvm.dbg.value(metadata ptr %5, metadata !3901, metadata !DIExpression()), !dbg !4006
  %6 = icmp eq ptr %5, null, !dbg !4008
  br i1 %6, label %7, label %8, !dbg !4009

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4010
  unreachable, !dbg !4010

8:                                                ; preds = %2
  ret ptr %5, !dbg !4011
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4012 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %2, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %0, metadata !4020, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %2, metadata !4024, metadata !DIExpression()), !dbg !4025
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4027
  call void @llvm.dbg.value(metadata ptr %4, metadata !3901, metadata !DIExpression()), !dbg !4028
  %5 = icmp eq ptr %4, null, !dbg !4030
  br i1 %5, label %6, label %7, !dbg !4031

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4032
  unreachable, !dbg !4032

7:                                                ; preds = %3
  ret ptr %4, !dbg !4033
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4034 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4038, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 %1, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr null, metadata !3893, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %0, metadata !3896, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %1, metadata !3897, metadata !DIExpression()), !dbg !4041
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4043
  call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !4044
  %4 = icmp eq ptr %3, null, !dbg !4046
  br i1 %4, label %5, label %6, !dbg !4047

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4048
  unreachable, !dbg !4048

6:                                                ; preds = %2
  ret ptr %3, !dbg !4049
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4050 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4054, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %1, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr null, metadata !4016, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 %0, metadata !4017, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 %1, metadata !4018, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr null, metadata !4020, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64 %0, metadata !4023, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64 %1, metadata !4024, metadata !DIExpression()), !dbg !4059
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4061
  call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !4062
  %4 = icmp eq ptr %3, null, !dbg !4064
  br i1 %4, label %5, label %6, !dbg !4065

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4066
  unreachable, !dbg !4066

6:                                                ; preds = %2
  ret ptr %3, !dbg !4067
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4068 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4072, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %1, metadata !4073, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %0, metadata !812, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %1, metadata !813, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 1, metadata !814, metadata !DIExpression()), !dbg !4075
  %3 = load i64, ptr %1, align 8, !dbg !4077, !tbaa !2918
  call void @llvm.dbg.value(metadata i64 %3, metadata !815, metadata !DIExpression()), !dbg !4075
  %4 = icmp eq ptr %0, null, !dbg !4078
  br i1 %4, label %5, label %8, !dbg !4080

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4081
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4084
  br label %15, !dbg !4084

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4085
  %10 = add nuw i64 %9, 1, !dbg !4085
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4085
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4085
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4085
  call void @llvm.dbg.value(metadata i64 %13, metadata !815, metadata !DIExpression()), !dbg !4075
  br i1 %12, label %14, label %15, !dbg !4088

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4089
  unreachable, !dbg !4089

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4075
  call void @llvm.dbg.value(metadata i64 %16, metadata !815, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %0, metadata !3893, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %16, metadata !3896, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 1, metadata !3897, metadata !DIExpression()), !dbg !4090
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4092
  call void @llvm.dbg.value(metadata ptr %17, metadata !3901, metadata !DIExpression()), !dbg !4093
  %18 = icmp eq ptr %17, null, !dbg !4095
  br i1 %18, label %19, label %20, !dbg !4096

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4097
  unreachable, !dbg !4097

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !812, metadata !DIExpression()), !dbg !4075
  store i64 %16, ptr %1, align 8, !dbg !4098, !tbaa !2918
  ret ptr %17, !dbg !4099
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !807 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !812, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %1, metadata !813, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %2, metadata !814, metadata !DIExpression()), !dbg !4100
  %4 = load i64, ptr %1, align 8, !dbg !4101, !tbaa !2918
  call void @llvm.dbg.value(metadata i64 %4, metadata !815, metadata !DIExpression()), !dbg !4100
  %5 = icmp eq ptr %0, null, !dbg !4102
  br i1 %5, label %6, label %13, !dbg !4103

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4104
  br i1 %7, label %8, label %20, !dbg !4105

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4106
  call void @llvm.dbg.value(metadata i64 %9, metadata !815, metadata !DIExpression()), !dbg !4100
  %10 = icmp ugt i64 %2, 128, !dbg !4108
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %12, metadata !815, metadata !DIExpression()), !dbg !4100
  br label %20, !dbg !4110

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4111
  %15 = add nuw i64 %14, 1, !dbg !4111
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4111
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4111
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %18, metadata !815, metadata !DIExpression()), !dbg !4100
  br i1 %17, label %19, label %20, !dbg !4112

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4113
  unreachable, !dbg !4113

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4100
  call void @llvm.dbg.value(metadata i64 %21, metadata !815, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %0, metadata !3893, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %21, metadata !3896, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %2, metadata !3897, metadata !DIExpression()), !dbg !4114
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4116
  call void @llvm.dbg.value(metadata ptr %22, metadata !3901, metadata !DIExpression()), !dbg !4117
  %23 = icmp eq ptr %22, null, !dbg !4119
  br i1 %23, label %24, label %25, !dbg !4120

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4121
  unreachable, !dbg !4121

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !812, metadata !DIExpression()), !dbg !4100
  store i64 %21, ptr %1, align 8, !dbg !4122, !tbaa !2918
  ret ptr %22, !dbg !4123
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !819 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !827, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %1, metadata !828, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %2, metadata !829, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %3, metadata !830, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %4, metadata !831, metadata !DIExpression()), !dbg !4124
  %6 = load i64, ptr %1, align 8, !dbg !4125, !tbaa !2918
  call void @llvm.dbg.value(metadata i64 %6, metadata !832, metadata !DIExpression()), !dbg !4124
  %7 = ashr i64 %6, 1, !dbg !4126
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4126
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4126
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4126
  call void @llvm.dbg.value(metadata i64 %10, metadata !833, metadata !DIExpression()), !dbg !4124
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %11, metadata !833, metadata !DIExpression()), !dbg !4124
  %12 = icmp sgt i64 %3, -1, !dbg !4129
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4131
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4131
  call void @llvm.dbg.value(metadata i64 %15, metadata !833, metadata !DIExpression()), !dbg !4124
  %16 = icmp slt i64 %4, 0, !dbg !4132
  br i1 %16, label %17, label %30, !dbg !4132

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4132
  br i1 %18, label %19, label %24, !dbg !4132

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4132
  %21 = udiv i64 9223372036854775807, %20, !dbg !4132
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4132
  br i1 %23, label %46, label %43, !dbg !4132

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4132
  br i1 %25, label %43, label %26, !dbg !4132

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4132
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4132
  %29 = icmp ult i64 %28, %15, !dbg !4132
  br i1 %29, label %46, label %43, !dbg !4132

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4132
  br i1 %31, label %43, label %32, !dbg !4132

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4132
  br i1 %33, label %34, label %40, !dbg !4132

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4132
  br i1 %35, label %43, label %36, !dbg !4132

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4132
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4132
  %39 = icmp ult i64 %38, %4, !dbg !4132
  br i1 %39, label %46, label %43, !dbg !4132

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4132
  br i1 %42, label %46, label %43, !dbg !4132

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !834, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4124
  %44 = mul i64 %15, %4, !dbg !4132
  call void @llvm.dbg.value(metadata i64 %44, metadata !834, metadata !DIExpression()), !dbg !4124
  %45 = icmp slt i64 %44, 128, !dbg !4132
  br i1 %45, label %46, label %51, !dbg !4132

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !835, metadata !DIExpression()), !dbg !4124
  %48 = sdiv i64 %47, %4, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %48, metadata !833, metadata !DIExpression()), !dbg !4124
  %49 = srem i64 %47, %4, !dbg !4136
  %50 = sub nsw i64 %47, %49, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %50, metadata !834, metadata !DIExpression()), !dbg !4124
  br label %51, !dbg !4138

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4124
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4124
  call void @llvm.dbg.value(metadata i64 %53, metadata !834, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %52, metadata !833, metadata !DIExpression()), !dbg !4124
  %54 = icmp eq ptr %0, null, !dbg !4139
  br i1 %54, label %55, label %56, !dbg !4141

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4142, !tbaa !2918
  br label %56, !dbg !4143

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4144
  %58 = icmp slt i64 %57, %2, !dbg !4146
  br i1 %58, label %59, label %96, !dbg !4147

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4148
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4148
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4148
  call void @llvm.dbg.value(metadata i64 %62, metadata !833, metadata !DIExpression()), !dbg !4124
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4149
  br i1 %65, label %95, label %66, !dbg !4149

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4150

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4150
  br i1 %68, label %69, label %74, !dbg !4150

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4150
  %71 = udiv i64 9223372036854775807, %70, !dbg !4150
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4150
  br i1 %73, label %95, label %93, !dbg !4150

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4150
  br i1 %75, label %93, label %76, !dbg !4150

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4150
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4150
  %79 = icmp ult i64 %78, %62, !dbg !4150
  br i1 %79, label %95, label %93, !dbg !4150

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4150
  br i1 %81, label %93, label %82, !dbg !4150

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4150
  br i1 %83, label %84, label %90, !dbg !4150

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4150
  br i1 %85, label %93, label %86, !dbg !4150

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4150
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4150
  %89 = icmp ult i64 %88, %4, !dbg !4150
  br i1 %89, label %95, label %93, !dbg !4150

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4150
  br i1 %92, label %95, label %93, !dbg !4150

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !834, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4124
  %94 = mul i64 %62, %4, !dbg !4150
  call void @llvm.dbg.value(metadata i64 %94, metadata !834, metadata !DIExpression()), !dbg !4124
  br label %96, !dbg !4151

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !4152
  unreachable, !dbg !4152

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4124
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4124
  call void @llvm.dbg.value(metadata i64 %98, metadata !834, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %97, metadata !833, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %0, metadata !3970, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i64 %98, metadata !3971, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata ptr %0, metadata !3973, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %98, metadata !3977, metadata !DIExpression()), !dbg !4155
  %99 = icmp eq i64 %98, 0, !dbg !4157
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4157
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !4158
  call void @llvm.dbg.value(metadata ptr %101, metadata !3901, metadata !DIExpression()), !dbg !4159
  %102 = icmp eq ptr %101, null, !dbg !4161
  br i1 %102, label %103, label %104, !dbg !4162

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !4163
  unreachable, !dbg !4163

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !827, metadata !DIExpression()), !dbg !4124
  store i64 %97, ptr %1, align 8, !dbg !4164, !tbaa !2918
  ret ptr %101, !dbg !4165
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4166 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4168, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i64 %0, metadata !4170, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 1, metadata !4173, metadata !DIExpression()), !dbg !4174
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4176
  call void @llvm.dbg.value(metadata ptr %2, metadata !3901, metadata !DIExpression()), !dbg !4177
  %3 = icmp eq ptr %2, null, !dbg !4179
  br i1 %3, label %4, label %5, !dbg !4180

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4181
  unreachable, !dbg !4181

5:                                                ; preds = %1
  ret ptr %2, !dbg !4182
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4183 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4171 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4170, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %1, metadata !4173, metadata !DIExpression()), !dbg !4184
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4185
  call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !4186
  %4 = icmp eq ptr %3, null, !dbg !4188
  br i1 %4, label %5, label %6, !dbg !4189

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4190
  unreachable, !dbg !4190

6:                                                ; preds = %2
  ret ptr %3, !dbg !4191
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4192 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4194, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %0, metadata !4196, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 1, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 1, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 1, metadata !4205, metadata !DIExpression()), !dbg !4206
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4208
  call void @llvm.dbg.value(metadata ptr %2, metadata !3901, metadata !DIExpression()), !dbg !4209
  %3 = icmp eq ptr %2, null, !dbg !4211
  br i1 %3, label %4, label %5, !dbg !4212

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4213
  unreachable, !dbg !4213

5:                                                ; preds = %1
  ret ptr %2, !dbg !4214
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4197 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4196, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %1, metadata !4199, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %1, metadata !4205, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %1, metadata !4205, metadata !DIExpression()), !dbg !4216
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4218
  call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !4219
  %4 = icmp eq ptr %3, null, !dbg !4221
  br i1 %4, label %5, label %6, !dbg !4222

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4223
  unreachable, !dbg !4223

6:                                                ; preds = %2
  ret ptr %3, !dbg !4224
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4225 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !3923, metadata !DIExpression()), !dbg !4232
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4234
  call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !4235
  %4 = icmp eq ptr %3, null, !dbg !4237
  br i1 %4, label %5, label %6, !dbg !4238

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4239
  unreachable, !dbg !4239

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4240, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %0, metadata !4243, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4247
  ret ptr %3, !dbg !4248
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4249 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4253, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %1, metadata !4254, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !3938, metadata !DIExpression()), !dbg !4258
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !4261
  %4 = icmp eq ptr %3, null, !dbg !4263
  br i1 %4, label %5, label %6, !dbg !4264

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4265
  unreachable, !dbg !4265

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4240, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata ptr %0, metadata !4243, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4268
  ret ptr %3, !dbg !4269
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4270 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %1, metadata !4275, metadata !DIExpression()), !dbg !4277
  %3 = add nsw i64 %1, 1, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %3, metadata !3936, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %3, metadata !3938, metadata !DIExpression()), !dbg !4281
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4283
  call void @llvm.dbg.value(metadata ptr %4, metadata !3901, metadata !DIExpression()), !dbg !4284
  %5 = icmp eq ptr %4, null, !dbg !4286
  br i1 %5, label %6, label %7, !dbg !4287

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4288
  unreachable, !dbg !4288

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4276, metadata !DIExpression()), !dbg !4277
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4289
  store i8 0, ptr %8, align 1, !dbg !4290, !tbaa !946
  call void @llvm.dbg.value(metadata ptr %4, metadata !4240, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %0, metadata !4243, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4291
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4293
  ret ptr %4, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4295 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4297, metadata !DIExpression()), !dbg !4298
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4299
  %3 = add i64 %2, 1, !dbg !4300
  call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %3, metadata !4230, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %3, metadata !3923, metadata !DIExpression()), !dbg !4303
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %4, metadata !3901, metadata !DIExpression()), !dbg !4306
  %5 = icmp eq ptr %4, null, !dbg !4308
  br i1 %5, label %6, label %7, !dbg !4309

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4310
  unreachable, !dbg !4310

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4240, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata ptr %0, metadata !4243, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %3, metadata !4244, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4313
  ret ptr %4, !dbg !4314
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4315 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4320, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %1, metadata !4317, metadata !DIExpression()), !dbg !4321
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #39, !dbg !4320
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #39, !dbg !4320
  %3 = icmp eq i32 %1, 0, !dbg !4320
  tail call void @llvm.assume(i1 %3), !dbg !4320
  tail call void @abort() #41, !dbg !4322
  unreachable, !dbg !4322
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4323 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4328, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %1, metadata !4329, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %2, metadata !4330, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %3, metadata !4331, metadata !DIExpression()), !dbg !4333
  %5 = icmp eq ptr %1, null, !dbg !4334
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4336
  %7 = select i1 %5, ptr @.str.145, ptr %1, !dbg !4336
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4336
  call void @llvm.dbg.value(metadata i64 %8, metadata !4330, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %7, metadata !4329, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %6, metadata !4328, metadata !DIExpression()), !dbg !4333
  %9 = icmp eq ptr %3, null, !dbg !4337
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4339
  call void @llvm.dbg.value(metadata ptr %10, metadata !4331, metadata !DIExpression()), !dbg !4333
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4340
  call void @llvm.dbg.value(metadata i64 %11, metadata !4332, metadata !DIExpression()), !dbg !4333
  %12 = icmp ult i64 %11, -3, !dbg !4341
  br i1 %12, label %13, label %17, !dbg !4343

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4344
  %15 = icmp eq i32 %14, 0, !dbg !4344
  br i1 %15, label %16, label %29, !dbg !4345

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4346, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata ptr %10, metadata !4353, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 0, metadata !4356, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 8, metadata !4357, metadata !DIExpression()), !dbg !4358
  store i64 0, ptr %10, align 1, !dbg !4360
  br label %29, !dbg !4361

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4362
  br i1 %18, label %19, label %20, !dbg !4364

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4365
  unreachable, !dbg !4365

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4366

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4368
  br i1 %23, label %29, label %24, !dbg !4369

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4370
  br i1 %25, label %29, label %26, !dbg !4373

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4374, !tbaa !946
  %28 = zext i8 %27 to i32, !dbg !4375
  store i32 %28, ptr %6, align 4, !dbg !4376, !tbaa !937
  br label %29, !dbg !4377

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4333
  ret i64 %30, !dbg !4378
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4379 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4385 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4387, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %1, metadata !4388, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %2, metadata !4389, metadata !DIExpression()), !dbg !4391
  %4 = icmp eq i64 %2, 0, !dbg !4392
  br i1 %4, label %8, label %5, !dbg !4392

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4392
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4392
  br i1 %7, label %13, label %8, !dbg !4392

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4391
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4391
  %9 = mul i64 %2, %1, !dbg !4392
  call void @llvm.dbg.value(metadata i64 %9, metadata !4390, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %0, metadata !4394, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %9, metadata !4397, metadata !DIExpression()), !dbg !4398
  %10 = icmp eq i64 %9, 0, !dbg !4400
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4400
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4401
  br label %15, !dbg !4402

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4391
  %14 = tail call ptr @__errno_location() #42, !dbg !4403
  store i32 12, ptr %14, align 4, !dbg !4405, !tbaa !937
  br label %15, !dbg !4406

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4391
  ret ptr %16, !dbg !4407
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4408 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4412, metadata !DIExpression()), !dbg !4417
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4418
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4413, metadata !DIExpression()), !dbg !4419
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4420
  %4 = icmp eq i32 %3, 0, !dbg !4420
  br i1 %4, label %5, label %12, !dbg !4422

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4423, metadata !DIExpression()), !dbg !4427
  %6 = load i16, ptr %2, align 16, !dbg !4430
  %7 = icmp eq i16 %6, 67, !dbg !4430
  br i1 %7, label %11, label %8, !dbg !4431

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4423, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata ptr @.str.1.150, metadata !4426, metadata !DIExpression()), !dbg !4432
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.150, i64 6), !dbg !4434
  %10 = icmp eq i32 %9, 0, !dbg !4435
  br i1 %10, label %11, label %12, !dbg !4436

11:                                               ; preds = %8, %5
  br label %12, !dbg !4437

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4417
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4438
  ret i1 %13, !dbg !4438
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4443, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata ptr %1, metadata !4444, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i64 %2, metadata !4445, metadata !DIExpression()), !dbg !4446
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4447
  ret i32 %4, !dbg !4448
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4449 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4453, metadata !DIExpression()), !dbg !4454
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4455
  ret ptr %2, !dbg !4456
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4459, metadata !DIExpression()), !dbg !4461
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4462
  call void @llvm.dbg.value(metadata ptr %2, metadata !4460, metadata !DIExpression()), !dbg !4461
  ret ptr %2, !dbg !4463
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4464 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4466, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata ptr %1, metadata !4467, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %2, metadata !4468, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 %0, metadata !4459, metadata !DIExpression()), !dbg !4474
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4476
  call void @llvm.dbg.value(metadata ptr %4, metadata !4460, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata ptr %4, metadata !4469, metadata !DIExpression()), !dbg !4473
  %5 = icmp eq ptr %4, null, !dbg !4477
  br i1 %5, label %6, label %9, !dbg !4478

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4479
  br i1 %7, label %19, label %8, !dbg !4482

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4483, !tbaa !946
  br label %19, !dbg !4484

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4485
  call void @llvm.dbg.value(metadata i64 %10, metadata !4470, metadata !DIExpression()), !dbg !4486
  %11 = icmp ult i64 %10, %2, !dbg !4487
  br i1 %11, label %12, label %14, !dbg !4489

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4490
  call void @llvm.dbg.value(metadata ptr %1, metadata !4492, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata ptr %4, metadata !4495, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %13, metadata !4496, metadata !DIExpression()), !dbg !4497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4499
  br label %19, !dbg !4500

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4501
  br i1 %15, label %19, label %16, !dbg !4504

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4505
  call void @llvm.dbg.value(metadata ptr %1, metadata !4492, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata ptr %4, metadata !4495, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 %17, metadata !4496, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4509
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4510
  store i8 0, ptr %18, align 1, !dbg !4511, !tbaa !946
  br label %19, !dbg !4512

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4513
  ret i32 %20, !dbg !4514
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !418, !780, !782, !422, !437, !748, !784, !786, !789, !791, !793, !795, !489, !503, !551, !645, !797, !740, !803, !837, !764, !839, !842, !846, !848}
!llvm.ident = !{!850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850}
!llvm.module.flags = !{!851, !852, !853, !854, !855, !856}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mktemp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "de5003826bec9e5f9730c511d0b9293f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !121, globals: !131, splitDebugInlining: false, nameTableKind: None)
!95 = !{!96, !100, !106}
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 41, baseType: !97, size: 32, elements: !98)
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !{!99}
!99 = !DIEnumerator(name: "SUFFIX_OPTION", value: 128)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 337, baseType: !102, size: 32, elements: !103)
!101 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!105 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 46, baseType: !127)
!126 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !231)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!418 = distinct !DICompileUnit(language: DW_LANG_C11, file: !415, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !419, splitDebugInlining: false, nameTableKind: None)
!419 = !{!413, !416}
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "file_name", scope: !422, file: !423, line: 45, type: !128, isLocal: true, isDefinition: true)
!422 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !424, splitDebugInlining: false, nameTableKind: None)
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
!436 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !437, file: !438, line: 66, type: !484, isLocal: false, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !439, globals: !440, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!439 = !{!123, !130}
!440 = !{!441, !443, !463, !465, !467, !469, !435, !471, !473, !475, !477, !482}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !438, line: 272, type: !171, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "old_file_name", scope: !445, file: !438, line: 304, type: !128, isLocal: true, isDefinition: true)
!445 = distinct !DISubprogram(name: "verror_at_line", scope: !438, file: !438, line: 298, type: !446, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !456)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !102, !102, !128, !97, !128, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !450)
!450 = !{!451, !453, !454, !455}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !449, file: !452, baseType: !97, size: 32)
!452 = !DIFile(filename: "lib/error.c", directory: "/src")
!453 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !449, file: !452, baseType: !97, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !449, file: !452, baseType: !123, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !449, file: !452, baseType: !123, size: 64, offset: 128)
!456 = !{!457, !458, !459, !460, !461, !462}
!457 = !DILocalVariable(name: "status", arg: 1, scope: !445, file: !438, line: 298, type: !102)
!458 = !DILocalVariable(name: "errnum", arg: 2, scope: !445, file: !438, line: 298, type: !102)
!459 = !DILocalVariable(name: "file_name", arg: 3, scope: !445, file: !438, line: 298, type: !128)
!460 = !DILocalVariable(name: "line_number", arg: 4, scope: !445, file: !438, line: 298, type: !97)
!461 = !DILocalVariable(name: "message", arg: 5, scope: !445, file: !438, line: 298, type: !128)
!462 = !DILocalVariable(name: "args", arg: 6, scope: !445, file: !438, line: 298, type: !448)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "old_line_number", scope: !445, file: !438, line: 305, type: !97, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !438, line: 338, type: !290, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !89, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !24, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "error_message_count", scope: !437, file: !438, line: 69, type: !97, isLocal: false, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !437, file: !438, line: 295, type: !102, isLocal: false, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !29, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !479, isLocal: true, isDefinition: true)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 21)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !438, line: 214, type: !171, isLocal: true, isDefinition: true)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null}
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "program_name", scope: !489, file: !490, line: 31, type: !128, isLocal: false, isDefinition: true)
!489 = distinct !DICompileUnit(language: DW_LANG_C11, file: !490, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !491, globals: !492, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!491 = !{!122}
!492 = !{!487, !493, !495}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !490, line: 46, type: !89, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !490, line: 49, type: !290, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "utf07FF", scope: !499, file: !500, line: 46, type: !527, isLocal: true, isDefinition: true)
!499 = distinct !DISubprogram(name: "proper_name_lite", scope: !500, file: !500, line: 38, type: !501, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !505)
!500 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!501 = !DISubroutineType(types: !502)
!502 = !{!128, !128, !128}
!503 = distinct !DICompileUnit(language: DW_LANG_C11, file: !500, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !504, splitDebugInlining: false, nameTableKind: None)
!504 = !{!497}
!505 = !{!506, !507, !508, !509, !514}
!506 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !499, file: !500, line: 38, type: !128)
!507 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !499, file: !500, line: 38, type: !128)
!508 = !DILocalVariable(name: "translation", scope: !499, file: !500, line: 40, type: !128)
!509 = !DILocalVariable(name: "w", scope: !499, file: !500, line: 47, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !511, line: 37, baseType: !512)
!511 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !253, line: 57, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !253, line: 42, baseType: !97)
!514 = !DILocalVariable(name: "mbs", scope: !499, file: !500, line: 48, type: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !516, line: 6, baseType: !517)
!516 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !518, line: 21, baseType: !519)
!518 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 13, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !519, file: !518, line: 15, baseType: !102, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !519, file: !518, line: 20, baseType: !523, size: 32, offset: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !518, line: 16, size: 32, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !523, file: !518, line: 18, baseType: !97, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !523, file: !518, line: 19, baseType: !290, size: 32)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16, elements: !25)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !530, line: 78, type: !89, isLocal: true, isDefinition: true)
!530 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !530, line: 79, type: !295, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !530, line: 80, type: !139, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !530, line: 81, type: !139, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !530, line: 82, type: !275, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !530, line: 83, type: !24, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !530, line: 84, type: !89, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !530, line: 85, type: !29, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !530, line: 86, type: !29, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !530, line: 87, type: !89, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !551, file: !530, line: 76, type: !637, isLocal: false, isDefinition: true)
!551 = distinct !DICompileUnit(language: DW_LANG_C11, file: !530, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !552, retainedTypes: !572, globals: !573, splitDebugInlining: false, nameTableKind: None)
!552 = !{!553, !567, !106}
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !554, line: 42, baseType: !97, size: 32, elements: !555)
!554 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!556 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!557 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!558 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!559 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!560 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!561 = !DIEnumerator(name: "c_quoting_style", value: 5)
!562 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!563 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!564 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!565 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!566 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !554, line: 254, baseType: !97, size: 32, elements: !568)
!568 = !{!569, !570, !571}
!569 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!570 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!571 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!572 = !{!102, !124, !125}
!573 = !{!528, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !574, !578, !588, !590, !595, !597, !599, !601, !603, !626, !633, !635}
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !551, file: !530, line: 92, type: !576, isLocal: false, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 320, elements: !80)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !551, file: !530, line: 1040, type: !580, isLocal: false, isDefinition: true)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !530, line: 56, size: 448, elements: !581)
!581 = !{!582, !583, !584, !586, !587}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !580, file: !530, line: 59, baseType: !553, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !530, line: 62, baseType: !102, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !580, file: !530, line: 66, baseType: !585, size: 256, offset: 64)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !90)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !580, file: !530, line: 69, baseType: !128, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !580, file: !530, line: 72, baseType: !128, size: 64, offset: 384)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !551, file: !530, line: 107, type: !580, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "slot0", scope: !551, file: !530, line: 831, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 256)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !530, line: 321, type: !24, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !530, line: 357, type: !24, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !530, line: 358, type: !24, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !530, line: 199, type: !29, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "quote", scope: !605, file: !530, line: 228, type: !624, isLocal: true, isDefinition: true)
!605 = distinct !DISubprogram(name: "gettext_quote", scope: !530, file: !530, line: 197, type: !606, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!128, !128, !553}
!608 = !{!609, !610, !611, !612, !613}
!609 = !DILocalVariable(name: "msgid", arg: 1, scope: !605, file: !530, line: 197, type: !128)
!610 = !DILocalVariable(name: "s", arg: 2, scope: !605, file: !530, line: 197, type: !553)
!611 = !DILocalVariable(name: "translation", scope: !605, file: !530, line: 199, type: !128)
!612 = !DILocalVariable(name: "w", scope: !605, file: !530, line: 229, type: !510)
!613 = !DILocalVariable(name: "mbs", scope: !605, file: !530, line: 230, type: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !516, line: 6, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !518, line: 21, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 13, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !616, file: !518, line: 15, baseType: !102, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !616, file: !518, line: 20, baseType: !620, size: 32, offset: 32)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !518, line: 16, size: 32, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !620, file: !518, line: 18, baseType: !97, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !620, file: !518, line: 19, baseType: !290, size: 32)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !625)
!625 = !{!26, !292}
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "slotvec", scope: !551, file: !530, line: 834, type: !628, isLocal: true, isDefinition: true)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !530, line: 823, size: 128, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !629, file: !530, line: 825, baseType: !125, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !530, line: 826, baseType: !122, size: 64, offset: 64)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "nslots", scope: !551, file: !530, line: 832, type: !102, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "slotvec0", scope: !551, file: !530, line: 833, type: !629, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 704, elements: !145)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "tryfunc", scope: !641, file: !642, line: 175, type: !660, isLocal: true, isDefinition: true)
!641 = distinct !DISubprogram(name: "gen_tempname_len", scope: !642, file: !642, line: 172, type: !643, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !654)
!642 = !DIFile(filename: "lib/tempname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "89467f8095ceec51ae791cc96ec80d48")
!643 = !DISubroutineType(types: !644)
!644 = !{!102, !122, !102, !102, !102, !125}
!645 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !646, splitDebugInlining: false, nameTableKind: None)
!646 = !{!639, !647, !649}
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !642, line: 226, type: !24, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "letters", scope: !645, file: !642, line: 151, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 504, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 63)
!654 = !{!655, !656, !657, !658, !659}
!655 = !DILocalVariable(name: "tmpl", arg: 1, scope: !641, file: !642, line: 172, type: !122)
!656 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !641, file: !642, line: 172, type: !102)
!657 = !DILocalVariable(name: "flags", arg: 3, scope: !641, file: !642, line: 172, type: !102)
!658 = !DILocalVariable(name: "kind", arg: 4, scope: !641, file: !642, line: 172, type: !102)
!659 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !641, file: !642, line: 173, type: !125)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 192, elements: !307)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!102, !122, !123}
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !667, line: 67, type: !196, isLocal: true, isDefinition: true)
!667 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !667, line: 69, type: !29, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !667, line: 83, type: !29, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !667, line: 83, type: !290, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !667, line: 85, type: !24, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !667, line: 88, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 171)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !667, line: 88, type: !9, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !667, line: 105, type: !361, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !667, line: 109, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 23)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !667, line: 113, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 28)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !667, line: 120, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 32)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !667, line: 127, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 36)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !667, line: 134, type: !338, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !667, line: 142, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 44)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !667, line: 150, type: !159, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !667, line: 159, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 52)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !667, line: 170, type: !181, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !667, line: 248, type: !275, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !667, line: 248, type: !366, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !667, line: 254, type: !275, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !667, line: 254, type: !134, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !667, line: 254, type: !338, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !667, line: 259, type: !3, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !667, line: 259, type: !735, isLocal: true, isDefinition: true)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 29)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !740, file: !741, line: 26, type: !743, isLocal: false, isDefinition: true)
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !742, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!742 = !{!738}
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 376, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 47)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "exit_failure", scope: !748, file: !749, line: 24, type: !751, isLocal: false, isDefinition: true)
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !750, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!750 = !{!746}
!751 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !754, line: 34, type: !306, isLocal: true, isDefinition: true)
!754 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !754, line: 34, type: !29, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !754, line: 34, type: !333, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !761, line: 108, type: !74, isLocal: true, isDefinition: true)
!761 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(name: "internal_state", scope: !764, file: !761, line: 97, type: !767, isLocal: true, isDefinition: true)
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, globals: !766, splitDebugInlining: false, nameTableKind: None)
!765 = !{!123, !125, !130}
!766 = !{!759, !762}
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !516, line: 6, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !518, line: 21, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 13, size: 64, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !769, file: !518, line: 15, baseType: !102, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !769, file: !518, line: 20, baseType: !773, size: 32, offset: 32)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !518, line: 16, size: 32, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !773, file: !518, line: 18, baseType: !97, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !773, file: !518, line: 19, baseType: !290, size: 32)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !779, line: 35, type: !295, isLocal: true, isDefinition: true)
!779 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !491, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!788 = !{!123}
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !796, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!796 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !798, retainedTypes: !788, globals: !802, splitDebugInlining: false, nameTableKind: None)
!798 = !{!799}
!799 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !667, line: 40, baseType: !97, size: 32, elements: !800)
!800 = !{!801}
!801 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!802 = !{!665, !668, !670, !672, !674, !676, !681, !683, !685, !690, !695, !700, !705, !707, !712, !714, !719, !721, !723, !725, !727, !729, !731, !733}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !805, retainedTypes: !836, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!805 = !{!806, !818}
!806 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !807, file: !804, line: 188, baseType: !97, size: 32, elements: !816)
!807 = distinct !DISubprogram(name: "x2nrealloc", scope: !804, file: !804, line: 176, type: !808, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !811)
!808 = !DISubroutineType(types: !809)
!809 = !{!123, !123, !810, !125}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!811 = !{!812, !813, !814, !815}
!812 = !DILocalVariable(name: "p", arg: 1, scope: !807, file: !804, line: 176, type: !123)
!813 = !DILocalVariable(name: "pn", arg: 2, scope: !807, file: !804, line: 176, type: !810)
!814 = !DILocalVariable(name: "s", arg: 3, scope: !807, file: !804, line: 176, type: !125)
!815 = !DILocalVariable(name: "n", scope: !807, file: !804, line: 178, type: !125)
!816 = !{!817}
!817 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!818 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !819, file: !804, line: 228, baseType: !97, size: 32, elements: !816)
!819 = distinct !DISubprogram(name: "xpalloc", scope: !804, file: !804, line: 223, type: !820, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !826)
!820 = !DISubroutineType(types: !821)
!821 = !{!123, !123, !822, !823, !825, !823}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !824, line: 130, baseType: !825)
!824 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !126, line: 35, baseType: !254)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835}
!827 = !DILocalVariable(name: "pa", arg: 1, scope: !819, file: !804, line: 223, type: !123)
!828 = !DILocalVariable(name: "pn", arg: 2, scope: !819, file: !804, line: 223, type: !822)
!829 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !819, file: !804, line: 223, type: !823)
!830 = !DILocalVariable(name: "n_max", arg: 4, scope: !819, file: !804, line: 223, type: !825)
!831 = !DILocalVariable(name: "s", arg: 5, scope: !819, file: !804, line: 223, type: !823)
!832 = !DILocalVariable(name: "n0", scope: !819, file: !804, line: 230, type: !823)
!833 = !DILocalVariable(name: "n", scope: !819, file: !804, line: 237, type: !823)
!834 = !DILocalVariable(name: "nbytes", scope: !819, file: !804, line: 248, type: !823)
!835 = !DILocalVariable(name: "adjusted_nbytes", scope: !819, file: !804, line: 252, type: !823)
!836 = !{!122, !123, !201, !254, !127}
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !838, splitDebugInlining: false, nameTableKind: None)
!838 = !{!752, !755, !757}
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !841, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!841 = !{!201, !127, !123}
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !843, splitDebugInlining: false, nameTableKind: None)
!843 = !{!844, !777}
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !779, line: 35, type: !24, isLocal: true, isDefinition: true)
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!848 = distinct !DICompileUnit(language: DW_LANG_C11, file: !849, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!849 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!850 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!851 = !{i32 7, !"Dwarf Version", i32 5}
!852 = !{i32 2, !"Debug Info Version", i32 3}
!853 = !{i32 1, !"wchar_size", i32 4}
!854 = !{i32 8, !"PIC Level", i32 2}
!855 = !{i32 7, !"PIE Level", i32 2}
!856 = !{i32 7, !"uwtable", i32 2}
!857 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 59, type: !858, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !102}
!860 = !{!861}
!861 = !DILocalVariable(name: "status", arg: 1, scope: !857, file: !2, line: 59, type: !102)
!862 = !DILocation(line: 0, scope: !857)
!863 = !DILocation(line: 61, column: 14, scope: !864)
!864 = distinct !DILexicalBlock(scope: !857, file: !2, line: 61, column: 7)
!865 = !DILocation(line: 61, column: 7, scope: !857)
!866 = !DILocation(line: 62, column: 5, scope: !867)
!867 = distinct !DILexicalBlock(scope: !864, file: !2, line: 62, column: 5)
!868 = !{!869, !869, i64 0}
!869 = !{!"any pointer", !870, i64 0}
!870 = !{!"omnipotent char", !871, i64 0}
!871 = !{!"Simple C/C++ TBAA"}
!872 = !DILocation(line: 65, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !864, file: !2, line: 64, column: 5)
!874 = !DILocation(line: 66, column: 7, scope: !873)
!875 = !DILocation(line: 71, column: 7, scope: !873)
!876 = !DILocation(line: 74, column: 7, scope: !873)
!877 = !DILocation(line: 75, column: 7, scope: !873)
!878 = !DILocation(line: 79, column: 7, scope: !873)
!879 = !DILocation(line: 83, column: 7, scope: !873)
!880 = !DILocation(line: 87, column: 7, scope: !873)
!881 = !DILocation(line: 92, column: 7, scope: !873)
!882 = !DILocation(line: 100, column: 7, scope: !873)
!883 = !DILocation(line: 106, column: 7, scope: !873)
!884 = !DILocation(line: 107, column: 7, scope: !873)
!885 = !DILocalVariable(name: "program", arg: 1, scope: !886, file: !101, line: 836, type: !128)
!886 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !101, file: !101, line: 836, type: !887, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !128}
!889 = !{!885, !890, !897, !898, !900, !901}
!890 = !DILocalVariable(name: "infomap", scope: !886, file: !101, line: 838, type: !891)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 896, elements: !30)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !886, file: !101, line: 838, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !893, file: !101, line: 838, baseType: !128, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !893, file: !101, line: 838, baseType: !128, size: 64, offset: 64)
!897 = !DILocalVariable(name: "node", scope: !886, file: !101, line: 848, type: !128)
!898 = !DILocalVariable(name: "map_prog", scope: !886, file: !101, line: 849, type: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!900 = !DILocalVariable(name: "lc_messages", scope: !886, file: !101, line: 861, type: !128)
!901 = !DILocalVariable(name: "url_program", scope: !886, file: !101, line: 874, type: !128)
!902 = !DILocation(line: 0, scope: !886, inlinedAt: !903)
!903 = distinct !DILocation(line: 108, column: 7, scope: !873)
!904 = !DILocation(line: 857, column: 3, scope: !886, inlinedAt: !903)
!905 = !DILocation(line: 861, column: 29, scope: !886, inlinedAt: !903)
!906 = !DILocation(line: 862, column: 7, scope: !907, inlinedAt: !903)
!907 = distinct !DILexicalBlock(scope: !886, file: !101, line: 862, column: 7)
!908 = !DILocation(line: 862, column: 19, scope: !907, inlinedAt: !903)
!909 = !DILocation(line: 862, column: 22, scope: !907, inlinedAt: !903)
!910 = !DILocation(line: 862, column: 7, scope: !886, inlinedAt: !903)
!911 = !DILocation(line: 868, column: 7, scope: !912, inlinedAt: !903)
!912 = distinct !DILexicalBlock(scope: !907, file: !101, line: 863, column: 5)
!913 = !DILocation(line: 870, column: 5, scope: !912, inlinedAt: !903)
!914 = !DILocation(line: 875, column: 3, scope: !886, inlinedAt: !903)
!915 = !DILocation(line: 877, column: 3, scope: !886, inlinedAt: !903)
!916 = !DILocation(line: 111, column: 3, scope: !857)
!917 = !DISubprogram(name: "dcgettext", scope: !918, file: !918, line: 51, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!918 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!919 = !DISubroutineType(types: !920)
!920 = !{!122, !128, !128, !102}
!921 = !{}
!922 = !DISubprogram(name: "__fprintf_chk", scope: !923, file: !923, line: 93, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!923 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!924 = !DISubroutineType(types: !925)
!925 = !{!102, !926, !102, !927, null}
!926 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!927 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!928 = !DISubprogram(name: "__printf_chk", scope: !923, file: !923, line: 95, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!929 = !DISubroutineType(types: !930)
!930 = !{!102, !102, !927, null}
!931 = !DISubprogram(name: "fputs_unlocked", scope: !932, file: !932, line: 691, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!932 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!933 = !DISubroutineType(types: !934)
!934 = !{!102, !927, !926}
!935 = !DILocation(line: 0, scope: !204)
!936 = !DILocation(line: 581, column: 7, scope: !212)
!937 = !{!938, !938, i64 0}
!938 = !{!"int", !870, i64 0}
!939 = !DILocation(line: 581, column: 19, scope: !212)
!940 = !DILocation(line: 581, column: 7, scope: !204)
!941 = !DILocation(line: 585, column: 26, scope: !211)
!942 = !DILocation(line: 0, scope: !211)
!943 = !DILocation(line: 586, column: 23, scope: !211)
!944 = !DILocation(line: 586, column: 28, scope: !211)
!945 = !DILocation(line: 586, column: 32, scope: !211)
!946 = !{!870, !870, i64 0}
!947 = !DILocation(line: 586, column: 38, scope: !211)
!948 = !DILocalVariable(name: "__s1", arg: 1, scope: !949, file: !950, line: 1359, type: !128)
!949 = distinct !DISubprogram(name: "streq", scope: !950, file: !950, line: 1359, type: !951, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !953)
!950 = !DIFile(filename: "./lib/string.h", directory: "/src")
!951 = !DISubroutineType(types: !952)
!952 = !{!201, !128, !128}
!953 = !{!948, !954}
!954 = !DILocalVariable(name: "__s2", arg: 2, scope: !949, file: !950, line: 1359, type: !128)
!955 = !DILocation(line: 0, scope: !949, inlinedAt: !956)
!956 = distinct !DILocation(line: 586, column: 41, scope: !211)
!957 = !DILocation(line: 1361, column: 11, scope: !949, inlinedAt: !956)
!958 = !DILocation(line: 1361, column: 10, scope: !949, inlinedAt: !956)
!959 = !DILocation(line: 586, column: 19, scope: !211)
!960 = !DILocation(line: 587, column: 5, scope: !211)
!961 = !DILocation(line: 588, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !204, file: !101, line: 588, column: 7)
!963 = !DILocation(line: 588, column: 7, scope: !204)
!964 = !DILocation(line: 590, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !101, line: 589, column: 5)
!966 = !DILocation(line: 591, column: 7, scope: !965)
!967 = !DILocation(line: 595, column: 37, scope: !204)
!968 = !DILocation(line: 595, column: 35, scope: !204)
!969 = !DILocation(line: 596, column: 29, scope: !204)
!970 = !DILocation(line: 597, column: 8, scope: !219)
!971 = !DILocation(line: 597, column: 7, scope: !204)
!972 = !DILocation(line: 604, column: 24, scope: !218)
!973 = !DILocation(line: 604, column: 12, scope: !219)
!974 = !DILocation(line: 0, scope: !217)
!975 = !DILocation(line: 610, column: 16, scope: !217)
!976 = !DILocation(line: 610, column: 7, scope: !217)
!977 = !DILocation(line: 611, column: 21, scope: !217)
!978 = !{!979, !979, i64 0}
!979 = !{!"short", !870, i64 0}
!980 = !DILocation(line: 611, column: 19, scope: !217)
!981 = !DILocation(line: 611, column: 16, scope: !217)
!982 = !DILocation(line: 610, column: 30, scope: !217)
!983 = distinct !{!983, !976, !977, !984}
!984 = !{!"llvm.loop.mustprogress"}
!985 = !DILocation(line: 612, column: 18, scope: !986)
!986 = distinct !DILexicalBlock(scope: !217, file: !101, line: 612, column: 11)
!987 = !DILocation(line: 612, column: 11, scope: !217)
!988 = !DILocation(line: 618, column: 5, scope: !217)
!989 = !DILocation(line: 620, column: 23, scope: !204)
!990 = !DILocation(line: 625, column: 39, scope: !204)
!991 = !DILocation(line: 626, column: 3, scope: !204)
!992 = !DILocation(line: 626, column: 10, scope: !204)
!993 = !DILocation(line: 626, column: 21, scope: !204)
!994 = !DILocation(line: 628, column: 44, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !101, line: 628, column: 11)
!996 = distinct !DILexicalBlock(scope: !204, file: !101, line: 627, column: 5)
!997 = !DILocation(line: 628, column: 32, scope: !995)
!998 = !DILocation(line: 628, column: 49, scope: !995)
!999 = !DILocation(line: 628, column: 11, scope: !996)
!1000 = !DILocation(line: 630, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !996, file: !101, line: 630, column: 11)
!1002 = !DILocation(line: 630, column: 11, scope: !996)
!1003 = !DILocation(line: 632, column: 26, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !101, line: 632, column: 15)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !101, line: 631, column: 9)
!1006 = !DILocation(line: 632, column: 34, scope: !1004)
!1007 = !DILocation(line: 632, column: 37, scope: !1004)
!1008 = !DILocation(line: 632, column: 15, scope: !1005)
!1009 = !DILocation(line: 636, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !101, line: 636, column: 15)
!1011 = !DILocation(line: 636, column: 29, scope: !1010)
!1012 = !DILocation(line: 640, column: 16, scope: !996)
!1013 = distinct !{!1013, !991, !1014, !984}
!1014 = !DILocation(line: 641, column: 5, scope: !204)
!1015 = !DILocation(line: 644, column: 3, scope: !204)
!1016 = !DILocation(line: 0, scope: !949, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 648, column: 31, scope: !204)
!1018 = !DILocation(line: 0, scope: !949, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 649, column: 31, scope: !204)
!1020 = !DILocation(line: 0, scope: !949, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 650, column: 31, scope: !204)
!1022 = !DILocation(line: 0, scope: !949, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 651, column: 31, scope: !204)
!1024 = !DILocation(line: 0, scope: !949, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 652, column: 31, scope: !204)
!1026 = !DILocation(line: 0, scope: !949, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 653, column: 31, scope: !204)
!1028 = !DILocation(line: 0, scope: !949, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 654, column: 31, scope: !204)
!1030 = !DILocation(line: 0, scope: !949, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 655, column: 31, scope: !204)
!1032 = !DILocation(line: 0, scope: !949, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 656, column: 31, scope: !204)
!1034 = !DILocation(line: 0, scope: !949, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 657, column: 31, scope: !204)
!1036 = !DILocation(line: 663, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !204, file: !101, line: 663, column: 7)
!1038 = !DILocation(line: 664, column: 7, scope: !1037)
!1039 = !DILocation(line: 664, column: 10, scope: !1037)
!1040 = !DILocation(line: 663, column: 7, scope: !204)
!1041 = !DILocation(line: 669, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !101, line: 665, column: 5)
!1043 = !DILocation(line: 671, column: 5, scope: !1042)
!1044 = !DILocation(line: 676, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !101, line: 673, column: 5)
!1046 = !DILocation(line: 679, column: 3, scope: !204)
!1047 = !DILocation(line: 683, column: 3, scope: !204)
!1048 = !DILocation(line: 686, column: 3, scope: !204)
!1049 = !DILocation(line: 688, column: 3, scope: !204)
!1050 = !DILocation(line: 691, column: 3, scope: !204)
!1051 = !DILocation(line: 695, column: 3, scope: !204)
!1052 = !DILocation(line: 696, column: 1, scope: !204)
!1053 = !DISubprogram(name: "setlocale", scope: !1054, file: !1054, line: 122, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1054 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!122, !102, !128}
!1057 = !DISubprogram(name: "strncmp", scope: !1058, file: !1058, line: 159, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1058 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!102, !128, !128, !125}
!1061 = !DISubprogram(name: "exit", scope: !1062, file: !1062, line: 624, type: !858, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1062 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1063 = !DISubprogram(name: "getenv", scope: !1062, file: !1062, line: 641, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!122, !128}
!1066 = !DISubprogram(name: "strcmp", scope: !1058, file: !1058, line: 156, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!102, !128, !128}
!1069 = !DISubprogram(name: "strspn", scope: !1058, file: !1058, line: 297, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!127, !128, !128}
!1072 = !DISubprogram(name: "strchr", scope: !1058, file: !1058, line: 246, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!122, !128, !102}
!1075 = !DISubprogram(name: "__ctype_b_loc", scope: !107, file: !107, line: 79, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1081 = !DISubprogram(name: "strcspn", scope: !1058, file: !1058, line: 293, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1082 = !DISubprogram(name: "fwrite_unlocked", scope: !932, file: !932, line: 704, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!125, !1085, !125, !125, !926}
!1085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1088 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 154, type: !1089, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1092)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!102, !102, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1113, !1118, !1122, !1125, !1127}
!1093 = !DILocalVariable(name: "argc", arg: 1, scope: !1088, file: !2, line: 154, type: !102)
!1094 = !DILocalVariable(name: "argv", arg: 2, scope: !1088, file: !2, line: 154, type: !1091)
!1095 = !DILocalVariable(name: "dest_dir", scope: !1088, file: !2, line: 156, type: !128)
!1096 = !DILocalVariable(name: "dest_dir_arg", scope: !1088, file: !2, line: 157, type: !128)
!1097 = !DILocalVariable(name: "suppress_file_err", scope: !1088, file: !2, line: 158, type: !201)
!1098 = !DILocalVariable(name: "c", scope: !1088, file: !2, line: 159, type: !102)
!1099 = !DILocalVariable(name: "template", scope: !1088, file: !2, line: 160, type: !122)
!1100 = !DILocalVariable(name: "suffix", scope: !1088, file: !2, line: 161, type: !122)
!1101 = !DILocalVariable(name: "use_dest_dir", scope: !1088, file: !2, line: 162, type: !201)
!1102 = !DILocalVariable(name: "deprecated_t_option", scope: !1088, file: !2, line: 163, type: !201)
!1103 = !DILocalVariable(name: "create_directory", scope: !1088, file: !2, line: 164, type: !201)
!1104 = !DILocalVariable(name: "dry_run", scope: !1088, file: !2, line: 165, type: !201)
!1105 = !DILocalVariable(name: "status", scope: !1088, file: !2, line: 166, type: !102)
!1106 = !DILocalVariable(name: "x_count", scope: !1088, file: !2, line: 167, type: !125)
!1107 = !DILocalVariable(name: "suffix_len", scope: !1088, file: !2, line: 168, type: !125)
!1108 = !DILocalVariable(name: "dest_name", scope: !1088, file: !2, line: 169, type: !122)
!1109 = !DILocalVariable(name: "n_args", scope: !1088, file: !2, line: 215, type: !102)
!1110 = !DILocalVariable(name: "len", scope: !1111, file: !2, line: 234, type: !125)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 233, column: 5)
!1112 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 232, column: 7)
!1113 = !DILocalVariable(name: "env", scope: !1114, file: !2, line: 280, type: !122)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 279, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 278, column: 11)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 277, column: 5)
!1117 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 276, column: 7)
!1118 = !DILocalVariable(name: "env", scope: !1119, file: !2, line: 299, type: !122)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 298, column: 13)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 295, column: 15)
!1121 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 294, column: 9)
!1122 = !DILocalVariable(name: "err", scope: !1123, file: !2, line: 321, type: !102)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 320, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 319, column: 7)
!1125 = !DILocalVariable(name: "fd", scope: !1126, file: !2, line: 332, type: !102)
!1126 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 331, column: 5)
!1127 = !DILocalVariable(name: "saved_errno", scope: !1128, file: !2, line: 349, type: !102)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 348, column: 9)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 347, column: 11)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 343, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 342, column: 7)
!1132 = !DILocation(line: 0, scope: !1088)
!1133 = !DILocation(line: 172, column: 21, scope: !1088)
!1134 = !DILocation(line: 172, column: 3, scope: !1088)
!1135 = !DILocation(line: 173, column: 3, scope: !1088)
!1136 = !DILocation(line: 174, column: 3, scope: !1088)
!1137 = !DILocation(line: 175, column: 3, scope: !1088)
!1138 = !DILocation(line: 177, column: 3, scope: !1088)
!1139 = !DILocation(line: 179, column: 3, scope: !1088)
!1140 = !DILocation(line: 158, column: 8, scope: !1088)
!1141 = distinct !{!1141, !1139, !1142, !984}
!1142 = !DILocation(line: 213, column: 5, scope: !1088)
!1143 = !DILocation(line: 179, column: 15, scope: !1088)
!1144 = distinct !{!1144, !1139, !1142, !984, !1145}
!1145 = !{!"llvm.loop.peeled.count", i32 1}
!1146 = !DILocation(line: 187, column: 26, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 182, column: 9)
!1148 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 180, column: 5)
!1149 = !DILocation(line: 189, column: 11, scope: !1147)
!1150 = !DILocation(line: 196, column: 11, scope: !1147)
!1151 = !DILocation(line: 199, column: 11, scope: !1147)
!1152 = !DILocation(line: 202, column: 20, scope: !1147)
!1153 = !DILocation(line: 203, column: 11, scope: !1147)
!1154 = !DILocation(line: 205, column: 9, scope: !1147)
!1155 = !DILocation(line: 209, column: 9, scope: !1147)
!1156 = !DILocation(line: 211, column: 11, scope: !1147)
!1157 = !DILocation(line: 215, column: 23, scope: !1088)
!1158 = !DILocation(line: 215, column: 21, scope: !1088)
!1159 = !DILocation(line: 216, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 216, column: 7)
!1161 = !DILocation(line: 216, column: 7, scope: !1088)
!1162 = !DILocation(line: 218, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 217, column: 5)
!1164 = !DILocation(line: 219, column: 7, scope: !1163)
!1165 = !DILocation(line: 222, column: 14, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 222, column: 7)
!1167 = !DILocation(line: 222, column: 7, scope: !1088)
!1168 = !DILocation(line: 229, column: 18, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 228, column: 5)
!1170 = !DILocation(line: 0, scope: !1166)
!1171 = !DILocation(line: 232, column: 7, scope: !1112)
!1172 = !DILocation(line: 232, column: 7, scope: !1088)
!1173 = !DILocation(line: 234, column: 20, scope: !1111)
!1174 = !DILocation(line: 0, scope: !1111)
!1175 = !DILocation(line: 235, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 235, column: 11)
!1177 = !DILocation(line: 235, column: 16, scope: !1176)
!1178 = !DILocation(line: 235, column: 32, scope: !1176)
!1179 = !DILocation(line: 235, column: 19, scope: !1176)
!1180 = !DILocation(line: 235, column: 37, scope: !1176)
!1181 = !DILocation(line: 235, column: 11, scope: !1111)
!1182 = !DILocation(line: 237, column: 11, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 236, column: 9)
!1184 = !DILocation(line: 241, column: 20, scope: !1111)
!1185 = !DILocation(line: 242, column: 35, scope: !1111)
!1186 = !DILocation(line: 242, column: 48, scope: !1111)
!1187 = !DILocation(line: 242, column: 19, scope: !1111)
!1188 = !DILocalVariable(name: "__dest", arg: 1, scope: !1189, file: !1190, line: 26, type: !1193)
!1189 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1194)
!1190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!123, !1193, !1085, !125}
!1193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!1194 = !{!1188, !1195, !1196}
!1195 = !DILocalVariable(name: "__src", arg: 2, scope: !1189, file: !1190, line: 26, type: !1085)
!1196 = !DILocalVariable(name: "__len", arg: 3, scope: !1189, file: !1190, line: 26, type: !125)
!1197 = !DILocation(line: 0, scope: !1189, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 243, column: 7, scope: !1111)
!1199 = !DILocation(line: 29, column: 10, scope: !1189, inlinedAt: !1198)
!1200 = !DILocation(line: 244, column: 25, scope: !1111)
!1201 = !DILocation(line: 0, scope: !1189, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 244, column: 7, scope: !1111)
!1203 = !DILocation(line: 29, column: 10, scope: !1189, inlinedAt: !1202)
!1204 = !DILocation(line: 247, column: 5, scope: !1111)
!1205 = !DILocation(line: 250, column: 18, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 249, column: 5)
!1207 = !DILocation(line: 251, column: 16, scope: !1206)
!1208 = !DILocation(line: 252, column: 12, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 252, column: 11)
!1210 = !DILocation(line: 252, column: 11, scope: !1206)
!1211 = !DILocation(line: 253, column: 18, scope: !1209)
!1212 = !DILocation(line: 253, column: 9, scope: !1209)
!1213 = !DILocation(line: 255, column: 15, scope: !1209)
!1214 = !DILocation(line: 0, scope: !1209)
!1215 = !DILocation(line: 256, column: 20, scope: !1206)
!1216 = !DILocation(line: 0, scope: !1112)
!1217 = !DILocation(line: 260, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 260, column: 7)
!1219 = !DILocation(line: 260, column: 18, scope: !1218)
!1220 = !DILocation(line: 260, column: 21, scope: !1218)
!1221 = !DILocation(line: 260, column: 45, scope: !1218)
!1222 = !DILocation(line: 260, column: 7, scope: !1088)
!1223 = !DILocation(line: 262, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 261, column: 5)
!1225 = !DILocation(line: 266, column: 53, scope: !1088)
!1226 = !DILocalVariable(name: "s", arg: 1, scope: !1227, file: !2, line: 115, type: !128)
!1227 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !2, file: !2, line: 115, type: !1228, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!125, !128, !125}
!1230 = !{!1226, !1231, !1232}
!1231 = !DILocalVariable(name: "len", arg: 2, scope: !1227, file: !2, line: 115, type: !125)
!1232 = !DILocalVariable(name: "n", scope: !1227, file: !2, line: 117, type: !125)
!1233 = !DILocation(line: 0, scope: !1227, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 266, column: 13, scope: !1088)
!1235 = !DILocation(line: 118, column: 11, scope: !1236, inlinedAt: !1234)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 118, column: 3)
!1237 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 118, column: 3)
!1238 = !DILocation(line: 118, column: 15, scope: !1236, inlinedAt: !1234)
!1239 = !DILocation(line: 118, column: 24, scope: !1236, inlinedAt: !1234)
!1240 = !DILocation(line: 118, column: 18, scope: !1236, inlinedAt: !1234)
!1241 = !DILocation(line: 118, column: 29, scope: !1236, inlinedAt: !1234)
!1242 = !DILocation(line: 118, column: 3, scope: !1237, inlinedAt: !1234)
!1243 = !DILocation(line: 119, column: 5, scope: !1236, inlinedAt: !1234)
!1244 = distinct !{!1244, !1242, !1245, !984}
!1245 = !DILocation(line: 119, column: 7, scope: !1237, inlinedAt: !1234)
!1246 = !DILocation(line: 267, column: 15, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 267, column: 7)
!1248 = !DILocation(line: 267, column: 7, scope: !1088)
!1249 = !DILocation(line: 270, column: 20, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 270, column: 11)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 268, column: 5)
!1252 = !DILocation(line: 270, column: 11, scope: !1251)
!1253 = !DILocation(line: 271, column: 9, scope: !1250)
!1254 = !DILocation(line: 271, column: 37, scope: !1250)
!1255 = !DILocation(line: 272, column: 7, scope: !1251)
!1256 = !DILocation(line: 276, column: 7, scope: !1117)
!1257 = !DILocation(line: 276, column: 7, scope: !1088)
!1258 = !DILocation(line: 278, column: 11, scope: !1115)
!1259 = !DILocation(line: 278, column: 11, scope: !1116)
!1260 = !DILocation(line: 280, column: 23, scope: !1114)
!1261 = !DILocation(line: 0, scope: !1114)
!1262 = !DILocation(line: 281, column: 15, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 281, column: 15)
!1264 = !DILocation(line: 281, column: 19, scope: !1263)
!1265 = !DILocation(line: 281, column: 22, scope: !1263)
!1266 = !DILocation(line: 281, column: 15, scope: !1114)
!1267 = !DILocation(line: 283, column: 20, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 283, column: 20)
!1269 = !DILocation(line: 283, column: 33, scope: !1268)
!1270 = !DILocation(line: 283, column: 36, scope: !1268)
!1271 = !DILocation(line: 283, column: 20, scope: !1263)
!1272 = !DILocation(line: 0, scope: !1263)
!1273 = !DILocation(line: 288, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 288, column: 15)
!1275 = !DILocation(line: 288, column: 41, scope: !1274)
!1276 = !DILocation(line: 288, column: 15, scope: !1114)
!1277 = !DILocation(line: 289, column: 13, scope: !1274)
!1278 = !DILocation(line: 295, column: 15, scope: !1120)
!1279 = !DILocation(line: 295, column: 28, scope: !1120)
!1280 = !DILocation(line: 295, column: 31, scope: !1120)
!1281 = !DILocation(line: 295, column: 15, scope: !1121)
!1282 = !DILocation(line: 299, column: 27, scope: !1119)
!1283 = !DILocation(line: 0, scope: !1119)
!1284 = !DILocation(line: 300, column: 27, scope: !1119)
!1285 = !DILocation(line: 300, column: 31, scope: !1119)
!1286 = !DILocation(line: 300, column: 34, scope: !1119)
!1287 = !DILocation(line: 0, scope: !1120)
!1288 = !DILocation(line: 302, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 302, column: 15)
!1290 = !DILocation(line: 302, column: 15, scope: !1121)
!1291 = !DILocation(line: 303, column: 13, scope: !1289)
!1292 = !DILocation(line: 0, scope: !1115)
!1293 = !DILocation(line: 309, column: 19, scope: !1116)
!1294 = !DILocation(line: 310, column: 7, scope: !1116)
!1295 = !DILocation(line: 313, column: 5, scope: !1116)
!1296 = !DILocation(line: 317, column: 15, scope: !1088)
!1297 = !DILocation(line: 319, column: 7, scope: !1124)
!1298 = !DILocation(line: 319, column: 7, scope: !1088)
!1299 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1300, file: !2, line: 131, type: !122)
!1300 = distinct !DISubprogram(name: "mkdtemp_len", scope: !2, file: !2, line: 131, type: !1301, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!102, !122, !125, !125, !201}
!1303 = !{!1299, !1304, !1305, !1306}
!1304 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1300, file: !2, line: 131, type: !125)
!1305 = !DILocalVariable(name: "x_len", arg: 3, scope: !1300, file: !2, line: 131, type: !125)
!1306 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1300, file: !2, line: 131, type: !201)
!1307 = !DILocation(line: 0, scope: !1300, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 321, column: 17, scope: !1123)
!1309 = !DILocation(line: 133, column: 34, scope: !1300, inlinedAt: !1308)
!1310 = !DILocation(line: 133, column: 10, scope: !1300, inlinedAt: !1308)
!1311 = !DILocation(line: 0, scope: !1123)
!1312 = !DILocation(line: 322, column: 15, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 322, column: 11)
!1314 = !DILocation(line: 322, column: 11, scope: !1123)
!1315 = !DILocation(line: 324, column: 16, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 324, column: 15)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 323, column: 9)
!1318 = !DILocation(line: 324, column: 15, scope: !1317)
!1319 = !DILocation(line: 325, column: 13, scope: !1316)
!1320 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1321, file: !2, line: 124, type: !122)
!1321 = distinct !DISubprogram(name: "mkstemp_len", scope: !2, file: !2, line: 124, type: !1301, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1322)
!1322 = !{!1320, !1323, !1324, !1325}
!1323 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1321, file: !2, line: 124, type: !125)
!1324 = !DILocalVariable(name: "x_len", arg: 3, scope: !1321, file: !2, line: 124, type: !125)
!1325 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1321, file: !2, line: 124, type: !201)
!1326 = !DILocation(line: 0, scope: !1321, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 332, column: 16, scope: !1126)
!1328 = !DILocation(line: 126, column: 34, scope: !1321, inlinedAt: !1327)
!1329 = !DILocation(line: 126, column: 10, scope: !1321, inlinedAt: !1327)
!1330 = !DILocation(line: 0, scope: !1126)
!1331 = !DILocation(line: 333, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 333, column: 11)
!1333 = !DILocation(line: 333, column: 18, scope: !1332)
!1334 = !DILocation(line: 333, column: 31, scope: !1332)
!1335 = !DILocation(line: 344, column: 7, scope: !1130)
!1336 = !DILocation(line: 347, column: 20, scope: !1129)
!1337 = !DILocation(line: 333, column: 34, scope: !1332)
!1338 = !DILocation(line: 333, column: 45, scope: !1332)
!1339 = !DILocation(line: 333, column: 11, scope: !1126)
!1340 = !DILocation(line: 335, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 335, column: 15)
!1342 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 334, column: 9)
!1343 = !DILocation(line: 335, column: 15, scope: !1342)
!1344 = !DILocation(line: 336, column: 13, scope: !1341)
!1345 = !DILocation(line: 347, column: 39, scope: !1129)
!1346 = !DILocation(line: 347, column: 62, scope: !1129)
!1347 = !DILocation(line: 347, column: 48, scope: !1129)
!1348 = !DILocation(line: 347, column: 70, scope: !1129)
!1349 = !DILocation(line: 347, column: 11, scope: !1130)
!1350 = !DILocation(line: 349, column: 29, scope: !1128)
!1351 = !DILocation(line: 0, scope: !1128)
!1352 = !DILocation(line: 350, column: 11, scope: !1128)
!1353 = !DILocation(line: 351, column: 16, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 351, column: 15)
!1355 = !DILocation(line: 351, column: 15, scope: !1128)
!1356 = !DILocation(line: 352, column: 13, scope: !1354)
!1357 = !DILocation(line: 357, column: 3, scope: !1088)
!1358 = !DISubprogram(name: "bindtextdomain", scope: !918, file: !918, line: 86, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!122, !128, !128}
!1361 = !DISubprogram(name: "textdomain", scope: !918, file: !918, line: 82, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1362 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !2, file: !2, line: 145, type: !485, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !921)
!1363 = !DILocation(line: 147, column: 8, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 147, column: 7)
!1365 = !DILocation(line: 147, column: 7, scope: !1362)
!1366 = !DILocation(line: 148, column: 5, scope: !1364)
!1367 = !DILocation(line: 149, column: 26, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 149, column: 12)
!1369 = !DILocation(line: 149, column: 12, scope: !1368)
!1370 = !DILocation(line: 149, column: 34, scope: !1368)
!1371 = !DILocation(line: 149, column: 12, scope: !1364)
!1372 = !DILocation(line: 150, column: 5, scope: !1368)
!1373 = !DILocation(line: 151, column: 1, scope: !1362)
!1374 = !DISubprogram(name: "atexit", scope: !1062, file: !1062, line: 602, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!102, !484}
!1377 = !DISubprogram(name: "getopt_long", scope: !405, file: !405, line: 66, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!102, !102, !1380, !128, !1382, !410}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1383 = !DISubprogram(name: "strlen", scope: !1058, file: !1058, line: 407, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!127, !128}
!1386 = !DISubprogram(name: "strrchr", scope: !1058, file: !1058, line: 273, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1387 = !DISubprogram(name: "free", scope: !1062, file: !1062, line: 555, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !123}
!1390 = !DISubprogram(name: "__errno_location", scope: !1391, file: !1391, line: 37, type: !1392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1391 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!410}
!1394 = !DISubprogram(name: "puts", scope: !932, file: !932, line: 661, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!102, !128}
!1397 = !DISubprogram(name: "close", scope: !1398, file: !1398, line: 358, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1398 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!102, !102}
!1401 = !DISubprogram(name: "remove", scope: !932, file: !932, line: 152, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1402 = !DISubprogram(name: "_exit", scope: !1398, file: !1398, line: 624, type: !858, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1403 = distinct !DISubprogram(name: "last_component", scope: !781, file: !781, line: 29, type: !1064, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !1404)
!1404 = !{!1405, !1406, !1407, !1408}
!1405 = !DILocalVariable(name: "name", arg: 1, scope: !1403, file: !781, line: 29, type: !128)
!1406 = !DILocalVariable(name: "base", scope: !1403, file: !781, line: 31, type: !128)
!1407 = !DILocalVariable(name: "last_was_slash", scope: !1403, file: !781, line: 35, type: !201)
!1408 = !DILocalVariable(name: "p", scope: !1409, file: !781, line: 36, type: !128)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !781, line: 36, column: 3)
!1410 = !DILocation(line: 0, scope: !1403)
!1411 = !DILocation(line: 32, column: 3, scope: !1403)
!1412 = !DILocation(line: 32, column: 10, scope: !1403)
!1413 = !DILocation(line: 33, column: 9, scope: !1403)
!1414 = distinct !{!1414, !1411, !1413, !984}
!1415 = !DILocation(line: 36, column: 30, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !781, line: 36, column: 3)
!1417 = !DILocation(line: 31, column: 15, scope: !1403)
!1418 = !DILocation(line: 36, scope: !1409)
!1419 = !DILocation(line: 0, scope: !1409)
!1420 = !DILocation(line: 36, column: 3, scope: !1409)
!1421 = !DILocation(line: 47, column: 3, scope: !1403)
!1422 = !DILocation(line: 40, column: 16, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !781, line: 40, column: 16)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !781, line: 38, column: 11)
!1425 = distinct !DILexicalBlock(scope: !1416, file: !781, line: 37, column: 5)
!1426 = !DILocation(line: 40, column: 16, scope: !1424)
!1427 = !DILocation(line: 36, column: 35, scope: !1416)
!1428 = !DILocation(line: 36, column: 3, scope: !1416)
!1429 = distinct !{!1429, !1420, !1430, !984}
!1430 = !DILocation(line: 45, column: 5, scope: !1409)
!1431 = distinct !DISubprogram(name: "base_len", scope: !781, file: !781, line: 51, type: !1432, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!125, !128}
!1434 = !{!1435, !1436, !1437}
!1435 = !DILocalVariable(name: "name", arg: 1, scope: !1431, file: !781, line: 51, type: !128)
!1436 = !DILocalVariable(name: "len", scope: !1431, file: !781, line: 53, type: !125)
!1437 = !DILocalVariable(name: "prefix_len", scope: !1431, file: !781, line: 61, type: !125)
!1438 = !DILocation(line: 0, scope: !1431)
!1439 = !DILocation(line: 54, column: 14, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1431, file: !781, line: 54, column: 3)
!1441 = !DILocation(line: 54, column: 8, scope: !1440)
!1442 = !DILocation(line: 54, scope: !1440)
!1443 = !DILocation(line: 54, column: 32, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !781, line: 54, column: 3)
!1445 = !DILocation(line: 54, column: 38, scope: !1444)
!1446 = !DILocation(line: 54, column: 41, scope: !1444)
!1447 = !DILocation(line: 54, column: 3, scope: !1440)
!1448 = distinct !{!1448, !1447, !1449, !984}
!1449 = !DILocation(line: 55, column: 5, scope: !1440)
!1450 = !DILocation(line: 66, column: 3, scope: !1431)
!1451 = distinct !DISubprogram(name: "close_stream", scope: !783, file: !783, line: 55, type: !1452, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !1488)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!102, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1456, file: !230, line: 51, baseType: !102, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1456, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1456, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1456, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1456, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1456, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1456, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1456, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1456, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1456, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1456, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1456, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1456, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1456, file: !230, line: 70, baseType: !1472, size: 64, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1456, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1456, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1456, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1456, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1456, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1456, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1456, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1456, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1456, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1456, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1456, file: !230, line: 93, baseType: !1472, size: 64, offset: 1344)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1456, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1456, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1456, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1456, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1488 = !{!1489, !1490, !1492, !1493}
!1489 = !DILocalVariable(name: "stream", arg: 1, scope: !1451, file: !783, line: 55, type: !1454)
!1490 = !DILocalVariable(name: "some_pending", scope: !1451, file: !783, line: 57, type: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!1492 = !DILocalVariable(name: "prev_fail", scope: !1451, file: !783, line: 58, type: !1491)
!1493 = !DILocalVariable(name: "fclose_fail", scope: !1451, file: !783, line: 59, type: !1491)
!1494 = !DILocation(line: 0, scope: !1451)
!1495 = !DILocation(line: 57, column: 30, scope: !1451)
!1496 = !DILocalVariable(name: "__stream", arg: 1, scope: !1497, file: !1498, line: 135, type: !1454)
!1497 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1498, file: !1498, line: 135, type: !1452, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !1499)
!1498 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1499 = !{!1496}
!1500 = !DILocation(line: 0, scope: !1497, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 58, column: 27, scope: !1451)
!1502 = !DILocation(line: 137, column: 10, scope: !1497, inlinedAt: !1501)
!1503 = !{!1504, !938, i64 0}
!1504 = !{!"_IO_FILE", !938, i64 0, !869, i64 8, !869, i64 16, !869, i64 24, !869, i64 32, !869, i64 40, !869, i64 48, !869, i64 56, !869, i64 64, !869, i64 72, !869, i64 80, !869, i64 88, !869, i64 96, !869, i64 104, !938, i64 112, !938, i64 116, !1505, i64 120, !979, i64 128, !870, i64 130, !870, i64 131, !869, i64 136, !1505, i64 144, !869, i64 152, !869, i64 160, !869, i64 168, !869, i64 176, !1505, i64 184, !938, i64 192, !870, i64 196}
!1505 = !{!"long", !870, i64 0}
!1506 = !DILocation(line: 58, column: 43, scope: !1451)
!1507 = !DILocation(line: 59, column: 29, scope: !1451)
!1508 = !DILocation(line: 59, column: 45, scope: !1451)
!1509 = !DILocation(line: 69, column: 17, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1451, file: !783, line: 69, column: 7)
!1511 = !DILocation(line: 57, column: 50, scope: !1451)
!1512 = !DILocation(line: 69, column: 33, scope: !1510)
!1513 = !DILocation(line: 69, column: 53, scope: !1510)
!1514 = !DILocation(line: 69, column: 59, scope: !1510)
!1515 = !DILocation(line: 69, column: 7, scope: !1451)
!1516 = !DILocation(line: 71, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1510, file: !783, line: 70, column: 5)
!1518 = !DILocation(line: 72, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1517, file: !783, line: 71, column: 11)
!1520 = !DILocation(line: 72, column: 15, scope: !1519)
!1521 = !DILocation(line: 77, column: 1, scope: !1451)
!1522 = !DISubprogram(name: "__fpending", scope: !1523, file: !1523, line: 75, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1523 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!125, !1454}
!1526 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !423, file: !423, line: 50, type: !887, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1527)
!1527 = !{!1528}
!1528 = !DILocalVariable(name: "file", arg: 1, scope: !1526, file: !423, line: 50, type: !128)
!1529 = !DILocation(line: 0, scope: !1526)
!1530 = !DILocation(line: 52, column: 13, scope: !1526)
!1531 = !DILocation(line: 53, column: 1, scope: !1526)
!1532 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !423, file: !423, line: 87, type: !1533, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !201}
!1535 = !{!1536}
!1536 = !DILocalVariable(name: "ignore", arg: 1, scope: !1532, file: !423, line: 87, type: !201)
!1537 = !DILocation(line: 0, scope: !1532)
!1538 = !DILocation(line: 89, column: 16, scope: !1532)
!1539 = !{!1540, !1540, i64 0}
!1540 = !{!"_Bool", !870, i64 0}
!1541 = !DILocation(line: 90, column: 1, scope: !1532)
!1542 = distinct !DISubprogram(name: "close_stdout", scope: !423, file: !423, line: 116, type: !485, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1543)
!1543 = !{!1544}
!1544 = !DILocalVariable(name: "write_error", scope: !1545, file: !423, line: 121, type: !128)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !423, line: 120, column: 5)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !423, line: 118, column: 7)
!1547 = !DILocation(line: 118, column: 21, scope: !1546)
!1548 = !DILocation(line: 118, column: 7, scope: !1546)
!1549 = !DILocation(line: 118, column: 29, scope: !1546)
!1550 = !DILocation(line: 119, column: 7, scope: !1546)
!1551 = !DILocation(line: 119, column: 12, scope: !1546)
!1552 = !{i8 0, i8 2}
!1553 = !DILocation(line: 119, column: 25, scope: !1546)
!1554 = !DILocation(line: 119, column: 28, scope: !1546)
!1555 = !DILocation(line: 119, column: 34, scope: !1546)
!1556 = !DILocation(line: 118, column: 7, scope: !1542)
!1557 = !DILocation(line: 121, column: 33, scope: !1545)
!1558 = !DILocation(line: 0, scope: !1545)
!1559 = !DILocation(line: 122, column: 11, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1545, file: !423, line: 122, column: 11)
!1561 = !DILocation(line: 0, scope: !1560)
!1562 = !DILocation(line: 122, column: 11, scope: !1545)
!1563 = !DILocation(line: 123, column: 9, scope: !1560)
!1564 = !DILocation(line: 126, column: 9, scope: !1560)
!1565 = !DILocation(line: 128, column: 14, scope: !1545)
!1566 = !DILocation(line: 128, column: 7, scope: !1545)
!1567 = !DILocation(line: 133, column: 42, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1542, file: !423, line: 133, column: 7)
!1569 = !DILocation(line: 133, column: 28, scope: !1568)
!1570 = !DILocation(line: 133, column: 50, scope: !1568)
!1571 = !DILocation(line: 133, column: 7, scope: !1542)
!1572 = !DILocation(line: 134, column: 12, scope: !1568)
!1573 = !DILocation(line: 134, column: 5, scope: !1568)
!1574 = !DILocation(line: 135, column: 1, scope: !1542)
!1575 = distinct !DISubprogram(name: "verror", scope: !438, file: !438, line: 251, type: !1576, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !102, !102, !128, !448}
!1578 = !{!1579, !1580, !1581, !1582}
!1579 = !DILocalVariable(name: "status", arg: 1, scope: !1575, file: !438, line: 251, type: !102)
!1580 = !DILocalVariable(name: "errnum", arg: 2, scope: !1575, file: !438, line: 251, type: !102)
!1581 = !DILocalVariable(name: "message", arg: 3, scope: !1575, file: !438, line: 251, type: !128)
!1582 = !DILocalVariable(name: "args", arg: 4, scope: !1575, file: !438, line: 251, type: !448)
!1583 = !DILocation(line: 0, scope: !1575)
!1584 = !DILocation(line: 261, column: 3, scope: !1575)
!1585 = !DILocation(line: 265, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1575, file: !438, line: 265, column: 7)
!1587 = !DILocation(line: 265, column: 7, scope: !1575)
!1588 = !DILocation(line: 266, column: 5, scope: !1586)
!1589 = !DILocation(line: 272, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !438, line: 268, column: 5)
!1591 = !DILocation(line: 276, column: 3, scope: !1575)
!1592 = !DILocation(line: 282, column: 1, scope: !1575)
!1593 = distinct !DISubprogram(name: "flush_stdout", scope: !438, file: !438, line: 163, type: !485, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1594)
!1594 = !{!1595}
!1595 = !DILocalVariable(name: "stdout_fd", scope: !1593, file: !438, line: 166, type: !102)
!1596 = !DILocation(line: 0, scope: !1593)
!1597 = !DILocalVariable(name: "fd", arg: 1, scope: !1598, file: !438, line: 145, type: !102)
!1598 = distinct !DISubprogram(name: "is_open", scope: !438, file: !438, line: 145, type: !1399, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1599)
!1599 = !{!1597}
!1600 = !DILocation(line: 0, scope: !1598, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 182, column: 25, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1593, file: !438, line: 182, column: 7)
!1603 = !DILocation(line: 157, column: 15, scope: !1598, inlinedAt: !1601)
!1604 = !DILocation(line: 157, column: 12, scope: !1598, inlinedAt: !1601)
!1605 = !DILocation(line: 182, column: 7, scope: !1593)
!1606 = !DILocation(line: 184, column: 5, scope: !1602)
!1607 = !DILocation(line: 185, column: 1, scope: !1593)
!1608 = distinct !DISubprogram(name: "error_tail", scope: !438, file: !438, line: 219, type: !1576, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1609)
!1609 = !{!1610, !1611, !1612, !1613}
!1610 = !DILocalVariable(name: "status", arg: 1, scope: !1608, file: !438, line: 219, type: !102)
!1611 = !DILocalVariable(name: "errnum", arg: 2, scope: !1608, file: !438, line: 219, type: !102)
!1612 = !DILocalVariable(name: "message", arg: 3, scope: !1608, file: !438, line: 219, type: !128)
!1613 = !DILocalVariable(name: "args", arg: 4, scope: !1608, file: !438, line: 219, type: !448)
!1614 = !DILocation(line: 0, scope: !1608)
!1615 = !DILocation(line: 229, column: 13, scope: !1608)
!1616 = !DILocalVariable(name: "__stream", arg: 1, scope: !1617, file: !923, line: 132, type: !1620)
!1617 = distinct !DISubprogram(name: "vfprintf", scope: !923, file: !923, line: 132, type: !1618, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1655)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!102, !1620, !927, !448}
!1620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1623, file: !230, line: 51, baseType: !102, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1623, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1623, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1623, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1623, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1623, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1623, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1623, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1623, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1623, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1623, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1623, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1623, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1623, file: !230, line: 70, baseType: !1639, size: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1623, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1623, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1623, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1623, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1623, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1623, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1623, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1623, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1623, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1623, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1623, file: !230, line: 93, baseType: !1639, size: 64, offset: 1344)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1623, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1623, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1623, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1623, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1655 = !{!1616, !1656, !1657}
!1656 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1617, file: !923, line: 133, type: !927)
!1657 = !DILocalVariable(name: "__ap", arg: 3, scope: !1617, file: !923, line: 133, type: !448)
!1658 = !DILocation(line: 0, scope: !1617, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 229, column: 3, scope: !1608)
!1660 = !DILocation(line: 135, column: 10, scope: !1617, inlinedAt: !1659)
!1661 = !DILocation(line: 232, column: 3, scope: !1608)
!1662 = !DILocation(line: 233, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1608, file: !438, line: 233, column: 7)
!1664 = !DILocation(line: 233, column: 7, scope: !1608)
!1665 = !DILocalVariable(name: "errnum", arg: 1, scope: !1666, file: !438, line: 188, type: !102)
!1666 = distinct !DISubprogram(name: "print_errno_message", scope: !438, file: !438, line: 188, type: !858, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1667)
!1667 = !{!1665, !1668, !1669}
!1668 = !DILocalVariable(name: "s", scope: !1666, file: !438, line: 190, type: !128)
!1669 = !DILocalVariable(name: "errbuf", scope: !1666, file: !438, line: 193, type: !1670)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 1024)
!1673 = !DILocation(line: 0, scope: !1666, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 234, column: 5, scope: !1663)
!1675 = !DILocation(line: 193, column: 3, scope: !1666, inlinedAt: !1674)
!1676 = !DILocation(line: 193, column: 8, scope: !1666, inlinedAt: !1674)
!1677 = !DILocation(line: 195, column: 7, scope: !1666, inlinedAt: !1674)
!1678 = !DILocation(line: 207, column: 9, scope: !1679, inlinedAt: !1674)
!1679 = distinct !DILexicalBlock(scope: !1666, file: !438, line: 207, column: 7)
!1680 = !DILocation(line: 207, column: 7, scope: !1666, inlinedAt: !1674)
!1681 = !DILocation(line: 208, column: 9, scope: !1679, inlinedAt: !1674)
!1682 = !DILocation(line: 208, column: 5, scope: !1679, inlinedAt: !1674)
!1683 = !DILocation(line: 214, column: 3, scope: !1666, inlinedAt: !1674)
!1684 = !DILocation(line: 216, column: 1, scope: !1666, inlinedAt: !1674)
!1685 = !DILocation(line: 234, column: 5, scope: !1663)
!1686 = !DILocation(line: 238, column: 3, scope: !1608)
!1687 = !DILocalVariable(name: "__c", arg: 1, scope: !1688, file: !1498, line: 101, type: !102)
!1688 = distinct !DISubprogram(name: "putc_unlocked", scope: !1498, file: !1498, line: 101, type: !1689, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!102, !102, !1621}
!1691 = !{!1687, !1692}
!1692 = !DILocalVariable(name: "__stream", arg: 2, scope: !1688, file: !1498, line: 101, type: !1621)
!1693 = !DILocation(line: 0, scope: !1688, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 238, column: 3, scope: !1608)
!1695 = !DILocation(line: 103, column: 10, scope: !1688, inlinedAt: !1694)
!1696 = !{!1504, !869, i64 40}
!1697 = !{!1504, !869, i64 48}
!1698 = !{!"branch_weights", i32 2000, i32 1}
!1699 = !DILocation(line: 240, column: 3, scope: !1608)
!1700 = !DILocation(line: 241, column: 7, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1608, file: !438, line: 241, column: 7)
!1702 = !DILocation(line: 241, column: 7, scope: !1608)
!1703 = !DILocation(line: 242, column: 5, scope: !1701)
!1704 = !DILocation(line: 243, column: 1, scope: !1608)
!1705 = !DISubprogram(name: "__vfprintf_chk", scope: !923, file: !923, line: 96, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!102, !1620, !102, !927, !448}
!1708 = !DISubprogram(name: "strerror_r", scope: !1058, file: !1058, line: 444, type: !1709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!122, !102, !122, !125}
!1711 = !DISubprogram(name: "__overflow", scope: !932, file: !932, line: 886, type: !1712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!102, !1621, !102}
!1714 = !DISubprogram(name: "fflush_unlocked", scope: !932, file: !932, line: 239, type: !1715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!102, !1621}
!1717 = !DISubprogram(name: "fcntl", scope: !1718, file: !1718, line: 149, type: !1719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1718 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!102, !102, !102, null}
!1721 = distinct !DISubprogram(name: "error", scope: !438, file: !438, line: 285, type: !1722, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !102, !102, !128, null}
!1724 = !{!1725, !1726, !1727, !1728}
!1725 = !DILocalVariable(name: "status", arg: 1, scope: !1721, file: !438, line: 285, type: !102)
!1726 = !DILocalVariable(name: "errnum", arg: 2, scope: !1721, file: !438, line: 285, type: !102)
!1727 = !DILocalVariable(name: "message", arg: 3, scope: !1721, file: !438, line: 285, type: !128)
!1728 = !DILocalVariable(name: "ap", scope: !1721, file: !438, line: 287, type: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !932, line: 52, baseType: !1730)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1731, line: 14, baseType: !1732)
!1731 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !452, baseType: !1733)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !75)
!1734 = !DILocation(line: 0, scope: !1721)
!1735 = !DILocation(line: 287, column: 3, scope: !1721)
!1736 = !DILocation(line: 287, column: 11, scope: !1721)
!1737 = !DILocation(line: 288, column: 3, scope: !1721)
!1738 = !DILocation(line: 289, column: 3, scope: !1721)
!1739 = !DILocation(line: 290, column: 3, scope: !1721)
!1740 = !DILocation(line: 291, column: 1, scope: !1721)
!1741 = !DILocation(line: 0, scope: !445)
!1742 = !DILocation(line: 302, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !445, file: !438, line: 302, column: 7)
!1744 = !DILocation(line: 302, column: 7, scope: !445)
!1745 = !DILocation(line: 307, column: 11, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !438, line: 307, column: 11)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !438, line: 303, column: 5)
!1748 = !DILocation(line: 307, column: 27, scope: !1746)
!1749 = !DILocation(line: 308, column: 11, scope: !1746)
!1750 = !DILocation(line: 308, column: 28, scope: !1746)
!1751 = !DILocation(line: 308, column: 25, scope: !1746)
!1752 = !DILocation(line: 309, column: 15, scope: !1746)
!1753 = !DILocation(line: 309, column: 33, scope: !1746)
!1754 = !DILocation(line: 310, column: 19, scope: !1746)
!1755 = !DILocation(line: 311, column: 22, scope: !1746)
!1756 = !DILocation(line: 311, column: 56, scope: !1746)
!1757 = !DILocation(line: 307, column: 11, scope: !1747)
!1758 = !DILocation(line: 316, column: 21, scope: !1747)
!1759 = !DILocation(line: 317, column: 23, scope: !1747)
!1760 = !DILocation(line: 318, column: 5, scope: !1747)
!1761 = !DILocation(line: 327, column: 3, scope: !445)
!1762 = !DILocation(line: 331, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !445, file: !438, line: 331, column: 7)
!1764 = !DILocation(line: 331, column: 7, scope: !445)
!1765 = !DILocation(line: 332, column: 5, scope: !1763)
!1766 = !DILocation(line: 338, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !438, line: 334, column: 5)
!1768 = !DILocation(line: 346, column: 3, scope: !445)
!1769 = !DILocation(line: 350, column: 3, scope: !445)
!1770 = !DILocation(line: 356, column: 1, scope: !445)
!1771 = distinct !DISubprogram(name: "error_at_line", scope: !438, file: !438, line: 359, type: !1772, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !102, !102, !128, !97, !128, null}
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780}
!1775 = !DILocalVariable(name: "status", arg: 1, scope: !1771, file: !438, line: 359, type: !102)
!1776 = !DILocalVariable(name: "errnum", arg: 2, scope: !1771, file: !438, line: 359, type: !102)
!1777 = !DILocalVariable(name: "file_name", arg: 3, scope: !1771, file: !438, line: 359, type: !128)
!1778 = !DILocalVariable(name: "line_number", arg: 4, scope: !1771, file: !438, line: 360, type: !97)
!1779 = !DILocalVariable(name: "message", arg: 5, scope: !1771, file: !438, line: 360, type: !128)
!1780 = !DILocalVariable(name: "ap", scope: !1771, file: !438, line: 362, type: !1729)
!1781 = !DILocation(line: 0, scope: !1771)
!1782 = !DILocation(line: 362, column: 3, scope: !1771)
!1783 = !DILocation(line: 362, column: 11, scope: !1771)
!1784 = !DILocation(line: 363, column: 3, scope: !1771)
!1785 = !DILocation(line: 364, column: 3, scope: !1771)
!1786 = !DILocation(line: 366, column: 3, scope: !1771)
!1787 = !DILocation(line: 367, column: 1, scope: !1771)
!1788 = distinct !DISubprogram(name: "rpl_fclose", scope: !785, file: !785, line: 58, type: !1789, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1825)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!102, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1793, file: !230, line: 51, baseType: !102, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1793, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1793, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1793, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1793, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1793, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1793, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1793, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1793, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1793, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1793, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1793, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1793, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1793, file: !230, line: 70, baseType: !1809, size: 64, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1793, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1793, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1793, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1793, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1793, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1793, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1793, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1793, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1793, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1793, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1793, file: !230, line: 93, baseType: !1809, size: 64, offset: 1344)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1793, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1793, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1793, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1793, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DILocalVariable(name: "fp", arg: 1, scope: !1788, file: !785, line: 58, type: !1791)
!1827 = !DILocalVariable(name: "saved_errno", scope: !1788, file: !785, line: 60, type: !102)
!1828 = !DILocalVariable(name: "fd", scope: !1788, file: !785, line: 63, type: !102)
!1829 = !DILocalVariable(name: "result", scope: !1788, file: !785, line: 74, type: !102)
!1830 = !DILocation(line: 0, scope: !1788)
!1831 = !DILocation(line: 63, column: 12, scope: !1788)
!1832 = !DILocation(line: 64, column: 10, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1788, file: !785, line: 64, column: 7)
!1834 = !DILocation(line: 64, column: 7, scope: !1788)
!1835 = !DILocation(line: 65, column: 12, scope: !1833)
!1836 = !DILocation(line: 65, column: 5, scope: !1833)
!1837 = !DILocation(line: 70, column: 9, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1788, file: !785, line: 70, column: 7)
!1839 = !DILocation(line: 70, column: 23, scope: !1838)
!1840 = !DILocation(line: 70, column: 33, scope: !1838)
!1841 = !DILocation(line: 70, column: 26, scope: !1838)
!1842 = !DILocation(line: 70, column: 59, scope: !1838)
!1843 = !DILocation(line: 71, column: 7, scope: !1838)
!1844 = !DILocation(line: 71, column: 10, scope: !1838)
!1845 = !DILocation(line: 70, column: 7, scope: !1788)
!1846 = !DILocation(line: 100, column: 12, scope: !1788)
!1847 = !DILocation(line: 105, column: 7, scope: !1788)
!1848 = !DILocation(line: 72, column: 19, scope: !1838)
!1849 = !DILocation(line: 105, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1788, file: !785, line: 105, column: 7)
!1851 = !DILocation(line: 107, column: 13, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1850, file: !785, line: 106, column: 5)
!1853 = !DILocation(line: 109, column: 5, scope: !1852)
!1854 = !DILocation(line: 112, column: 1, scope: !1788)
!1855 = !DISubprogram(name: "fileno", scope: !932, file: !932, line: 809, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1856 = !DISubprogram(name: "fclose", scope: !932, file: !932, line: 178, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1857 = !DISubprogram(name: "__freading", scope: !1523, file: !1523, line: 51, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1858 = !DISubprogram(name: "lseek", scope: !1398, file: !1398, line: 339, type: !1859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!252, !102, !252, !102}
!1861 = distinct !DISubprogram(name: "rpl_fflush", scope: !787, file: !787, line: 130, type: !1862, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !1898)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!102, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1866, file: !230, line: 51, baseType: !102, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1866, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1866, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1866, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1866, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1866, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1866, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1866, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1866, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1866, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1866, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1866, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1866, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1866, file: !230, line: 70, baseType: !1882, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1866, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1866, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1866, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1866, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1866, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1866, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1866, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1866, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1866, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1866, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1866, file: !230, line: 93, baseType: !1882, size: 64, offset: 1344)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1866, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1866, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1866, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1866, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "stream", arg: 1, scope: !1861, file: !787, line: 130, type: !1864)
!1900 = !DILocation(line: 0, scope: !1861)
!1901 = !DILocation(line: 151, column: 14, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1861, file: !787, line: 151, column: 7)
!1903 = !DILocation(line: 151, column: 22, scope: !1902)
!1904 = !DILocation(line: 151, column: 27, scope: !1902)
!1905 = !DILocation(line: 151, column: 7, scope: !1861)
!1906 = !DILocation(line: 152, column: 12, scope: !1902)
!1907 = !DILocation(line: 152, column: 5, scope: !1902)
!1908 = !DILocalVariable(name: "fp", arg: 1, scope: !1909, file: !787, line: 42, type: !1864)
!1909 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !787, file: !787, line: 42, type: !1910, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !1864}
!1912 = !{!1908}
!1913 = !DILocation(line: 0, scope: !1909, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 157, column: 3, scope: !1861)
!1915 = !DILocation(line: 44, column: 12, scope: !1916, inlinedAt: !1914)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !787, line: 44, column: 7)
!1917 = !DILocation(line: 44, column: 19, scope: !1916, inlinedAt: !1914)
!1918 = !DILocation(line: 44, column: 7, scope: !1909, inlinedAt: !1914)
!1919 = !DILocation(line: 46, column: 5, scope: !1916, inlinedAt: !1914)
!1920 = !DILocation(line: 159, column: 10, scope: !1861)
!1921 = !DILocation(line: 159, column: 3, scope: !1861)
!1922 = !DILocation(line: 236, column: 1, scope: !1861)
!1923 = !DISubprogram(name: "fflush", scope: !932, file: !932, line: 230, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!1924 = distinct !DISubprogram(name: "file_name_concat", scope: !790, file: !790, line: 35, type: !1925, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!122, !128, !128, !1091}
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "dir", arg: 1, scope: !1924, file: !790, line: 35, type: !128)
!1929 = !DILocalVariable(name: "base", arg: 2, scope: !1924, file: !790, line: 35, type: !128)
!1930 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1924, file: !790, line: 35, type: !1091)
!1931 = !DILocalVariable(name: "p", scope: !1924, file: !790, line: 37, type: !122)
!1932 = !DILocation(line: 0, scope: !1924)
!1933 = !DILocation(line: 37, column: 13, scope: !1924)
!1934 = !DILocation(line: 38, column: 9, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1924, file: !790, line: 38, column: 7)
!1936 = !DILocation(line: 38, column: 7, scope: !1924)
!1937 = !DILocation(line: 39, column: 5, scope: !1935)
!1938 = !DILocation(line: 40, column: 3, scope: !1924)
!1939 = distinct !DISubprogram(name: "mfile_name_concat", scope: !792, file: !792, line: 48, type: !1925, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1940)
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1941 = !DILocalVariable(name: "dir", arg: 1, scope: !1939, file: !792, line: 48, type: !128)
!1942 = !DILocalVariable(name: "base", arg: 2, scope: !1939, file: !792, line: 48, type: !128)
!1943 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1939, file: !792, line: 48, type: !1091)
!1944 = !DILocalVariable(name: "dirbase", scope: !1939, file: !792, line: 50, type: !128)
!1945 = !DILocalVariable(name: "dirbaselen", scope: !1939, file: !792, line: 51, type: !125)
!1946 = !DILocalVariable(name: "dirlen", scope: !1939, file: !792, line: 52, type: !125)
!1947 = !DILocalVariable(name: "baselen", scope: !1939, file: !792, line: 53, type: !125)
!1948 = !DILocalVariable(name: "sep", scope: !1939, file: !792, line: 54, type: !4)
!1949 = !DILocalVariable(name: "p_concat", scope: !1939, file: !792, line: 71, type: !122)
!1950 = !DILocalVariable(name: "p", scope: !1951, file: !792, line: 76, type: !122)
!1951 = distinct !DILexicalBlock(scope: !1939, file: !792, line: 75, column: 3)
!1952 = !DILocation(line: 0, scope: !1939)
!1953 = !DILocation(line: 50, column: 25, scope: !1939)
!1954 = !DILocation(line: 51, column: 23, scope: !1939)
!1955 = !DILocation(line: 52, column: 27, scope: !1939)
!1956 = !DILocation(line: 52, column: 33, scope: !1939)
!1957 = !DILocation(line: 53, column: 20, scope: !1939)
!1958 = !DILocation(line: 55, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1939, file: !792, line: 55, column: 7)
!1960 = !DILocation(line: 55, column: 7, scope: !1939)
!1961 = !DILocation(line: 58, column: 13, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !792, line: 58, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !792, line: 56, column: 5)
!1964 = !DILocation(line: 58, column: 39, scope: !1962)
!1965 = !DILocation(line: 58, column: 44, scope: !1962)
!1966 = !DILocation(line: 58, column: 11, scope: !1963)
!1967 = !DILocation(line: 61, column: 12, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1959, file: !792, line: 61, column: 12)
!1969 = !DILocation(line: 61, column: 12, scope: !1959)
!1970 = !DILocation(line: 71, column: 35, scope: !1939)
!1971 = !DILocation(line: 71, column: 52, scope: !1939)
!1972 = !DILocation(line: 71, column: 62, scope: !1939)
!1973 = !DILocation(line: 71, column: 20, scope: !1939)
!1974 = !DILocation(line: 72, column: 16, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1939, file: !792, line: 72, column: 7)
!1976 = !DILocation(line: 72, column: 7, scope: !1939)
!1977 = !DILocalVariable(name: "__dest", arg: 1, scope: !1978, file: !1190, line: 42, type: !1193)
!1978 = distinct !DISubprogram(name: "mempcpy", scope: !1190, file: !1190, line: 42, type: !1191, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1979)
!1979 = !{!1977, !1980, !1981}
!1980 = !DILocalVariable(name: "__src", arg: 2, scope: !1978, file: !1190, line: 42, type: !1085)
!1981 = !DILocalVariable(name: "__len", arg: 3, scope: !1978, file: !1190, line: 42, type: !125)
!1982 = !DILocation(line: 0, scope: !1978, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 78, column: 9, scope: !1951)
!1984 = !DILocation(line: 45, column: 10, scope: !1978, inlinedAt: !1983)
!1985 = !DILocation(line: 0, scope: !1951)
!1986 = !DILocation(line: 79, column: 8, scope: !1951)
!1987 = !DILocation(line: 80, column: 7, scope: !1951)
!1988 = !DILocation(line: 82, column: 9, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1951, file: !792, line: 82, column: 9)
!1990 = !DILocation(line: 82, column: 9, scope: !1951)
!1991 = !DILocation(line: 83, column: 23, scope: !1989)
!1992 = !DILocation(line: 83, column: 7, scope: !1989)
!1993 = !DILocation(line: 0, scope: !1978, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 85, column: 9, scope: !1951)
!1995 = !DILocation(line: 45, column: 10, scope: !1978, inlinedAt: !1994)
!1996 = !DILocation(line: 86, column: 8, scope: !1951)
!1997 = !DILocation(line: 89, column: 3, scope: !1939)
!1998 = !DILocation(line: 90, column: 1, scope: !1939)
!1999 = !DISubprogram(name: "malloc", scope: !1062, file: !1062, line: 540, type: !2000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!123, !125}
!2002 = distinct !DISubprogram(name: "rpl_fseeko", scope: !794, file: !794, line: 28, type: !2003, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2040)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!102, !2005, !2039, !102}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2007, file: !230, line: 51, baseType: !102, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2007, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2007, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2007, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2007, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2007, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2007, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2007, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2007, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2007, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2007, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2007, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2007, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2007, file: !230, line: 70, baseType: !2023, size: 64, offset: 832)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2007, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2007, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2007, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2007, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2007, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2007, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2007, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2007, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2007, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2007, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2007, file: !230, line: 93, baseType: !2023, size: 64, offset: 1344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2007, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2007, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2007, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2007, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !932, line: 63, baseType: !252)
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DILocalVariable(name: "fp", arg: 1, scope: !2002, file: !794, line: 28, type: !2005)
!2042 = !DILocalVariable(name: "offset", arg: 2, scope: !2002, file: !794, line: 28, type: !2039)
!2043 = !DILocalVariable(name: "whence", arg: 3, scope: !2002, file: !794, line: 28, type: !102)
!2044 = !DILocalVariable(name: "pos", scope: !2045, file: !794, line: 123, type: !2039)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !794, line: 119, column: 5)
!2046 = distinct !DILexicalBlock(scope: !2002, file: !794, line: 55, column: 7)
!2047 = !DILocation(line: 0, scope: !2002)
!2048 = !DILocation(line: 55, column: 12, scope: !2046)
!2049 = !{!1504, !869, i64 16}
!2050 = !DILocation(line: 55, column: 33, scope: !2046)
!2051 = !{!1504, !869, i64 8}
!2052 = !DILocation(line: 55, column: 25, scope: !2046)
!2053 = !DILocation(line: 56, column: 7, scope: !2046)
!2054 = !DILocation(line: 56, column: 15, scope: !2046)
!2055 = !DILocation(line: 56, column: 37, scope: !2046)
!2056 = !{!1504, !869, i64 32}
!2057 = !DILocation(line: 56, column: 29, scope: !2046)
!2058 = !DILocation(line: 57, column: 7, scope: !2046)
!2059 = !DILocation(line: 57, column: 15, scope: !2046)
!2060 = !{!1504, !869, i64 72}
!2061 = !DILocation(line: 57, column: 29, scope: !2046)
!2062 = !DILocation(line: 55, column: 7, scope: !2002)
!2063 = !DILocation(line: 123, column: 26, scope: !2045)
!2064 = !DILocation(line: 123, column: 19, scope: !2045)
!2065 = !DILocation(line: 0, scope: !2045)
!2066 = !DILocation(line: 124, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2045, file: !794, line: 124, column: 11)
!2068 = !DILocation(line: 124, column: 11, scope: !2045)
!2069 = !DILocation(line: 135, column: 19, scope: !2045)
!2070 = !DILocation(line: 136, column: 12, scope: !2045)
!2071 = !DILocation(line: 136, column: 20, scope: !2045)
!2072 = !{!1504, !1505, i64 144}
!2073 = !DILocation(line: 167, column: 7, scope: !2045)
!2074 = !DILocation(line: 169, column: 10, scope: !2002)
!2075 = !DILocation(line: 169, column: 3, scope: !2002)
!2076 = !DILocation(line: 170, column: 1, scope: !2002)
!2077 = !DISubprogram(name: "fseeko", scope: !932, file: !932, line: 736, type: !2078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!102, !2005, !252, !102}
!2080 = distinct !DISubprogram(name: "getprogname", scope: !796, file: !796, line: 54, type: !2081, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !921)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!128}
!2083 = !DILocation(line: 58, column: 10, scope: !2080)
!2084 = !DILocation(line: 58, column: 3, scope: !2080)
!2085 = distinct !DISubprogram(name: "set_program_name", scope: !490, file: !490, line: 37, type: !887, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DILocalVariable(name: "argv0", arg: 1, scope: !2085, file: !490, line: 37, type: !128)
!2088 = !DILocalVariable(name: "slash", scope: !2085, file: !490, line: 44, type: !128)
!2089 = !DILocalVariable(name: "base", scope: !2085, file: !490, line: 45, type: !128)
!2090 = !DILocation(line: 0, scope: !2085)
!2091 = !DILocation(line: 44, column: 23, scope: !2085)
!2092 = !DILocation(line: 45, column: 22, scope: !2085)
!2093 = !DILocation(line: 46, column: 17, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2085, file: !490, line: 46, column: 7)
!2095 = !DILocation(line: 46, column: 9, scope: !2094)
!2096 = !DILocation(line: 46, column: 25, scope: !2094)
!2097 = !DILocation(line: 46, column: 40, scope: !2094)
!2098 = !DILocalVariable(name: "__s1", arg: 1, scope: !2099, file: !950, line: 974, type: !1086)
!2099 = distinct !DISubprogram(name: "memeq", scope: !950, file: !950, line: 974, type: !2100, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!201, !1086, !1086, !125}
!2102 = !{!2098, !2103, !2104}
!2103 = !DILocalVariable(name: "__s2", arg: 2, scope: !2099, file: !950, line: 974, type: !1086)
!2104 = !DILocalVariable(name: "__n", arg: 3, scope: !2099, file: !950, line: 974, type: !125)
!2105 = !DILocation(line: 0, scope: !2099, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 46, column: 28, scope: !2094)
!2107 = !DILocation(line: 976, column: 11, scope: !2099, inlinedAt: !2106)
!2108 = !DILocation(line: 976, column: 10, scope: !2099, inlinedAt: !2106)
!2109 = !DILocation(line: 46, column: 7, scope: !2085)
!2110 = !DILocation(line: 49, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !490, line: 49, column: 11)
!2112 = distinct !DILexicalBlock(scope: !2094, file: !490, line: 47, column: 5)
!2113 = !DILocation(line: 49, column: 36, scope: !2111)
!2114 = !DILocation(line: 49, column: 11, scope: !2112)
!2115 = !DILocation(line: 65, column: 16, scope: !2085)
!2116 = !DILocation(line: 71, column: 27, scope: !2085)
!2117 = !DILocation(line: 74, column: 33, scope: !2085)
!2118 = !DILocation(line: 76, column: 1, scope: !2085)
!2119 = !DILocation(line: 0, scope: !499)
!2120 = !DILocation(line: 40, column: 29, scope: !499)
!2121 = !DILocation(line: 41, column: 19, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !499, file: !500, line: 41, column: 7)
!2123 = !DILocation(line: 41, column: 7, scope: !499)
!2124 = !DILocation(line: 47, column: 3, scope: !499)
!2125 = !DILocation(line: 48, column: 3, scope: !499)
!2126 = !DILocation(line: 48, column: 13, scope: !499)
!2127 = !DILocalVariable(name: "ps", arg: 1, scope: !2128, file: !2129, line: 1135, type: !2132)
!2128 = distinct !DISubprogram(name: "mbszero", scope: !2129, file: !2129, line: 1135, type: !2130, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2133)
!2129 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!2133 = !{!2127}
!2134 = !DILocation(line: 0, scope: !2128, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 48, column: 18, scope: !499)
!2136 = !DILocalVariable(name: "__dest", arg: 1, scope: !2137, file: !1190, line: 57, type: !123)
!2137 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2138, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!123, !123, !102, !125}
!2140 = !{!2136, !2141, !2142}
!2141 = !DILocalVariable(name: "__ch", arg: 2, scope: !2137, file: !1190, line: 57, type: !102)
!2142 = !DILocalVariable(name: "__len", arg: 3, scope: !2137, file: !1190, line: 57, type: !125)
!2143 = !DILocation(line: 0, scope: !2137, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 1137, column: 3, scope: !2128, inlinedAt: !2135)
!2145 = !DILocation(line: 59, column: 10, scope: !2137, inlinedAt: !2144)
!2146 = !DILocation(line: 49, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !499, file: !500, line: 49, column: 7)
!2148 = !DILocation(line: 49, column: 39, scope: !2147)
!2149 = !DILocation(line: 49, column: 44, scope: !2147)
!2150 = !DILocation(line: 54, column: 1, scope: !499)
!2151 = !DISubprogram(name: "mbrtoc32", scope: !511, file: !511, line: 57, type: !2152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!125, !2154, !927, !125, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2155)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2132)
!2157 = distinct !DISubprogram(name: "clone_quoting_options", scope: !530, file: !530, line: 113, type: !2158, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2161)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!2160, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!2161 = !{!2162, !2163, !2164}
!2162 = !DILocalVariable(name: "o", arg: 1, scope: !2157, file: !530, line: 113, type: !2160)
!2163 = !DILocalVariable(name: "saved_errno", scope: !2157, file: !530, line: 115, type: !102)
!2164 = !DILocalVariable(name: "p", scope: !2157, file: !530, line: 116, type: !2160)
!2165 = !DILocation(line: 0, scope: !2157)
!2166 = !DILocation(line: 115, column: 21, scope: !2157)
!2167 = !DILocation(line: 116, column: 40, scope: !2157)
!2168 = !DILocation(line: 116, column: 31, scope: !2157)
!2169 = !DILocation(line: 118, column: 9, scope: !2157)
!2170 = !DILocation(line: 119, column: 3, scope: !2157)
!2171 = distinct !DISubprogram(name: "get_quoting_style", scope: !530, file: !530, line: 124, type: !2172, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2176)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!553, !2174}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!2176 = !{!2177}
!2177 = !DILocalVariable(name: "o", arg: 1, scope: !2171, file: !530, line: 124, type: !2174)
!2178 = !DILocation(line: 0, scope: !2171)
!2179 = !DILocation(line: 126, column: 11, scope: !2171)
!2180 = !DILocation(line: 126, column: 46, scope: !2171)
!2181 = !{!2182, !870, i64 0}
!2182 = !{!"quoting_options", !870, i64 0, !938, i64 4, !870, i64 8, !869, i64 40, !869, i64 48}
!2183 = !DILocation(line: 126, column: 3, scope: !2171)
!2184 = distinct !DISubprogram(name: "set_quoting_style", scope: !530, file: !530, line: 132, type: !2185, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !2160, !553}
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "o", arg: 1, scope: !2184, file: !530, line: 132, type: !2160)
!2189 = !DILocalVariable(name: "s", arg: 2, scope: !2184, file: !530, line: 132, type: !553)
!2190 = !DILocation(line: 0, scope: !2184)
!2191 = !DILocation(line: 134, column: 4, scope: !2184)
!2192 = !DILocation(line: 134, column: 45, scope: !2184)
!2193 = !DILocation(line: 135, column: 1, scope: !2184)
!2194 = distinct !DISubprogram(name: "set_char_quoting", scope: !530, file: !530, line: 143, type: !2195, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!102, !2160, !4, !102}
!2197 = !{!2198, !2199, !2200, !2201, !2202, !2204, !2205}
!2198 = !DILocalVariable(name: "o", arg: 1, scope: !2194, file: !530, line: 143, type: !2160)
!2199 = !DILocalVariable(name: "c", arg: 2, scope: !2194, file: !530, line: 143, type: !4)
!2200 = !DILocalVariable(name: "i", arg: 3, scope: !2194, file: !530, line: 143, type: !102)
!2201 = !DILocalVariable(name: "uc", scope: !2194, file: !530, line: 145, type: !130)
!2202 = !DILocalVariable(name: "p", scope: !2194, file: !530, line: 146, type: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2204 = !DILocalVariable(name: "shift", scope: !2194, file: !530, line: 148, type: !102)
!2205 = !DILocalVariable(name: "r", scope: !2194, file: !530, line: 149, type: !97)
!2206 = !DILocation(line: 0, scope: !2194)
!2207 = !DILocation(line: 147, column: 6, scope: !2194)
!2208 = !DILocation(line: 147, column: 41, scope: !2194)
!2209 = !DILocation(line: 147, column: 62, scope: !2194)
!2210 = !DILocation(line: 147, column: 57, scope: !2194)
!2211 = !DILocation(line: 148, column: 15, scope: !2194)
!2212 = !DILocation(line: 149, column: 21, scope: !2194)
!2213 = !DILocation(line: 149, column: 24, scope: !2194)
!2214 = !DILocation(line: 149, column: 34, scope: !2194)
!2215 = !DILocation(line: 150, column: 19, scope: !2194)
!2216 = !DILocation(line: 150, column: 24, scope: !2194)
!2217 = !DILocation(line: 150, column: 6, scope: !2194)
!2218 = !DILocation(line: 151, column: 3, scope: !2194)
!2219 = distinct !DISubprogram(name: "set_quoting_flags", scope: !530, file: !530, line: 159, type: !2220, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!102, !2160, !102}
!2222 = !{!2223, !2224, !2225}
!2223 = !DILocalVariable(name: "o", arg: 1, scope: !2219, file: !530, line: 159, type: !2160)
!2224 = !DILocalVariable(name: "i", arg: 2, scope: !2219, file: !530, line: 159, type: !102)
!2225 = !DILocalVariable(name: "r", scope: !2219, file: !530, line: 163, type: !102)
!2226 = !DILocation(line: 0, scope: !2219)
!2227 = !DILocation(line: 161, column: 8, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2219, file: !530, line: 161, column: 7)
!2229 = !DILocation(line: 161, column: 7, scope: !2219)
!2230 = !DILocation(line: 163, column: 14, scope: !2219)
!2231 = !{!2182, !938, i64 4}
!2232 = !DILocation(line: 164, column: 12, scope: !2219)
!2233 = !DILocation(line: 165, column: 3, scope: !2219)
!2234 = distinct !DISubprogram(name: "set_custom_quoting", scope: !530, file: !530, line: 169, type: !2235, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !2160, !128, !128}
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "o", arg: 1, scope: !2234, file: !530, line: 169, type: !2160)
!2239 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2234, file: !530, line: 170, type: !128)
!2240 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2234, file: !530, line: 170, type: !128)
!2241 = !DILocation(line: 0, scope: !2234)
!2242 = !DILocation(line: 172, column: 8, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !530, line: 172, column: 7)
!2244 = !DILocation(line: 172, column: 7, scope: !2234)
!2245 = !DILocation(line: 174, column: 12, scope: !2234)
!2246 = !DILocation(line: 175, column: 8, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2234, file: !530, line: 175, column: 7)
!2248 = !DILocation(line: 175, column: 19, scope: !2247)
!2249 = !DILocation(line: 176, column: 5, scope: !2247)
!2250 = !DILocation(line: 177, column: 6, scope: !2234)
!2251 = !DILocation(line: 177, column: 17, scope: !2234)
!2252 = !{!2182, !869, i64 40}
!2253 = !DILocation(line: 178, column: 6, scope: !2234)
!2254 = !DILocation(line: 178, column: 18, scope: !2234)
!2255 = !{!2182, !869, i64 48}
!2256 = !DILocation(line: 179, column: 1, scope: !2234)
!2257 = !DISubprogram(name: "abort", scope: !1062, file: !1062, line: 598, type: !485, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !921)
!2258 = distinct !DISubprogram(name: "quotearg_buffer", scope: !530, file: !530, line: 774, type: !2259, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!125, !122, !125, !128, !125, !2174}
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2262 = !DILocalVariable(name: "buffer", arg: 1, scope: !2258, file: !530, line: 774, type: !122)
!2263 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2258, file: !530, line: 774, type: !125)
!2264 = !DILocalVariable(name: "arg", arg: 3, scope: !2258, file: !530, line: 775, type: !128)
!2265 = !DILocalVariable(name: "argsize", arg: 4, scope: !2258, file: !530, line: 775, type: !125)
!2266 = !DILocalVariable(name: "o", arg: 5, scope: !2258, file: !530, line: 776, type: !2174)
!2267 = !DILocalVariable(name: "p", scope: !2258, file: !530, line: 778, type: !2174)
!2268 = !DILocalVariable(name: "saved_errno", scope: !2258, file: !530, line: 779, type: !102)
!2269 = !DILocalVariable(name: "r", scope: !2258, file: !530, line: 780, type: !125)
!2270 = !DILocation(line: 0, scope: !2258)
!2271 = !DILocation(line: 778, column: 37, scope: !2258)
!2272 = !DILocation(line: 779, column: 21, scope: !2258)
!2273 = !DILocation(line: 781, column: 43, scope: !2258)
!2274 = !DILocation(line: 781, column: 53, scope: !2258)
!2275 = !DILocation(line: 781, column: 63, scope: !2258)
!2276 = !DILocation(line: 782, column: 43, scope: !2258)
!2277 = !DILocation(line: 782, column: 58, scope: !2258)
!2278 = !DILocation(line: 780, column: 14, scope: !2258)
!2279 = !DILocation(line: 783, column: 9, scope: !2258)
!2280 = !DILocation(line: 784, column: 3, scope: !2258)
!2281 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !530, file: !530, line: 251, type: !2282, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2286)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!125, !122, !125, !128, !125, !553, !102, !2284, !128, !128}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2311, !2313, !2316, !2317, !2318, !2319, !2322, !2323, !2326, !2330, !2331, !2339, !2342, !2343, !2345, !2346, !2347, !2348}
!2287 = !DILocalVariable(name: "buffer", arg: 1, scope: !2281, file: !530, line: 251, type: !122)
!2288 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2281, file: !530, line: 251, type: !125)
!2289 = !DILocalVariable(name: "arg", arg: 3, scope: !2281, file: !530, line: 252, type: !128)
!2290 = !DILocalVariable(name: "argsize", arg: 4, scope: !2281, file: !530, line: 252, type: !125)
!2291 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2281, file: !530, line: 253, type: !553)
!2292 = !DILocalVariable(name: "flags", arg: 6, scope: !2281, file: !530, line: 253, type: !102)
!2293 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2281, file: !530, line: 254, type: !2284)
!2294 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2281, file: !530, line: 255, type: !128)
!2295 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2281, file: !530, line: 256, type: !128)
!2296 = !DILocalVariable(name: "unibyte_locale", scope: !2281, file: !530, line: 258, type: !201)
!2297 = !DILocalVariable(name: "len", scope: !2281, file: !530, line: 260, type: !125)
!2298 = !DILocalVariable(name: "orig_buffersize", scope: !2281, file: !530, line: 261, type: !125)
!2299 = !DILocalVariable(name: "quote_string", scope: !2281, file: !530, line: 262, type: !128)
!2300 = !DILocalVariable(name: "quote_string_len", scope: !2281, file: !530, line: 263, type: !125)
!2301 = !DILocalVariable(name: "backslash_escapes", scope: !2281, file: !530, line: 264, type: !201)
!2302 = !DILocalVariable(name: "elide_outer_quotes", scope: !2281, file: !530, line: 265, type: !201)
!2303 = !DILocalVariable(name: "encountered_single_quote", scope: !2281, file: !530, line: 266, type: !201)
!2304 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2281, file: !530, line: 267, type: !201)
!2305 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2281, file: !530, line: 309, type: !201)
!2306 = !DILocalVariable(name: "lq", scope: !2307, file: !530, line: 361, type: !128)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !530, line: 361, column: 11)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !530, line: 360, column: 13)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !530, line: 333, column: 7)
!2310 = distinct !DILexicalBlock(scope: !2281, file: !530, line: 312, column: 5)
!2311 = !DILocalVariable(name: "i", scope: !2312, file: !530, line: 395, type: !125)
!2312 = distinct !DILexicalBlock(scope: !2281, file: !530, line: 395, column: 3)
!2313 = !DILocalVariable(name: "is_right_quote", scope: !2314, file: !530, line: 397, type: !201)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !530, line: 396, column: 5)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !530, line: 395, column: 3)
!2316 = !DILocalVariable(name: "escaping", scope: !2314, file: !530, line: 398, type: !201)
!2317 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2314, file: !530, line: 399, type: !201)
!2318 = !DILocalVariable(name: "c", scope: !2314, file: !530, line: 417, type: !130)
!2319 = !DILocalVariable(name: "m", scope: !2320, file: !530, line: 598, type: !125)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 596, column: 11)
!2321 = distinct !DILexicalBlock(scope: !2314, file: !530, line: 419, column: 9)
!2322 = !DILocalVariable(name: "printable", scope: !2320, file: !530, line: 600, type: !201)
!2323 = !DILocalVariable(name: "mbs", scope: !2324, file: !530, line: 609, type: !614)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !530, line: 608, column: 15)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !530, line: 602, column: 17)
!2326 = !DILocalVariable(name: "w", scope: !2327, file: !530, line: 618, type: !510)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !530, line: 617, column: 19)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !530, line: 616, column: 17)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !530, line: 616, column: 17)
!2330 = !DILocalVariable(name: "bytes", scope: !2327, file: !530, line: 619, type: !125)
!2331 = !DILocalVariable(name: "j", scope: !2332, file: !530, line: 648, type: !125)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !530, line: 648, column: 29)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !530, line: 647, column: 27)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !530, line: 645, column: 29)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !530, line: 636, column: 23)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !530, line: 628, column: 30)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !530, line: 623, column: 30)
!2338 = distinct !DILexicalBlock(scope: !2327, file: !530, line: 621, column: 25)
!2339 = !DILocalVariable(name: "ilim", scope: !2340, file: !530, line: 674, type: !125)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !530, line: 671, column: 15)
!2341 = distinct !DILexicalBlock(scope: !2320, file: !530, line: 670, column: 17)
!2342 = !DILabel(scope: !2281, name: "process_input", file: !530, line: 308)
!2343 = !DILabel(scope: !2344, name: "c_and_shell_escape", file: !530, line: 502)
!2344 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 478, column: 9)
!2345 = !DILabel(scope: !2344, name: "c_escape", file: !530, line: 507)
!2346 = !DILabel(scope: !2314, name: "store_escape", file: !530, line: 709)
!2347 = !DILabel(scope: !2314, name: "store_c", file: !530, line: 712)
!2348 = !DILabel(scope: !2281, name: "force_outer_quoting_style", file: !530, line: 753)
!2349 = !DILocation(line: 0, scope: !2281)
!2350 = !DILocation(line: 258, column: 25, scope: !2281)
!2351 = !DILocation(line: 258, column: 36, scope: !2281)
!2352 = !DILocation(line: 265, column: 8, scope: !2281)
!2353 = !DILocation(line: 267, column: 3, scope: !2281)
!2354 = !DILocation(line: 261, column: 10, scope: !2281)
!2355 = !DILocation(line: 262, column: 15, scope: !2281)
!2356 = !DILocation(line: 263, column: 10, scope: !2281)
!2357 = !DILocation(line: 264, column: 8, scope: !2281)
!2358 = !DILocation(line: 266, column: 8, scope: !2281)
!2359 = !DILocation(line: 267, column: 8, scope: !2281)
!2360 = !DILocation(line: 308, column: 2, scope: !2281)
!2361 = !DILocation(line: 311, column: 3, scope: !2281)
!2362 = !DILocation(line: 318, column: 11, scope: !2310)
!2363 = !DILocation(line: 318, column: 12, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2310, file: !530, line: 318, column: 11)
!2365 = !DILocation(line: 319, column: 9, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !530, line: 319, column: 9)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !530, line: 319, column: 9)
!2368 = !DILocation(line: 319, column: 9, scope: !2367)
!2369 = !DILocation(line: 0, scope: !605, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 357, column: 26, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !530, line: 335, column: 11)
!2372 = distinct !DILexicalBlock(scope: !2309, file: !530, line: 334, column: 13)
!2373 = !DILocation(line: 199, column: 29, scope: !605, inlinedAt: !2370)
!2374 = !DILocation(line: 201, column: 19, scope: !2375, inlinedAt: !2370)
!2375 = distinct !DILexicalBlock(scope: !605, file: !530, line: 201, column: 7)
!2376 = !DILocation(line: 201, column: 7, scope: !605, inlinedAt: !2370)
!2377 = !DILocation(line: 229, column: 3, scope: !605, inlinedAt: !2370)
!2378 = !DILocation(line: 230, column: 3, scope: !605, inlinedAt: !2370)
!2379 = !DILocation(line: 230, column: 13, scope: !605, inlinedAt: !2370)
!2380 = !DILocalVariable(name: "ps", arg: 1, scope: !2381, file: !2129, line: 1135, type: !2384)
!2381 = distinct !DISubprogram(name: "mbszero", scope: !2129, file: !2129, line: 1135, type: !2382, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2385)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2385 = !{!2380}
!2386 = !DILocation(line: 0, scope: !2381, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 230, column: 18, scope: !605, inlinedAt: !2370)
!2388 = !DILocalVariable(name: "__dest", arg: 1, scope: !2389, file: !1190, line: 57, type: !123)
!2389 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2138, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2390)
!2390 = !{!2388, !2391, !2392}
!2391 = !DILocalVariable(name: "__ch", arg: 2, scope: !2389, file: !1190, line: 57, type: !102)
!2392 = !DILocalVariable(name: "__len", arg: 3, scope: !2389, file: !1190, line: 57, type: !125)
!2393 = !DILocation(line: 0, scope: !2389, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1137, column: 3, scope: !2381, inlinedAt: !2387)
!2395 = !DILocation(line: 59, column: 10, scope: !2389, inlinedAt: !2394)
!2396 = !DILocation(line: 231, column: 7, scope: !2397, inlinedAt: !2370)
!2397 = distinct !DILexicalBlock(scope: !605, file: !530, line: 231, column: 7)
!2398 = !DILocation(line: 231, column: 40, scope: !2397, inlinedAt: !2370)
!2399 = !DILocation(line: 231, column: 45, scope: !2397, inlinedAt: !2370)
!2400 = !DILocation(line: 235, column: 1, scope: !605, inlinedAt: !2370)
!2401 = !DILocation(line: 0, scope: !605, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 358, column: 27, scope: !2371)
!2403 = !DILocation(line: 199, column: 29, scope: !605, inlinedAt: !2402)
!2404 = !DILocation(line: 201, column: 19, scope: !2375, inlinedAt: !2402)
!2405 = !DILocation(line: 201, column: 7, scope: !605, inlinedAt: !2402)
!2406 = !DILocation(line: 229, column: 3, scope: !605, inlinedAt: !2402)
!2407 = !DILocation(line: 230, column: 3, scope: !605, inlinedAt: !2402)
!2408 = !DILocation(line: 230, column: 13, scope: !605, inlinedAt: !2402)
!2409 = !DILocation(line: 0, scope: !2381, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 230, column: 18, scope: !605, inlinedAt: !2402)
!2411 = !DILocation(line: 0, scope: !2389, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 1137, column: 3, scope: !2381, inlinedAt: !2410)
!2413 = !DILocation(line: 59, column: 10, scope: !2389, inlinedAt: !2412)
!2414 = !DILocation(line: 231, column: 7, scope: !2397, inlinedAt: !2402)
!2415 = !DILocation(line: 231, column: 40, scope: !2397, inlinedAt: !2402)
!2416 = !DILocation(line: 231, column: 45, scope: !2397, inlinedAt: !2402)
!2417 = !DILocation(line: 235, column: 1, scope: !605, inlinedAt: !2402)
!2418 = !DILocation(line: 360, column: 14, scope: !2308)
!2419 = !DILocation(line: 360, column: 13, scope: !2309)
!2420 = !DILocation(line: 0, scope: !2307)
!2421 = !DILocation(line: 361, column: 45, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2307, file: !530, line: 361, column: 11)
!2423 = !DILocation(line: 361, column: 11, scope: !2307)
!2424 = !DILocation(line: 362, column: 13, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !530, line: 362, column: 13)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !530, line: 362, column: 13)
!2427 = !DILocation(line: 362, column: 13, scope: !2426)
!2428 = !DILocation(line: 361, column: 52, scope: !2422)
!2429 = distinct !{!2429, !2423, !2430, !984}
!2430 = !DILocation(line: 362, column: 13, scope: !2307)
!2431 = !DILocation(line: 260, column: 10, scope: !2281)
!2432 = !DILocation(line: 365, column: 28, scope: !2309)
!2433 = !DILocation(line: 367, column: 7, scope: !2310)
!2434 = !DILocation(line: 370, column: 7, scope: !2310)
!2435 = !DILocation(line: 373, column: 7, scope: !2310)
!2436 = !DILocation(line: 376, column: 12, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2310, file: !530, line: 376, column: 11)
!2438 = !DILocation(line: 376, column: 11, scope: !2310)
!2439 = !DILocation(line: 381, column: 12, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2310, file: !530, line: 381, column: 11)
!2441 = !DILocation(line: 381, column: 11, scope: !2310)
!2442 = !DILocation(line: 382, column: 9, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !530, line: 382, column: 9)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !530, line: 382, column: 9)
!2445 = !DILocation(line: 382, column: 9, scope: !2444)
!2446 = !DILocation(line: 389, column: 7, scope: !2310)
!2447 = !DILocation(line: 392, column: 7, scope: !2310)
!2448 = !DILocation(line: 0, scope: !2312)
!2449 = !DILocation(line: 395, column: 8, scope: !2312)
!2450 = !DILocation(line: 309, column: 8, scope: !2281)
!2451 = !DILocation(line: 395, scope: !2312)
!2452 = !DILocation(line: 395, column: 34, scope: !2315)
!2453 = !DILocation(line: 395, column: 26, scope: !2315)
!2454 = !DILocation(line: 395, column: 48, scope: !2315)
!2455 = !DILocation(line: 395, column: 55, scope: !2315)
!2456 = !DILocation(line: 395, column: 3, scope: !2312)
!2457 = !DILocation(line: 395, column: 67, scope: !2315)
!2458 = !DILocation(line: 0, scope: !2314)
!2459 = !DILocation(line: 402, column: 11, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2314, file: !530, line: 401, column: 11)
!2461 = !DILocation(line: 404, column: 17, scope: !2460)
!2462 = !DILocation(line: 405, column: 39, scope: !2460)
!2463 = !DILocation(line: 409, column: 32, scope: !2460)
!2464 = !DILocation(line: 405, column: 19, scope: !2460)
!2465 = !DILocation(line: 405, column: 15, scope: !2460)
!2466 = !DILocation(line: 410, column: 11, scope: !2460)
!2467 = !DILocation(line: 410, column: 25, scope: !2460)
!2468 = !DILocalVariable(name: "__s1", arg: 1, scope: !2469, file: !950, line: 974, type: !1086)
!2469 = distinct !DISubprogram(name: "memeq", scope: !950, file: !950, line: 974, type: !2100, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2470)
!2470 = !{!2468, !2471, !2472}
!2471 = !DILocalVariable(name: "__s2", arg: 2, scope: !2469, file: !950, line: 974, type: !1086)
!2472 = !DILocalVariable(name: "__n", arg: 3, scope: !2469, file: !950, line: 974, type: !125)
!2473 = !DILocation(line: 0, scope: !2469, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 410, column: 14, scope: !2460)
!2475 = !DILocation(line: 976, column: 11, scope: !2469, inlinedAt: !2474)
!2476 = !DILocation(line: 976, column: 10, scope: !2469, inlinedAt: !2474)
!2477 = !DILocation(line: 401, column: 11, scope: !2314)
!2478 = !DILocation(line: 417, column: 25, scope: !2314)
!2479 = !DILocation(line: 418, column: 7, scope: !2314)
!2480 = !DILocation(line: 421, column: 15, scope: !2321)
!2481 = !DILocation(line: 423, column: 15, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !530, line: 423, column: 15)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !530, line: 422, column: 13)
!2484 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 421, column: 15)
!2485 = !DILocation(line: 423, column: 15, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !530, line: 423, column: 15)
!2487 = !DILocation(line: 423, column: 15, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !530, line: 423, column: 15)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !530, line: 423, column: 15)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !530, line: 423, column: 15)
!2491 = !DILocation(line: 423, column: 15, scope: !2489)
!2492 = !DILocation(line: 423, column: 15, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !530, line: 423, column: 15)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !530, line: 423, column: 15)
!2495 = !DILocation(line: 423, column: 15, scope: !2494)
!2496 = !DILocation(line: 423, column: 15, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !530, line: 423, column: 15)
!2498 = distinct !DILexicalBlock(scope: !2490, file: !530, line: 423, column: 15)
!2499 = !DILocation(line: 423, column: 15, scope: !2498)
!2500 = !DILocation(line: 423, column: 15, scope: !2490)
!2501 = !DILocation(line: 423, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !530, line: 423, column: 15)
!2503 = distinct !DILexicalBlock(scope: !2482, file: !530, line: 423, column: 15)
!2504 = !DILocation(line: 423, column: 15, scope: !2503)
!2505 = !DILocation(line: 431, column: 19, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2483, file: !530, line: 430, column: 19)
!2507 = !DILocation(line: 431, column: 24, scope: !2506)
!2508 = !DILocation(line: 431, column: 28, scope: !2506)
!2509 = !DILocation(line: 431, column: 38, scope: !2506)
!2510 = !DILocation(line: 431, column: 48, scope: !2506)
!2511 = !DILocation(line: 431, column: 59, scope: !2506)
!2512 = !DILocation(line: 433, column: 19, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !530, line: 433, column: 19)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !530, line: 433, column: 19)
!2515 = distinct !DILexicalBlock(scope: !2506, file: !530, line: 432, column: 17)
!2516 = !DILocation(line: 433, column: 19, scope: !2514)
!2517 = !DILocation(line: 434, column: 19, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !530, line: 434, column: 19)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !530, line: 434, column: 19)
!2520 = !DILocation(line: 434, column: 19, scope: !2519)
!2521 = !DILocation(line: 435, column: 17, scope: !2515)
!2522 = !DILocation(line: 442, column: 20, scope: !2484)
!2523 = !DILocation(line: 447, column: 11, scope: !2321)
!2524 = !DILocation(line: 450, column: 19, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 448, column: 13)
!2526 = !DILocation(line: 456, column: 19, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2525, file: !530, line: 455, column: 19)
!2528 = !DILocation(line: 456, column: 24, scope: !2527)
!2529 = !DILocation(line: 456, column: 28, scope: !2527)
!2530 = !DILocation(line: 456, column: 38, scope: !2527)
!2531 = !DILocation(line: 456, column: 47, scope: !2527)
!2532 = !DILocation(line: 456, column: 41, scope: !2527)
!2533 = !DILocation(line: 456, column: 52, scope: !2527)
!2534 = !DILocation(line: 455, column: 19, scope: !2525)
!2535 = !DILocation(line: 457, column: 25, scope: !2527)
!2536 = !DILocation(line: 457, column: 17, scope: !2527)
!2537 = !DILocation(line: 464, column: 25, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2527, file: !530, line: 458, column: 19)
!2539 = !DILocation(line: 468, column: 21, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !530, line: 468, column: 21)
!2541 = distinct !DILexicalBlock(scope: !2538, file: !530, line: 468, column: 21)
!2542 = !DILocation(line: 468, column: 21, scope: !2541)
!2543 = !DILocation(line: 469, column: 21, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !530, line: 469, column: 21)
!2545 = distinct !DILexicalBlock(scope: !2538, file: !530, line: 469, column: 21)
!2546 = !DILocation(line: 469, column: 21, scope: !2545)
!2547 = !DILocation(line: 470, column: 21, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !530, line: 470, column: 21)
!2549 = distinct !DILexicalBlock(scope: !2538, file: !530, line: 470, column: 21)
!2550 = !DILocation(line: 470, column: 21, scope: !2549)
!2551 = !DILocation(line: 471, column: 21, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !530, line: 471, column: 21)
!2553 = distinct !DILexicalBlock(scope: !2538, file: !530, line: 471, column: 21)
!2554 = !DILocation(line: 471, column: 21, scope: !2553)
!2555 = !DILocation(line: 472, column: 21, scope: !2538)
!2556 = !DILocation(line: 482, column: 33, scope: !2344)
!2557 = !DILocation(line: 483, column: 33, scope: !2344)
!2558 = !DILocation(line: 485, column: 33, scope: !2344)
!2559 = !DILocation(line: 486, column: 33, scope: !2344)
!2560 = !DILocation(line: 487, column: 33, scope: !2344)
!2561 = !DILocation(line: 490, column: 17, scope: !2344)
!2562 = !DILocation(line: 492, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !530, line: 491, column: 15)
!2564 = distinct !DILexicalBlock(scope: !2344, file: !530, line: 490, column: 17)
!2565 = !DILocation(line: 499, column: 35, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2344, file: !530, line: 499, column: 17)
!2567 = !DILocation(line: 499, column: 57, scope: !2566)
!2568 = !DILocation(line: 0, scope: !2344)
!2569 = !DILocation(line: 502, column: 11, scope: !2344)
!2570 = !DILocation(line: 504, column: 17, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2344, file: !530, line: 503, column: 17)
!2572 = !DILocation(line: 507, column: 11, scope: !2344)
!2573 = !DILocation(line: 508, column: 17, scope: !2344)
!2574 = !DILocation(line: 517, column: 15, scope: !2321)
!2575 = !DILocation(line: 517, column: 40, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 517, column: 15)
!2577 = !DILocation(line: 517, column: 47, scope: !2576)
!2578 = !DILocation(line: 517, column: 18, scope: !2576)
!2579 = !DILocation(line: 521, column: 17, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 521, column: 15)
!2581 = !DILocation(line: 521, column: 15, scope: !2321)
!2582 = !DILocation(line: 525, column: 11, scope: !2321)
!2583 = !DILocation(line: 537, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 536, column: 15)
!2585 = !DILocation(line: 544, column: 15, scope: !2321)
!2586 = !DILocation(line: 546, column: 19, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !530, line: 545, column: 13)
!2588 = distinct !DILexicalBlock(scope: !2321, file: !530, line: 544, column: 15)
!2589 = !DILocation(line: 549, column: 19, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !530, line: 549, column: 19)
!2591 = !DILocation(line: 549, column: 30, scope: !2590)
!2592 = !DILocation(line: 558, column: 15, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !530, line: 558, column: 15)
!2594 = distinct !DILexicalBlock(scope: !2587, file: !530, line: 558, column: 15)
!2595 = !DILocation(line: 558, column: 15, scope: !2594)
!2596 = !DILocation(line: 559, column: 15, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !530, line: 559, column: 15)
!2598 = distinct !DILexicalBlock(scope: !2587, file: !530, line: 559, column: 15)
!2599 = !DILocation(line: 559, column: 15, scope: !2598)
!2600 = !DILocation(line: 560, column: 15, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !530, line: 560, column: 15)
!2602 = distinct !DILexicalBlock(scope: !2587, file: !530, line: 560, column: 15)
!2603 = !DILocation(line: 560, column: 15, scope: !2602)
!2604 = !DILocation(line: 562, column: 13, scope: !2587)
!2605 = !DILocation(line: 602, column: 17, scope: !2320)
!2606 = !DILocation(line: 0, scope: !2320)
!2607 = !DILocation(line: 605, column: 29, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2325, file: !530, line: 603, column: 15)
!2609 = !DILocation(line: 605, column: 27, scope: !2608)
!2610 = !DILocation(line: 668, column: 40, scope: !2320)
!2611 = !DILocation(line: 670, column: 23, scope: !2341)
!2612 = !DILocation(line: 609, column: 17, scope: !2324)
!2613 = !DILocation(line: 609, column: 27, scope: !2324)
!2614 = !DILocation(line: 0, scope: !2381, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 609, column: 32, scope: !2324)
!2616 = !DILocation(line: 0, scope: !2389, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1137, column: 3, scope: !2381, inlinedAt: !2615)
!2618 = !DILocation(line: 59, column: 10, scope: !2389, inlinedAt: !2617)
!2619 = !DILocation(line: 613, column: 29, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2324, file: !530, line: 613, column: 21)
!2621 = !DILocation(line: 613, column: 21, scope: !2324)
!2622 = !DILocation(line: 614, column: 29, scope: !2620)
!2623 = !DILocation(line: 614, column: 19, scope: !2620)
!2624 = !DILocation(line: 618, column: 21, scope: !2327)
!2625 = !DILocation(line: 620, column: 54, scope: !2327)
!2626 = !DILocation(line: 0, scope: !2327)
!2627 = !DILocation(line: 619, column: 36, scope: !2327)
!2628 = !DILocation(line: 621, column: 25, scope: !2327)
!2629 = !DILocation(line: 631, column: 38, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2336, file: !530, line: 629, column: 23)
!2631 = !DILocation(line: 631, column: 48, scope: !2630)
!2632 = !DILocation(line: 665, column: 19, scope: !2328)
!2633 = !DILocation(line: 666, column: 15, scope: !2325)
!2634 = !DILocation(line: 626, column: 25, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2337, file: !530, line: 624, column: 23)
!2636 = !DILocation(line: 631, column: 51, scope: !2630)
!2637 = !DILocation(line: 631, column: 25, scope: !2630)
!2638 = !DILocation(line: 632, column: 28, scope: !2630)
!2639 = !DILocation(line: 631, column: 34, scope: !2630)
!2640 = distinct !{!2640, !2637, !2638, !984}
!2641 = !DILocation(line: 646, column: 29, scope: !2334)
!2642 = !DILocation(line: 0, scope: !2332)
!2643 = !DILocation(line: 649, column: 49, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2332, file: !530, line: 648, column: 29)
!2645 = !DILocation(line: 649, column: 39, scope: !2644)
!2646 = !DILocation(line: 649, column: 31, scope: !2644)
!2647 = !DILocation(line: 648, column: 60, scope: !2644)
!2648 = !DILocation(line: 648, column: 50, scope: !2644)
!2649 = !DILocation(line: 648, column: 29, scope: !2332)
!2650 = distinct !{!2650, !2649, !2651, !984}
!2651 = !DILocation(line: 654, column: 33, scope: !2332)
!2652 = !DILocation(line: 657, column: 43, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2335, file: !530, line: 657, column: 29)
!2654 = !DILocalVariable(name: "wc", arg: 1, scope: !2655, file: !2656, line: 865, type: !2659)
!2655 = distinct !DISubprogram(name: "c32isprint", scope: !2656, file: !2656, line: 865, type: !2657, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2661)
!2656 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!102, !2659}
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2660, line: 20, baseType: !97)
!2660 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2661 = !{!2654}
!2662 = !DILocation(line: 0, scope: !2655, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 657, column: 31, scope: !2653)
!2664 = !DILocation(line: 871, column: 10, scope: !2655, inlinedAt: !2663)
!2665 = !DILocation(line: 657, column: 31, scope: !2653)
!2666 = !DILocation(line: 657, column: 29, scope: !2335)
!2667 = !DILocation(line: 664, column: 23, scope: !2327)
!2668 = !DILocation(line: 670, column: 19, scope: !2341)
!2669 = !DILocation(line: 670, column: 45, scope: !2341)
!2670 = !DILocation(line: 674, column: 33, scope: !2340)
!2671 = !DILocation(line: 0, scope: !2340)
!2672 = !DILocation(line: 676, column: 17, scope: !2340)
!2673 = !DILocation(line: 398, column: 12, scope: !2314)
!2674 = !DILocation(line: 678, column: 43, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !530, line: 678, column: 25)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !530, line: 677, column: 19)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !530, line: 676, column: 17)
!2678 = distinct !DILexicalBlock(scope: !2340, file: !530, line: 676, column: 17)
!2679 = !DILocation(line: 680, column: 25, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !530, line: 680, column: 25)
!2681 = distinct !DILexicalBlock(scope: !2675, file: !530, line: 679, column: 23)
!2682 = !DILocation(line: 680, column: 25, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !530, line: 680, column: 25)
!2684 = !DILocation(line: 680, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !530, line: 680, column: 25)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !530, line: 680, column: 25)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !530, line: 680, column: 25)
!2688 = !DILocation(line: 680, column: 25, scope: !2686)
!2689 = !DILocation(line: 680, column: 25, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !530, line: 680, column: 25)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !530, line: 680, column: 25)
!2692 = !DILocation(line: 680, column: 25, scope: !2691)
!2693 = !DILocation(line: 680, column: 25, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !530, line: 680, column: 25)
!2695 = distinct !DILexicalBlock(scope: !2687, file: !530, line: 680, column: 25)
!2696 = !DILocation(line: 680, column: 25, scope: !2695)
!2697 = !DILocation(line: 680, column: 25, scope: !2687)
!2698 = !DILocation(line: 680, column: 25, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !530, line: 680, column: 25)
!2700 = distinct !DILexicalBlock(scope: !2680, file: !530, line: 680, column: 25)
!2701 = !DILocation(line: 680, column: 25, scope: !2700)
!2702 = !DILocation(line: 681, column: 25, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !530, line: 681, column: 25)
!2704 = distinct !DILexicalBlock(scope: !2681, file: !530, line: 681, column: 25)
!2705 = !DILocation(line: 681, column: 25, scope: !2704)
!2706 = !DILocation(line: 682, column: 25, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !530, line: 682, column: 25)
!2708 = distinct !DILexicalBlock(scope: !2681, file: !530, line: 682, column: 25)
!2709 = !DILocation(line: 682, column: 25, scope: !2708)
!2710 = !DILocation(line: 683, column: 38, scope: !2681)
!2711 = !DILocation(line: 683, column: 33, scope: !2681)
!2712 = !DILocation(line: 684, column: 23, scope: !2681)
!2713 = !DILocation(line: 685, column: 30, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2675, file: !530, line: 685, column: 30)
!2715 = !DILocation(line: 685, column: 30, scope: !2675)
!2716 = !DILocation(line: 687, column: 25, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !530, line: 687, column: 25)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !530, line: 687, column: 25)
!2719 = distinct !DILexicalBlock(scope: !2714, file: !530, line: 686, column: 23)
!2720 = !DILocation(line: 687, column: 25, scope: !2718)
!2721 = !DILocation(line: 689, column: 23, scope: !2719)
!2722 = !DILocation(line: 690, column: 35, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2676, file: !530, line: 690, column: 25)
!2724 = !DILocation(line: 690, column: 30, scope: !2723)
!2725 = !DILocation(line: 690, column: 25, scope: !2676)
!2726 = !DILocation(line: 692, column: 21, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !530, line: 692, column: 21)
!2728 = distinct !DILexicalBlock(scope: !2676, file: !530, line: 692, column: 21)
!2729 = !DILocation(line: 692, column: 21, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !530, line: 692, column: 21)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !530, line: 692, column: 21)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !530, line: 692, column: 21)
!2733 = !DILocation(line: 692, column: 21, scope: !2731)
!2734 = !DILocation(line: 692, column: 21, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !530, line: 692, column: 21)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !530, line: 692, column: 21)
!2737 = !DILocation(line: 692, column: 21, scope: !2736)
!2738 = !DILocation(line: 692, column: 21, scope: !2732)
!2739 = !DILocation(line: 0, scope: !2676)
!2740 = !DILocation(line: 693, column: 21, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !530, line: 693, column: 21)
!2742 = distinct !DILexicalBlock(scope: !2676, file: !530, line: 693, column: 21)
!2743 = !DILocation(line: 693, column: 21, scope: !2742)
!2744 = !DILocation(line: 694, column: 25, scope: !2676)
!2745 = !DILocation(line: 676, column: 17, scope: !2677)
!2746 = distinct !{!2746, !2747, !2748}
!2747 = !DILocation(line: 676, column: 17, scope: !2678)
!2748 = !DILocation(line: 695, column: 19, scope: !2678)
!2749 = !DILocation(line: 409, column: 30, scope: !2460)
!2750 = !DILocation(line: 702, column: 34, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2314, file: !530, line: 702, column: 11)
!2752 = !DILocation(line: 704, column: 14, scope: !2751)
!2753 = !DILocation(line: 705, column: 14, scope: !2751)
!2754 = !DILocation(line: 705, column: 35, scope: !2751)
!2755 = !DILocation(line: 705, column: 17, scope: !2751)
!2756 = !DILocation(line: 705, column: 47, scope: !2751)
!2757 = !DILocation(line: 705, column: 65, scope: !2751)
!2758 = !DILocation(line: 706, column: 11, scope: !2751)
!2759 = !DILocation(line: 702, column: 11, scope: !2314)
!2760 = !DILocation(line: 395, column: 15, scope: !2312)
!2761 = !DILocation(line: 709, column: 5, scope: !2314)
!2762 = !DILocation(line: 710, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2314, file: !530, line: 710, column: 7)
!2764 = !DILocation(line: 710, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2763, file: !530, line: 710, column: 7)
!2766 = !DILocation(line: 710, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !530, line: 710, column: 7)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !530, line: 710, column: 7)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !530, line: 710, column: 7)
!2770 = !DILocation(line: 710, column: 7, scope: !2768)
!2771 = !DILocation(line: 710, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !530, line: 710, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !530, line: 710, column: 7)
!2774 = !DILocation(line: 710, column: 7, scope: !2773)
!2775 = !DILocation(line: 710, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !530, line: 710, column: 7)
!2777 = distinct !DILexicalBlock(scope: !2769, file: !530, line: 710, column: 7)
!2778 = !DILocation(line: 710, column: 7, scope: !2777)
!2779 = !DILocation(line: 710, column: 7, scope: !2769)
!2780 = !DILocation(line: 710, column: 7, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !530, line: 710, column: 7)
!2782 = distinct !DILexicalBlock(scope: !2763, file: !530, line: 710, column: 7)
!2783 = !DILocation(line: 710, column: 7, scope: !2782)
!2784 = !DILocation(line: 712, column: 5, scope: !2314)
!2785 = !DILocation(line: 713, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !530, line: 713, column: 7)
!2787 = distinct !DILexicalBlock(scope: !2314, file: !530, line: 713, column: 7)
!2788 = !DILocation(line: 417, column: 21, scope: !2314)
!2789 = !DILocation(line: 713, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !530, line: 713, column: 7)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !530, line: 713, column: 7)
!2792 = distinct !DILexicalBlock(scope: !2786, file: !530, line: 713, column: 7)
!2793 = !DILocation(line: 713, column: 7, scope: !2791)
!2794 = !DILocation(line: 713, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !530, line: 713, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !530, line: 713, column: 7)
!2797 = !DILocation(line: 713, column: 7, scope: !2796)
!2798 = !DILocation(line: 713, column: 7, scope: !2792)
!2799 = !DILocation(line: 714, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !530, line: 714, column: 7)
!2801 = distinct !DILexicalBlock(scope: !2314, file: !530, line: 714, column: 7)
!2802 = !DILocation(line: 714, column: 7, scope: !2801)
!2803 = !DILocation(line: 716, column: 13, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2314, file: !530, line: 716, column: 11)
!2805 = !DILocation(line: 716, column: 11, scope: !2314)
!2806 = !DILocation(line: 718, column: 5, scope: !2315)
!2807 = !DILocation(line: 395, column: 82, scope: !2315)
!2808 = !DILocation(line: 395, column: 3, scope: !2315)
!2809 = distinct !{!2809, !2456, !2810, !984}
!2810 = !DILocation(line: 718, column: 5, scope: !2312)
!2811 = !DILocation(line: 720, column: 11, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2281, file: !530, line: 720, column: 7)
!2813 = !DILocation(line: 720, column: 16, scope: !2812)
!2814 = !DILocation(line: 728, column: 51, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2281, file: !530, line: 728, column: 7)
!2816 = !DILocation(line: 731, column: 11, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !530, line: 731, column: 11)
!2818 = distinct !DILexicalBlock(scope: !2815, file: !530, line: 730, column: 5)
!2819 = !DILocation(line: 731, column: 11, scope: !2818)
!2820 = !DILocation(line: 732, column: 16, scope: !2817)
!2821 = !DILocation(line: 732, column: 9, scope: !2817)
!2822 = !DILocation(line: 736, column: 18, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2817, file: !530, line: 736, column: 16)
!2824 = !DILocation(line: 736, column: 29, scope: !2823)
!2825 = !DILocation(line: 745, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2281, file: !530, line: 745, column: 7)
!2827 = !DILocation(line: 745, column: 20, scope: !2826)
!2828 = !DILocation(line: 746, column: 12, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !530, line: 746, column: 5)
!2830 = distinct !DILexicalBlock(scope: !2826, file: !530, line: 746, column: 5)
!2831 = !DILocation(line: 746, column: 5, scope: !2830)
!2832 = !DILocation(line: 747, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !530, line: 747, column: 7)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !530, line: 747, column: 7)
!2835 = !DILocation(line: 747, column: 7, scope: !2834)
!2836 = !DILocation(line: 746, column: 39, scope: !2829)
!2837 = distinct !{!2837, !2831, !2838, !984}
!2838 = !DILocation(line: 747, column: 7, scope: !2830)
!2839 = !DILocation(line: 749, column: 11, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2281, file: !530, line: 749, column: 7)
!2841 = !DILocation(line: 749, column: 7, scope: !2281)
!2842 = !DILocation(line: 750, column: 5, scope: !2840)
!2843 = !DILocation(line: 750, column: 17, scope: !2840)
!2844 = !DILocation(line: 753, column: 2, scope: !2281)
!2845 = !DILocation(line: 756, column: 51, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2281, file: !530, line: 756, column: 7)
!2847 = !DILocation(line: 756, column: 21, scope: !2846)
!2848 = !DILocation(line: 760, column: 42, scope: !2281)
!2849 = !DILocation(line: 758, column: 10, scope: !2281)
!2850 = !DILocation(line: 758, column: 3, scope: !2281)
!2851 = !DILocation(line: 762, column: 1, scope: !2281)
!2852 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1062, file: !1062, line: 98, type: !2853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!125}
!2855 = !DISubprogram(name: "iswprint", scope: !2856, file: !2856, line: 120, type: !2657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!2856 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2857 = distinct !DISubprogram(name: "quotearg_alloc", scope: !530, file: !530, line: 788, type: !2858, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!122, !128, !125, !2174}
!2860 = !{!2861, !2862, !2863}
!2861 = !DILocalVariable(name: "arg", arg: 1, scope: !2857, file: !530, line: 788, type: !128)
!2862 = !DILocalVariable(name: "argsize", arg: 2, scope: !2857, file: !530, line: 788, type: !125)
!2863 = !DILocalVariable(name: "o", arg: 3, scope: !2857, file: !530, line: 789, type: !2174)
!2864 = !DILocation(line: 0, scope: !2857)
!2865 = !DILocalVariable(name: "arg", arg: 1, scope: !2866, file: !530, line: 801, type: !128)
!2866 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !530, file: !530, line: 801, type: !2867, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!122, !128, !125, !810, !2174}
!2869 = !{!2865, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2870 = !DILocalVariable(name: "argsize", arg: 2, scope: !2866, file: !530, line: 801, type: !125)
!2871 = !DILocalVariable(name: "size", arg: 3, scope: !2866, file: !530, line: 801, type: !810)
!2872 = !DILocalVariable(name: "o", arg: 4, scope: !2866, file: !530, line: 802, type: !2174)
!2873 = !DILocalVariable(name: "p", scope: !2866, file: !530, line: 804, type: !2174)
!2874 = !DILocalVariable(name: "saved_errno", scope: !2866, file: !530, line: 805, type: !102)
!2875 = !DILocalVariable(name: "flags", scope: !2866, file: !530, line: 807, type: !102)
!2876 = !DILocalVariable(name: "bufsize", scope: !2866, file: !530, line: 808, type: !125)
!2877 = !DILocalVariable(name: "buf", scope: !2866, file: !530, line: 812, type: !122)
!2878 = !DILocation(line: 0, scope: !2866, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 791, column: 10, scope: !2857)
!2880 = !DILocation(line: 804, column: 37, scope: !2866, inlinedAt: !2879)
!2881 = !DILocation(line: 805, column: 21, scope: !2866, inlinedAt: !2879)
!2882 = !DILocation(line: 807, column: 18, scope: !2866, inlinedAt: !2879)
!2883 = !DILocation(line: 807, column: 24, scope: !2866, inlinedAt: !2879)
!2884 = !DILocation(line: 808, column: 72, scope: !2866, inlinedAt: !2879)
!2885 = !DILocation(line: 809, column: 56, scope: !2866, inlinedAt: !2879)
!2886 = !DILocation(line: 810, column: 49, scope: !2866, inlinedAt: !2879)
!2887 = !DILocation(line: 811, column: 49, scope: !2866, inlinedAt: !2879)
!2888 = !DILocation(line: 808, column: 20, scope: !2866, inlinedAt: !2879)
!2889 = !DILocation(line: 811, column: 62, scope: !2866, inlinedAt: !2879)
!2890 = !DILocation(line: 812, column: 15, scope: !2866, inlinedAt: !2879)
!2891 = !DILocation(line: 813, column: 60, scope: !2866, inlinedAt: !2879)
!2892 = !DILocation(line: 815, column: 32, scope: !2866, inlinedAt: !2879)
!2893 = !DILocation(line: 815, column: 47, scope: !2866, inlinedAt: !2879)
!2894 = !DILocation(line: 813, column: 3, scope: !2866, inlinedAt: !2879)
!2895 = !DILocation(line: 816, column: 9, scope: !2866, inlinedAt: !2879)
!2896 = !DILocation(line: 791, column: 3, scope: !2857)
!2897 = !DILocation(line: 0, scope: !2866)
!2898 = !DILocation(line: 804, column: 37, scope: !2866)
!2899 = !DILocation(line: 805, column: 21, scope: !2866)
!2900 = !DILocation(line: 807, column: 18, scope: !2866)
!2901 = !DILocation(line: 807, column: 27, scope: !2866)
!2902 = !DILocation(line: 807, column: 24, scope: !2866)
!2903 = !DILocation(line: 808, column: 72, scope: !2866)
!2904 = !DILocation(line: 809, column: 56, scope: !2866)
!2905 = !DILocation(line: 810, column: 49, scope: !2866)
!2906 = !DILocation(line: 811, column: 49, scope: !2866)
!2907 = !DILocation(line: 808, column: 20, scope: !2866)
!2908 = !DILocation(line: 811, column: 62, scope: !2866)
!2909 = !DILocation(line: 812, column: 15, scope: !2866)
!2910 = !DILocation(line: 813, column: 60, scope: !2866)
!2911 = !DILocation(line: 815, column: 32, scope: !2866)
!2912 = !DILocation(line: 815, column: 47, scope: !2866)
!2913 = !DILocation(line: 813, column: 3, scope: !2866)
!2914 = !DILocation(line: 816, column: 9, scope: !2866)
!2915 = !DILocation(line: 817, column: 7, scope: !2866)
!2916 = !DILocation(line: 818, column: 11, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2866, file: !530, line: 817, column: 7)
!2918 = !{!1505, !1505, i64 0}
!2919 = !DILocation(line: 818, column: 5, scope: !2917)
!2920 = !DILocation(line: 819, column: 3, scope: !2866)
!2921 = distinct !DISubprogram(name: "quotearg_free", scope: !530, file: !530, line: 837, type: !485, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2922)
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "sv", scope: !2921, file: !530, line: 839, type: !628)
!2924 = !DILocalVariable(name: "i", scope: !2925, file: !530, line: 840, type: !102)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !530, line: 840, column: 3)
!2926 = !DILocation(line: 839, column: 24, scope: !2921)
!2927 = !DILocation(line: 0, scope: !2921)
!2928 = !DILocation(line: 0, scope: !2925)
!2929 = !DILocation(line: 840, column: 21, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2925, file: !530, line: 840, column: 3)
!2931 = !DILocation(line: 840, column: 3, scope: !2925)
!2932 = !DILocation(line: 842, column: 13, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2921, file: !530, line: 842, column: 7)
!2934 = !{!2935, !869, i64 8}
!2935 = !{!"slotvec", !1505, i64 0, !869, i64 8}
!2936 = !DILocation(line: 842, column: 17, scope: !2933)
!2937 = !DILocation(line: 842, column: 7, scope: !2921)
!2938 = !DILocation(line: 841, column: 17, scope: !2930)
!2939 = !DILocation(line: 841, column: 5, scope: !2930)
!2940 = !DILocation(line: 840, column: 32, scope: !2930)
!2941 = distinct !{!2941, !2931, !2942, !984}
!2942 = !DILocation(line: 841, column: 20, scope: !2925)
!2943 = !DILocation(line: 844, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2933, file: !530, line: 843, column: 5)
!2945 = !DILocation(line: 845, column: 21, scope: !2944)
!2946 = !{!2935, !1505, i64 0}
!2947 = !DILocation(line: 846, column: 20, scope: !2944)
!2948 = !DILocation(line: 847, column: 5, scope: !2944)
!2949 = !DILocation(line: 848, column: 10, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2921, file: !530, line: 848, column: 7)
!2951 = !DILocation(line: 848, column: 7, scope: !2921)
!2952 = !DILocation(line: 850, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !530, line: 849, column: 5)
!2954 = !DILocation(line: 851, column: 15, scope: !2953)
!2955 = !DILocation(line: 852, column: 5, scope: !2953)
!2956 = !DILocation(line: 853, column: 10, scope: !2921)
!2957 = !DILocation(line: 854, column: 1, scope: !2921)
!2958 = distinct !DISubprogram(name: "quotearg_n", scope: !530, file: !530, line: 919, type: !1055, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2959)
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "n", arg: 1, scope: !2958, file: !530, line: 919, type: !102)
!2961 = !DILocalVariable(name: "arg", arg: 2, scope: !2958, file: !530, line: 919, type: !128)
!2962 = !DILocation(line: 0, scope: !2958)
!2963 = !DILocation(line: 921, column: 10, scope: !2958)
!2964 = !DILocation(line: 921, column: 3, scope: !2958)
!2965 = distinct !DISubprogram(name: "quotearg_n_options", scope: !530, file: !530, line: 866, type: !2966, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!122, !102, !128, !125, !2174}
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2979, !2980, !2982, !2983, !2984}
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !530, line: 866, type: !102)
!2970 = !DILocalVariable(name: "arg", arg: 2, scope: !2965, file: !530, line: 866, type: !128)
!2971 = !DILocalVariable(name: "argsize", arg: 3, scope: !2965, file: !530, line: 866, type: !125)
!2972 = !DILocalVariable(name: "options", arg: 4, scope: !2965, file: !530, line: 867, type: !2174)
!2973 = !DILocalVariable(name: "saved_errno", scope: !2965, file: !530, line: 869, type: !102)
!2974 = !DILocalVariable(name: "sv", scope: !2965, file: !530, line: 871, type: !628)
!2975 = !DILocalVariable(name: "nslots_max", scope: !2965, file: !530, line: 873, type: !102)
!2976 = !DILocalVariable(name: "preallocated", scope: !2977, file: !530, line: 879, type: !201)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !530, line: 878, column: 5)
!2978 = distinct !DILexicalBlock(scope: !2965, file: !530, line: 877, column: 7)
!2979 = !DILocalVariable(name: "new_nslots", scope: !2977, file: !530, line: 880, type: !823)
!2980 = !DILocalVariable(name: "size", scope: !2981, file: !530, line: 891, type: !125)
!2981 = distinct !DILexicalBlock(scope: !2965, file: !530, line: 890, column: 3)
!2982 = !DILocalVariable(name: "val", scope: !2981, file: !530, line: 892, type: !122)
!2983 = !DILocalVariable(name: "flags", scope: !2981, file: !530, line: 894, type: !102)
!2984 = !DILocalVariable(name: "qsize", scope: !2981, file: !530, line: 895, type: !125)
!2985 = !DILocation(line: 0, scope: !2965)
!2986 = !DILocation(line: 869, column: 21, scope: !2965)
!2987 = !DILocation(line: 871, column: 24, scope: !2965)
!2988 = !DILocation(line: 874, column: 17, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2965, file: !530, line: 874, column: 7)
!2990 = !DILocation(line: 875, column: 5, scope: !2989)
!2991 = !DILocation(line: 877, column: 7, scope: !2978)
!2992 = !DILocation(line: 877, column: 14, scope: !2978)
!2993 = !DILocation(line: 877, column: 7, scope: !2965)
!2994 = !DILocation(line: 879, column: 31, scope: !2977)
!2995 = !DILocation(line: 0, scope: !2977)
!2996 = !DILocation(line: 880, column: 7, scope: !2977)
!2997 = !DILocation(line: 880, column: 26, scope: !2977)
!2998 = !DILocation(line: 880, column: 13, scope: !2977)
!2999 = !DILocation(line: 882, column: 31, scope: !2977)
!3000 = !DILocation(line: 883, column: 33, scope: !2977)
!3001 = !DILocation(line: 883, column: 42, scope: !2977)
!3002 = !DILocation(line: 883, column: 31, scope: !2977)
!3003 = !DILocation(line: 882, column: 22, scope: !2977)
!3004 = !DILocation(line: 882, column: 15, scope: !2977)
!3005 = !DILocation(line: 884, column: 11, scope: !2977)
!3006 = !DILocation(line: 885, column: 15, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2977, file: !530, line: 884, column: 11)
!3008 = !{i64 0, i64 8, !2918, i64 8, i64 8, !868}
!3009 = !DILocation(line: 885, column: 9, scope: !3007)
!3010 = !DILocation(line: 886, column: 20, scope: !2977)
!3011 = !DILocation(line: 886, column: 18, scope: !2977)
!3012 = !DILocation(line: 886, column: 32, scope: !2977)
!3013 = !DILocation(line: 886, column: 43, scope: !2977)
!3014 = !DILocation(line: 886, column: 53, scope: !2977)
!3015 = !DILocation(line: 0, scope: !2389, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 886, column: 7, scope: !2977)
!3017 = !DILocation(line: 59, column: 10, scope: !2389, inlinedAt: !3016)
!3018 = !DILocation(line: 887, column: 16, scope: !2977)
!3019 = !DILocation(line: 887, column: 14, scope: !2977)
!3020 = !DILocation(line: 888, column: 5, scope: !2978)
!3021 = !DILocation(line: 888, column: 5, scope: !2977)
!3022 = !DILocation(line: 891, column: 19, scope: !2981)
!3023 = !DILocation(line: 891, column: 25, scope: !2981)
!3024 = !DILocation(line: 0, scope: !2981)
!3025 = !DILocation(line: 892, column: 23, scope: !2981)
!3026 = !DILocation(line: 894, column: 26, scope: !2981)
!3027 = !DILocation(line: 894, column: 32, scope: !2981)
!3028 = !DILocation(line: 896, column: 55, scope: !2981)
!3029 = !DILocation(line: 897, column: 55, scope: !2981)
!3030 = !DILocation(line: 898, column: 55, scope: !2981)
!3031 = !DILocation(line: 899, column: 55, scope: !2981)
!3032 = !DILocation(line: 895, column: 20, scope: !2981)
!3033 = !DILocation(line: 901, column: 14, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2981, file: !530, line: 901, column: 9)
!3035 = !DILocation(line: 901, column: 9, scope: !2981)
!3036 = !DILocation(line: 903, column: 35, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !530, line: 902, column: 7)
!3038 = !DILocation(line: 903, column: 20, scope: !3037)
!3039 = !DILocation(line: 904, column: 17, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !530, line: 904, column: 13)
!3041 = !DILocation(line: 904, column: 13, scope: !3037)
!3042 = !DILocation(line: 905, column: 11, scope: !3040)
!3043 = !DILocation(line: 906, column: 27, scope: !3037)
!3044 = !DILocation(line: 906, column: 19, scope: !3037)
!3045 = !DILocation(line: 907, column: 69, scope: !3037)
!3046 = !DILocation(line: 909, column: 44, scope: !3037)
!3047 = !DILocation(line: 910, column: 44, scope: !3037)
!3048 = !DILocation(line: 907, column: 9, scope: !3037)
!3049 = !DILocation(line: 911, column: 7, scope: !3037)
!3050 = !DILocation(line: 913, column: 11, scope: !2981)
!3051 = !DILocation(line: 914, column: 5, scope: !2981)
!3052 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !530, file: !530, line: 925, type: !3053, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!122, !102, !128, !125}
!3055 = !{!3056, !3057, !3058}
!3056 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !530, line: 925, type: !102)
!3057 = !DILocalVariable(name: "arg", arg: 2, scope: !3052, file: !530, line: 925, type: !128)
!3058 = !DILocalVariable(name: "argsize", arg: 3, scope: !3052, file: !530, line: 925, type: !125)
!3059 = !DILocation(line: 0, scope: !3052)
!3060 = !DILocation(line: 927, column: 10, scope: !3052)
!3061 = !DILocation(line: 927, column: 3, scope: !3052)
!3062 = distinct !DISubprogram(name: "quotearg", scope: !530, file: !530, line: 931, type: !1064, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3063)
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "arg", arg: 1, scope: !3062, file: !530, line: 931, type: !128)
!3065 = !DILocation(line: 0, scope: !3062)
!3066 = !DILocation(line: 0, scope: !2958, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 933, column: 10, scope: !3062)
!3068 = !DILocation(line: 921, column: 10, scope: !2958, inlinedAt: !3067)
!3069 = !DILocation(line: 933, column: 3, scope: !3062)
!3070 = distinct !DISubprogram(name: "quotearg_mem", scope: !530, file: !530, line: 937, type: !3071, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!122, !128, !125}
!3073 = !{!3074, !3075}
!3074 = !DILocalVariable(name: "arg", arg: 1, scope: !3070, file: !530, line: 937, type: !128)
!3075 = !DILocalVariable(name: "argsize", arg: 2, scope: !3070, file: !530, line: 937, type: !125)
!3076 = !DILocation(line: 0, scope: !3070)
!3077 = !DILocation(line: 0, scope: !3052, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 939, column: 10, scope: !3070)
!3079 = !DILocation(line: 927, column: 10, scope: !3052, inlinedAt: !3078)
!3080 = !DILocation(line: 939, column: 3, scope: !3070)
!3081 = distinct !DISubprogram(name: "quotearg_n_style", scope: !530, file: !530, line: 943, type: !3082, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!122, !102, !553, !128}
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DILocalVariable(name: "n", arg: 1, scope: !3081, file: !530, line: 943, type: !102)
!3086 = !DILocalVariable(name: "s", arg: 2, scope: !3081, file: !530, line: 943, type: !553)
!3087 = !DILocalVariable(name: "arg", arg: 3, scope: !3081, file: !530, line: 943, type: !128)
!3088 = !DILocalVariable(name: "o", scope: !3081, file: !530, line: 945, type: !2175)
!3089 = !DILocation(line: 0, scope: !3081)
!3090 = !DILocation(line: 945, column: 3, scope: !3081)
!3091 = !DILocation(line: 945, column: 32, scope: !3081)
!3092 = !{!3093}
!3093 = distinct !{!3093, !3094, !"quoting_options_from_style: argument 0"}
!3094 = distinct !{!3094, !"quoting_options_from_style"}
!3095 = !DILocation(line: 945, column: 36, scope: !3081)
!3096 = !DILocalVariable(name: "style", arg: 1, scope: !3097, file: !530, line: 183, type: !553)
!3097 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !530, file: !530, line: 183, type: !3098, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!580, !553}
!3100 = !{!3096, !3101}
!3101 = !DILocalVariable(name: "o", scope: !3097, file: !530, line: 185, type: !580)
!3102 = !DILocation(line: 0, scope: !3097, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 945, column: 36, scope: !3081)
!3104 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3103)
!3105 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3103)
!3106 = distinct !DILexicalBlock(scope: !3097, file: !530, line: 186, column: 7)
!3107 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3103)
!3108 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3103)
!3109 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3103)
!3110 = !DILocation(line: 946, column: 10, scope: !3081)
!3111 = !DILocation(line: 947, column: 1, scope: !3081)
!3112 = !DILocation(line: 946, column: 3, scope: !3081)
!3113 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !530, file: !530, line: 950, type: !3114, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!122, !102, !553, !128, !125}
!3116 = !{!3117, !3118, !3119, !3120, !3121}
!3117 = !DILocalVariable(name: "n", arg: 1, scope: !3113, file: !530, line: 950, type: !102)
!3118 = !DILocalVariable(name: "s", arg: 2, scope: !3113, file: !530, line: 950, type: !553)
!3119 = !DILocalVariable(name: "arg", arg: 3, scope: !3113, file: !530, line: 951, type: !128)
!3120 = !DILocalVariable(name: "argsize", arg: 4, scope: !3113, file: !530, line: 951, type: !125)
!3121 = !DILocalVariable(name: "o", scope: !3113, file: !530, line: 953, type: !2175)
!3122 = !DILocation(line: 0, scope: !3113)
!3123 = !DILocation(line: 953, column: 3, scope: !3113)
!3124 = !DILocation(line: 953, column: 32, scope: !3113)
!3125 = !{!3126}
!3126 = distinct !{!3126, !3127, !"quoting_options_from_style: argument 0"}
!3127 = distinct !{!3127, !"quoting_options_from_style"}
!3128 = !DILocation(line: 953, column: 36, scope: !3113)
!3129 = !DILocation(line: 0, scope: !3097, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 953, column: 36, scope: !3113)
!3131 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3130)
!3132 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3130)
!3133 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3130)
!3134 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3130)
!3135 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3130)
!3136 = !DILocation(line: 954, column: 10, scope: !3113)
!3137 = !DILocation(line: 955, column: 1, scope: !3113)
!3138 = !DILocation(line: 954, column: 3, scope: !3113)
!3139 = distinct !DISubprogram(name: "quotearg_style", scope: !530, file: !530, line: 958, type: !3140, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!122, !553, !128}
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "s", arg: 1, scope: !3139, file: !530, line: 958, type: !553)
!3144 = !DILocalVariable(name: "arg", arg: 2, scope: !3139, file: !530, line: 958, type: !128)
!3145 = !DILocation(line: 0, scope: !3139)
!3146 = !DILocation(line: 0, scope: !3081, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 960, column: 10, scope: !3139)
!3148 = !DILocation(line: 945, column: 3, scope: !3081, inlinedAt: !3147)
!3149 = !DILocation(line: 945, column: 32, scope: !3081, inlinedAt: !3147)
!3150 = !{!3151}
!3151 = distinct !{!3151, !3152, !"quoting_options_from_style: argument 0"}
!3152 = distinct !{!3152, !"quoting_options_from_style"}
!3153 = !DILocation(line: 945, column: 36, scope: !3081, inlinedAt: !3147)
!3154 = !DILocation(line: 0, scope: !3097, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 945, column: 36, scope: !3081, inlinedAt: !3147)
!3156 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3155)
!3157 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3155)
!3158 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3155)
!3159 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3155)
!3160 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3155)
!3161 = !DILocation(line: 946, column: 10, scope: !3081, inlinedAt: !3147)
!3162 = !DILocation(line: 947, column: 1, scope: !3081, inlinedAt: !3147)
!3163 = !DILocation(line: 960, column: 3, scope: !3139)
!3164 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !530, file: !530, line: 964, type: !3165, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!122, !553, !128, !125}
!3167 = !{!3168, !3169, !3170}
!3168 = !DILocalVariable(name: "s", arg: 1, scope: !3164, file: !530, line: 964, type: !553)
!3169 = !DILocalVariable(name: "arg", arg: 2, scope: !3164, file: !530, line: 964, type: !128)
!3170 = !DILocalVariable(name: "argsize", arg: 3, scope: !3164, file: !530, line: 964, type: !125)
!3171 = !DILocation(line: 0, scope: !3164)
!3172 = !DILocation(line: 0, scope: !3113, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 966, column: 10, scope: !3164)
!3174 = !DILocation(line: 953, column: 3, scope: !3113, inlinedAt: !3173)
!3175 = !DILocation(line: 953, column: 32, scope: !3113, inlinedAt: !3173)
!3176 = !{!3177}
!3177 = distinct !{!3177, !3178, !"quoting_options_from_style: argument 0"}
!3178 = distinct !{!3178, !"quoting_options_from_style"}
!3179 = !DILocation(line: 953, column: 36, scope: !3113, inlinedAt: !3173)
!3180 = !DILocation(line: 0, scope: !3097, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 953, column: 36, scope: !3113, inlinedAt: !3173)
!3182 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3181)
!3183 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3181)
!3184 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3181)
!3185 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3181)
!3186 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3181)
!3187 = !DILocation(line: 954, column: 10, scope: !3113, inlinedAt: !3173)
!3188 = !DILocation(line: 955, column: 1, scope: !3113, inlinedAt: !3173)
!3189 = !DILocation(line: 966, column: 3, scope: !3164)
!3190 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !530, file: !530, line: 970, type: !3191, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!122, !128, !125, !4}
!3193 = !{!3194, !3195, !3196, !3197}
!3194 = !DILocalVariable(name: "arg", arg: 1, scope: !3190, file: !530, line: 970, type: !128)
!3195 = !DILocalVariable(name: "argsize", arg: 2, scope: !3190, file: !530, line: 970, type: !125)
!3196 = !DILocalVariable(name: "ch", arg: 3, scope: !3190, file: !530, line: 970, type: !4)
!3197 = !DILocalVariable(name: "options", scope: !3190, file: !530, line: 972, type: !580)
!3198 = !DILocation(line: 0, scope: !3190)
!3199 = !DILocation(line: 972, column: 3, scope: !3190)
!3200 = !DILocation(line: 972, column: 26, scope: !3190)
!3201 = !DILocation(line: 973, column: 13, scope: !3190)
!3202 = !{i64 0, i64 4, !946, i64 4, i64 4, !937, i64 8, i64 32, !946, i64 40, i64 8, !868, i64 48, i64 8, !868}
!3203 = !DILocation(line: 0, scope: !2194, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 974, column: 3, scope: !3190)
!3205 = !DILocation(line: 147, column: 41, scope: !2194, inlinedAt: !3204)
!3206 = !DILocation(line: 147, column: 62, scope: !2194, inlinedAt: !3204)
!3207 = !DILocation(line: 147, column: 57, scope: !2194, inlinedAt: !3204)
!3208 = !DILocation(line: 148, column: 15, scope: !2194, inlinedAt: !3204)
!3209 = !DILocation(line: 149, column: 21, scope: !2194, inlinedAt: !3204)
!3210 = !DILocation(line: 149, column: 24, scope: !2194, inlinedAt: !3204)
!3211 = !DILocation(line: 150, column: 19, scope: !2194, inlinedAt: !3204)
!3212 = !DILocation(line: 150, column: 24, scope: !2194, inlinedAt: !3204)
!3213 = !DILocation(line: 150, column: 6, scope: !2194, inlinedAt: !3204)
!3214 = !DILocation(line: 975, column: 10, scope: !3190)
!3215 = !DILocation(line: 976, column: 1, scope: !3190)
!3216 = !DILocation(line: 975, column: 3, scope: !3190)
!3217 = distinct !DISubprogram(name: "quotearg_char", scope: !530, file: !530, line: 979, type: !3218, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!122, !128, !4}
!3220 = !{!3221, !3222}
!3221 = !DILocalVariable(name: "arg", arg: 1, scope: !3217, file: !530, line: 979, type: !128)
!3222 = !DILocalVariable(name: "ch", arg: 2, scope: !3217, file: !530, line: 979, type: !4)
!3223 = !DILocation(line: 0, scope: !3217)
!3224 = !DILocation(line: 0, scope: !3190, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 981, column: 10, scope: !3217)
!3226 = !DILocation(line: 972, column: 3, scope: !3190, inlinedAt: !3225)
!3227 = !DILocation(line: 972, column: 26, scope: !3190, inlinedAt: !3225)
!3228 = !DILocation(line: 973, column: 13, scope: !3190, inlinedAt: !3225)
!3229 = !DILocation(line: 0, scope: !2194, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 974, column: 3, scope: !3190, inlinedAt: !3225)
!3231 = !DILocation(line: 147, column: 41, scope: !2194, inlinedAt: !3230)
!3232 = !DILocation(line: 147, column: 62, scope: !2194, inlinedAt: !3230)
!3233 = !DILocation(line: 147, column: 57, scope: !2194, inlinedAt: !3230)
!3234 = !DILocation(line: 148, column: 15, scope: !2194, inlinedAt: !3230)
!3235 = !DILocation(line: 149, column: 21, scope: !2194, inlinedAt: !3230)
!3236 = !DILocation(line: 149, column: 24, scope: !2194, inlinedAt: !3230)
!3237 = !DILocation(line: 150, column: 19, scope: !2194, inlinedAt: !3230)
!3238 = !DILocation(line: 150, column: 24, scope: !2194, inlinedAt: !3230)
!3239 = !DILocation(line: 150, column: 6, scope: !2194, inlinedAt: !3230)
!3240 = !DILocation(line: 975, column: 10, scope: !3190, inlinedAt: !3225)
!3241 = !DILocation(line: 976, column: 1, scope: !3190, inlinedAt: !3225)
!3242 = !DILocation(line: 981, column: 3, scope: !3217)
!3243 = distinct !DISubprogram(name: "quotearg_colon", scope: !530, file: !530, line: 985, type: !1064, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "arg", arg: 1, scope: !3243, file: !530, line: 985, type: !128)
!3246 = !DILocation(line: 0, scope: !3243)
!3247 = !DILocation(line: 0, scope: !3217, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 987, column: 10, scope: !3243)
!3249 = !DILocation(line: 0, scope: !3190, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 981, column: 10, scope: !3217, inlinedAt: !3248)
!3251 = !DILocation(line: 972, column: 3, scope: !3190, inlinedAt: !3250)
!3252 = !DILocation(line: 972, column: 26, scope: !3190, inlinedAt: !3250)
!3253 = !DILocation(line: 973, column: 13, scope: !3190, inlinedAt: !3250)
!3254 = !DILocation(line: 0, scope: !2194, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 974, column: 3, scope: !3190, inlinedAt: !3250)
!3256 = !DILocation(line: 147, column: 57, scope: !2194, inlinedAt: !3255)
!3257 = !DILocation(line: 149, column: 21, scope: !2194, inlinedAt: !3255)
!3258 = !DILocation(line: 150, column: 6, scope: !2194, inlinedAt: !3255)
!3259 = !DILocation(line: 975, column: 10, scope: !3190, inlinedAt: !3250)
!3260 = !DILocation(line: 976, column: 1, scope: !3190, inlinedAt: !3250)
!3261 = !DILocation(line: 987, column: 3, scope: !3243)
!3262 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !530, file: !530, line: 991, type: !3071, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3263)
!3263 = !{!3264, !3265}
!3264 = !DILocalVariable(name: "arg", arg: 1, scope: !3262, file: !530, line: 991, type: !128)
!3265 = !DILocalVariable(name: "argsize", arg: 2, scope: !3262, file: !530, line: 991, type: !125)
!3266 = !DILocation(line: 0, scope: !3262)
!3267 = !DILocation(line: 0, scope: !3190, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 993, column: 10, scope: !3262)
!3269 = !DILocation(line: 972, column: 3, scope: !3190, inlinedAt: !3268)
!3270 = !DILocation(line: 972, column: 26, scope: !3190, inlinedAt: !3268)
!3271 = !DILocation(line: 973, column: 13, scope: !3190, inlinedAt: !3268)
!3272 = !DILocation(line: 0, scope: !2194, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 974, column: 3, scope: !3190, inlinedAt: !3268)
!3274 = !DILocation(line: 147, column: 57, scope: !2194, inlinedAt: !3273)
!3275 = !DILocation(line: 149, column: 21, scope: !2194, inlinedAt: !3273)
!3276 = !DILocation(line: 150, column: 6, scope: !2194, inlinedAt: !3273)
!3277 = !DILocation(line: 975, column: 10, scope: !3190, inlinedAt: !3268)
!3278 = !DILocation(line: 976, column: 1, scope: !3190, inlinedAt: !3268)
!3279 = !DILocation(line: 993, column: 3, scope: !3262)
!3280 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !530, file: !530, line: 997, type: !3082, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3281)
!3281 = !{!3282, !3283, !3284, !3285}
!3282 = !DILocalVariable(name: "n", arg: 1, scope: !3280, file: !530, line: 997, type: !102)
!3283 = !DILocalVariable(name: "s", arg: 2, scope: !3280, file: !530, line: 997, type: !553)
!3284 = !DILocalVariable(name: "arg", arg: 3, scope: !3280, file: !530, line: 997, type: !128)
!3285 = !DILocalVariable(name: "options", scope: !3280, file: !530, line: 999, type: !580)
!3286 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1000, column: 13, scope: !3280)
!3288 = !DILocation(line: 0, scope: !3280)
!3289 = !DILocation(line: 999, column: 3, scope: !3280)
!3290 = !DILocation(line: 999, column: 26, scope: !3280)
!3291 = !DILocation(line: 0, scope: !3097, inlinedAt: !3287)
!3292 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3287)
!3293 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3287)
!3294 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3287)
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"quoting_options_from_style: argument 0"}
!3297 = distinct !{!3297, !"quoting_options_from_style"}
!3298 = !DILocation(line: 1000, column: 13, scope: !3280)
!3299 = !DILocation(line: 0, scope: !2194, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1001, column: 3, scope: !3280)
!3301 = !DILocation(line: 147, column: 57, scope: !2194, inlinedAt: !3300)
!3302 = !DILocation(line: 149, column: 21, scope: !2194, inlinedAt: !3300)
!3303 = !DILocation(line: 150, column: 6, scope: !2194, inlinedAt: !3300)
!3304 = !DILocation(line: 1002, column: 10, scope: !3280)
!3305 = !DILocation(line: 1003, column: 1, scope: !3280)
!3306 = !DILocation(line: 1002, column: 3, scope: !3280)
!3307 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !530, file: !530, line: 1006, type: !3308, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!122, !102, !128, !128, !128}
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !530, line: 1006, type: !102)
!3312 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3307, file: !530, line: 1006, type: !128)
!3313 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3307, file: !530, line: 1007, type: !128)
!3314 = !DILocalVariable(name: "arg", arg: 4, scope: !3307, file: !530, line: 1007, type: !128)
!3315 = !DILocation(line: 0, scope: !3307)
!3316 = !DILocalVariable(name: "n", arg: 1, scope: !3317, file: !530, line: 1014, type: !102)
!3317 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !530, file: !530, line: 1014, type: !3318, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!122, !102, !128, !128, !128, !125}
!3320 = !{!3316, !3321, !3322, !3323, !3324, !3325}
!3321 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3317, file: !530, line: 1014, type: !128)
!3322 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3317, file: !530, line: 1015, type: !128)
!3323 = !DILocalVariable(name: "arg", arg: 4, scope: !3317, file: !530, line: 1016, type: !128)
!3324 = !DILocalVariable(name: "argsize", arg: 5, scope: !3317, file: !530, line: 1016, type: !125)
!3325 = !DILocalVariable(name: "o", scope: !3317, file: !530, line: 1018, type: !580)
!3326 = !DILocation(line: 0, scope: !3317, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1009, column: 10, scope: !3307)
!3328 = !DILocation(line: 1018, column: 3, scope: !3317, inlinedAt: !3327)
!3329 = !DILocation(line: 1018, column: 26, scope: !3317, inlinedAt: !3327)
!3330 = !DILocation(line: 1018, column: 30, scope: !3317, inlinedAt: !3327)
!3331 = !DILocation(line: 0, scope: !2234, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 1019, column: 3, scope: !3317, inlinedAt: !3327)
!3333 = !DILocation(line: 174, column: 12, scope: !2234, inlinedAt: !3332)
!3334 = !DILocation(line: 175, column: 8, scope: !2247, inlinedAt: !3332)
!3335 = !DILocation(line: 175, column: 19, scope: !2247, inlinedAt: !3332)
!3336 = !DILocation(line: 176, column: 5, scope: !2247, inlinedAt: !3332)
!3337 = !DILocation(line: 177, column: 6, scope: !2234, inlinedAt: !3332)
!3338 = !DILocation(line: 177, column: 17, scope: !2234, inlinedAt: !3332)
!3339 = !DILocation(line: 178, column: 6, scope: !2234, inlinedAt: !3332)
!3340 = !DILocation(line: 178, column: 18, scope: !2234, inlinedAt: !3332)
!3341 = !DILocation(line: 1020, column: 10, scope: !3317, inlinedAt: !3327)
!3342 = !DILocation(line: 1021, column: 1, scope: !3317, inlinedAt: !3327)
!3343 = !DILocation(line: 1009, column: 3, scope: !3307)
!3344 = !DILocation(line: 0, scope: !3317)
!3345 = !DILocation(line: 1018, column: 3, scope: !3317)
!3346 = !DILocation(line: 1018, column: 26, scope: !3317)
!3347 = !DILocation(line: 1018, column: 30, scope: !3317)
!3348 = !DILocation(line: 0, scope: !2234, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 1019, column: 3, scope: !3317)
!3350 = !DILocation(line: 174, column: 12, scope: !2234, inlinedAt: !3349)
!3351 = !DILocation(line: 175, column: 8, scope: !2247, inlinedAt: !3349)
!3352 = !DILocation(line: 175, column: 19, scope: !2247, inlinedAt: !3349)
!3353 = !DILocation(line: 176, column: 5, scope: !2247, inlinedAt: !3349)
!3354 = !DILocation(line: 177, column: 6, scope: !2234, inlinedAt: !3349)
!3355 = !DILocation(line: 177, column: 17, scope: !2234, inlinedAt: !3349)
!3356 = !DILocation(line: 178, column: 6, scope: !2234, inlinedAt: !3349)
!3357 = !DILocation(line: 178, column: 18, scope: !2234, inlinedAt: !3349)
!3358 = !DILocation(line: 1020, column: 10, scope: !3317)
!3359 = !DILocation(line: 1021, column: 1, scope: !3317)
!3360 = !DILocation(line: 1020, column: 3, scope: !3317)
!3361 = distinct !DISubprogram(name: "quotearg_custom", scope: !530, file: !530, line: 1024, type: !3362, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!122, !128, !128, !128}
!3364 = !{!3365, !3366, !3367}
!3365 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3361, file: !530, line: 1024, type: !128)
!3366 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3361, file: !530, line: 1024, type: !128)
!3367 = !DILocalVariable(name: "arg", arg: 3, scope: !3361, file: !530, line: 1025, type: !128)
!3368 = !DILocation(line: 0, scope: !3361)
!3369 = !DILocation(line: 0, scope: !3307, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1027, column: 10, scope: !3361)
!3371 = !DILocation(line: 0, scope: !3317, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1009, column: 10, scope: !3307, inlinedAt: !3370)
!3373 = !DILocation(line: 1018, column: 3, scope: !3317, inlinedAt: !3372)
!3374 = !DILocation(line: 1018, column: 26, scope: !3317, inlinedAt: !3372)
!3375 = !DILocation(line: 1018, column: 30, scope: !3317, inlinedAt: !3372)
!3376 = !DILocation(line: 0, scope: !2234, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 1019, column: 3, scope: !3317, inlinedAt: !3372)
!3378 = !DILocation(line: 174, column: 12, scope: !2234, inlinedAt: !3377)
!3379 = !DILocation(line: 175, column: 8, scope: !2247, inlinedAt: !3377)
!3380 = !DILocation(line: 175, column: 19, scope: !2247, inlinedAt: !3377)
!3381 = !DILocation(line: 176, column: 5, scope: !2247, inlinedAt: !3377)
!3382 = !DILocation(line: 177, column: 6, scope: !2234, inlinedAt: !3377)
!3383 = !DILocation(line: 177, column: 17, scope: !2234, inlinedAt: !3377)
!3384 = !DILocation(line: 178, column: 6, scope: !2234, inlinedAt: !3377)
!3385 = !DILocation(line: 178, column: 18, scope: !2234, inlinedAt: !3377)
!3386 = !DILocation(line: 1020, column: 10, scope: !3317, inlinedAt: !3372)
!3387 = !DILocation(line: 1021, column: 1, scope: !3317, inlinedAt: !3372)
!3388 = !DILocation(line: 1027, column: 3, scope: !3361)
!3389 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !530, file: !530, line: 1031, type: !3390, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!122, !128, !128, !128, !125}
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3389, file: !530, line: 1031, type: !128)
!3394 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3389, file: !530, line: 1031, type: !128)
!3395 = !DILocalVariable(name: "arg", arg: 3, scope: !3389, file: !530, line: 1032, type: !128)
!3396 = !DILocalVariable(name: "argsize", arg: 4, scope: !3389, file: !530, line: 1032, type: !125)
!3397 = !DILocation(line: 0, scope: !3389)
!3398 = !DILocation(line: 0, scope: !3317, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1034, column: 10, scope: !3389)
!3400 = !DILocation(line: 1018, column: 3, scope: !3317, inlinedAt: !3399)
!3401 = !DILocation(line: 1018, column: 26, scope: !3317, inlinedAt: !3399)
!3402 = !DILocation(line: 1018, column: 30, scope: !3317, inlinedAt: !3399)
!3403 = !DILocation(line: 0, scope: !2234, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 1019, column: 3, scope: !3317, inlinedAt: !3399)
!3405 = !DILocation(line: 174, column: 12, scope: !2234, inlinedAt: !3404)
!3406 = !DILocation(line: 175, column: 8, scope: !2247, inlinedAt: !3404)
!3407 = !DILocation(line: 175, column: 19, scope: !2247, inlinedAt: !3404)
!3408 = !DILocation(line: 176, column: 5, scope: !2247, inlinedAt: !3404)
!3409 = !DILocation(line: 177, column: 6, scope: !2234, inlinedAt: !3404)
!3410 = !DILocation(line: 177, column: 17, scope: !2234, inlinedAt: !3404)
!3411 = !DILocation(line: 178, column: 6, scope: !2234, inlinedAt: !3404)
!3412 = !DILocation(line: 178, column: 18, scope: !2234, inlinedAt: !3404)
!3413 = !DILocation(line: 1020, column: 10, scope: !3317, inlinedAt: !3399)
!3414 = !DILocation(line: 1021, column: 1, scope: !3317, inlinedAt: !3399)
!3415 = !DILocation(line: 1034, column: 3, scope: !3389)
!3416 = distinct !DISubprogram(name: "quote_n_mem", scope: !530, file: !530, line: 1049, type: !3417, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!128, !102, !128, !125}
!3419 = !{!3420, !3421, !3422}
!3420 = !DILocalVariable(name: "n", arg: 1, scope: !3416, file: !530, line: 1049, type: !102)
!3421 = !DILocalVariable(name: "arg", arg: 2, scope: !3416, file: !530, line: 1049, type: !128)
!3422 = !DILocalVariable(name: "argsize", arg: 3, scope: !3416, file: !530, line: 1049, type: !125)
!3423 = !DILocation(line: 0, scope: !3416)
!3424 = !DILocation(line: 1051, column: 10, scope: !3416)
!3425 = !DILocation(line: 1051, column: 3, scope: !3416)
!3426 = distinct !DISubprogram(name: "quote_mem", scope: !530, file: !530, line: 1055, type: !3427, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!128, !128, !125}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "arg", arg: 1, scope: !3426, file: !530, line: 1055, type: !128)
!3431 = !DILocalVariable(name: "argsize", arg: 2, scope: !3426, file: !530, line: 1055, type: !125)
!3432 = !DILocation(line: 0, scope: !3426)
!3433 = !DILocation(line: 0, scope: !3416, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 1057, column: 10, scope: !3426)
!3435 = !DILocation(line: 1051, column: 10, scope: !3416, inlinedAt: !3434)
!3436 = !DILocation(line: 1057, column: 3, scope: !3426)
!3437 = distinct !DISubprogram(name: "quote_n", scope: !530, file: !530, line: 1061, type: !3438, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!128, !102, !128}
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3437, file: !530, line: 1061, type: !102)
!3442 = !DILocalVariable(name: "arg", arg: 2, scope: !3437, file: !530, line: 1061, type: !128)
!3443 = !DILocation(line: 0, scope: !3437)
!3444 = !DILocation(line: 0, scope: !3416, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1063, column: 10, scope: !3437)
!3446 = !DILocation(line: 1051, column: 10, scope: !3416, inlinedAt: !3445)
!3447 = !DILocation(line: 1063, column: 3, scope: !3437)
!3448 = distinct !DISubprogram(name: "quote", scope: !530, file: !530, line: 1067, type: !3449, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!128, !128}
!3451 = !{!3452}
!3452 = !DILocalVariable(name: "arg", arg: 1, scope: !3448, file: !530, line: 1067, type: !128)
!3453 = !DILocation(line: 0, scope: !3448)
!3454 = !DILocation(line: 0, scope: !3437, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1069, column: 10, scope: !3448)
!3456 = !DILocation(line: 0, scope: !3416, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 1063, column: 10, scope: !3437, inlinedAt: !3455)
!3458 = !DILocation(line: 1051, column: 10, scope: !3416, inlinedAt: !3457)
!3459 = !DILocation(line: 1069, column: 3, scope: !3448)
!3460 = !DILocation(line: 0, scope: !641)
!3461 = !DILocation(line: 181, column: 53, scope: !641)
!3462 = !DILocation(line: 181, column: 10, scope: !641)
!3463 = !DILocation(line: 181, column: 3, scope: !641)
!3464 = distinct !DISubprogram(name: "try_tempname_len", scope: !642, file: !642, line: 189, type: !3465, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!102, !122, !102, !123, !662, !125}
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3479, !3480, !3481, !3483, !3484, !3485, !3487, !3491}
!3468 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3464, file: !642, line: 189, type: !122)
!3469 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3464, file: !642, line: 189, type: !102)
!3470 = !DILocalVariable(name: "args", arg: 3, scope: !3464, file: !642, line: 189, type: !123)
!3471 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3464, file: !642, line: 190, type: !662)
!3472 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3464, file: !642, line: 190, type: !125)
!3473 = !DILocalVariable(name: "saved_errno", scope: !3464, file: !642, line: 192, type: !102)
!3474 = !DILocalVariable(name: "attempts", scope: !3464, file: !642, line: 208, type: !97)
!3475 = !DILocalVariable(name: "v", scope: !3464, file: !642, line: 212, type: !3476)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "random_value", file: !642, line: 64, baseType: !3477)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3478, line: 75, baseType: !127)
!3478 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!3479 = !DILocalVariable(name: "vdigbuf", scope: !3464, file: !642, line: 216, type: !3476)
!3480 = !DILocalVariable(name: "vdigits", scope: !3464, file: !642, line: 217, type: !102)
!3481 = !DILocalVariable(name: "biased_min", scope: !3464, file: !642, line: 221, type: !3482)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3483 = !DILocalVariable(name: "len", scope: !3464, file: !642, line: 224, type: !125)
!3484 = !DILocalVariable(name: "XXXXXX", scope: !3464, file: !642, line: 233, type: !122)
!3485 = !DILocalVariable(name: "count", scope: !3486, file: !642, line: 235, type: !97)
!3486 = distinct !DILexicalBlock(scope: !3464, file: !642, line: 235, column: 3)
!3487 = !DILocalVariable(name: "i", scope: !3488, file: !642, line: 237, type: !125)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !642, line: 237, column: 7)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !642, line: 236, column: 5)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !642, line: 235, column: 3)
!3491 = !DILocalVariable(name: "fd", scope: !3489, file: !642, line: 254, type: !102)
!3492 = !DILocation(line: 0, scope: !3464)
!3493 = !DILocation(line: 192, column: 21, scope: !3464)
!3494 = !DILocation(line: 212, column: 3, scope: !3464)
!3495 = !DILocation(line: 212, column: 16, scope: !3464)
!3496 = !DILocation(line: 224, column: 16, scope: !3464)
!3497 = !DILocation(line: 225, column: 28, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3464, file: !642, line: 225, column: 7)
!3499 = !DILocation(line: 225, column: 26, scope: !3498)
!3500 = !DILocation(line: 225, column: 11, scope: !3498)
!3501 = !DILocation(line: 226, column: 7, scope: !3498)
!3502 = !DILocation(line: 226, column: 43, scope: !3498)
!3503 = !DILocation(line: 226, column: 19, scope: !3498)
!3504 = !DILocation(line: 226, column: 10, scope: !3498)
!3505 = !DILocation(line: 226, column: 62, scope: !3498)
!3506 = !DILocation(line: 225, column: 7, scope: !3464)
!3507 = !DILocation(line: 0, scope: !3486)
!3508 = !DILocation(line: 235, column: 3, scope: !3486)
!3509 = !DILocation(line: 235, column: 50, scope: !3490)
!3510 = !DILocation(line: 235, column: 38, scope: !3490)
!3511 = distinct !{!3511, !3508, !3512, !984}
!3512 = !DILocation(line: 262, column: 5, scope: !3486)
!3513 = !DILocation(line: 0, scope: !3488)
!3514 = !DILocation(line: 237, column: 7, scope: !3488)
!3515 = !DILocation(line: 254, column: 16, scope: !3489)
!3516 = !DILocation(line: 0, scope: !3489)
!3517 = !DILocation(line: 255, column: 14, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3489, file: !642, line: 255, column: 11)
!3519 = !DILocation(line: 255, column: 11, scope: !3489)
!3520 = !DILocation(line: 239, column: 23, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !642, line: 239, column: 15)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !642, line: 238, column: 9)
!3523 = distinct !DILexicalBlock(scope: !3488, file: !642, line: 237, column: 7)
!3524 = !DILocation(line: 239, column: 15, scope: !3522)
!3525 = !DILocation(line: 242, column: 39, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3521, file: !642, line: 240, column: 13)
!3527 = !DILocalVariable(name: "r", arg: 1, scope: !3528, file: !642, line: 93, type: !3531)
!3528 = distinct !DISubprogram(name: "random_bits", scope: !642, file: !642, line: 93, type: !3529, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3532)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!201, !3531, !3476}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3532 = !{!3527, !3533, !3534, !3535}
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3528, file: !642, line: 93, type: !3476)
!3534 = !DILocalVariable(name: "v", scope: !3528, file: !642, line: 107, type: !3476)
!3535 = !DILocalVariable(name: "tv", scope: !3528, file: !642, line: 110, type: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3537, line: 11, size: 128, elements: !3538)
!3537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3538 = !{!3539, !3541}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3536, file: !3537, line: 16, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !253, line: 160, baseType: !254)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3536, file: !3537, line: 21, baseType: !3542, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !253, line: 197, baseType: !254)
!3543 = !DILocation(line: 0, scope: !3528, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 242, column: 22, scope: !3526)
!3545 = !DILocation(line: 96, column: 7, scope: !3546, inlinedAt: !3544)
!3546 = distinct !DILexicalBlock(scope: !3528, file: !642, line: 96, column: 7)
!3547 = !DILocation(line: 96, column: 49, scope: !3546, inlinedAt: !3544)
!3548 = !DILocation(line: 96, column: 7, scope: !3528, inlinedAt: !3544)
!3549 = distinct !{!3549, !3550, !3551, !984}
!3550 = !DILocation(line: 242, column: 15, scope: !3526)
!3551 = !DILocation(line: 243, column: 17, scope: !3526)
!3552 = !DILocation(line: 110, column: 3, scope: !3528, inlinedAt: !3544)
!3553 = !DILocation(line: 110, column: 23, scope: !3528, inlinedAt: !3544)
!3554 = !DILocation(line: 111, column: 3, scope: !3528, inlinedAt: !3544)
!3555 = !DILocation(line: 112, column: 32, scope: !3528, inlinedAt: !3544)
!3556 = !{!3557, !1505, i64 0}
!3557 = !{!"timespec", !1505, i64 0, !1505, i64 8}
!3558 = !DILocalVariable(name: "r", arg: 1, scope: !3559, file: !642, line: 74, type: !3476)
!3559 = distinct !DISubprogram(name: "mix_random_values", scope: !642, file: !642, line: 74, type: !3560, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3562)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!3476, !3476, !3476}
!3562 = !{!3558, !3563}
!3563 = !DILocalVariable(name: "s", arg: 2, scope: !3559, file: !642, line: 74, type: !3476)
!3564 = !DILocation(line: 0, scope: !3559, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 112, column: 7, scope: !3528, inlinedAt: !3544)
!3566 = !DILocation(line: 79, column: 31, scope: !3559, inlinedAt: !3565)
!3567 = !DILocation(line: 79, column: 35, scope: !3559, inlinedAt: !3565)
!3568 = !DILocation(line: 79, column: 49, scope: !3559, inlinedAt: !3565)
!3569 = !DILocation(line: 113, column: 32, scope: !3528, inlinedAt: !3544)
!3570 = !{!3557, !1505, i64 8}
!3571 = !DILocation(line: 0, scope: !3559, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 113, column: 7, scope: !3528, inlinedAt: !3544)
!3573 = !DILocation(line: 79, column: 31, scope: !3559, inlinedAt: !3572)
!3574 = !DILocation(line: 79, column: 35, scope: !3559, inlinedAt: !3572)
!3575 = !DILocation(line: 79, column: 49, scope: !3559, inlinedAt: !3572)
!3576 = !DILocation(line: 116, column: 30, scope: !3528, inlinedAt: !3544)
!3577 = !DILocation(line: 0, scope: !3559, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 116, column: 8, scope: !3528, inlinedAt: !3544)
!3579 = !DILocation(line: 79, column: 31, scope: !3559, inlinedAt: !3578)
!3580 = !DILocation(line: 79, column: 35, scope: !3559, inlinedAt: !3578)
!3581 = !DILocation(line: 79, column: 49, scope: !3559, inlinedAt: !3578)
!3582 = !DILocation(line: 116, column: 6, scope: !3528, inlinedAt: !3544)
!3583 = !DILocation(line: 118, column: 1, scope: !3528, inlinedAt: !3544)
!3584 = !DILocation(line: 242, column: 42, scope: !3526)
!3585 = !DILocation(line: 249, column: 39, scope: !3522)
!3586 = !DILocation(line: 249, column: 23, scope: !3522)
!3587 = !DILocation(line: 249, column: 11, scope: !3522)
!3588 = !DILocation(line: 249, column: 21, scope: !3522)
!3589 = !DILocation(line: 250, column: 19, scope: !3522)
!3590 = !DILocation(line: 251, column: 18, scope: !3522)
!3591 = !DILocation(line: 237, column: 45, scope: !3523)
!3592 = !DILocation(line: 237, column: 28, scope: !3523)
!3593 = distinct !{!3593, !3514, !3594, !984}
!3594 = !DILocation(line: 252, column: 9, scope: !3488)
!3595 = !DILocation(line: 257, column: 11, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3518, file: !642, line: 256, column: 9)
!3597 = !DILocation(line: 260, column: 16, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3518, file: !642, line: 260, column: 16)
!3599 = !DILocation(line: 260, column: 22, scope: !3598)
!3600 = !DILocation(line: 267, column: 1, scope: !3464)
!3601 = !DISubprogram(name: "getrandom", scope: !3602, file: !3602, line: 34, type: !3603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!3602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/random.h", directory: "", checksumkind: CSK_MD5, checksum: "993db293d7c3a15007a82e16d5213f99")
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!3605, !123, !125, !97}
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !932, line: 77, baseType: !3606)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !253, line: 194, baseType: !254)
!3607 = !DISubprogram(name: "clock_gettime", scope: !3608, file: !3608, line: 279, type: !3609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!3608 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!102, !3611, !3614}
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3612, line: 7, baseType: !3613)
!3612 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !253, line: 169, baseType: !102)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3615 = !DISubprogram(name: "clock", scope: !3608, file: !3608, line: 72, type: !3616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!3618}
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3619, line: 7, baseType: !3620)
!3619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !253, line: 156, baseType: !254)
!3621 = distinct !DISubprogram(name: "try_file", scope: !642, file: !642, line: 126, type: !663, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3622)
!3622 = !{!3623, !3624, !3625}
!3623 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3621, file: !642, line: 126, type: !122)
!3624 = !DILocalVariable(name: "flags", arg: 2, scope: !3621, file: !642, line: 126, type: !123)
!3625 = !DILocalVariable(name: "openflags", scope: !3621, file: !642, line: 128, type: !410)
!3626 = !DILocation(line: 0, scope: !3621)
!3627 = !DILocation(line: 130, column: 19, scope: !3621)
!3628 = !DILocation(line: 130, column: 30, scope: !3621)
!3629 = !DILocation(line: 131, column: 37, scope: !3621)
!3630 = !DILocation(line: 129, column: 10, scope: !3621)
!3631 = !DILocation(line: 129, column: 3, scope: !3621)
!3632 = distinct !DISubprogram(name: "try_dir", scope: !642, file: !642, line: 135, type: !663, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3633)
!3633 = !{!3634, !3635}
!3634 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3632, file: !642, line: 135, type: !122)
!3635 = !DILocalVariable(name: "flags", arg: 2, scope: !3632, file: !642, line: 135, type: !123)
!3636 = !DILocation(line: 0, scope: !3632)
!3637 = !DILocation(line: 137, column: 10, scope: !3632)
!3638 = !DILocation(line: 137, column: 3, scope: !3632)
!3639 = distinct !DISubprogram(name: "try_nocreate", scope: !642, file: !642, line: 141, type: !663, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3640)
!3640 = !{!3641, !3642, !3643}
!3641 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3639, file: !642, line: 141, type: !122)
!3642 = !DILocalVariable(name: "flags", arg: 2, scope: !3639, file: !642, line: 141, type: !123)
!3643 = !DILocalVariable(name: "st", scope: !3639, file: !642, line: 143, type: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3645, line: 26, size: 1152, elements: !3646)
!3645 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!3646 = !{!3647, !3649, !3651, !3653, !3655, !3657, !3659, !3660, !3661, !3662, !3664, !3666, !3667, !3668, !3669}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3644, file: !3645, line: 31, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !253, line: 145, baseType: !127)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3644, file: !3645, line: 36, baseType: !3650, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !253, line: 148, baseType: !127)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3644, file: !3645, line: 44, baseType: !3652, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !253, line: 151, baseType: !127)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3644, file: !3645, line: 45, baseType: !3654, size: 32, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !253, line: 150, baseType: !97)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3644, file: !3645, line: 47, baseType: !3656, size: 32, offset: 224)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !253, line: 146, baseType: !97)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3644, file: !3645, line: 48, baseType: !3658, size: 32, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !253, line: 147, baseType: !97)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3644, file: !3645, line: 50, baseType: !102, size: 32, offset: 288)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3644, file: !3645, line: 52, baseType: !3648, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3644, file: !3645, line: 57, baseType: !252, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3644, file: !3645, line: 61, baseType: !3663, size: 64, offset: 448)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !253, line: 175, baseType: !254)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3644, file: !3645, line: 63, baseType: !3665, size: 64, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !253, line: 180, baseType: !254)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3644, file: !3645, line: 74, baseType: !3536, size: 128, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3644, file: !3645, line: 75, baseType: !3536, size: 128, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3644, file: !3645, line: 76, baseType: !3536, size: 128, offset: 832)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3644, file: !3645, line: 89, baseType: !3670, size: 192, offset: 960)
!3670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3542, size: 192, elements: !307)
!3671 = !DILocation(line: 0, scope: !3639)
!3672 = !DILocation(line: 143, column: 3, scope: !3639)
!3673 = !DILocation(line: 143, column: 17, scope: !3639)
!3674 = !DILocation(line: 145, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3639, file: !642, line: 145, column: 7)
!3676 = !DILocation(line: 145, column: 36, scope: !3675)
!3677 = !DILocation(line: 0, scope: !3675)
!3678 = !DILocation(line: 145, column: 41, scope: !3675)
!3679 = !DILocation(line: 145, column: 44, scope: !3675)
!3680 = !DILocation(line: 145, column: 50, scope: !3675)
!3681 = !DILocation(line: 145, column: 7, scope: !3639)
!3682 = !DILocation(line: 146, column: 5, scope: !3675)
!3683 = !DILocation(line: 147, column: 10, scope: !3639)
!3684 = !DILocation(line: 147, column: 16, scope: !3639)
!3685 = !DILocation(line: 148, column: 1, scope: !3639)
!3686 = !DILocation(line: 147, column: 3, scope: !3639)
!3687 = !DISubprogram(name: "lstat", scope: !3688, file: !3688, line: 313, type: !3689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!3688 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!102, !927, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3692)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3693 = !DISubprogram(name: "mkdir", scope: !3688, file: !3688, line: 389, type: !3694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!102, !128, !3654}
!3696 = !DISubprogram(name: "open", scope: !1718, file: !1718, line: 181, type: !3697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!102, !128, !102, null}
!3699 = distinct !DISubprogram(name: "gen_tempname", scope: !642, file: !642, line: 270, type: !3700, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!102, !122, !102, !102, !102}
!3702 = !{!3703, !3704, !3705, !3706}
!3703 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3699, file: !642, line: 270, type: !122)
!3704 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3699, file: !642, line: 270, type: !102)
!3705 = !DILocalVariable(name: "flags", arg: 3, scope: !3699, file: !642, line: 270, type: !102)
!3706 = !DILocalVariable(name: "kind", arg: 4, scope: !3699, file: !642, line: 270, type: !102)
!3707 = !DILocation(line: 0, scope: !3699)
!3708 = !DILocation(line: 0, scope: !641, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 272, column: 10, scope: !3699)
!3710 = !DILocation(line: 181, column: 53, scope: !641, inlinedAt: !3709)
!3711 = !DILocation(line: 181, column: 10, scope: !641, inlinedAt: !3709)
!3712 = !DILocation(line: 181, column: 3, scope: !641, inlinedAt: !3709)
!3713 = !DILocation(line: 272, column: 3, scope: !3699)
!3714 = distinct !DISubprogram(name: "try_tempname", scope: !642, file: !642, line: 277, type: !3715, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!102, !122, !102, !123, !662}
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3714, file: !642, line: 277, type: !122)
!3719 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3714, file: !642, line: 277, type: !102)
!3720 = !DILocalVariable(name: "args", arg: 3, scope: !3714, file: !642, line: 277, type: !123)
!3721 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3714, file: !642, line: 278, type: !662)
!3722 = !DILocation(line: 0, scope: !3714)
!3723 = !DILocation(line: 280, column: 10, scope: !3714)
!3724 = !DILocation(line: 280, column: 3, scope: !3714)
!3725 = distinct !DISubprogram(name: "version_etc_arn", scope: !667, file: !667, line: 61, type: !3726, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3763)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3728, !128, !128, !128, !3762, !125}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !3730)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3730, file: !230, line: 51, baseType: !102, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3730, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3730, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3730, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3730, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3730, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3730, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3730, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3730, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3730, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3730, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3730, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3730, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3730, file: !230, line: 70, baseType: !3746, size: 64, offset: 832)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3730, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3730, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3730, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3730, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3730, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3730, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3730, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3730, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3730, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3730, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3730, file: !230, line: 93, baseType: !3746, size: 64, offset: 1344)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3730, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3730, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3730, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3730, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769}
!3764 = !DILocalVariable(name: "stream", arg: 1, scope: !3725, file: !667, line: 61, type: !3728)
!3765 = !DILocalVariable(name: "command_name", arg: 2, scope: !3725, file: !667, line: 62, type: !128)
!3766 = !DILocalVariable(name: "package", arg: 3, scope: !3725, file: !667, line: 62, type: !128)
!3767 = !DILocalVariable(name: "version", arg: 4, scope: !3725, file: !667, line: 63, type: !128)
!3768 = !DILocalVariable(name: "authors", arg: 5, scope: !3725, file: !667, line: 64, type: !3762)
!3769 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3725, file: !667, line: 64, type: !125)
!3770 = !DILocation(line: 0, scope: !3725)
!3771 = !DILocation(line: 66, column: 7, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3725, file: !667, line: 66, column: 7)
!3773 = !DILocation(line: 66, column: 7, scope: !3725)
!3774 = !DILocation(line: 67, column: 5, scope: !3772)
!3775 = !DILocation(line: 69, column: 5, scope: !3772)
!3776 = !DILocation(line: 83, column: 3, scope: !3725)
!3777 = !DILocation(line: 85, column: 3, scope: !3725)
!3778 = !DILocation(line: 88, column: 3, scope: !3725)
!3779 = !DILocation(line: 95, column: 3, scope: !3725)
!3780 = !DILocation(line: 97, column: 3, scope: !3725)
!3781 = !DILocation(line: 105, column: 7, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3725, file: !667, line: 98, column: 5)
!3783 = !DILocation(line: 106, column: 7, scope: !3782)
!3784 = !DILocation(line: 109, column: 7, scope: !3782)
!3785 = !DILocation(line: 110, column: 7, scope: !3782)
!3786 = !DILocation(line: 113, column: 7, scope: !3782)
!3787 = !DILocation(line: 115, column: 7, scope: !3782)
!3788 = !DILocation(line: 120, column: 7, scope: !3782)
!3789 = !DILocation(line: 122, column: 7, scope: !3782)
!3790 = !DILocation(line: 127, column: 7, scope: !3782)
!3791 = !DILocation(line: 129, column: 7, scope: !3782)
!3792 = !DILocation(line: 134, column: 7, scope: !3782)
!3793 = !DILocation(line: 137, column: 7, scope: !3782)
!3794 = !DILocation(line: 142, column: 7, scope: !3782)
!3795 = !DILocation(line: 145, column: 7, scope: !3782)
!3796 = !DILocation(line: 150, column: 7, scope: !3782)
!3797 = !DILocation(line: 154, column: 7, scope: !3782)
!3798 = !DILocation(line: 159, column: 7, scope: !3782)
!3799 = !DILocation(line: 163, column: 7, scope: !3782)
!3800 = !DILocation(line: 170, column: 7, scope: !3782)
!3801 = !DILocation(line: 174, column: 7, scope: !3782)
!3802 = !DILocation(line: 176, column: 1, scope: !3725)
!3803 = distinct !DISubprogram(name: "version_etc_ar", scope: !667, file: !667, line: 183, type: !3804, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3728, !128, !128, !128, !3762}
!3806 = !{!3807, !3808, !3809, !3810, !3811, !3812}
!3807 = !DILocalVariable(name: "stream", arg: 1, scope: !3803, file: !667, line: 183, type: !3728)
!3808 = !DILocalVariable(name: "command_name", arg: 2, scope: !3803, file: !667, line: 184, type: !128)
!3809 = !DILocalVariable(name: "package", arg: 3, scope: !3803, file: !667, line: 184, type: !128)
!3810 = !DILocalVariable(name: "version", arg: 4, scope: !3803, file: !667, line: 185, type: !128)
!3811 = !DILocalVariable(name: "authors", arg: 5, scope: !3803, file: !667, line: 185, type: !3762)
!3812 = !DILocalVariable(name: "n_authors", scope: !3803, file: !667, line: 187, type: !125)
!3813 = !DILocation(line: 0, scope: !3803)
!3814 = !DILocation(line: 189, column: 8, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3803, file: !667, line: 189, column: 3)
!3816 = !DILocation(line: 189, scope: !3815)
!3817 = !DILocation(line: 189, column: 23, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !667, line: 189, column: 3)
!3819 = !DILocation(line: 189, column: 3, scope: !3815)
!3820 = !DILocation(line: 189, column: 52, scope: !3818)
!3821 = distinct !{!3821, !3819, !3822, !984}
!3822 = !DILocation(line: 190, column: 5, scope: !3815)
!3823 = !DILocation(line: 191, column: 3, scope: !3803)
!3824 = !DILocation(line: 192, column: 1, scope: !3803)
!3825 = distinct !DISubprogram(name: "version_etc_va", scope: !667, file: !667, line: 199, type: !3826, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3836)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !3728, !128, !128, !128, !3828}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3830)
!3830 = !{!3831, !3833, !3834, !3835}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3829, file: !3832, line: 192, baseType: !97, size: 32)
!3832 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3829, file: !3832, line: 192, baseType: !97, size: 32, offset: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3829, file: !3832, line: 192, baseType: !123, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3829, file: !3832, line: 192, baseType: !123, size: 64, offset: 128)
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3837 = !DILocalVariable(name: "stream", arg: 1, scope: !3825, file: !667, line: 199, type: !3728)
!3838 = !DILocalVariable(name: "command_name", arg: 2, scope: !3825, file: !667, line: 200, type: !128)
!3839 = !DILocalVariable(name: "package", arg: 3, scope: !3825, file: !667, line: 200, type: !128)
!3840 = !DILocalVariable(name: "version", arg: 4, scope: !3825, file: !667, line: 201, type: !128)
!3841 = !DILocalVariable(name: "authors", arg: 5, scope: !3825, file: !667, line: 201, type: !3828)
!3842 = !DILocalVariable(name: "n_authors", scope: !3825, file: !667, line: 203, type: !125)
!3843 = !DILocalVariable(name: "authtab", scope: !3825, file: !667, line: 204, type: !3844)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !80)
!3845 = !DILocation(line: 0, scope: !3825)
!3846 = !DILocation(line: 204, column: 3, scope: !3825)
!3847 = !DILocation(line: 204, column: 15, scope: !3825)
!3848 = !DILocation(line: 208, column: 35, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !667, line: 206, column: 3)
!3850 = distinct !DILexicalBlock(scope: !3825, file: !667, line: 206, column: 3)
!3851 = !DILocation(line: 208, column: 33, scope: !3849)
!3852 = !DILocation(line: 208, column: 67, scope: !3849)
!3853 = !DILocation(line: 206, column: 3, scope: !3850)
!3854 = !DILocation(line: 208, column: 14, scope: !3849)
!3855 = !DILocation(line: 0, scope: !3850)
!3856 = !DILocation(line: 211, column: 3, scope: !3825)
!3857 = !DILocation(line: 213, column: 1, scope: !3825)
!3858 = distinct !DISubprogram(name: "version_etc", scope: !667, file: !667, line: 230, type: !3859, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !3728, !128, !128, !128, null}
!3861 = !{!3862, !3863, !3864, !3865, !3866}
!3862 = !DILocalVariable(name: "stream", arg: 1, scope: !3858, file: !667, line: 230, type: !3728)
!3863 = !DILocalVariable(name: "command_name", arg: 2, scope: !3858, file: !667, line: 231, type: !128)
!3864 = !DILocalVariable(name: "package", arg: 3, scope: !3858, file: !667, line: 231, type: !128)
!3865 = !DILocalVariable(name: "version", arg: 4, scope: !3858, file: !667, line: 232, type: !128)
!3866 = !DILocalVariable(name: "authors", scope: !3858, file: !667, line: 234, type: !3867)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !932, line: 52, baseType: !3868)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1731, line: 14, baseType: !3869)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3832, baseType: !3870)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3829, size: 192, elements: !75)
!3871 = !DILocation(line: 0, scope: !3858)
!3872 = !DILocation(line: 234, column: 3, scope: !3858)
!3873 = !DILocation(line: 234, column: 11, scope: !3858)
!3874 = !DILocation(line: 235, column: 3, scope: !3858)
!3875 = !DILocation(line: 236, column: 3, scope: !3858)
!3876 = !DILocation(line: 237, column: 3, scope: !3858)
!3877 = !DILocation(line: 238, column: 1, scope: !3858)
!3878 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !667, file: !667, line: 241, type: !485, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !921)
!3879 = !DILocation(line: 243, column: 3, scope: !3878)
!3880 = !DILocation(line: 248, column: 3, scope: !3878)
!3881 = !DILocation(line: 254, column: 3, scope: !3878)
!3882 = !DILocation(line: 259, column: 3, scope: !3878)
!3883 = !DILocation(line: 261, column: 1, scope: !3878)
!3884 = distinct !DISubprogram(name: "xnrealloc", scope: !3885, file: !3885, line: 147, type: !3886, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3888)
!3885 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!123, !123, !125, !125}
!3888 = !{!3889, !3890, !3891}
!3889 = !DILocalVariable(name: "p", arg: 1, scope: !3884, file: !3885, line: 147, type: !123)
!3890 = !DILocalVariable(name: "n", arg: 2, scope: !3884, file: !3885, line: 147, type: !125)
!3891 = !DILocalVariable(name: "s", arg: 3, scope: !3884, file: !3885, line: 147, type: !125)
!3892 = !DILocation(line: 0, scope: !3884)
!3893 = !DILocalVariable(name: "p", arg: 1, scope: !3894, file: !804, line: 83, type: !123)
!3894 = distinct !DISubprogram(name: "xreallocarray", scope: !804, file: !804, line: 83, type: !3886, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3895)
!3895 = !{!3893, !3896, !3897}
!3896 = !DILocalVariable(name: "n", arg: 2, scope: !3894, file: !804, line: 83, type: !125)
!3897 = !DILocalVariable(name: "s", arg: 3, scope: !3894, file: !804, line: 83, type: !125)
!3898 = !DILocation(line: 0, scope: !3894, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 149, column: 10, scope: !3884)
!3900 = !DILocation(line: 85, column: 25, scope: !3894, inlinedAt: !3899)
!3901 = !DILocalVariable(name: "p", arg: 1, scope: !3902, file: !804, line: 37, type: !123)
!3902 = distinct !DISubprogram(name: "check_nonnull", scope: !804, file: !804, line: 37, type: !3903, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!123, !123}
!3905 = !{!3901}
!3906 = !DILocation(line: 0, scope: !3902, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 85, column: 10, scope: !3894, inlinedAt: !3899)
!3908 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !3907)
!3909 = distinct !DILexicalBlock(scope: !3902, file: !804, line: 39, column: 7)
!3910 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !3907)
!3911 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !3907)
!3912 = !DILocation(line: 149, column: 3, scope: !3884)
!3913 = !DILocation(line: 0, scope: !3894)
!3914 = !DILocation(line: 85, column: 25, scope: !3894)
!3915 = !DILocation(line: 0, scope: !3902, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 85, column: 10, scope: !3894)
!3917 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !3916)
!3918 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !3916)
!3919 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !3916)
!3920 = !DILocation(line: 85, column: 3, scope: !3894)
!3921 = distinct !DISubprogram(name: "xmalloc", scope: !804, file: !804, line: 47, type: !2000, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3922)
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "s", arg: 1, scope: !3921, file: !804, line: 47, type: !125)
!3924 = !DILocation(line: 0, scope: !3921)
!3925 = !DILocation(line: 49, column: 25, scope: !3921)
!3926 = !DILocation(line: 0, scope: !3902, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 49, column: 10, scope: !3921)
!3928 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !3927)
!3929 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !3927)
!3930 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !3927)
!3931 = !DILocation(line: 49, column: 3, scope: !3921)
!3932 = distinct !DISubprogram(name: "ximalloc", scope: !804, file: !804, line: 53, type: !3933, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!123, !823}
!3935 = !{!3936}
!3936 = !DILocalVariable(name: "s", arg: 1, scope: !3932, file: !804, line: 53, type: !823)
!3937 = !DILocation(line: 0, scope: !3932)
!3938 = !DILocalVariable(name: "s", arg: 1, scope: !3939, file: !3940, line: 55, type: !823)
!3939 = distinct !DISubprogram(name: "imalloc", scope: !3940, file: !3940, line: 55, type: !3933, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3941)
!3940 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3941 = !{!3938}
!3942 = !DILocation(line: 0, scope: !3939, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 55, column: 25, scope: !3932)
!3944 = !DILocation(line: 57, column: 26, scope: !3939, inlinedAt: !3943)
!3945 = !DILocation(line: 0, scope: !3902, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 55, column: 10, scope: !3932)
!3947 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !3946)
!3948 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !3946)
!3949 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !3946)
!3950 = !DILocation(line: 55, column: 3, scope: !3932)
!3951 = distinct !DISubprogram(name: "xcharalloc", scope: !804, file: !804, line: 59, type: !3952, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!122, !125}
!3954 = !{!3955}
!3955 = !DILocalVariable(name: "n", arg: 1, scope: !3951, file: !804, line: 59, type: !125)
!3956 = !DILocation(line: 0, scope: !3951)
!3957 = !DILocation(line: 0, scope: !3921, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 61, column: 10, scope: !3951)
!3959 = !DILocation(line: 49, column: 25, scope: !3921, inlinedAt: !3958)
!3960 = !DILocation(line: 0, scope: !3902, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 49, column: 10, scope: !3921, inlinedAt: !3958)
!3962 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !3961)
!3963 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !3961)
!3964 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !3961)
!3965 = !DILocation(line: 61, column: 3, scope: !3951)
!3966 = distinct !DISubprogram(name: "xrealloc", scope: !804, file: !804, line: 68, type: !3967, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!123, !123, !125}
!3969 = !{!3970, !3971}
!3970 = !DILocalVariable(name: "p", arg: 1, scope: !3966, file: !804, line: 68, type: !123)
!3971 = !DILocalVariable(name: "s", arg: 2, scope: !3966, file: !804, line: 68, type: !125)
!3972 = !DILocation(line: 0, scope: !3966)
!3973 = !DILocalVariable(name: "ptr", arg: 1, scope: !3974, file: !3975, line: 2057, type: !123)
!3974 = distinct !DISubprogram(name: "rpl_realloc", scope: !3975, file: !3975, line: 2057, type: !3967, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3976)
!3975 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3976 = !{!3973, !3977}
!3977 = !DILocalVariable(name: "size", arg: 2, scope: !3974, file: !3975, line: 2057, type: !125)
!3978 = !DILocation(line: 0, scope: !3974, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 70, column: 25, scope: !3966)
!3980 = !DILocation(line: 2059, column: 24, scope: !3974, inlinedAt: !3979)
!3981 = !DILocation(line: 2059, column: 10, scope: !3974, inlinedAt: !3979)
!3982 = !DILocation(line: 0, scope: !3902, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 70, column: 10, scope: !3966)
!3984 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !3983)
!3985 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !3983)
!3986 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !3983)
!3987 = !DILocation(line: 70, column: 3, scope: !3966)
!3988 = !DISubprogram(name: "realloc", scope: !1062, file: !1062, line: 551, type: !3967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!3989 = distinct !DISubprogram(name: "xirealloc", scope: !804, file: !804, line: 74, type: !3990, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!123, !123, !823}
!3992 = !{!3993, !3994}
!3993 = !DILocalVariable(name: "p", arg: 1, scope: !3989, file: !804, line: 74, type: !123)
!3994 = !DILocalVariable(name: "s", arg: 2, scope: !3989, file: !804, line: 74, type: !823)
!3995 = !DILocation(line: 0, scope: !3989)
!3996 = !DILocalVariable(name: "p", arg: 1, scope: !3997, file: !3940, line: 66, type: !123)
!3997 = distinct !DISubprogram(name: "irealloc", scope: !3940, file: !3940, line: 66, type: !3990, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3998)
!3998 = !{!3996, !3999}
!3999 = !DILocalVariable(name: "s", arg: 2, scope: !3997, file: !3940, line: 66, type: !823)
!4000 = !DILocation(line: 0, scope: !3997, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 76, column: 25, scope: !3989)
!4002 = !DILocation(line: 0, scope: !3974, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 68, column: 26, scope: !3997, inlinedAt: !4001)
!4004 = !DILocation(line: 2059, column: 24, scope: !3974, inlinedAt: !4003)
!4005 = !DILocation(line: 2059, column: 10, scope: !3974, inlinedAt: !4003)
!4006 = !DILocation(line: 0, scope: !3902, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 76, column: 10, scope: !3989)
!4008 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4007)
!4009 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4007)
!4010 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4007)
!4011 = !DILocation(line: 76, column: 3, scope: !3989)
!4012 = distinct !DISubprogram(name: "xireallocarray", scope: !804, file: !804, line: 89, type: !4013, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4015)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!123, !123, !823, !823}
!4015 = !{!4016, !4017, !4018}
!4016 = !DILocalVariable(name: "p", arg: 1, scope: !4012, file: !804, line: 89, type: !123)
!4017 = !DILocalVariable(name: "n", arg: 2, scope: !4012, file: !804, line: 89, type: !823)
!4018 = !DILocalVariable(name: "s", arg: 3, scope: !4012, file: !804, line: 89, type: !823)
!4019 = !DILocation(line: 0, scope: !4012)
!4020 = !DILocalVariable(name: "p", arg: 1, scope: !4021, file: !3940, line: 98, type: !123)
!4021 = distinct !DISubprogram(name: "ireallocarray", scope: !3940, file: !3940, line: 98, type: !4013, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4022)
!4022 = !{!4020, !4023, !4024}
!4023 = !DILocalVariable(name: "n", arg: 2, scope: !4021, file: !3940, line: 98, type: !823)
!4024 = !DILocalVariable(name: "s", arg: 3, scope: !4021, file: !3940, line: 98, type: !823)
!4025 = !DILocation(line: 0, scope: !4021, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 91, column: 25, scope: !4012)
!4027 = !DILocation(line: 101, column: 13, scope: !4021, inlinedAt: !4026)
!4028 = !DILocation(line: 0, scope: !3902, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 91, column: 10, scope: !4012)
!4030 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4029)
!4031 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4029)
!4032 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4029)
!4033 = !DILocation(line: 91, column: 3, scope: !4012)
!4034 = distinct !DISubprogram(name: "xnmalloc", scope: !804, file: !804, line: 98, type: !4035, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!123, !125, !125}
!4037 = !{!4038, !4039}
!4038 = !DILocalVariable(name: "n", arg: 1, scope: !4034, file: !804, line: 98, type: !125)
!4039 = !DILocalVariable(name: "s", arg: 2, scope: !4034, file: !804, line: 98, type: !125)
!4040 = !DILocation(line: 0, scope: !4034)
!4041 = !DILocation(line: 0, scope: !3894, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 100, column: 10, scope: !4034)
!4043 = !DILocation(line: 85, column: 25, scope: !3894, inlinedAt: !4042)
!4044 = !DILocation(line: 0, scope: !3902, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 85, column: 10, scope: !3894, inlinedAt: !4042)
!4046 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4045)
!4047 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4045)
!4048 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4045)
!4049 = !DILocation(line: 100, column: 3, scope: !4034)
!4050 = distinct !DISubprogram(name: "xinmalloc", scope: !804, file: !804, line: 104, type: !4051, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!123, !823, !823}
!4053 = !{!4054, !4055}
!4054 = !DILocalVariable(name: "n", arg: 1, scope: !4050, file: !804, line: 104, type: !823)
!4055 = !DILocalVariable(name: "s", arg: 2, scope: !4050, file: !804, line: 104, type: !823)
!4056 = !DILocation(line: 0, scope: !4050)
!4057 = !DILocation(line: 0, scope: !4012, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 106, column: 10, scope: !4050)
!4059 = !DILocation(line: 0, scope: !4021, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 91, column: 25, scope: !4012, inlinedAt: !4058)
!4061 = !DILocation(line: 101, column: 13, scope: !4021, inlinedAt: !4060)
!4062 = !DILocation(line: 0, scope: !3902, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 91, column: 10, scope: !4012, inlinedAt: !4058)
!4064 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4063)
!4065 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4063)
!4066 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4063)
!4067 = !DILocation(line: 106, column: 3, scope: !4050)
!4068 = distinct !DISubprogram(name: "x2realloc", scope: !804, file: !804, line: 116, type: !4069, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!123, !123, !810}
!4071 = !{!4072, !4073}
!4072 = !DILocalVariable(name: "p", arg: 1, scope: !4068, file: !804, line: 116, type: !123)
!4073 = !DILocalVariable(name: "ps", arg: 2, scope: !4068, file: !804, line: 116, type: !810)
!4074 = !DILocation(line: 0, scope: !4068)
!4075 = !DILocation(line: 0, scope: !807, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 118, column: 10, scope: !4068)
!4077 = !DILocation(line: 178, column: 14, scope: !807, inlinedAt: !4076)
!4078 = !DILocation(line: 180, column: 9, scope: !4079, inlinedAt: !4076)
!4079 = distinct !DILexicalBlock(scope: !807, file: !804, line: 180, column: 7)
!4080 = !DILocation(line: 180, column: 7, scope: !807, inlinedAt: !4076)
!4081 = !DILocation(line: 182, column: 13, scope: !4082, inlinedAt: !4076)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !804, line: 182, column: 11)
!4083 = distinct !DILexicalBlock(scope: !4079, file: !804, line: 181, column: 5)
!4084 = !DILocation(line: 182, column: 11, scope: !4083, inlinedAt: !4076)
!4085 = !DILocation(line: 197, column: 11, scope: !4086, inlinedAt: !4076)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !804, line: 197, column: 11)
!4087 = distinct !DILexicalBlock(scope: !4079, file: !804, line: 195, column: 5)
!4088 = !DILocation(line: 197, column: 11, scope: !4087, inlinedAt: !4076)
!4089 = !DILocation(line: 198, column: 9, scope: !4086, inlinedAt: !4076)
!4090 = !DILocation(line: 0, scope: !3894, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 201, column: 7, scope: !807, inlinedAt: !4076)
!4092 = !DILocation(line: 85, column: 25, scope: !3894, inlinedAt: !4091)
!4093 = !DILocation(line: 0, scope: !3902, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 85, column: 10, scope: !3894, inlinedAt: !4091)
!4095 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4094)
!4096 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4094)
!4097 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4094)
!4098 = !DILocation(line: 202, column: 7, scope: !807, inlinedAt: !4076)
!4099 = !DILocation(line: 118, column: 3, scope: !4068)
!4100 = !DILocation(line: 0, scope: !807)
!4101 = !DILocation(line: 178, column: 14, scope: !807)
!4102 = !DILocation(line: 180, column: 9, scope: !4079)
!4103 = !DILocation(line: 180, column: 7, scope: !807)
!4104 = !DILocation(line: 182, column: 13, scope: !4082)
!4105 = !DILocation(line: 182, column: 11, scope: !4083)
!4106 = !DILocation(line: 190, column: 30, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4082, file: !804, line: 183, column: 9)
!4108 = !DILocation(line: 191, column: 16, scope: !4107)
!4109 = !DILocation(line: 191, column: 13, scope: !4107)
!4110 = !DILocation(line: 192, column: 9, scope: !4107)
!4111 = !DILocation(line: 197, column: 11, scope: !4086)
!4112 = !DILocation(line: 197, column: 11, scope: !4087)
!4113 = !DILocation(line: 198, column: 9, scope: !4086)
!4114 = !DILocation(line: 0, scope: !3894, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 201, column: 7, scope: !807)
!4116 = !DILocation(line: 85, column: 25, scope: !3894, inlinedAt: !4115)
!4117 = !DILocation(line: 0, scope: !3902, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 85, column: 10, scope: !3894, inlinedAt: !4115)
!4119 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4118)
!4120 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4118)
!4121 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4118)
!4122 = !DILocation(line: 202, column: 7, scope: !807)
!4123 = !DILocation(line: 203, column: 3, scope: !807)
!4124 = !DILocation(line: 0, scope: !819)
!4125 = !DILocation(line: 230, column: 14, scope: !819)
!4126 = !DILocation(line: 238, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !819, file: !804, line: 238, column: 7)
!4128 = !DILocation(line: 238, column: 7, scope: !819)
!4129 = !DILocation(line: 240, column: 9, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !819, file: !804, line: 240, column: 7)
!4131 = !DILocation(line: 240, column: 18, scope: !4130)
!4132 = !DILocation(line: 253, column: 8, scope: !819)
!4133 = !DILocation(line: 258, column: 27, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !804, line: 257, column: 5)
!4135 = distinct !DILexicalBlock(scope: !819, file: !804, line: 256, column: 7)
!4136 = !DILocation(line: 259, column: 50, scope: !4134)
!4137 = !DILocation(line: 259, column: 32, scope: !4134)
!4138 = !DILocation(line: 260, column: 5, scope: !4134)
!4139 = !DILocation(line: 262, column: 9, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !819, file: !804, line: 262, column: 7)
!4141 = !DILocation(line: 262, column: 7, scope: !819)
!4142 = !DILocation(line: 263, column: 9, scope: !4140)
!4143 = !DILocation(line: 263, column: 5, scope: !4140)
!4144 = !DILocation(line: 264, column: 9, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !819, file: !804, line: 264, column: 7)
!4146 = !DILocation(line: 264, column: 14, scope: !4145)
!4147 = !DILocation(line: 265, column: 7, scope: !4145)
!4148 = !DILocation(line: 265, column: 11, scope: !4145)
!4149 = !DILocation(line: 266, column: 11, scope: !4145)
!4150 = !DILocation(line: 267, column: 14, scope: !4145)
!4151 = !DILocation(line: 264, column: 7, scope: !819)
!4152 = !DILocation(line: 268, column: 5, scope: !4145)
!4153 = !DILocation(line: 0, scope: !3966, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 269, column: 8, scope: !819)
!4155 = !DILocation(line: 0, scope: !3974, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 70, column: 25, scope: !3966, inlinedAt: !4154)
!4157 = !DILocation(line: 2059, column: 24, scope: !3974, inlinedAt: !4156)
!4158 = !DILocation(line: 2059, column: 10, scope: !3974, inlinedAt: !4156)
!4159 = !DILocation(line: 0, scope: !3902, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 70, column: 10, scope: !3966, inlinedAt: !4154)
!4161 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4160)
!4162 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4160)
!4163 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4160)
!4164 = !DILocation(line: 270, column: 7, scope: !819)
!4165 = !DILocation(line: 271, column: 3, scope: !819)
!4166 = distinct !DISubprogram(name: "xzalloc", scope: !804, file: !804, line: 279, type: !2000, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4167)
!4167 = !{!4168}
!4168 = !DILocalVariable(name: "s", arg: 1, scope: !4166, file: !804, line: 279, type: !125)
!4169 = !DILocation(line: 0, scope: !4166)
!4170 = !DILocalVariable(name: "n", arg: 1, scope: !4171, file: !804, line: 294, type: !125)
!4171 = distinct !DISubprogram(name: "xcalloc", scope: !804, file: !804, line: 294, type: !4035, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4172)
!4172 = !{!4170, !4173}
!4173 = !DILocalVariable(name: "s", arg: 2, scope: !4171, file: !804, line: 294, type: !125)
!4174 = !DILocation(line: 0, scope: !4171, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 281, column: 10, scope: !4166)
!4176 = !DILocation(line: 296, column: 25, scope: !4171, inlinedAt: !4175)
!4177 = !DILocation(line: 0, scope: !3902, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 296, column: 10, scope: !4171, inlinedAt: !4175)
!4179 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4178)
!4180 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4178)
!4181 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4178)
!4182 = !DILocation(line: 281, column: 3, scope: !4166)
!4183 = !DISubprogram(name: "calloc", scope: !1062, file: !1062, line: 543, type: !4035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!4184 = !DILocation(line: 0, scope: !4171)
!4185 = !DILocation(line: 296, column: 25, scope: !4171)
!4186 = !DILocation(line: 0, scope: !3902, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 296, column: 10, scope: !4171)
!4188 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4187)
!4189 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4187)
!4190 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4187)
!4191 = !DILocation(line: 296, column: 3, scope: !4171)
!4192 = distinct !DISubprogram(name: "xizalloc", scope: !804, file: !804, line: 285, type: !3933, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4193)
!4193 = !{!4194}
!4194 = !DILocalVariable(name: "s", arg: 1, scope: !4192, file: !804, line: 285, type: !823)
!4195 = !DILocation(line: 0, scope: !4192)
!4196 = !DILocalVariable(name: "n", arg: 1, scope: !4197, file: !804, line: 300, type: !823)
!4197 = distinct !DISubprogram(name: "xicalloc", scope: !804, file: !804, line: 300, type: !4051, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4198)
!4198 = !{!4196, !4199}
!4199 = !DILocalVariable(name: "s", arg: 2, scope: !4197, file: !804, line: 300, type: !823)
!4200 = !DILocation(line: 0, scope: !4197, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 287, column: 10, scope: !4192)
!4202 = !DILocalVariable(name: "n", arg: 1, scope: !4203, file: !3940, line: 77, type: !823)
!4203 = distinct !DISubprogram(name: "icalloc", scope: !3940, file: !3940, line: 77, type: !4051, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4204)
!4204 = !{!4202, !4205}
!4205 = !DILocalVariable(name: "s", arg: 2, scope: !4203, file: !3940, line: 77, type: !823)
!4206 = !DILocation(line: 0, scope: !4203, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 302, column: 25, scope: !4197, inlinedAt: !4201)
!4208 = !DILocation(line: 91, column: 10, scope: !4203, inlinedAt: !4207)
!4209 = !DILocation(line: 0, scope: !3902, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 302, column: 10, scope: !4197, inlinedAt: !4201)
!4211 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4210)
!4212 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4210)
!4213 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4210)
!4214 = !DILocation(line: 287, column: 3, scope: !4192)
!4215 = !DILocation(line: 0, scope: !4197)
!4216 = !DILocation(line: 0, scope: !4203, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 302, column: 25, scope: !4197)
!4218 = !DILocation(line: 91, column: 10, scope: !4203, inlinedAt: !4217)
!4219 = !DILocation(line: 0, scope: !3902, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 302, column: 10, scope: !4197)
!4221 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4220)
!4222 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4220)
!4223 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4220)
!4224 = !DILocation(line: 302, column: 3, scope: !4197)
!4225 = distinct !DISubprogram(name: "xmemdup", scope: !804, file: !804, line: 310, type: !4226, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!123, !1086, !125}
!4228 = !{!4229, !4230}
!4229 = !DILocalVariable(name: "p", arg: 1, scope: !4225, file: !804, line: 310, type: !1086)
!4230 = !DILocalVariable(name: "s", arg: 2, scope: !4225, file: !804, line: 310, type: !125)
!4231 = !DILocation(line: 0, scope: !4225)
!4232 = !DILocation(line: 0, scope: !3921, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 312, column: 18, scope: !4225)
!4234 = !DILocation(line: 49, column: 25, scope: !3921, inlinedAt: !4233)
!4235 = !DILocation(line: 0, scope: !3902, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 49, column: 10, scope: !3921, inlinedAt: !4233)
!4237 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4236)
!4238 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4236)
!4239 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4236)
!4240 = !DILocalVariable(name: "__dest", arg: 1, scope: !4241, file: !1190, line: 26, type: !1193)
!4241 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4242)
!4242 = !{!4240, !4243, !4244}
!4243 = !DILocalVariable(name: "__src", arg: 2, scope: !4241, file: !1190, line: 26, type: !1085)
!4244 = !DILocalVariable(name: "__len", arg: 3, scope: !4241, file: !1190, line: 26, type: !125)
!4245 = !DILocation(line: 0, scope: !4241, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 312, column: 10, scope: !4225)
!4247 = !DILocation(line: 29, column: 10, scope: !4241, inlinedAt: !4246)
!4248 = !DILocation(line: 312, column: 3, scope: !4225)
!4249 = distinct !DISubprogram(name: "ximemdup", scope: !804, file: !804, line: 316, type: !4250, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!123, !1086, !823}
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "p", arg: 1, scope: !4249, file: !804, line: 316, type: !1086)
!4254 = !DILocalVariable(name: "s", arg: 2, scope: !4249, file: !804, line: 316, type: !823)
!4255 = !DILocation(line: 0, scope: !4249)
!4256 = !DILocation(line: 0, scope: !3932, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 318, column: 18, scope: !4249)
!4258 = !DILocation(line: 0, scope: !3939, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 55, column: 25, scope: !3932, inlinedAt: !4257)
!4260 = !DILocation(line: 57, column: 26, scope: !3939, inlinedAt: !4259)
!4261 = !DILocation(line: 0, scope: !3902, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 55, column: 10, scope: !3932, inlinedAt: !4257)
!4263 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4262)
!4264 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4262)
!4265 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4262)
!4266 = !DILocation(line: 0, scope: !4241, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 318, column: 10, scope: !4249)
!4268 = !DILocation(line: 29, column: 10, scope: !4241, inlinedAt: !4267)
!4269 = !DILocation(line: 318, column: 3, scope: !4249)
!4270 = distinct !DISubprogram(name: "ximemdup0", scope: !804, file: !804, line: 325, type: !4271, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!122, !1086, !823}
!4273 = !{!4274, !4275, !4276}
!4274 = !DILocalVariable(name: "p", arg: 1, scope: !4270, file: !804, line: 325, type: !1086)
!4275 = !DILocalVariable(name: "s", arg: 2, scope: !4270, file: !804, line: 325, type: !823)
!4276 = !DILocalVariable(name: "result", scope: !4270, file: !804, line: 327, type: !122)
!4277 = !DILocation(line: 0, scope: !4270)
!4278 = !DILocation(line: 327, column: 30, scope: !4270)
!4279 = !DILocation(line: 0, scope: !3932, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 327, column: 18, scope: !4270)
!4281 = !DILocation(line: 0, scope: !3939, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 55, column: 25, scope: !3932, inlinedAt: !4280)
!4283 = !DILocation(line: 57, column: 26, scope: !3939, inlinedAt: !4282)
!4284 = !DILocation(line: 0, scope: !3902, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 55, column: 10, scope: !3932, inlinedAt: !4280)
!4286 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4285)
!4287 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4285)
!4288 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4285)
!4289 = !DILocation(line: 328, column: 3, scope: !4270)
!4290 = !DILocation(line: 328, column: 13, scope: !4270)
!4291 = !DILocation(line: 0, scope: !4241, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 329, column: 10, scope: !4270)
!4293 = !DILocation(line: 29, column: 10, scope: !4241, inlinedAt: !4292)
!4294 = !DILocation(line: 329, column: 3, scope: !4270)
!4295 = distinct !DISubprogram(name: "xstrdup", scope: !804, file: !804, line: 335, type: !1064, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4296)
!4296 = !{!4297}
!4297 = !DILocalVariable(name: "string", arg: 1, scope: !4295, file: !804, line: 335, type: !128)
!4298 = !DILocation(line: 0, scope: !4295)
!4299 = !DILocation(line: 337, column: 27, scope: !4295)
!4300 = !DILocation(line: 337, column: 43, scope: !4295)
!4301 = !DILocation(line: 0, scope: !4225, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 337, column: 10, scope: !4295)
!4303 = !DILocation(line: 0, scope: !3921, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 312, column: 18, scope: !4225, inlinedAt: !4302)
!4305 = !DILocation(line: 49, column: 25, scope: !3921, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !3902, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 49, column: 10, scope: !3921, inlinedAt: !4304)
!4308 = !DILocation(line: 39, column: 8, scope: !3909, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !3902, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !3909, inlinedAt: !4307)
!4311 = !DILocation(line: 0, scope: !4241, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 312, column: 10, scope: !4225, inlinedAt: !4302)
!4313 = !DILocation(line: 29, column: 10, scope: !4241, inlinedAt: !4312)
!4314 = !DILocation(line: 337, column: 3, scope: !4295)
!4315 = distinct !DISubprogram(name: "xalloc_die", scope: !754, file: !754, line: 32, type: !485, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4316)
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "__errstatus", scope: !4318, file: !754, line: 34, type: !4319)
!4318 = distinct !DILexicalBlock(scope: !4315, file: !754, line: 34, column: 3)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4320 = !DILocation(line: 34, column: 3, scope: !4318)
!4321 = !DILocation(line: 0, scope: !4318)
!4322 = !DILocation(line: 40, column: 3, scope: !4315)
!4323 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !761, file: !761, line: 100, type: !4324, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4327)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!125, !2155, !128, !125, !4326}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!4327 = !{!4328, !4329, !4330, !4331, !4332}
!4328 = !DILocalVariable(name: "pwc", arg: 1, scope: !4323, file: !761, line: 100, type: !2155)
!4329 = !DILocalVariable(name: "s", arg: 2, scope: !4323, file: !761, line: 100, type: !128)
!4330 = !DILocalVariable(name: "n", arg: 3, scope: !4323, file: !761, line: 100, type: !125)
!4331 = !DILocalVariable(name: "ps", arg: 4, scope: !4323, file: !761, line: 100, type: !4326)
!4332 = !DILocalVariable(name: "ret", scope: !4323, file: !761, line: 130, type: !125)
!4333 = !DILocation(line: 0, scope: !4323)
!4334 = !DILocation(line: 105, column: 9, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4323, file: !761, line: 105, column: 7)
!4336 = !DILocation(line: 105, column: 7, scope: !4323)
!4337 = !DILocation(line: 117, column: 10, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4323, file: !761, line: 117, column: 7)
!4339 = !DILocation(line: 117, column: 7, scope: !4323)
!4340 = !DILocation(line: 130, column: 16, scope: !4323)
!4341 = !DILocation(line: 135, column: 11, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4323, file: !761, line: 135, column: 7)
!4343 = !DILocation(line: 135, column: 25, scope: !4342)
!4344 = !DILocation(line: 135, column: 30, scope: !4342)
!4345 = !DILocation(line: 135, column: 7, scope: !4323)
!4346 = !DILocalVariable(name: "ps", arg: 1, scope: !4347, file: !2129, line: 1135, type: !4326)
!4347 = distinct !DISubprogram(name: "mbszero", scope: !2129, file: !2129, line: 1135, type: !4348, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{null, !4326}
!4350 = !{!4346}
!4351 = !DILocation(line: 0, scope: !4347, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 137, column: 5, scope: !4342)
!4353 = !DILocalVariable(name: "__dest", arg: 1, scope: !4354, file: !1190, line: 57, type: !123)
!4354 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2138, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4355)
!4355 = !{!4353, !4356, !4357}
!4356 = !DILocalVariable(name: "__ch", arg: 2, scope: !4354, file: !1190, line: 57, type: !102)
!4357 = !DILocalVariable(name: "__len", arg: 3, scope: !4354, file: !1190, line: 57, type: !125)
!4358 = !DILocation(line: 0, scope: !4354, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 1137, column: 3, scope: !4347, inlinedAt: !4352)
!4360 = !DILocation(line: 59, column: 10, scope: !4354, inlinedAt: !4359)
!4361 = !DILocation(line: 137, column: 5, scope: !4342)
!4362 = !DILocation(line: 138, column: 11, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4323, file: !761, line: 138, column: 7)
!4364 = !DILocation(line: 138, column: 7, scope: !4323)
!4365 = !DILocation(line: 139, column: 5, scope: !4363)
!4366 = !DILocation(line: 143, column: 26, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4323, file: !761, line: 143, column: 7)
!4368 = !DILocation(line: 143, column: 41, scope: !4367)
!4369 = !DILocation(line: 143, column: 7, scope: !4323)
!4370 = !DILocation(line: 145, column: 15, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !761, line: 145, column: 11)
!4372 = distinct !DILexicalBlock(scope: !4367, file: !761, line: 144, column: 5)
!4373 = !DILocation(line: 145, column: 11, scope: !4372)
!4374 = !DILocation(line: 146, column: 32, scope: !4371)
!4375 = !DILocation(line: 146, column: 16, scope: !4371)
!4376 = !DILocation(line: 146, column: 14, scope: !4371)
!4377 = !DILocation(line: 146, column: 9, scope: !4371)
!4378 = !DILocation(line: 286, column: 1, scope: !4323)
!4379 = !DISubprogram(name: "mbsinit", scope: !4380, file: !4380, line: 293, type: !4381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !921)
!4380 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!102, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!4385 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !840, file: !840, line: 27, type: !3886, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4386)
!4386 = !{!4387, !4388, !4389, !4390}
!4387 = !DILocalVariable(name: "ptr", arg: 1, scope: !4385, file: !840, line: 27, type: !123)
!4388 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4385, file: !840, line: 27, type: !125)
!4389 = !DILocalVariable(name: "size", arg: 3, scope: !4385, file: !840, line: 27, type: !125)
!4390 = !DILocalVariable(name: "nbytes", scope: !4385, file: !840, line: 29, type: !125)
!4391 = !DILocation(line: 0, scope: !4385)
!4392 = !DILocation(line: 30, column: 7, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4385, file: !840, line: 30, column: 7)
!4394 = !DILocalVariable(name: "ptr", arg: 1, scope: !4395, file: !3975, line: 2057, type: !123)
!4395 = distinct !DISubprogram(name: "rpl_realloc", scope: !3975, file: !3975, line: 2057, type: !3967, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4396)
!4396 = !{!4394, !4397}
!4397 = !DILocalVariable(name: "size", arg: 2, scope: !4395, file: !3975, line: 2057, type: !125)
!4398 = !DILocation(line: 0, scope: !4395, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 37, column: 10, scope: !4385)
!4400 = !DILocation(line: 2059, column: 24, scope: !4395, inlinedAt: !4399)
!4401 = !DILocation(line: 2059, column: 10, scope: !4395, inlinedAt: !4399)
!4402 = !DILocation(line: 37, column: 3, scope: !4385)
!4403 = !DILocation(line: 32, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4393, file: !840, line: 31, column: 5)
!4405 = !DILocation(line: 32, column: 13, scope: !4404)
!4406 = !DILocation(line: 33, column: 7, scope: !4404)
!4407 = !DILocation(line: 38, column: 1, scope: !4385)
!4408 = distinct !DISubprogram(name: "hard_locale", scope: !779, file: !779, line: 28, type: !4409, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!201, !102}
!4411 = !{!4412, !4413}
!4412 = !DILocalVariable(name: "category", arg: 1, scope: !4408, file: !779, line: 28, type: !102)
!4413 = !DILocalVariable(name: "locale", scope: !4408, file: !779, line: 30, type: !4414)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4415)
!4415 = !{!4416}
!4416 = !DISubrange(count: 257)
!4417 = !DILocation(line: 0, scope: !4408)
!4418 = !DILocation(line: 30, column: 3, scope: !4408)
!4419 = !DILocation(line: 30, column: 8, scope: !4408)
!4420 = !DILocation(line: 32, column: 7, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4408, file: !779, line: 32, column: 7)
!4422 = !DILocation(line: 32, column: 7, scope: !4408)
!4423 = !DILocalVariable(name: "__s1", arg: 1, scope: !4424, file: !950, line: 1359, type: !128)
!4424 = distinct !DISubprogram(name: "streq", scope: !950, file: !950, line: 1359, type: !951, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !4425)
!4425 = !{!4423, !4426}
!4426 = !DILocalVariable(name: "__s2", arg: 2, scope: !4424, file: !950, line: 1359, type: !128)
!4427 = !DILocation(line: 0, scope: !4424, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 35, column: 9, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4408, file: !779, line: 35, column: 7)
!4430 = !DILocation(line: 1361, column: 11, scope: !4424, inlinedAt: !4428)
!4431 = !DILocation(line: 35, column: 29, scope: !4429)
!4432 = !DILocation(line: 0, scope: !4424, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 35, column: 32, scope: !4429)
!4434 = !DILocation(line: 1361, column: 11, scope: !4424, inlinedAt: !4433)
!4435 = !DILocation(line: 1361, column: 10, scope: !4424, inlinedAt: !4433)
!4436 = !DILocation(line: 35, column: 7, scope: !4408)
!4437 = !DILocation(line: 46, column: 3, scope: !4408)
!4438 = !DILocation(line: 47, column: 1, scope: !4408)
!4439 = distinct !DISubprogram(name: "setlocale_null_r", scope: !847, file: !847, line: 154, type: !4440, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!102, !102, !122, !125}
!4442 = !{!4443, !4444, !4445}
!4443 = !DILocalVariable(name: "category", arg: 1, scope: !4439, file: !847, line: 154, type: !102)
!4444 = !DILocalVariable(name: "buf", arg: 2, scope: !4439, file: !847, line: 154, type: !122)
!4445 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4439, file: !847, line: 154, type: !125)
!4446 = !DILocation(line: 0, scope: !4439)
!4447 = !DILocation(line: 159, column: 10, scope: !4439)
!4448 = !DILocation(line: 159, column: 3, scope: !4439)
!4449 = distinct !DISubprogram(name: "setlocale_null", scope: !847, file: !847, line: 186, type: !4450, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !4452)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!128, !102}
!4452 = !{!4453}
!4453 = !DILocalVariable(name: "category", arg: 1, scope: !4449, file: !847, line: 186, type: !102)
!4454 = !DILocation(line: 0, scope: !4449)
!4455 = !DILocation(line: 189, column: 10, scope: !4449)
!4456 = !DILocation(line: 189, column: 3, scope: !4449)
!4457 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !849, file: !849, line: 35, type: !4450, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !4458)
!4458 = !{!4459, !4460}
!4459 = !DILocalVariable(name: "category", arg: 1, scope: !4457, file: !849, line: 35, type: !102)
!4460 = !DILocalVariable(name: "result", scope: !4457, file: !849, line: 37, type: !128)
!4461 = !DILocation(line: 0, scope: !4457)
!4462 = !DILocation(line: 37, column: 24, scope: !4457)
!4463 = !DILocation(line: 62, column: 3, scope: !4457)
!4464 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !849, file: !849, line: 66, type: !4440, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !4465)
!4465 = !{!4466, !4467, !4468, !4469, !4470}
!4466 = !DILocalVariable(name: "category", arg: 1, scope: !4464, file: !849, line: 66, type: !102)
!4467 = !DILocalVariable(name: "buf", arg: 2, scope: !4464, file: !849, line: 66, type: !122)
!4468 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4464, file: !849, line: 66, type: !125)
!4469 = !DILocalVariable(name: "result", scope: !4464, file: !849, line: 111, type: !128)
!4470 = !DILocalVariable(name: "length", scope: !4471, file: !849, line: 125, type: !125)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !849, line: 124, column: 5)
!4472 = distinct !DILexicalBlock(scope: !4464, file: !849, line: 113, column: 7)
!4473 = !DILocation(line: 0, scope: !4464)
!4474 = !DILocation(line: 0, scope: !4457, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 111, column: 24, scope: !4464)
!4476 = !DILocation(line: 37, column: 24, scope: !4457, inlinedAt: !4475)
!4477 = !DILocation(line: 113, column: 14, scope: !4472)
!4478 = !DILocation(line: 113, column: 7, scope: !4464)
!4479 = !DILocation(line: 116, column: 19, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !849, line: 116, column: 11)
!4481 = distinct !DILexicalBlock(scope: !4472, file: !849, line: 114, column: 5)
!4482 = !DILocation(line: 116, column: 11, scope: !4481)
!4483 = !DILocation(line: 120, column: 16, scope: !4480)
!4484 = !DILocation(line: 120, column: 9, scope: !4480)
!4485 = !DILocation(line: 125, column: 23, scope: !4471)
!4486 = !DILocation(line: 0, scope: !4471)
!4487 = !DILocation(line: 126, column: 18, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4471, file: !849, line: 126, column: 11)
!4489 = !DILocation(line: 126, column: 11, scope: !4471)
!4490 = !DILocation(line: 128, column: 39, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4488, file: !849, line: 127, column: 9)
!4492 = !DILocalVariable(name: "__dest", arg: 1, scope: !4493, file: !1190, line: 26, type: !1193)
!4493 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !4494)
!4494 = !{!4492, !4495, !4496}
!4495 = !DILocalVariable(name: "__src", arg: 2, scope: !4493, file: !1190, line: 26, type: !1085)
!4496 = !DILocalVariable(name: "__len", arg: 3, scope: !4493, file: !1190, line: 26, type: !125)
!4497 = !DILocation(line: 0, scope: !4493, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 128, column: 11, scope: !4491)
!4499 = !DILocation(line: 29, column: 10, scope: !4493, inlinedAt: !4498)
!4500 = !DILocation(line: 129, column: 11, scope: !4491)
!4501 = !DILocation(line: 133, column: 23, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !849, line: 133, column: 15)
!4503 = distinct !DILexicalBlock(scope: !4488, file: !849, line: 132, column: 9)
!4504 = !DILocation(line: 133, column: 15, scope: !4503)
!4505 = !DILocation(line: 138, column: 44, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4502, file: !849, line: 134, column: 13)
!4507 = !DILocation(line: 0, scope: !4493, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 138, column: 15, scope: !4506)
!4509 = !DILocation(line: 29, column: 10, scope: !4493, inlinedAt: !4508)
!4510 = !DILocation(line: 139, column: 15, scope: !4506)
!4511 = !DILocation(line: 139, column: 32, scope: !4506)
!4512 = !DILocation(line: 140, column: 13, scope: !4506)
!4513 = !DILocation(line: 0, scope: !4472)
!4514 = !DILocation(line: 145, column: 1, scope: !4464)
