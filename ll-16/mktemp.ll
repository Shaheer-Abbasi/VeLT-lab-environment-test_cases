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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !478
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !443
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !468
@.str.1.53 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !470
@.str.2.55 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !472
@.str.3.54 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !474
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !476
@.str.4.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !480
@.str.5.49 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !482
@.str.6.50 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !487
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !492
@.str.75 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !498
@.str.1.76 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !500
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !502
@.str.79 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !533
@.str.1.80 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !536
@.str.2.81 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !538
@.str.3.82 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !540
@.str.4.83 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !542
@.str.5.84 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !544
@.str.6.85 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !546
@.str.7.86 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !548
@.str.8.87 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !550
@.str.9.88 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !552
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.79, ptr @.str.1.80, ptr @.str.2.81, ptr @.str.3.82, ptr @.str.4.83, ptr @.str.5.84, ptr @.str.6.85, ptr @.str.7.86, ptr @.str.8.87, ptr @.str.9.88, ptr null], align 8, !dbg !554
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !579
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !593
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !631
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !638
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !595
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !640
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !583
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !600
@.str.11.89 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !602
@.str.12.92 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !604
@.str.13.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !606
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !608
@gen_tempname_len.tryfunc = internal unnamed_addr constant [3 x ptr] [ptr @try_file, ptr @try_dir, ptr @try_nocreate], align 8, !dbg !644
@.str.99 = private unnamed_addr constant [2 x i8] c"X\00", align 1, !dbg !652
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 1, !dbg !654
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !670
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !673
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !675
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !677
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !679
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !681
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !686
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !688
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !690
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !695
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !700
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !705
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !710
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !712
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !717
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !719
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !724
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !726
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !728
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !730
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !732
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !734
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !736
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !738
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !743
@exit_failure = dso_local global i32 1, align 4, !dbg !751
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !757
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !760
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !762
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !764
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !767
@.str.150 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !782
@.str.1.151 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !785

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !867, metadata !DIExpression()), !dbg !868
  %2 = icmp eq i32 %0, 0, !dbg !869
  br i1 %2, label %8, label %3, !dbg !871

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !872, !tbaa !874
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !872
  %6 = load ptr, ptr @program_name, align 8, !dbg !872, !tbaa !874
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !872
  br label %42, !dbg !872

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !878
  %10 = load ptr, ptr @program_name, align 8, !dbg !878, !tbaa !874
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !878
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !880
  %13 = load ptr, ptr @stdout, align 8, !dbg !880, !tbaa !874
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !880
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #39, !dbg !881
  %16 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !874
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !881
  %18 = load ptr, ptr @stdout, align 8, !dbg !882, !tbaa !874
  %19 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4, ptr noundef %18), !dbg !882
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !883
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !883
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !884
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !884
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !885
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !885
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !886
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !886
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !887
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !887
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !888
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !888
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !889
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !889
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !890
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !891, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !903, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr poison, metadata !903, metadata !DIExpression()), !dbg !908
  tail call void @emit_bug_reporting_address() #39, !dbg !910
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !911
  call void @llvm.dbg.value(metadata ptr %28, metadata !906, metadata !DIExpression()), !dbg !908
  %29 = icmp eq ptr %28, null, !dbg !912
  br i1 %29, label %37, label %30, !dbg !914

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.62, i64 noundef 3) #40, !dbg !915
  %32 = icmp eq i32 %31, 0, !dbg !915
  br i1 %32, label %37, label %33, !dbg !916

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #39, !dbg !917
  %35 = load ptr, ptr @stdout, align 8, !dbg !917, !tbaa !874
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !917
  br label %37, !dbg !919

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !903, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !907, metadata !DIExpression()), !dbg !908
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #39, !dbg !920
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5) #39, !dbg !920
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !921
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.66) #39, !dbg !921
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !922
  unreachable, !dbg !922
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !923 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !928 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !934 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !937 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !204 {
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !208, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !940
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !941, !tbaa !942
  %3 = icmp eq i32 %2, -1, !dbg !944
  br i1 %3, label %4, label %16, !dbg !945

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.32) #39, !dbg !946
  call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !947
  %6 = icmp eq ptr %5, null, !dbg !948
  br i1 %6, label %14, label %7, !dbg !949

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !950, !tbaa !951
  %9 = icmp eq i8 %8, 0, !dbg !950
  br i1 %9, label %14, label %10, !dbg !952

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !953, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !959, metadata !DIExpression()), !dbg !960
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.33) #40, !dbg !962
  %12 = icmp eq i32 %11, 0, !dbg !963
  %13 = zext i1 %12 to i32, !dbg !952
  br label %14, !dbg !952

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !964, !tbaa !942
  br label %16, !dbg !965

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !966
  %18 = icmp eq i32 %17, 0, !dbg !966
  br i1 %18, label %22, label %19, !dbg !968

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !874
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !969
  br label %122, !dbg !971

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !940
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.34) #40, !dbg !972
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !973
  call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !940
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !974
  call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !940
  %26 = icmp eq ptr %25, null, !dbg !975
  br i1 %26, label %54, label %27, !dbg !976

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !977
  br i1 %28, label %54, label %29, !dbg !978

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !979
  %30 = icmp ult ptr %24, %25, !dbg !980
  br i1 %30, label %31, label %52, !dbg !981

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !940
  %33 = load ptr, ptr %32, align 8, !tbaa !874
  br label %34, !dbg !981

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !979
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !982
  call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !979
  %38 = load i8, ptr %35, align 1, !dbg !982, !tbaa !951
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !982
  %41 = load i16, ptr %40, align 2, !dbg !982, !tbaa !983
  %42 = freeze i16 %41, !dbg !985
  %43 = lshr i16 %42, 13, !dbg !985
  %44 = and i16 %43, 1, !dbg !985
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !986
  call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !979
  %47 = icmp ult ptr %37, %25, !dbg !980
  %48 = icmp ult i64 %46, 2, !dbg !987
  %49 = select i1 %47, i1 %48, i1 false, !dbg !987
  br i1 %49, label %34, label %50, !dbg !981, !llvm.loop !988

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !990
  br i1 %51, label %52, label %54, !dbg !992

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !992

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !940
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr %55, metadata !215, metadata !DIExpression()), !dbg !940
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.35) #40, !dbg !993
  call void @llvm.dbg.value(metadata i64 %57, metadata !221, metadata !DIExpression()), !dbg !940
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !994
  call void @llvm.dbg.value(metadata ptr %58, metadata !222, metadata !DIExpression()), !dbg !940
  br label %59, !dbg !995

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !940
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr %60, metadata !222, metadata !DIExpression()), !dbg !940
  %62 = load i8, ptr %60, align 1, !dbg !996, !tbaa !951
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !997

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !998
  %65 = load i8, ptr %64, align 1, !dbg !1001, !tbaa !951
  %66 = icmp ne i8 %65, 45, !dbg !1002
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1003
  br label %68, !dbg !1003

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !940
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1004
  %71 = load ptr, ptr %70, align 8, !dbg !1004, !tbaa !874
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1004
  %74 = load i16, ptr %73, align 2, !dbg !1004, !tbaa !983
  %75 = and i16 %74, 8192, !dbg !1004
  %76 = icmp eq i16 %75, 0, !dbg !1004
  br i1 %76, label %90, label %77, !dbg !1006

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1007
  br i1 %78, label %92, label %79, !dbg !1010

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1011
  %81 = load i8, ptr %80, align 1, !dbg !1011, !tbaa !951
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1011
  %84 = load i16, ptr %83, align 2, !dbg !1011, !tbaa !983
  %85 = and i16 %84, 8192, !dbg !1011
  %86 = icmp eq i16 %85, 0, !dbg !1011
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1012
  br i1 %89, label %90, label %92, !dbg !1012

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1013
  call void @llvm.dbg.value(metadata ptr %91, metadata !222, metadata !DIExpression()), !dbg !940
  br label %59, !dbg !995, !llvm.loop !1014

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1016
  %94 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !874
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !953, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !279, metadata !DIExpression()), !dbg !940
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.49, i64 noundef 6) #40, !dbg !1037
  %97 = icmp eq i32 %96, 0, !dbg !1037
  br i1 %97, label %101, label %98, !dbg !1039

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.50, i64 noundef 9) #40, !dbg !1040
  %100 = icmp eq i32 %99, 0, !dbg !1040
  br i1 %100, label %101, label %104, !dbg !1041

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1042
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %102, ptr noundef %55) #39, !dbg !1042
  br label %107, !dbg !1044

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1045
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.5, i32 noundef %105, ptr noundef %55) #39, !dbg !1045
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !874
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %108), !dbg !1047
  %110 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !874
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.56, ptr noundef %110), !dbg !1048
  %112 = ptrtoint ptr %60 to i64, !dbg !1049
  %113 = sub i64 %112, %93, !dbg !1049
  %114 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !874
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1049
  %116 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !874
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %116), !dbg !1050
  %118 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !874
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %118), !dbg !1051
  %120 = load ptr, ptr @stdout, align 8, !dbg !1052, !tbaa !874
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1052
  br label %122, !dbg !1053

122:                                              ; preds = %107, %19
  ret void, !dbg !1053
}

; Function Attrs: nounwind
declare !dbg !1054 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1058 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1062 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1064 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1067 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1070 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1073 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1076 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1082 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1083 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1089 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1094, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %1, metadata !1095, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr null, metadata !1097, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr null, metadata !1101, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 0, metadata !1102, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 0, metadata !1104, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 0, metadata !1105, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 0, metadata !1106, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr null, metadata !1109, metadata !DIExpression()), !dbg !1133
  %3 = load ptr, ptr %1, align 8, !dbg !1134, !tbaa !874
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1135
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #39, !dbg !1136
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #39, !dbg !1137
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #39, !dbg !1138
  %7 = tail call i32 @atexit(ptr noundef nonnull @maybe_close_stdout) #39, !dbg !1139
  br label %8, !dbg !1140

8:                                                ; preds = %47, %2
  %9 = phi i1 [ true, %47 ], [ false, %2 ]
  %10 = phi i1 [ %19, %47 ], [ false, %2 ]
  %11 = phi i1 [ %26, %47 ], [ false, %2 ]
  %12 = phi i1 [ %32, %47 ], [ false, %2 ]
  %13 = phi ptr [ %37, %47 ], [ null, %2 ]
  %14 = phi i1 [ %48, %47 ], [ false, %2 ]
  %15 = phi ptr [ %35, %47 ], [ null, %2 ]
  br label %18, !dbg !1140

16:                                               ; preds = %36, %40
  %17 = phi i1 [ true, %40 ], [ %38, %36 ]
  br label %18, !dbg !1140, !llvm.loop !1141

18:                                               ; preds = %16, %8
  %19 = phi i1 [ %10, %8 ], [ true, %16 ]
  %20 = phi i1 [ %11, %8 ], [ %26, %16 ]
  %21 = phi i1 [ %12, %8 ], [ %32, %16 ]
  %22 = phi ptr [ %13, %8 ], [ %37, %16 ]
  %23 = phi i1 [ %14, %8 ], [ %17, %16 ]
  %24 = phi ptr [ %15, %8 ], [ %35, %16 ]
  br label %25, !dbg !1140

25:                                               ; preds = %18, %45
  %26 = phi i1 [ %20, %18 ], [ true, %45 ]
  %27 = phi i1 [ %21, %18 ], [ true, %45 ]
  %28 = phi ptr [ %22, %18 ], [ %37, %45 ]
  %29 = phi i1 [ %23, %18 ], [ %46, %45 ]
  %30 = phi ptr [ %24, %18 ], [ %35, %45 ]
  br label %31, !dbg !1140

31:                                               ; preds = %25, %42
  %32 = phi i1 [ %27, %25 ], [ true, %42 ]
  %33 = phi ptr [ %28, %25 ], [ %37, %42 ]
  %34 = phi i1 [ %29, %25 ], [ %43, %42 ]
  %35 = phi ptr [ %30, %25 ], [ %44, %42 ]
  br label %36, !dbg !1140

36:                                               ; preds = %31, %49
  %37 = phi ptr [ %33, %31 ], [ %51, %49 ]
  %38 = phi i1 [ %34, %31 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !1097, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1098, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %37, metadata !1101, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1102, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1103, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1105, metadata !DIExpression()), !dbg !1133
  %39 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %39, metadata !1099, metadata !DIExpression()), !dbg !1133
  switch i32 %39, label %58 [
    i32 -1, label %59
    i32 100, label %16
    i32 112, label %42
    i32 113, label %40
    i32 116, label %45
    i32 117, label %47
    i32 256, label %49
    i32 -2, label %52
    i32 86, label %53
    i32 -3, label %53
  ], !dbg !1140

40:                                               ; preds = %40, %36
  call void @llvm.dbg.value(metadata ptr %35, metadata !1097, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1098, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %37, metadata !1101, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1102, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1103, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1105, metadata !DIExpression()), !dbg !1133
  %41 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %41, metadata !1099, metadata !DIExpression()), !dbg !1133
  switch i32 %41, label %58 [
    i32 -1, label %59
    i32 100, label %16
    i32 112, label %42
    i32 113, label %40
    i32 116, label %45
    i32 117, label %47
    i32 256, label %49
    i32 -2, label %52
    i32 86, label %53
    i32 -3, label %53
  ], !dbg !1140, !llvm.loop !1144

42:                                               ; preds = %36, %40
  %43 = phi i1 [ true, %40 ], [ %38, %36 ]
  %44 = load ptr, ptr @optarg, align 8, !dbg !1146, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %44, metadata !1097, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1133
  br label %31, !dbg !1149, !llvm.loop !1141

45:                                               ; preds = %36, %40
  %46 = phi i1 [ true, %40 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1133
  br label %25, !dbg !1150, !llvm.loop !1141

47:                                               ; preds = %36, %40
  %48 = phi i1 [ true, %40 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1105, metadata !DIExpression()), !dbg !1133
  br label %8, !dbg !1151, !llvm.loop !1141

49:                                               ; preds = %40, %36
  %50 = phi i1 [ %38, %36 ], [ true, %40 ]
  %51 = load ptr, ptr @optarg, align 8, !dbg !1152, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %51, metadata !1101, metadata !DIExpression()), !dbg !1133
  br label %36, !dbg !1153, !llvm.loop !1141

52:                                               ; preds = %36, %40
  tail call void @usage(i32 noundef 0) #43, !dbg !1154
  unreachable, !dbg !1154

53:                                               ; preds = %36, %36, %40, %40
  %54 = load ptr, ptr @stdout, align 8, !dbg !1155, !tbaa !874
  %55 = load ptr, ptr @Version, align 8, !dbg !1155, !tbaa !874
  %56 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #39, !dbg !1155
  %57 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.20) #39, !dbg !1155
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %54, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef null) #39, !dbg !1155
  tail call void @exit(i32 noundef 0) #41, !dbg !1155
  unreachable, !dbg !1155

58:                                               ; preds = %36, %40
  tail call void @usage(i32 noundef 1) #43, !dbg !1156
  unreachable, !dbg !1156

59:                                               ; preds = %36, %40
  %60 = phi i1 [ true, %40 ], [ %38, %36 ]
  %61 = load i32, ptr @optind, align 4, !dbg !1157, !tbaa !942
  %62 = sub nsw i32 %0, %61, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %62, metadata !1110, metadata !DIExpression()), !dbg !1133
  %63 = icmp sgt i32 %62, 1, !dbg !1159
  br i1 %63, label %64, label %66, !dbg !1161

64:                                               ; preds = %59
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1162
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %65) #39, !dbg !1162
  tail call void @usage(i32 noundef 1) #43, !dbg !1164
  unreachable, !dbg !1164

66:                                               ; preds = %59
  %67 = icmp eq i32 %61, %0, !dbg !1165
  br i1 %67, label %72, label %68, !dbg !1167

68:                                               ; preds = %66
  %69 = sext i32 %61 to i64, !dbg !1168
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69, !dbg !1168
  %71 = load ptr, ptr %70, align 8, !dbg !1168, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %71, metadata !1100, metadata !DIExpression()), !dbg !1133
  br label %72

72:                                               ; preds = %66, %68
  %73 = phi i1 [ %32, %68 ], [ true, %66 ]
  %74 = phi ptr [ %71, %68 ], [ @.str.74, %66 ], !dbg !1170
  call void @llvm.dbg.value(metadata ptr %74, metadata !1100, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 poison, metadata !1102, metadata !DIExpression()), !dbg !1133
  %75 = icmp eq ptr %37, null, !dbg !1171
  br i1 %75, label %93, label %76, !dbg !1172

76:                                               ; preds = %72
  %77 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #40, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %77, metadata !1111, metadata !DIExpression()), !dbg !1174
  %78 = icmp eq i64 %77, 0, !dbg !1175
  br i1 %78, label %84, label %79, !dbg !1177

79:                                               ; preds = %76
  %80 = add i64 %77, -1, !dbg !1178
  %81 = getelementptr inbounds i8, ptr %74, i64 %80, !dbg !1179
  %82 = load i8, ptr %81, align 1, !dbg !1179, !tbaa !951
  %83 = icmp eq i8 %82, 88, !dbg !1180
  br i1 %83, label %87, label %84, !dbg !1181

84:                                               ; preds = %79, %76
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !1182
  %86 = tail call ptr @quote(ptr noundef %74) #39, !dbg !1182
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %85, ptr noundef %86) #39, !dbg !1182
  unreachable, !dbg !1182

87:                                               ; preds = %79
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #40, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %88, metadata !1108, metadata !DIExpression()), !dbg !1133
  %89 = add i64 %88, 1, !dbg !1185
  %90 = add i64 %89, %77, !dbg !1186
  %91 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %90) #44, !dbg !1187
  call void @llvm.dbg.value(metadata ptr %91, metadata !1109, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %91, metadata !1188, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %74, metadata !1195, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %77, metadata !1196, metadata !DIExpression()), !dbg !1197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %91, ptr noundef nonnull align 1 %74, i64 noundef %77, i1 noundef false) #39, !dbg !1199
  %92 = getelementptr inbounds i8, ptr %91, i64 %77, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %92, metadata !1188, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %37, metadata !1195, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %89, metadata !1196, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %92, ptr noundef nonnull align 1 %37, i64 noundef %89, i1 noundef false) #39, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %91, metadata !1100, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %92, metadata !1101, metadata !DIExpression()), !dbg !1133
  br label %105, !dbg !1204

93:                                               ; preds = %72
  %94 = tail call noalias nonnull ptr @xstrdup(ptr noundef %74) #39, !dbg !1205
  call void @llvm.dbg.value(metadata ptr %94, metadata !1100, metadata !DIExpression()), !dbg !1133
  %95 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %94, i32 noundef 88) #40, !dbg !1207
  call void @llvm.dbg.value(metadata ptr %95, metadata !1101, metadata !DIExpression()), !dbg !1133
  %96 = icmp eq ptr %95, null, !dbg !1208
  br i1 %96, label %97, label %100, !dbg !1210

97:                                               ; preds = %93
  %98 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %94), !dbg !1211
  %99 = getelementptr inbounds i8, ptr %94, i64 %98, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %99, metadata !1101, metadata !DIExpression()), !dbg !1133
  br label %102, !dbg !1212

100:                                              ; preds = %93
  %101 = getelementptr inbounds i8, ptr %95, i64 1, !dbg !1213
  call void @llvm.dbg.value(metadata ptr %101, metadata !1101, metadata !DIExpression()), !dbg !1133
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi ptr [ %101, %100 ], [ %99, %97 ], !dbg !1214
  call void @llvm.dbg.value(metadata ptr %103, metadata !1101, metadata !DIExpression()), !dbg !1133
  %104 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %103) #40, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %104, metadata !1108, metadata !DIExpression()), !dbg !1133
  br label %105

105:                                              ; preds = %102, %87
  %106 = phi i64 [ %88, %87 ], [ %104, %102 ], !dbg !1216
  %107 = phi ptr [ %91, %87 ], [ null, %102 ], !dbg !1133
  %108 = phi ptr [ %92, %87 ], [ %103, %102 ], !dbg !1216
  %109 = phi ptr [ %91, %87 ], [ %94, %102 ], !dbg !1216
  call void @llvm.dbg.value(metadata ptr %109, metadata !1100, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %108, metadata !1101, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %107, metadata !1109, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %106, metadata !1108, metadata !DIExpression()), !dbg !1133
  %110 = icmp eq i64 %106, 0, !dbg !1217
  br i1 %110, label %117, label %111, !dbg !1219

111:                                              ; preds = %105
  %112 = tail call ptr @last_component(ptr noundef nonnull %108) #40, !dbg !1220
  %113 = icmp eq ptr %112, %108, !dbg !1221
  br i1 %113, label %117, label %114, !dbg !1222

114:                                              ; preds = %111
  %115 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !1223
  %116 = tail call ptr @quote(ptr noundef nonnull %108) #39, !dbg !1223
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %115, ptr noundef %116) #39, !dbg !1223
  unreachable, !dbg !1223

117:                                              ; preds = %111, %105
  %118 = ptrtoint ptr %108 to i64, !dbg !1225
  %119 = ptrtoint ptr %109 to i64, !dbg !1225
  %120 = sub i64 %118, %119, !dbg !1225
  call void @llvm.dbg.value(metadata ptr %109, metadata !1226, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %120, metadata !1231, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1232, metadata !DIExpression()), !dbg !1233
  %121 = icmp eq i64 %120, 0, !dbg !1235
  br i1 %121, label %135, label %122, !dbg !1238

122:                                              ; preds = %117, %129
  %123 = phi i64 [ %130, %129 ], [ 0, %117 ]
  %124 = phi i64 [ %125, %129 ], [ %120, %117 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1232, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %124, metadata !1231, metadata !DIExpression()), !dbg !1233
  %125 = add i64 %124, -1, !dbg !1239
  %126 = getelementptr inbounds i8, ptr %109, i64 %125, !dbg !1240
  %127 = load i8, ptr %126, align 1, !dbg !1240, !tbaa !951
  %128 = icmp eq i8 %127, 88, !dbg !1241
  br i1 %128, label %129, label %132, !dbg !1242

129:                                              ; preds = %122
  %130 = add nuw i64 %123, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %130, metadata !1232, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %125, metadata !1231, metadata !DIExpression()), !dbg !1233
  %131 = icmp eq i64 %125, 0, !dbg !1235
  br i1 %131, label %132, label %122, !dbg !1238, !llvm.loop !1244

132:                                              ; preds = %122, %129
  %133 = phi i64 [ %120, %129 ], [ %123, %122 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %133, metadata !1107, metadata !DIExpression()), !dbg !1133
  %134 = icmp ult i64 %133, 3, !dbg !1246
  br i1 %134, label %135, label %142, !dbg !1248

135:                                              ; preds = %117, %132
  %136 = icmp eq ptr %109, %107, !dbg !1249
  br i1 %136, label %137, label %139, !dbg !1252

137:                                              ; preds = %135
  %138 = getelementptr inbounds i8, ptr %107, i64 %120, !dbg !1253
  store i8 0, ptr %138, align 1, !dbg !1254, !tbaa !951
  br label %139, !dbg !1253

139:                                              ; preds = %137, %135
  %140 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !1255
  %141 = tail call ptr @quote(ptr noundef nonnull %109) #39, !dbg !1255
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %140, ptr noundef %141) #39, !dbg !1255
  unreachable, !dbg !1255

142:                                              ; preds = %132
  br i1 %73, label %143, label %185, !dbg !1256

143:                                              ; preds = %142
  br i1 %26, label %144, label %163, !dbg !1257

144:                                              ; preds = %143
  %145 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #39, !dbg !1258
  call void @llvm.dbg.value(metadata ptr %145, metadata !1114, metadata !DIExpression()), !dbg !1259
  %146 = icmp eq ptr %145, null, !dbg !1260
  br i1 %146, label %150, label %147, !dbg !1262

147:                                              ; preds = %144
  %148 = load i8, ptr %145, align 1, !dbg !1263, !tbaa !951
  %149 = icmp eq i8 %148, 0, !dbg !1263
  br i1 %149, label %150, label %156, !dbg !1264

150:                                              ; preds = %147, %144
  %151 = icmp eq ptr %35, null, !dbg !1265
  br i1 %151, label %155, label %152, !dbg !1267

152:                                              ; preds = %150
  %153 = load i8, ptr %35, align 1, !dbg !1268, !tbaa !951
  %154 = icmp eq i8 %153, 0, !dbg !1268
  br i1 %154, label %155, label %156, !dbg !1269

155:                                              ; preds = %152, %150
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !1096, metadata !DIExpression()), !dbg !1133
  br label %156

156:                                              ; preds = %152, %147, %155
  %157 = phi ptr [ @.str.26, %155 ], [ %145, %147 ], [ %35, %152 ], !dbg !1270
  call void @llvm.dbg.value(metadata ptr %157, metadata !1096, metadata !DIExpression()), !dbg !1133
  %158 = tail call ptr @last_component(ptr noundef nonnull %109) #40, !dbg !1271
  %159 = icmp eq ptr %158, %109, !dbg !1273
  br i1 %159, label %182, label %160, !dbg !1274

160:                                              ; preds = %156
  %161 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #39, !dbg !1275
  %162 = tail call ptr @quote(ptr noundef nonnull %109) #39, !dbg !1275
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %161, ptr noundef %162) #39, !dbg !1275
  unreachable, !dbg !1275

163:                                              ; preds = %143
  %164 = icmp eq ptr %35, null, !dbg !1276
  br i1 %164, label %168, label %165, !dbg !1277

165:                                              ; preds = %163
  %166 = load i8, ptr %35, align 1, !dbg !1278, !tbaa !951
  %167 = icmp eq i8 %166, 0, !dbg !1278
  br i1 %167, label %168, label %175, !dbg !1279

168:                                              ; preds = %165, %163
  %169 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #39, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %169, metadata !1119, metadata !DIExpression()), !dbg !1281
  %170 = icmp eq ptr %169, null, !dbg !1282
  br i1 %170, label %175, label %171, !dbg !1283

171:                                              ; preds = %168
  %172 = load i8, ptr %169, align 1, !dbg !1284, !tbaa !951
  %173 = icmp eq i8 %172, 0, !dbg !1284
  %174 = select i1 %173, ptr @.str.26, ptr %169, !dbg !1282
  br label %175, !dbg !1282

175:                                              ; preds = %168, %171, %165
  %176 = phi ptr [ %35, %165 ], [ @.str.26, %168 ], [ %174, %171 ], !dbg !1285
  call void @llvm.dbg.value(metadata ptr %176, metadata !1096, metadata !DIExpression()), !dbg !1133
  %177 = load i8, ptr %109, align 1, !dbg !1286, !tbaa !951
  %178 = icmp eq i8 %177, 47, !dbg !1286
  br i1 %178, label %179, label %182, !dbg !1288

179:                                              ; preds = %175
  %180 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #39, !dbg !1289
  %181 = tail call ptr @quote(ptr noundef nonnull %109) #39, !dbg !1289
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %180, ptr noundef %181) #39, !dbg !1289
  unreachable, !dbg !1289

182:                                              ; preds = %156, %175
  %183 = phi ptr [ %176, %175 ], [ %157, %156 ], !dbg !1290
  call void @llvm.dbg.value(metadata ptr %183, metadata !1096, metadata !DIExpression()), !dbg !1133
  %184 = tail call noalias nonnull ptr @file_name_concat(ptr noundef %183, ptr noundef nonnull %109, ptr noundef null) #39, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %184, metadata !1109, metadata !DIExpression()), !dbg !1133
  tail call void @free(ptr noundef nonnull %109) #39, !dbg !1292
  call void @llvm.dbg.value(metadata ptr %184, metadata !1100, metadata !DIExpression()), !dbg !1133
  br label %185, !dbg !1293

185:                                              ; preds = %182, %142
  %186 = phi ptr [ %184, %182 ], [ %109, %142 ], !dbg !1133
  call void @llvm.dbg.value(metadata ptr %186, metadata !1100, metadata !DIExpression()), !dbg !1133
  %187 = tail call noalias nonnull ptr @xstrdup(ptr noundef %186) #39, !dbg !1294
  call void @llvm.dbg.value(metadata ptr %187, metadata !1109, metadata !DIExpression()), !dbg !1133
  %188 = trunc i64 %106 to i32, !dbg !1295
  br i1 %19, label %189, label %199, !dbg !1296

189:                                              ; preds = %185
  call void @llvm.dbg.value(metadata ptr %187, metadata !1297, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %106, metadata !1302, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %133, metadata !1303, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i1 %9, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1305
  %190 = select i1 %9, i32 2, i32 1, !dbg !1307
  %191 = tail call i32 @gen_tempname_len(ptr noundef nonnull %187, i32 noundef %188, i32 noundef 0, i32 noundef %190, i64 noundef %133) #39, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %191, metadata !1123, metadata !DIExpression()), !dbg !1309
  %192 = icmp eq i32 %191, 0, !dbg !1310
  %193 = select i1 %192, i1 true, i1 %60, !dbg !1312
  br i1 %193, label %216, label %194, !dbg !1312

194:                                              ; preds = %189
  %195 = tail call ptr @__errno_location() #42, !dbg !1313
  %196 = load i32, ptr %195, align 4, !dbg !1313, !tbaa !942
  %197 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !1313
  %198 = tail call ptr @quote(ptr noundef %186) #39, !dbg !1313
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %196, ptr noundef %197, ptr noundef %198) #39, !dbg !1313
  br label %232, !dbg !1313

199:                                              ; preds = %185
  call void @llvm.dbg.value(metadata ptr %187, metadata !1316, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %106, metadata !1319, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %133, metadata !1320, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i1 %9, metadata !1321, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1322
  %200 = select i1 %9, i32 2, i32 0, !dbg !1324
  %201 = tail call i32 @gen_tempname_len(ptr noundef nonnull %187, i32 noundef %188, i32 noundef 0, i32 noundef %200, i64 noundef %133) #39, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %201, metadata !1126, metadata !DIExpression()), !dbg !1326
  %202 = icmp slt i32 %201, 0, !dbg !1327
  br i1 %202, label %210, label %203, !dbg !1329

203:                                              ; preds = %199
  br i1 %9, label %204, label %206, !dbg !1330

204:                                              ; preds = %203
  call void @llvm.dbg.value(metadata i32 0, metadata !1106, metadata !DIExpression()), !dbg !1133
  %205 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %187), !dbg !1331
  br label %232, !dbg !1332

206:                                              ; preds = %203
  %207 = tail call i32 @close(i32 noundef %201) #39, !dbg !1333
  %208 = icmp eq i32 %207, 0, !dbg !1334
  %209 = select i1 %208, i1 true, i1 %60, !dbg !1335
  br i1 %209, label %217, label %211, !dbg !1335

210:                                              ; preds = %199
  br i1 %60, label %232, label %211, !dbg !1336

211:                                              ; preds = %206, %210
  %212 = tail call ptr @__errno_location() #42, !dbg !1338
  %213 = load i32, ptr %212, align 4, !dbg !1338, !tbaa !942
  %214 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !1338
  %215 = tail call ptr @quote(ptr noundef %186) #39, !dbg !1338
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %213, ptr noundef %214, ptr noundef %215) #39, !dbg !1338
  br label %232, !dbg !1338

216:                                              ; preds = %189
  call void @llvm.dbg.value(metadata i32 poison, metadata !1106, metadata !DIExpression()), !dbg !1133
  br i1 %192, label %220, label %232, !dbg !1340

217:                                              ; preds = %206
  call void @llvm.dbg.value(metadata i32 poison, metadata !1106, metadata !DIExpression()), !dbg !1133
  br i1 %208, label %218, label %232, !dbg !1340

218:                                              ; preds = %217
  %219 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %187), !dbg !1331
  br label %222, !dbg !1332

220:                                              ; preds = %216
  %221 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %187), !dbg !1331
  br i1 %9, label %232, label %222, !dbg !1332

222:                                              ; preds = %218, %220
  store i1 true, ptr @stdout_closed, align 1, !dbg !1341
  %223 = load ptr, ptr @stdout, align 8, !dbg !1342, !tbaa !874
  %224 = tail call i32 @close_stream(ptr noundef %223) #39, !dbg !1343
  %225 = icmp eq i32 %224, 0, !dbg !1344
  br i1 %225, label %232, label %226, !dbg !1345

226:                                              ; preds = %222
  %227 = tail call ptr @__errno_location() #42, !dbg !1346
  %228 = load i32, ptr %227, align 4, !dbg !1346, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %228, metadata !1128, metadata !DIExpression()), !dbg !1347
  %229 = tail call i32 @remove(ptr noundef nonnull %187) #39, !dbg !1348
  br i1 %60, label %232, label %230, !dbg !1349

230:                                              ; preds = %226
  %231 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !1350
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %228, ptr noundef %231) #39, !dbg !1350
  br label %232, !dbg !1350

232:                                              ; preds = %210, %211, %194, %217, %204, %226, %230, %220, %222, %216
  %233 = phi i32 [ 0, %220 ], [ 0, %222 ], [ 1, %216 ], [ 1, %230 ], [ 1, %226 ], [ 0, %204 ], [ 1, %217 ], [ 1, %194 ], [ 1, %211 ], [ 1, %210 ], !dbg !1133
  call void @llvm.dbg.value(metadata i32 %233, metadata !1106, metadata !DIExpression()), !dbg !1133
  ret i32 %233, !dbg !1352
}

; Function Attrs: nounwind
declare !dbg !1353 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1356 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @maybe_close_stdout() #10 !dbg !1357 {
  %1 = load i1, ptr @stdout_closed, align 1, !dbg !1358
  br i1 %1, label %3, label %2, !dbg !1360

2:                                                ; preds = %0
  tail call void @close_stdout() #39, !dbg !1361
  br label %8, !dbg !1361

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !1362, !tbaa !874
  %5 = tail call i32 @close_stream(ptr noundef %4) #39, !dbg !1364
  %6 = icmp eq i32 %5, 0, !dbg !1365
  br i1 %6, label %8, label %7, !dbg !1366

7:                                                ; preds = %3
  tail call void @_exit(i32 noundef 1) #41, !dbg !1367
  unreachable, !dbg !1367

8:                                                ; preds = %3, %2
  ret void, !dbg !1368
}

; Function Attrs: nounwind
declare !dbg !1369 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1372 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1378 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1381 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1382 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1385 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1389 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1392 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1396 noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn
declare !dbg !1397 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1398 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1400, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %0, metadata !1401, metadata !DIExpression()), !dbg !1405
  br label %2, !dbg !1406

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1405
  call void @llvm.dbg.value(metadata ptr %3, metadata !1401, metadata !DIExpression()), !dbg !1405
  %4 = load i8, ptr %3, align 1, !dbg !1407, !tbaa !951
  %5 = icmp eq i8 %4, 47, !dbg !1407
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1408
  call void @llvm.dbg.value(metadata ptr %6, metadata !1401, metadata !DIExpression()), !dbg !1405
  br i1 %5, label %2, label %7, !dbg !1406, !llvm.loop !1409

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !1410
  %9 = phi ptr [ %16, %15 ], [ %3, %2 ], !dbg !1412
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi ptr [ %18, %15 ], [ %3, %2 ], !dbg !1413
  call void @llvm.dbg.value(metadata ptr %11, metadata !1403, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1402, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %9, metadata !1401, metadata !DIExpression()), !dbg !1405
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !1415

12:                                               ; preds = %7
  ret ptr %9, !dbg !1416

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !1417
  br label %15, !dbg !1417

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !1405
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1402, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %16, metadata !1401, metadata !DIExpression()), !dbg !1405
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1420
  call void @llvm.dbg.value(metadata ptr %18, metadata !1403, metadata !DIExpression()), !dbg !1414
  %19 = load i8, ptr %18, align 1, !dbg !1410, !tbaa !951
  br label %7, !dbg !1421, !llvm.loop !1422
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1424 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1428, metadata !DIExpression()), !dbg !1431
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %2, metadata !1429, metadata !DIExpression()), !dbg !1431
  %3 = icmp ne i64 %2, 0, !dbg !1434
  %4 = zext i1 %3 to i64, !dbg !1434
  br label %5, !dbg !1434

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1435
  call void @llvm.dbg.value(metadata i64 %6, metadata !1429, metadata !DIExpression()), !dbg !1431
  %7 = icmp ugt i64 %6, 1, !dbg !1436
  br i1 %7, label %8, label %13, !dbg !1438

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1439
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !1439
  %11 = load i8, ptr %10, align 1, !dbg !1439, !tbaa !951
  %12 = icmp eq i8 %11, 47, !dbg !1439
  br i1 %12, label %5, label %13, !dbg !1440, !llvm.loop !1441

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1430, metadata !DIExpression()), !dbg !1431
  ret i64 %14, !dbg !1443
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !1444 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1487
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !1488
  call void @llvm.dbg.value(metadata i1 poison, metadata !1483, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  call void @llvm.dbg.value(metadata ptr %0, metadata !1489, metadata !DIExpression()), !dbg !1493
  %3 = load i32, ptr %0, align 8, !dbg !1495, !tbaa !1496
  %4 = and i32 %3, 32, !dbg !1499
  %5 = icmp eq i32 %4, 0, !dbg !1499
  call void @llvm.dbg.value(metadata i1 %5, metadata !1485, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !1500
  %7 = icmp eq i32 %6, 0, !dbg !1501
  call void @llvm.dbg.value(metadata i1 %7, metadata !1486, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  br i1 %5, label %8, label %18, !dbg !1502

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !1504
  call void @llvm.dbg.value(metadata i1 %9, metadata !1483, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  %10 = select i1 %7, i1 true, i1 %9, !dbg !1505
  %11 = xor i1 %7, true, !dbg !1505
  %12 = sext i1 %11 to i32, !dbg !1505
  br i1 %10, label %21, label %13, !dbg !1505

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !1506
  %15 = load i32, ptr %14, align 4, !dbg !1506, !tbaa !942
  %16 = icmp ne i32 %15, 9, !dbg !1507
  %17 = sext i1 %16 to i32, !dbg !1508
  br label %21, !dbg !1508

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !1509

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !1511
  store i32 0, ptr %20, align 4, !dbg !1513, !tbaa !942
  br label %21, !dbg !1511

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !1487
  ret i32 %22, !dbg !1514
}

; Function Attrs: nounwind
declare !dbg !1515 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !1522
  store ptr %0, ptr @file_name, align 8, !dbg !1523, !tbaa !874
  ret void, !dbg !1524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1525 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1529, metadata !DIExpression()), !dbg !1530
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1531, !tbaa !1532
  ret void, !dbg !1534
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() local_unnamed_addr #10 !dbg !1535 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1540, !tbaa !874
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1541
  %3 = icmp eq i32 %2, 0, !dbg !1542
  br i1 %3, label %22, label %4, !dbg !1543

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1544, !tbaa !1532, !range !1545, !noundef !927
  %6 = icmp eq i8 %5, 0, !dbg !1544
  br i1 %6, label %11, label %7, !dbg !1546

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1547
  %9 = load i32, ptr %8, align 4, !dbg !1547, !tbaa !942
  %10 = icmp eq i32 %9, 32, !dbg !1548
  br i1 %10, label %22, label %11, !dbg !1549

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1.44, i32 noundef 5) #39, !dbg !1550
  call void @llvm.dbg.value(metadata ptr %12, metadata !1537, metadata !DIExpression()), !dbg !1551
  %13 = load ptr, ptr @file_name, align 8, !dbg !1552, !tbaa !874
  %14 = icmp eq ptr %13, null, !dbg !1552
  %15 = tail call ptr @__errno_location() #42, !dbg !1554
  %16 = load i32, ptr %15, align 4, !dbg !1554, !tbaa !942
  br i1 %14, label %19, label %17, !dbg !1555

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1556
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.45, ptr noundef %18, ptr noundef %12) #39, !dbg !1556
  br label %20, !dbg !1556

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.46, ptr noundef %12) #39, !dbg !1557
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1558, !tbaa !942
  tail call void @_exit(i32 noundef %21) #41, !dbg !1559
  unreachable, !dbg !1559

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1560, !tbaa !874
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1562
  %25 = icmp eq i32 %24, 0, !dbg !1563
  br i1 %25, label %28, label %26, !dbg !1564

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1565, !tbaa !942
  tail call void @_exit(i32 noundef %27) #41, !dbg !1566
  unreachable, !dbg !1566

28:                                               ; preds = %22
  ret void, !dbg !1567
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1568 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1572, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 %1, metadata !1573, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %2, metadata !1574, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1575, metadata !DIExpression()), !dbg !1577
  tail call fastcc void @flush_stdout(), !dbg !1578
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1579, !tbaa !874
  %7 = icmp eq ptr %6, null, !dbg !1579
  br i1 %7, label %9, label %8, !dbg !1581

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1582
  br label %13, !dbg !1582

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1583, !tbaa !874
  %11 = tail call ptr @getprogname() #40, !dbg !1583
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef %11) #39, !dbg !1583
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1585, !tbaa.struct !1586
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1585
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1585
  ret void, !dbg !1587
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1588 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1590, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 1, metadata !1592, metadata !DIExpression()), !dbg !1595
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1598
  %2 = icmp slt i32 %1, 0, !dbg !1599
  br i1 %2, label %6, label %3, !dbg !1600

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1601, !tbaa !874
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1601
  br label %6, !dbg !1601

6:                                                ; preds = %3, %0
  ret void, !dbg !1602
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1603 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1605, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %1, metadata !1606, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata ptr %2, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1608, metadata !DIExpression()), !dbg !1610
  %7 = load ptr, ptr @stderr, align 8, !dbg !1611, !tbaa !874
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1612, !noalias !1656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %7, metadata !1652, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata ptr %2, metadata !1653, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1654, metadata !DIExpression()), !dbg !1662
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1612
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1612, !noalias !1656
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1663, !tbaa !942
  %10 = add i32 %9, 1, !dbg !1663
  store i32 %10, ptr @error_message_count, align 4, !dbg !1663, !tbaa !942
  %11 = icmp eq i32 %1, 0, !dbg !1664
  br i1 %11, label %21, label %12, !dbg !1666

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1667, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1677
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1671, metadata !DIExpression()), !dbg !1678
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1679
  call void @llvm.dbg.value(metadata ptr %13, metadata !1670, metadata !DIExpression()), !dbg !1675
  %14 = icmp eq ptr %13, null, !dbg !1680
  br i1 %14, label %15, label %17, !dbg !1682

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.48, ptr noundef nonnull @.str.5.49, i32 noundef 5) #39, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %16, metadata !1670, metadata !DIExpression()), !dbg !1675
  br label %17, !dbg !1684

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1675
  call void @llvm.dbg.value(metadata ptr %18, metadata !1670, metadata !DIExpression()), !dbg !1675
  %19 = load ptr, ptr @stderr, align 8, !dbg !1685, !tbaa !874
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.50, ptr noundef %18) #39, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1686
  br label %21, !dbg !1687

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1688, !tbaa !874
  call void @llvm.dbg.value(metadata i32 10, metadata !1689, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %22, metadata !1694, metadata !DIExpression()), !dbg !1695
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1697
  %24 = load ptr, ptr %23, align 8, !dbg !1697, !tbaa !1698
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1697
  %26 = load ptr, ptr %25, align 8, !dbg !1697, !tbaa !1699
  %27 = icmp ult ptr %24, %26, !dbg !1697
  br i1 %27, label %30, label %28, !dbg !1697, !prof !1700

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1697
  br label %32, !dbg !1697

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1697
  store ptr %31, ptr %23, align 8, !dbg !1697, !tbaa !1698
  store i8 10, ptr %24, align 1, !dbg !1697, !tbaa !951
  br label %32, !dbg !1697

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1701, !tbaa !874
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1701
  %35 = icmp eq i32 %0, 0, !dbg !1702
  br i1 %35, label %37, label %36, !dbg !1704

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1705
  unreachable, !dbg !1705

37:                                               ; preds = %32
  ret void, !dbg !1706
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1707 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1710 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1713 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1716 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1719 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1723 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1727, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i32 %1, metadata !1728, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %2, metadata !1729, metadata !DIExpression()), !dbg !1731
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1730, metadata !DIExpression()), !dbg !1733
  call void @llvm.va_start(ptr nonnull %4), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1735, !tbaa.struct !1586
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1735
  call void @llvm.va_end(ptr nonnull %4), !dbg !1736
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1737
  ret void, !dbg !1737
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !445 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !462, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i32 %1, metadata !463, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i32 %3, metadata !465, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata ptr %4, metadata !466, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.declare(metadata ptr %5, metadata !467, metadata !DIExpression()), !dbg !1739
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1740, !tbaa !942
  %9 = icmp eq i32 %8, 0, !dbg !1740
  br i1 %9, label %24, label %10, !dbg !1742

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1743, !tbaa !942
  %12 = icmp eq i32 %11, %3, !dbg !1746
  br i1 %12, label %13, label %23, !dbg !1747

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1748, !tbaa !874
  %15 = icmp eq ptr %14, %2, !dbg !1749
  br i1 %15, label %37, label %16, !dbg !1750

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1751
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1752
  br i1 %19, label %20, label %23, !dbg !1752

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1753
  %22 = icmp eq i32 %21, 0, !dbg !1754
  br i1 %22, label %37, label %23, !dbg !1755

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1756, !tbaa !874
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1757, !tbaa !942
  br label %24, !dbg !1758

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1759
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1760, !tbaa !874
  %26 = icmp eq ptr %25, null, !dbg !1760
  br i1 %26, label %28, label %27, !dbg !1762

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1763
  br label %32, !dbg !1763

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1764, !tbaa !874
  %30 = tail call ptr @getprogname() #40, !dbg !1764
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.53, ptr noundef %30) #39, !dbg !1764
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1766, !tbaa !874
  %34 = icmp eq ptr %2, null, !dbg !1766
  %35 = select i1 %34, ptr @.str.3.54, ptr @.str.2.55, !dbg !1766
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1766
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1767, !tbaa.struct !1586
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1767
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1767
  br label %37, !dbg !1768

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1768
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1769 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %1, metadata !1774, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata ptr %2, metadata !1775, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %3, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata ptr %4, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.va_start(ptr nonnull %6), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1783, !tbaa.struct !1586
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1783
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1783
  call void @llvm.va_end(ptr nonnull %6), !dbg !1784
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1785
  ret void, !dbg !1785
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1824, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 0, metadata !1825, metadata !DIExpression()), !dbg !1828
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %2, metadata !1826, metadata !DIExpression()), !dbg !1828
  %3 = icmp slt i32 %2, 0, !dbg !1830
  br i1 %3, label %4, label %6, !dbg !1832

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1833
  br label %24, !dbg !1834

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !1835
  %8 = icmp eq i32 %7, 0, !dbg !1835
  br i1 %8, label %13, label %9, !dbg !1837

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1838
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !1839
  %12 = icmp eq i64 %11, -1, !dbg !1840
  br i1 %12, label %16, label %13, !dbg !1841

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !1842
  %15 = icmp eq i32 %14, 0, !dbg !1842
  br i1 %15, label %16, label %18, !dbg !1843

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !1825, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1828
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %17, metadata !1827, metadata !DIExpression()), !dbg !1828
  br label %24, !dbg !1845

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !1846
  %20 = load i32, ptr %19, align 4, !dbg !1846, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %20, metadata !1825, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1828
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %21, metadata !1827, metadata !DIExpression()), !dbg !1828
  %22 = icmp eq i32 %20, 0, !dbg !1847
  br i1 %22, label %24, label %23, !dbg !1845

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1849, !tbaa !942
  call void @llvm.dbg.value(metadata i32 -1, metadata !1827, metadata !DIExpression()), !dbg !1828
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
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !1859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1897, metadata !DIExpression()), !dbg !1898
  %2 = icmp eq ptr %0, null, !dbg !1899
  br i1 %2, label %6, label %3, !dbg !1901

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !1902
  %5 = icmp eq i32 %4, 0, !dbg !1902
  br i1 %5, label %6, label %8, !dbg !1903

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !1904
  br label %16, !dbg !1905

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !1906, metadata !DIExpression()), !dbg !1911
  %9 = load i32, ptr %0, align 8, !dbg !1913, !tbaa !1496
  %10 = and i32 %9, 256, !dbg !1915
  %11 = icmp eq i32 %10, 0, !dbg !1915
  br i1 %11, label %14, label %12, !dbg !1916

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !1917
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1926, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata ptr %1, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata ptr %2, metadata !1928, metadata !DIExpression()), !dbg !1930
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #39, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %4, metadata !1929, metadata !DIExpression()), !dbg !1930
  %5 = icmp eq ptr %4, null, !dbg !1932
  br i1 %5, label %6, label %7, !dbg !1934

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !1935
  unreachable, !dbg !1935

7:                                                ; preds = %3
  ret ptr %4, !dbg !1936
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #20 !dbg !1937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1939, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata ptr %2, metadata !1941, metadata !DIExpression()), !dbg !1950
  %4 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1951
  call void @llvm.dbg.value(metadata ptr %4, metadata !1942, metadata !DIExpression()), !dbg !1950
  %5 = tail call i64 @base_len(ptr noundef %4) #40, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %5, metadata !1943, metadata !DIExpression()), !dbg !1950
  %6 = ptrtoint ptr %4 to i64, !dbg !1953
  %7 = ptrtoint ptr %0 to i64, !dbg !1953
  %8 = sub i64 %6, %7, !dbg !1953
  %9 = add i64 %8, %5, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %9, metadata !1944, metadata !DIExpression()), !dbg !1950
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %10, metadata !1945, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !1950
  %11 = icmp eq i64 %5, 0, !dbg !1956
  br i1 %11, label %21, label %12, !dbg !1958

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1959
  %14 = getelementptr inbounds i8, ptr %0, i64 %13, !dbg !1959
  %15 = load i8, ptr %14, align 1, !dbg !1959, !tbaa !951
  %16 = icmp eq i8 %15, 47, !dbg !1959
  br i1 %16, label %25, label %17, !dbg !1962

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1963, !tbaa !951
  %19 = icmp ne i8 %18, 47, !dbg !1963
  %20 = select i1 %19, i8 47, i8 0, !dbg !1964
  br label %25, !dbg !1964

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1965, !tbaa !951
  %23 = icmp eq i8 %22, 47, !dbg !1965
  %24 = select i1 %23, i8 46, i8 0, !dbg !1967
  br label %25, !dbg !1967

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1950
  %28 = zext i1 %26 to i64
  call void @llvm.dbg.value(metadata i8 %27, metadata !1946, metadata !DIExpression()), !dbg !1950
  %29 = add i64 %10, 1, !dbg !1968
  %30 = add i64 %29, %9, !dbg !1969
  %31 = add i64 %30, %28, !dbg !1970
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #44, !dbg !1971
  call void @llvm.dbg.value(metadata ptr %32, metadata !1947, metadata !DIExpression()), !dbg !1950
  %33 = icmp eq ptr %32, null, !dbg !1972
  br i1 %33, label %41, label %34, !dbg !1974

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata ptr %0, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %9, metadata !1979, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #39, !dbg !1982
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1982
  call void @llvm.dbg.value(metadata ptr %35, metadata !1948, metadata !DIExpression()), !dbg !1983
  store i8 %27, ptr %35, align 1, !dbg !1984, !tbaa !951
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %36, metadata !1948, metadata !DIExpression()), !dbg !1983
  %37 = icmp eq ptr %2, null, !dbg !1986
  br i1 %37, label %39, label %38, !dbg !1988

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1989, !tbaa !874
  br label %39, !dbg !1990

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1975, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata ptr %1, metadata !1978, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %10, metadata !1979, metadata !DIExpression()), !dbg !1991
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #39, !dbg !1993
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1993
  call void @llvm.dbg.value(metadata ptr %40, metadata !1948, metadata !DIExpression()), !dbg !1983
  store i8 0, ptr %40, align 1, !dbg !1994, !tbaa !951
  br label %41, !dbg !1995

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !1996
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1997 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2000 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2039, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %1, metadata !2040, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %2, metadata !2041, metadata !DIExpression()), !dbg !2045
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2046
  %5 = load ptr, ptr %4, align 8, !dbg !2046, !tbaa !2047
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2048
  %7 = load ptr, ptr %6, align 8, !dbg !2048, !tbaa !2049
  %8 = icmp eq ptr %5, %7, !dbg !2050
  br i1 %8, label %9, label %27, !dbg !2051

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2052
  %11 = load ptr, ptr %10, align 8, !dbg !2052, !tbaa !1698
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
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2061
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %21, metadata !2042, metadata !DIExpression()), !dbg !2063
  %22 = icmp eq i64 %21, -1, !dbg !2064
  br i1 %22, label %29, label %23, !dbg !2066

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2067, !tbaa !1496
  %25 = and i32 %24, -17, !dbg !2067
  store i32 %25, ptr %0, align 8, !dbg !2067, !tbaa !1496
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
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2081, !tbaa !874
  ret ptr %1, !dbg !2082
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2083 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2085, metadata !DIExpression()), !dbg !2088
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2089
  call void @llvm.dbg.value(metadata ptr %2, metadata !2086, metadata !DIExpression()), !dbg !2088
  %3 = icmp eq ptr %2, null, !dbg !2090
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2090
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %5, metadata !2087, metadata !DIExpression()), !dbg !2088
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
  call void @llvm.dbg.value(metadata ptr %5, metadata !2085, metadata !DIExpression()), !dbg !2088
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.76, i64 noundef 3) #40, !dbg !2108
  %16 = icmp eq i32 %15, 0, !dbg !2111
  %17 = select i1 %16, i64 3, i64 0, !dbg !2112
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2112
  br label %19, !dbg !2112

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2088
  call void @llvm.dbg.value(metadata ptr %21, metadata !2087, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %20, metadata !2085, metadata !DIExpression()), !dbg !2088
  store ptr %20, ptr @program_name, align 8, !dbg !2113, !tbaa !874
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2114, !tbaa !874
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2115, !tbaa !874
  ret void, !dbg !2116
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !504 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !511, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata ptr %1, metadata !512, metadata !DIExpression()), !dbg !2117
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2118
  call void @llvm.dbg.value(metadata ptr %5, metadata !513, metadata !DIExpression()), !dbg !2117
  %6 = icmp eq ptr %5, %0, !dbg !2119
  br i1 %6, label %7, label %14, !dbg !2121

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2123
  call void @llvm.dbg.declare(metadata ptr %4, metadata !519, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata ptr %4, metadata !2125, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %4, metadata !2134, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 0, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 8, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i64 0, ptr %4, align 8, !dbg !2143
  call void @llvm.dbg.value(metadata ptr %3, metadata !514, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2144
  %9 = icmp eq i64 %8, 2, !dbg !2146
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !514, metadata !DIExpression()), !dbg !2117
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2147
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2148
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2117
  ret ptr %15, !dbg !2148
}

; Function Attrs: nounwind
declare !dbg !2149 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2155 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2160, metadata !DIExpression()), !dbg !2163
  %2 = tail call ptr @__errno_location() #42, !dbg !2164
  %3 = load i32, ptr %2, align 4, !dbg !2164, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %3, metadata !2161, metadata !DIExpression()), !dbg !2163
  %4 = icmp eq ptr %0, null, !dbg !2165
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2165
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2166
  call void @llvm.dbg.value(metadata ptr %6, metadata !2162, metadata !DIExpression()), !dbg !2163
  store i32 %3, ptr %2, align 4, !dbg !2167, !tbaa !942
  ret ptr %6, !dbg !2168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !2169 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2175, metadata !DIExpression()), !dbg !2176
  %2 = icmp eq ptr %0, null, !dbg !2177
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2177
  %4 = load i32, ptr %3, align 8, !dbg !2178, !tbaa !2179
  ret i32 %4, !dbg !2181
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2182 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1, metadata !2187, metadata !DIExpression()), !dbg !2188
  %3 = icmp eq ptr %0, null, !dbg !2189
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2189
  store i32 %1, ptr %4, align 8, !dbg !2190, !tbaa !2179
  ret void, !dbg !2191
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2192 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2196, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %1, metadata !2197, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %1, metadata !2199, metadata !DIExpression()), !dbg !2204
  %4 = icmp eq ptr %0, null, !dbg !2205
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2205
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2206
  %7 = lshr i8 %1, 5, !dbg !2207
  %8 = zext i8 %7 to i64, !dbg !2207
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2208
  call void @llvm.dbg.value(metadata ptr %9, metadata !2200, metadata !DIExpression()), !dbg !2204
  %10 = and i8 %1, 31, !dbg !2209
  %11 = zext i8 %10 to i32, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %11, metadata !2202, metadata !DIExpression()), !dbg !2204
  %12 = load i32, ptr %9, align 4, !dbg !2210, !tbaa !942
  %13 = lshr i32 %12, %11, !dbg !2211
  %14 = and i32 %13, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %14, metadata !2203, metadata !DIExpression()), !dbg !2204
  %15 = xor i32 %13, %2, !dbg !2213
  %16 = and i32 %15, 1, !dbg !2213
  %17 = shl nuw i32 %16, %11, !dbg !2214
  %18 = xor i32 %17, %12, !dbg !2215
  store i32 %18, ptr %9, align 4, !dbg !2215, !tbaa !942
  ret i32 %14, !dbg !2216
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2217 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2221, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %1, metadata !2222, metadata !DIExpression()), !dbg !2224
  %3 = icmp eq ptr %0, null, !dbg !2225
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2227
  call void @llvm.dbg.value(metadata ptr %4, metadata !2221, metadata !DIExpression()), !dbg !2224
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2228
  %6 = load i32, ptr %5, align 4, !dbg !2228, !tbaa !2229
  call void @llvm.dbg.value(metadata i32 %6, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i32 %1, ptr %5, align 4, !dbg !2230, !tbaa !2229
  ret i32 %6, !dbg !2231
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2232 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata ptr %1, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata ptr %2, metadata !2238, metadata !DIExpression()), !dbg !2239
  %4 = icmp eq ptr %0, null, !dbg !2240
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2242
  call void @llvm.dbg.value(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !2239
  store i32 10, ptr %5, align 8, !dbg !2243, !tbaa !2179
  %6 = icmp ne ptr %1, null, !dbg !2244
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2246
  br i1 %8, label %10, label %9, !dbg !2246

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2247
  unreachable, !dbg !2247

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2248
  store ptr %1, ptr %11, align 8, !dbg !2249, !tbaa !2250
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2251
  store ptr %2, ptr %12, align 8, !dbg !2252, !tbaa !2253
  ret void, !dbg !2254
}

; Function Attrs: noreturn nounwind
declare !dbg !2255 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2256 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2260, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %1, metadata !2261, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata ptr %2, metadata !2262, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %3, metadata !2263, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata ptr %4, metadata !2264, metadata !DIExpression()), !dbg !2268
  %6 = icmp eq ptr %4, null, !dbg !2269
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2269
  call void @llvm.dbg.value(metadata ptr %7, metadata !2265, metadata !DIExpression()), !dbg !2268
  %8 = tail call ptr @__errno_location() #42, !dbg !2270
  %9 = load i32, ptr %8, align 4, !dbg !2270, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %9, metadata !2266, metadata !DIExpression()), !dbg !2268
  %10 = load i32, ptr %7, align 8, !dbg !2271, !tbaa !2179
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2272
  %12 = load i32, ptr %11, align 4, !dbg !2272, !tbaa !2229
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2273
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2274
  %15 = load ptr, ptr %14, align 8, !dbg !2274, !tbaa !2250
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2275
  %17 = load ptr, ptr %16, align 8, !dbg !2275, !tbaa !2253
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %18, metadata !2267, metadata !DIExpression()), !dbg !2268
  store i32 %9, ptr %8, align 4, !dbg !2277, !tbaa !942
  ret i64 %18, !dbg !2278
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2279 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2285, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %1, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %2, metadata !2287, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %3, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %4, metadata !2289, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %5, metadata !2290, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %6, metadata !2291, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %7, metadata !2292, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %8, metadata !2293, metadata !DIExpression()), !dbg !2347
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2348
  %17 = icmp eq i64 %16, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i1 %17, metadata !2294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2347
  call void @llvm.dbg.value(metadata i64 0, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 0, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr null, metadata !2297, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 0, metadata !2298, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2299, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %5, metadata !2300, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 1, metadata !2302, metadata !DIExpression()), !dbg !2347
  %18 = and i32 %5, 2, !dbg !2350
  %19 = icmp ne i32 %18, 0, !dbg !2350
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2350

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2351
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2352
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2353
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2299, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %34, metadata !2298, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %33, metadata !2297, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %32, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 0, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %31, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %30, metadata !2293, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %29, metadata !2292, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %28, metadata !2289, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.label(metadata !2340), !dbg !2354
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2347
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
  ], !dbg !2355

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 5, metadata !2289, metadata !DIExpression()), !dbg !2347
  br label %102, !dbg !2356

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 5, metadata !2289, metadata !DIExpression()), !dbg !2347
  br i1 %36, label %102, label %42, !dbg !2356

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2357
  br i1 %43, label %102, label %44, !dbg !2361

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2357, !tbaa !951
  br label %102, !dbg !2357

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.89, metadata !614, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %28, metadata !615, metadata !DIExpression()), !dbg !2362
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.11.89, i32 noundef 5) #39, !dbg !2366
  call void @llvm.dbg.value(metadata ptr %46, metadata !616, metadata !DIExpression()), !dbg !2362
  %47 = icmp eq ptr %46, @.str.11.89, !dbg !2367
  br i1 %47, label %48, label %57, !dbg !2369

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2371
  call void @llvm.dbg.declare(metadata ptr %13, metadata !618, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata ptr %13, metadata !2373, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr %13, metadata !2381, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 8, metadata !2385, metadata !DIExpression()), !dbg !2386
  store i64 0, ptr %13, align 8, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %12, metadata !617, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2389
  %50 = icmp eq i64 %49, 3, !dbg !2391
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !617, metadata !DIExpression()), !dbg !2362
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2392
  %54 = icmp eq i32 %28, 9, !dbg !2392
  %55 = select i1 %54, ptr @.str.10.91, ptr @.str.12.92, !dbg !2392
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2392
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2393
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2393
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2362
  call void @llvm.dbg.value(metadata ptr %58, metadata !2292, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr @.str.12.92, metadata !614, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %28, metadata !615, metadata !DIExpression()), !dbg !2394
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.12.92, i32 noundef 5) #39, !dbg !2396
  call void @llvm.dbg.value(metadata ptr %59, metadata !616, metadata !DIExpression()), !dbg !2394
  %60 = icmp eq ptr %59, @.str.12.92, !dbg !2397
  br i1 %60, label %61, label %70, !dbg !2398

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2399
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %11, metadata !618, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata ptr %11, metadata !2373, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata ptr %11, metadata !2381, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i64 8, metadata !2385, metadata !DIExpression()), !dbg !2404
  store i64 0, ptr %11, align 8, !dbg !2406
  call void @llvm.dbg.value(metadata ptr %10, metadata !617, metadata !DIExpression(DW_OP_deref)), !dbg !2394
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2407
  %63 = icmp eq i64 %62, 3, !dbg !2408
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !617, metadata !DIExpression()), !dbg !2394
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2409
  %67 = icmp eq i32 %28, 9, !dbg !2409
  %68 = select i1 %67, ptr @.str.10.91, ptr @.str.12.92, !dbg !2409
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2409
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2410
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2293, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %71, metadata !2292, metadata !DIExpression()), !dbg !2347
  br i1 %36, label %88, label %73, !dbg !2411

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2304, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !2295, metadata !DIExpression()), !dbg !2347
  %74 = load i8, ptr %71, align 1, !dbg !2413, !tbaa !951
  %75 = icmp eq i8 %74, 0, !dbg !2415
  br i1 %75, label %88, label %76, !dbg !2415

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2304, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %79, metadata !2295, metadata !DIExpression()), !dbg !2347
  %80 = icmp ult i64 %79, %39, !dbg !2416
  br i1 %80, label %81, label %83, !dbg !2419

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2416
  store i8 %77, ptr %82, align 1, !dbg !2416, !tbaa !951
  br label %83, !dbg !2416

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %84, metadata !2295, metadata !DIExpression()), !dbg !2347
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %85, metadata !2304, metadata !DIExpression()), !dbg !2412
  %86 = load i8, ptr %85, align 1, !dbg !2413, !tbaa !951
  %87 = icmp eq i8 %86, 0, !dbg !2415
  br i1 %87, label %88, label %76, !dbg !2415, !llvm.loop !2421

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2423
  call void @llvm.dbg.value(metadata i64 %89, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 1, metadata !2299, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %72, metadata !2297, metadata !DIExpression()), !dbg !2347
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %90, metadata !2298, metadata !DIExpression()), !dbg !2347
  br label %102, !dbg !2425

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2299, metadata !DIExpression()), !dbg !2347
  br label %93, !dbg !2426

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2299, metadata !DIExpression()), !dbg !2347
  br i1 %36, label %102, label %96, !dbg !2427

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2299, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 2, metadata !2289, metadata !DIExpression()), !dbg !2347
  br label %102, !dbg !2428

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2299, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 2, metadata !2289, metadata !DIExpression()), !dbg !2347
  br i1 %36, label %102, label %96, !dbg !2428

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2429
  br i1 %98, label %102, label %99, !dbg !2433

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2429, !tbaa !951
  br label %102, !dbg !2429

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2300, metadata !DIExpression()), !dbg !2347
  br label %102, !dbg !2434

101:                                              ; preds = %27
  call void @abort() #41, !dbg !2435
  unreachable, !dbg !2435

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2423
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.91, %42 ], [ @.str.10.91, %44 ], [ @.str.10.91, %41 ], [ %33, %27 ], [ @.str.12.92, %96 ], [ @.str.12.92, %99 ], [ @.str.12.92, %95 ], [ @.str.10.91, %40 ], [ @.str.12.92, %93 ], [ @.str.12.92, %92 ], !dbg !2347
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2347
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2300, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2299, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %108, metadata !2298, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %107, metadata !2297, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %106, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %105, metadata !2293, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %104, metadata !2292, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %103, metadata !2289, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 0, metadata !2309, metadata !DIExpression()), !dbg !2436
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
  br label %122, !dbg !2437

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2423
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2351
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2438
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %129, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %125, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %124, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %123, metadata !2288, metadata !DIExpression()), !dbg !2347
  %131 = icmp eq i64 %123, -1, !dbg !2439
  br i1 %131, label %132, label %136, !dbg !2440

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2441
  %134 = load i8, ptr %133, align 1, !dbg !2441, !tbaa !951
  %135 = icmp eq i8 %134, 0, !dbg !2442
  br i1 %135, label %579, label %138, !dbg !2443

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2444
  br i1 %137, label %579, label %138, !dbg !2443

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2311, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2314, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2315, metadata !DIExpression()), !dbg !2445
  br i1 %114, label %139, label %152, !dbg !2446

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2448
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2449
  br i1 %141, label %142, label %144, !dbg !2449

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %143, metadata !2288, metadata !DIExpression()), !dbg !2347
  br label %144, !dbg !2451

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2451
  call void @llvm.dbg.value(metadata i64 %145, metadata !2288, metadata !DIExpression()), !dbg !2347
  %146 = icmp ugt i64 %140, %145, !dbg !2452
  br i1 %146, label %152, label %147, !dbg !2453

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %148, metadata !2455, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata ptr %107, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i64 %108, metadata !2459, metadata !DIExpression()), !dbg !2460
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2462
  %150 = icmp eq i32 %149, 0, !dbg !2463
  %151 = and i1 %150, %110, !dbg !2464
  br i1 %151, label %630, label %152, !dbg !2464

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %153, metadata !2288, metadata !DIExpression()), !dbg !2347
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2465
  %156 = load i8, ptr %155, align 1, !dbg !2465, !tbaa !951
  call void @llvm.dbg.value(metadata i8 %156, metadata !2316, metadata !DIExpression()), !dbg !2445
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
  ], !dbg !2466

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2467

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2468

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2314, metadata !DIExpression()), !dbg !2445
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2472
  br i1 %160, label %177, label %161, !dbg !2472

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2474
  br i1 %162, label %163, label %165, !dbg !2478

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2474
  store i8 39, ptr %164, align 1, !dbg !2474, !tbaa !951
  br label %165, !dbg !2474

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %166, metadata !2295, metadata !DIExpression()), !dbg !2347
  %167 = icmp ult i64 %166, %130, !dbg !2479
  br i1 %167, label %168, label %170, !dbg !2482

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2479
  store i8 36, ptr %169, align 1, !dbg !2479, !tbaa !951
  br label %170, !dbg !2479

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %171, metadata !2295, metadata !DIExpression()), !dbg !2347
  %172 = icmp ult i64 %171, %130, !dbg !2483
  br i1 %172, label %173, label %175, !dbg !2486

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2483
  store i8 39, ptr %174, align 1, !dbg !2483, !tbaa !951
  br label %175, !dbg !2483

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %176, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 1, metadata !2303, metadata !DIExpression()), !dbg !2347
  br label %177, !dbg !2487

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2347
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %178, metadata !2295, metadata !DIExpression()), !dbg !2347
  %180 = icmp ult i64 %178, %130, !dbg !2488
  br i1 %180, label %181, label %183, !dbg !2491

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2488
  store i8 92, ptr %182, align 1, !dbg !2488, !tbaa !951
  br label %183, !dbg !2488

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %184, metadata !2295, metadata !DIExpression()), !dbg !2347
  br i1 %111, label %185, label %482, !dbg !2492

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2494
  %187 = icmp ult i64 %186, %153, !dbg !2495
  br i1 %187, label %188, label %439, !dbg !2496

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2497
  %190 = load i8, ptr %189, align 1, !dbg !2497, !tbaa !951
  %191 = add i8 %190, -48, !dbg !2498
  %192 = icmp ult i8 %191, 10, !dbg !2498
  br i1 %192, label %193, label %439, !dbg !2498

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2499
  br i1 %194, label %195, label %197, !dbg !2503

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2499
  store i8 48, ptr %196, align 1, !dbg !2499, !tbaa !951
  br label %197, !dbg !2499

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %198, metadata !2295, metadata !DIExpression()), !dbg !2347
  %199 = icmp ult i64 %198, %130, !dbg !2504
  br i1 %199, label %200, label %202, !dbg !2507

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2504
  store i8 48, ptr %201, align 1, !dbg !2504, !tbaa !951
  br label %202, !dbg !2504

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %203, metadata !2295, metadata !DIExpression()), !dbg !2347
  br label %439, !dbg !2508

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2509

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2510

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2511

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2513

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2515
  %210 = icmp ult i64 %209, %153, !dbg !2516
  br i1 %210, label %211, label %439, !dbg !2517

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2518
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2519
  %214 = load i8, ptr %213, align 1, !dbg !2519, !tbaa !951
  %215 = icmp eq i8 %214, 63, !dbg !2520
  br i1 %215, label %216, label %439, !dbg !2521

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2522
  %218 = load i8, ptr %217, align 1, !dbg !2522, !tbaa !951
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
  ], !dbg !2523

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2524

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %209, metadata !2309, metadata !DIExpression()), !dbg !2436
  %221 = icmp ult i64 %124, %130, !dbg !2526
  br i1 %221, label %222, label %224, !dbg !2529

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2526
  store i8 63, ptr %223, align 1, !dbg !2526, !tbaa !951
  br label %224, !dbg !2526

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %225, metadata !2295, metadata !DIExpression()), !dbg !2347
  %226 = icmp ult i64 %225, %130, !dbg !2530
  br i1 %226, label %227, label %229, !dbg !2533

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2530
  store i8 34, ptr %228, align 1, !dbg !2530, !tbaa !951
  br label %229, !dbg !2530

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %230, metadata !2295, metadata !DIExpression()), !dbg !2347
  %231 = icmp ult i64 %230, %130, !dbg !2534
  br i1 %231, label %232, label %234, !dbg !2537

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2534
  store i8 34, ptr %233, align 1, !dbg !2534, !tbaa !951
  br label %234, !dbg !2534

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %235, metadata !2295, metadata !DIExpression()), !dbg !2347
  %236 = icmp ult i64 %235, %130, !dbg !2538
  br i1 %236, label %237, label %239, !dbg !2541

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2538
  store i8 63, ptr %238, align 1, !dbg !2538, !tbaa !951
  br label %239, !dbg !2538

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %240, metadata !2295, metadata !DIExpression()), !dbg !2347
  br label %439, !dbg !2542

241:                                              ; preds = %152
  br label %251, !dbg !2543

242:                                              ; preds = %152
  br label %251, !dbg !2544

243:                                              ; preds = %152
  br label %249, !dbg !2545

244:                                              ; preds = %152
  br label %249, !dbg !2546

245:                                              ; preds = %152
  br label %251, !dbg !2547

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2548

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2549

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2552

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2554
  call void @llvm.dbg.label(metadata !2341), !dbg !2555
  br i1 %119, label %621, label %251, !dbg !2556

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2554
  call void @llvm.dbg.label(metadata !2343), !dbg !2558
  br i1 %109, label %493, label %450, !dbg !2559

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2560

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2561, !tbaa !951
  %256 = icmp eq i8 %255, 0, !dbg !2563
  br i1 %256, label %257, label %439, !dbg !2564

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2565
  br i1 %258, label %259, label %439, !dbg !2567

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2315, metadata !DIExpression()), !dbg !2445
  br label %260, !dbg !2568

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2315, metadata !DIExpression()), !dbg !2445
  br i1 %116, label %262, label %439, !dbg !2569

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2571

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 1, metadata !2315, metadata !DIExpression()), !dbg !2445
  br i1 %116, label %264, label %439, !dbg !2572

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2573

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2576
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2578
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2578
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %270, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %269, metadata !2296, metadata !DIExpression()), !dbg !2347
  %271 = icmp ult i64 %124, %270, !dbg !2579
  br i1 %271, label %272, label %274, !dbg !2582

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2579
  store i8 39, ptr %273, align 1, !dbg !2579, !tbaa !951
  br label %274, !dbg !2579

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %275, metadata !2295, metadata !DIExpression()), !dbg !2347
  %276 = icmp ult i64 %275, %270, !dbg !2583
  br i1 %276, label %277, label %279, !dbg !2586

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2583
  store i8 92, ptr %278, align 1, !dbg !2583, !tbaa !951
  br label %279, !dbg !2583

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %280, metadata !2295, metadata !DIExpression()), !dbg !2347
  %281 = icmp ult i64 %280, %270, !dbg !2587
  br i1 %281, label %282, label %284, !dbg !2590

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2587
  store i8 39, ptr %283, align 1, !dbg !2587, !tbaa !951
  br label %284, !dbg !2587

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %285, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2347
  br label %439, !dbg !2591

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2592

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2317, metadata !DIExpression()), !dbg !2593
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !2594
  %289 = load ptr, ptr %288, align 8, !dbg !2594, !tbaa !874
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2594
  %292 = load i16, ptr %291, align 2, !dbg !2594, !tbaa !983
  %293 = and i16 %292, 16384, !dbg !2594
  %294 = icmp ne i16 %293, 0, !dbg !2596
  call void @llvm.dbg.value(metadata i1 %294, metadata !2320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2593
  br label %337, !dbg !2597

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2598
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2321, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata ptr %14, metadata !2373, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %14, metadata !2381, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 8, metadata !2385, metadata !DIExpression()), !dbg !2602
  store i64 0, ptr %14, align 8, !dbg !2604
  call void @llvm.dbg.value(metadata i64 0, metadata !2317, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 1, metadata !2320, metadata !DIExpression()), !dbg !2593
  %296 = icmp eq i64 %153, -1, !dbg !2605
  br i1 %296, label %297, label %299, !dbg !2607

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %298, metadata !2288, metadata !DIExpression()), !dbg !2347
  br label %299, !dbg !2609

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2445
  call void @llvm.dbg.value(metadata i64 %300, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2610
  %301 = sub i64 %300, %129, !dbg !2611
  call void @llvm.dbg.value(metadata ptr %15, metadata !2324, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %302, metadata !2328, metadata !DIExpression()), !dbg !2612
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2614

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2317, metadata !DIExpression()), !dbg !2593
  %304 = icmp ugt i64 %300, %129, !dbg !2615
  br i1 %304, label %306, label %332, !dbg !2617

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2320, metadata !DIExpression()), !dbg !2593
  br label %332, !dbg !2618

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2317, metadata !DIExpression()), !dbg !2593
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2620
  %310 = load i8, ptr %309, align 1, !dbg !2620, !tbaa !951
  %311 = icmp eq i8 %310, 0, !dbg !2617
  br i1 %311, label %332, label %312, !dbg !2621

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %313, metadata !2317, metadata !DIExpression()), !dbg !2593
  %314 = add i64 %313, %129, !dbg !2623
  %315 = icmp eq i64 %313, %301, !dbg !2615
  br i1 %315, label %332, label %306, !dbg !2617, !llvm.loop !2624

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2625
  %319 = and i1 %318, %110, !dbg !2625
  call void @llvm.dbg.value(metadata i64 1, metadata !2329, metadata !DIExpression()), !dbg !2626
  br i1 %319, label %320, label %328, !dbg !2625

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2329, metadata !DIExpression()), !dbg !2626
  %322 = add i64 %321, %129, !dbg !2627
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2629
  %324 = load i8, ptr %323, align 1, !dbg !2629, !tbaa !951
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2630

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %326, metadata !2329, metadata !DIExpression()), !dbg !2626
  %327 = icmp eq i64 %326, %302, !dbg !2632
  br i1 %327, label %328, label %320, !dbg !2633, !llvm.loop !2634

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2636, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %329, metadata !2324, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %329, metadata !2638, metadata !DIExpression()), !dbg !2646
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !2648
  %331 = icmp ne i32 %330, 0, !dbg !2649
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %302, metadata !2317, metadata !DIExpression()), !dbg !2593
  br label %332, !dbg !2650

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %333, metadata !2317, metadata !DIExpression()), !dbg !2593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2651
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2652
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 0, metadata !2317, metadata !DIExpression()), !dbg !2593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2651
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2652
  call void @llvm.dbg.label(metadata !2346), !dbg !2653
  %336 = select i1 %109, i32 4, i32 2, !dbg !2654
  br label %626, !dbg !2654

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2445
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2656
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %339, metadata !2317, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %338, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i1 %340, metadata !2315, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2445
  %341 = icmp ult i64 %339, 2, !dbg !2657
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2658
  br i1 %343, label %439, label %344, !dbg !2658

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %345, metadata !2337, metadata !DIExpression()), !dbg !2660
  br label %346, !dbg !2661

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2347
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2436
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2662
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2445
  call void @llvm.dbg.value(metadata i8 %352, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 %351, metadata !2314, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %349, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %347, metadata !2295, metadata !DIExpression()), !dbg !2347
  br i1 %342, label %397, label %353, !dbg !2663

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2668

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2314, metadata !DIExpression()), !dbg !2445
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2671
  br i1 %355, label %372, label %356, !dbg !2671

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2673
  br i1 %357, label %358, label %360, !dbg !2677

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2673
  store i8 39, ptr %359, align 1, !dbg !2673, !tbaa !951
  br label %360, !dbg !2673

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %361, metadata !2295, metadata !DIExpression()), !dbg !2347
  %362 = icmp ult i64 %361, %130, !dbg !2678
  br i1 %362, label %363, label %365, !dbg !2681

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2678
  store i8 36, ptr %364, align 1, !dbg !2678, !tbaa !951
  br label %365, !dbg !2678

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %366, metadata !2295, metadata !DIExpression()), !dbg !2347
  %367 = icmp ult i64 %366, %130, !dbg !2682
  br i1 %367, label %368, label %370, !dbg !2685

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2682
  store i8 39, ptr %369, align 1, !dbg !2682, !tbaa !951
  br label %370, !dbg !2682

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %371, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 1, metadata !2303, metadata !DIExpression()), !dbg !2347
  br label %372, !dbg !2686

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2347
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %373, metadata !2295, metadata !DIExpression()), !dbg !2347
  %375 = icmp ult i64 %373, %130, !dbg !2687
  br i1 %375, label %376, label %378, !dbg !2690

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2687
  store i8 92, ptr %377, align 1, !dbg !2687, !tbaa !951
  br label %378, !dbg !2687

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %379, metadata !2295, metadata !DIExpression()), !dbg !2347
  %380 = icmp ult i64 %379, %130, !dbg !2691
  br i1 %380, label %381, label %385, !dbg !2694

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2691
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2691
  store i8 %383, ptr %384, align 1, !dbg !2691, !tbaa !951
  br label %385, !dbg !2691

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %386, metadata !2295, metadata !DIExpression()), !dbg !2347
  %387 = icmp ult i64 %386, %130, !dbg !2695
  br i1 %387, label %388, label %393, !dbg !2698

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2695
  %391 = or i8 %390, 48, !dbg !2695
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2695
  store i8 %391, ptr %392, align 1, !dbg !2695, !tbaa !951
  br label %393, !dbg !2695

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %394, metadata !2295, metadata !DIExpression()), !dbg !2347
  %395 = and i8 %352, 7, !dbg !2699
  %396 = or i8 %395, 48, !dbg !2700
  call void @llvm.dbg.value(metadata i8 %396, metadata !2316, metadata !DIExpression()), !dbg !2445
  br label %404, !dbg !2701

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2702

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2703
  br i1 %399, label %400, label %402, !dbg !2708

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2703
  store i8 92, ptr %401, align 1, !dbg !2703, !tbaa !951
  br label %402, !dbg !2703

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %403, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2311, metadata !DIExpression()), !dbg !2445
  br label %404, !dbg !2709

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2347
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2445
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2445
  call void @llvm.dbg.value(metadata i8 %409, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 %408, metadata !2314, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %405, metadata !2295, metadata !DIExpression()), !dbg !2347
  %410 = add i64 %349, 1, !dbg !2710
  %411 = icmp ugt i64 %345, %410, !dbg !2712
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2713

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2714
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2714
  br i1 %415, label %416, label %427, !dbg !2714

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2717
  br i1 %417, label %418, label %420, !dbg !2721

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2717
  store i8 39, ptr %419, align 1, !dbg !2717, !tbaa !951
  br label %420, !dbg !2717

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %421, metadata !2295, metadata !DIExpression()), !dbg !2347
  %422 = icmp ult i64 %421, %130, !dbg !2722
  br i1 %422, label %423, label %425, !dbg !2725

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2722
  store i8 39, ptr %424, align 1, !dbg !2722, !tbaa !951
  br label %425, !dbg !2722

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %426, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2347
  br label %427, !dbg !2726

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2727
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %428, metadata !2295, metadata !DIExpression()), !dbg !2347
  %430 = icmp ult i64 %428, %130, !dbg !2728
  br i1 %430, label %431, label %433, !dbg !2731

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2728
  store i8 %409, ptr %432, align 1, !dbg !2728, !tbaa !951
  br label %433, !dbg !2728

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %434, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %410, metadata !2309, metadata !DIExpression()), !dbg !2436
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2732
  %436 = load i8, ptr %435, align 1, !dbg !2732, !tbaa !951
  call void @llvm.dbg.value(metadata i8 %436, metadata !2316, metadata !DIExpression()), !dbg !2445
  br label %346, !dbg !2733, !llvm.loop !2734

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i1 %340, metadata !2315, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2445
  call void @llvm.dbg.value(metadata i8 %408, metadata !2314, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %349, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %405, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %338, metadata !2288, metadata !DIExpression()), !dbg !2347
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2737
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2347
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2351
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2436
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2445
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %448, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2315, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2314, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %445, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %442, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %441, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %440, metadata !2288, metadata !DIExpression()), !dbg !2347
  br i1 %112, label %461, label %450, !dbg !2738

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
  br i1 %121, label %462, label %482, !dbg !2740

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2741

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
  %473 = lshr i8 %464, 5, !dbg !2742
  %474 = zext i8 %473 to i64, !dbg !2742
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2743
  %476 = load i32, ptr %475, align 4, !dbg !2743, !tbaa !942
  %477 = and i8 %464, 31, !dbg !2744
  %478 = zext i8 %477 to i32, !dbg !2744
  %479 = shl nuw i32 1, %478, !dbg !2745
  %480 = and i32 %476, %479, !dbg !2745
  %481 = icmp eq i32 %480, 0, !dbg !2745
  br i1 %481, label %482, label %493, !dbg !2746

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
  br i1 %154, label %493, label %529, !dbg !2747

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2737
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2347
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2351
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2748
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2445
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %501, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2315, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %499, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %496, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %495, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %494, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.label(metadata !2344), !dbg !2749
  br i1 %110, label %621, label %503, !dbg !2750

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2314, metadata !DIExpression()), !dbg !2445
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2752
  br i1 %504, label %521, label %505, !dbg !2752

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2754
  br i1 %506, label %507, label %509, !dbg !2758

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2754
  store i8 39, ptr %508, align 1, !dbg !2754, !tbaa !951
  br label %509, !dbg !2754

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %510, metadata !2295, metadata !DIExpression()), !dbg !2347
  %511 = icmp ult i64 %510, %502, !dbg !2759
  br i1 %511, label %512, label %514, !dbg !2762

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2759
  store i8 36, ptr %513, align 1, !dbg !2759, !tbaa !951
  br label %514, !dbg !2759

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %515, metadata !2295, metadata !DIExpression()), !dbg !2347
  %516 = icmp ult i64 %515, %502, !dbg !2763
  br i1 %516, label %517, label %519, !dbg !2766

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2763
  store i8 39, ptr %518, align 1, !dbg !2763, !tbaa !951
  br label %519, !dbg !2763

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %520, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 1, metadata !2303, metadata !DIExpression()), !dbg !2347
  br label %521, !dbg !2767

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2445
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %522, metadata !2295, metadata !DIExpression()), !dbg !2347
  %524 = icmp ult i64 %522, %502, !dbg !2768
  br i1 %524, label %525, label %527, !dbg !2771

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2768
  store i8 92, ptr %526, align 1, !dbg !2768, !tbaa !951
  br label %527, !dbg !2768

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %502, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %501, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2315, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2314, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %499, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %496, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %528, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %494, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.label(metadata !2345), !dbg !2772
  br label %553, !dbg !2773

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2737
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2347
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2351
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2748
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2776
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %538, metadata !2316, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2315, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2314, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %535, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %532, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %531, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %530, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.label(metadata !2345), !dbg !2772
  %540 = xor i1 %534, true, !dbg !2773
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2773
  br i1 %541, label %553, label %542, !dbg !2773

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2777
  br i1 %543, label %544, label %546, !dbg !2781

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2777
  store i8 39, ptr %545, align 1, !dbg !2777, !tbaa !951
  br label %546, !dbg !2777

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %547, metadata !2295, metadata !DIExpression()), !dbg !2347
  %548 = icmp ult i64 %547, %539, !dbg !2782
  br i1 %548, label %549, label %551, !dbg !2785

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2782
  store i8 39, ptr %550, align 1, !dbg !2782, !tbaa !951
  br label %551, !dbg !2782

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %552, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2347
  br label %553, !dbg !2786

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2445
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %561, metadata !2295, metadata !DIExpression()), !dbg !2347
  %563 = icmp ult i64 %561, %554, !dbg !2787
  br i1 %563, label %564, label %566, !dbg !2790

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2787
  store i8 %555, ptr %565, align 1, !dbg !2787, !tbaa !951
  br label %566, !dbg !2787

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %567, metadata !2295, metadata !DIExpression()), !dbg !2347
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2791
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2347
  br label %569, !dbg !2792

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2737
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2347
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2351
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2748
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %576, metadata !2309, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %572, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %571, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %570, metadata !2288, metadata !DIExpression()), !dbg !2347
  %578 = add i64 %576, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %578, metadata !2309, metadata !DIExpression()), !dbg !2436
  br label %122, !dbg !2794, !llvm.loop !2795

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 poison, metadata !2301, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %125, metadata !2296, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %124, metadata !2295, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %123, metadata !2288, metadata !DIExpression()), !dbg !2347
  %580 = icmp ne i64 %124, 0, !dbg !2797
  %581 = xor i1 %110, true, !dbg !2799
  %582 = or i1 %580, %581, !dbg !2799
  %583 = or i1 %582, %111, !dbg !2799
  br i1 %583, label %584, label %621, !dbg !2799

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2800
  %586 = xor i1 %126, true, !dbg !2800
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2800
  br i1 %587, label %595, label %588, !dbg !2800

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2802

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2804
  br label %636, !dbg !2806

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2807
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2809
  br i1 %594, label %27, label %595, !dbg !2809

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2810
  %598 = or i1 %597, %596, !dbg !2812
  br i1 %598, label %614, label %599, !dbg !2812

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2297, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %124, metadata !2295, metadata !DIExpression()), !dbg !2347
  %600 = load i8, ptr %107, align 1, !dbg !2813, !tbaa !951
  %601 = icmp eq i8 %600, 0, !dbg !2816
  br i1 %601, label %614, label %602, !dbg !2816

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2297, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %605, metadata !2295, metadata !DIExpression()), !dbg !2347
  %606 = icmp ult i64 %605, %130, !dbg !2817
  br i1 %606, label %607, label %609, !dbg !2820

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2817
  store i8 %603, ptr %608, align 1, !dbg !2817, !tbaa !951
  br label %609, !dbg !2817

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %610, metadata !2295, metadata !DIExpression()), !dbg !2347
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2821
  call void @llvm.dbg.value(metadata ptr %611, metadata !2297, metadata !DIExpression()), !dbg !2347
  %612 = load i8, ptr %611, align 1, !dbg !2813, !tbaa !951
  %613 = icmp eq i8 %612, 0, !dbg !2816
  br i1 %613, label %614, label %602, !dbg !2816, !llvm.loop !2822

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2423
  call void @llvm.dbg.value(metadata i64 %615, metadata !2295, metadata !DIExpression()), !dbg !2347
  %616 = icmp ult i64 %615, %130, !dbg !2824
  br i1 %616, label %617, label %636, !dbg !2826

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2827
  store i8 0, ptr %618, align 1, !dbg !2828, !tbaa !951
  br label %636, !dbg !2827

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2346), !dbg !2653
  %620 = icmp eq i32 %103, 2, !dbg !2829
  br i1 %620, label %626, label %630, !dbg !2654

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2346), !dbg !2653
  %624 = icmp eq i32 %103, 2, !dbg !2829
  %625 = select i1 %109, i32 4, i32 2, !dbg !2654
  br i1 %624, label %626, label %630, !dbg !2654

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2654

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2289, metadata !DIExpression()), !dbg !2347
  %634 = and i32 %5, -3, !dbg !2830
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2831
  br label %636, !dbg !2832

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2833
}

; Function Attrs: nounwind
declare !dbg !2834 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2837 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %1, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %2, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %0, metadata !2847, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr null, metadata !2853, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %2, metadata !2854, metadata !DIExpression()), !dbg !2860
  %4 = icmp eq ptr %2, null, !dbg !2862
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2862
  call void @llvm.dbg.value(metadata ptr %5, metadata !2855, metadata !DIExpression()), !dbg !2860
  %6 = tail call ptr @__errno_location() #42, !dbg !2863
  %7 = load i32, ptr %6, align 4, !dbg !2863, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %7, metadata !2856, metadata !DIExpression()), !dbg !2860
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2864
  %9 = load i32, ptr %8, align 4, !dbg !2864, !tbaa !2229
  %10 = or i32 %9, 1, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %10, metadata !2857, metadata !DIExpression()), !dbg !2860
  %11 = load i32, ptr %5, align 8, !dbg !2866, !tbaa !2179
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2867
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2868
  %14 = load ptr, ptr %13, align 8, !dbg !2868, !tbaa !2250
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2869
  %16 = load ptr, ptr %15, align 8, !dbg !2869, !tbaa !2253
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2870
  %18 = add i64 %17, 1, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %18, metadata !2858, metadata !DIExpression()), !dbg !2860
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2872
  call void @llvm.dbg.value(metadata ptr %19, metadata !2859, metadata !DIExpression()), !dbg !2860
  %20 = load i32, ptr %5, align 8, !dbg !2873, !tbaa !2179
  %21 = load ptr, ptr %13, align 8, !dbg !2874, !tbaa !2250
  %22 = load ptr, ptr %15, align 8, !dbg !2875, !tbaa !2253
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2876
  store i32 %7, ptr %6, align 4, !dbg !2877, !tbaa !942
  ret ptr %19, !dbg !2878
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2848 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2847, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %2, metadata !2853, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %3, metadata !2854, metadata !DIExpression()), !dbg !2879
  %5 = icmp eq ptr %3, null, !dbg !2880
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2880
  call void @llvm.dbg.value(metadata ptr %6, metadata !2855, metadata !DIExpression()), !dbg !2879
  %7 = tail call ptr @__errno_location() #42, !dbg !2881
  %8 = load i32, ptr %7, align 4, !dbg !2881, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %8, metadata !2856, metadata !DIExpression()), !dbg !2879
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2882
  %10 = load i32, ptr %9, align 4, !dbg !2882, !tbaa !2229
  %11 = icmp eq ptr %2, null, !dbg !2883
  %12 = zext i1 %11 to i32, !dbg !2883
  %13 = or i32 %10, %12, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %13, metadata !2857, metadata !DIExpression()), !dbg !2879
  %14 = load i32, ptr %6, align 8, !dbg !2885, !tbaa !2179
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2886
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2887
  %17 = load ptr, ptr %16, align 8, !dbg !2887, !tbaa !2250
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2888
  %19 = load ptr, ptr %18, align 8, !dbg !2888, !tbaa !2253
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2889
  %21 = add i64 %20, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %21, metadata !2858, metadata !DIExpression()), !dbg !2879
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2891
  call void @llvm.dbg.value(metadata ptr %22, metadata !2859, metadata !DIExpression()), !dbg !2879
  %23 = load i32, ptr %6, align 8, !dbg !2892, !tbaa !2179
  %24 = load ptr, ptr %16, align 8, !dbg !2893, !tbaa !2250
  %25 = load ptr, ptr %18, align 8, !dbg !2894, !tbaa !2253
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2895
  store i32 %8, ptr %7, align 4, !dbg !2896, !tbaa !942
  br i1 %11, label %28, label %27, !dbg !2897

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2898, !tbaa !2900
  br label %28, !dbg !2901

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2902
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2903 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2908, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %1, metadata !2905, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 1, metadata !2906, metadata !DIExpression()), !dbg !2910
  %2 = load i32, ptr @nslots, align 4, !tbaa !942
  call void @llvm.dbg.value(metadata i32 1, metadata !2906, metadata !DIExpression()), !dbg !2910
  %3 = icmp sgt i32 %2, 1, !dbg !2911
  br i1 %3, label %4, label %6, !dbg !2913

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2911
  br label %10, !dbg !2913

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2914
  %8 = load ptr, ptr %7, align 8, !dbg !2914, !tbaa !2916
  %9 = icmp eq ptr %8, @slot0, !dbg !2918
  br i1 %9, label %17, label %16, !dbg !2919

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2906, metadata !DIExpression()), !dbg !2910
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2920
  %13 = load ptr, ptr %12, align 8, !dbg !2920, !tbaa !2916
  tail call void @free(ptr noundef %13) #39, !dbg !2921
  %14 = add nuw nsw i64 %11, 1, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %14, metadata !2906, metadata !DIExpression()), !dbg !2910
  %15 = icmp eq i64 %14, %5, !dbg !2911
  br i1 %15, label %6, label %10, !dbg !2913, !llvm.loop !2923

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2925
  store i64 256, ptr @slotvec0, align 8, !dbg !2927, !tbaa !2928
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2929, !tbaa !2916
  br label %17, !dbg !2930

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2931
  br i1 %18, label %20, label %19, !dbg !2933

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2934
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2936, !tbaa !874
  br label %20, !dbg !2937

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2938, !tbaa !942
  ret void, !dbg !2939
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %1, metadata !2943, metadata !DIExpression()), !dbg !2944
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2945
  ret ptr %3, !dbg !2946
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2947 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2951, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %1, metadata !2952, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %2, metadata !2953, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %3, metadata !2954, metadata !DIExpression()), !dbg !2967
  %6 = tail call ptr @__errno_location() #42, !dbg !2968
  %7 = load i32, ptr %6, align 4, !dbg !2968, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %7, metadata !2955, metadata !DIExpression()), !dbg !2967
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2969, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %8, metadata !2956, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2957, metadata !DIExpression()), !dbg !2967
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2970
  br i1 %9, label %10, label %11, !dbg !2970

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2972
  unreachable, !dbg !2972

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2973, !tbaa !942
  %13 = icmp sgt i32 %12, %0, !dbg !2974
  br i1 %13, label %32, label %14, !dbg !2975

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2976
  call void @llvm.dbg.value(metadata i1 %15, metadata !2958, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2977
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2978
  %16 = sext i32 %12 to i64, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %16, metadata !2961, metadata !DIExpression()), !dbg !2977
  store i64 %16, ptr %5, align 8, !dbg !2980, !tbaa !2900
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2981
  %18 = add nuw nsw i32 %0, 1, !dbg !2982
  %19 = sub i32 %18, %12, !dbg !2983
  %20 = sext i32 %19 to i64, !dbg !2984
  call void @llvm.dbg.value(metadata ptr %5, metadata !2961, metadata !DIExpression(DW_OP_deref)), !dbg !2977
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %21, metadata !2956, metadata !DIExpression()), !dbg !2967
  store ptr %21, ptr @slotvec, align 8, !dbg !2986, !tbaa !874
  br i1 %15, label %22, label %23, !dbg !2987

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2988, !tbaa.struct !2990
  br label %23, !dbg !2991

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2992, !tbaa !942
  %25 = sext i32 %24 to i64, !dbg !2993
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2993
  %27 = load i64, ptr %5, align 8, !dbg !2994, !tbaa !2900
  call void @llvm.dbg.value(metadata i64 %27, metadata !2961, metadata !DIExpression()), !dbg !2977
  %28 = sub nsw i64 %27, %25, !dbg !2995
  %29 = shl i64 %28, 4, !dbg !2996
  call void @llvm.dbg.value(metadata ptr %26, metadata !2381, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %29, metadata !2385, metadata !DIExpression()), !dbg !2997
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2999
  %30 = load i64, ptr %5, align 8, !dbg !3000, !tbaa !2900
  call void @llvm.dbg.value(metadata i64 %30, metadata !2961, metadata !DIExpression()), !dbg !2977
  %31 = trunc i64 %30 to i32, !dbg !3000
  store i32 %31, ptr @nslots, align 4, !dbg !3001, !tbaa !942
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3002
  br label %32, !dbg !3003

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2967
  call void @llvm.dbg.value(metadata ptr %33, metadata !2956, metadata !DIExpression()), !dbg !2967
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3004
  %36 = load i64, ptr %35, align 8, !dbg !3005, !tbaa !2928
  call void @llvm.dbg.value(metadata i64 %36, metadata !2962, metadata !DIExpression()), !dbg !3006
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3007
  %38 = load ptr, ptr %37, align 8, !dbg !3007, !tbaa !2916
  call void @llvm.dbg.value(metadata ptr %38, metadata !2964, metadata !DIExpression()), !dbg !3006
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3008
  %40 = load i32, ptr %39, align 4, !dbg !3008, !tbaa !2229
  %41 = or i32 %40, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i32 %41, metadata !2965, metadata !DIExpression()), !dbg !3006
  %42 = load i32, ptr %3, align 8, !dbg !3010, !tbaa !2179
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3011
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3012
  %45 = load ptr, ptr %44, align 8, !dbg !3012, !tbaa !2250
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3013
  %47 = load ptr, ptr %46, align 8, !dbg !3013, !tbaa !2253
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %48, metadata !2966, metadata !DIExpression()), !dbg !3006
  %49 = icmp ugt i64 %36, %48, !dbg !3015
  br i1 %49, label %60, label %50, !dbg !3017

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %51, metadata !2962, metadata !DIExpression()), !dbg !3006
  store i64 %51, ptr %35, align 8, !dbg !3020, !tbaa !2928
  %52 = icmp eq ptr %38, @slot0, !dbg !3021
  br i1 %52, label %54, label %53, !dbg !3023

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3024
  br label %54, !dbg !3024

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3025
  call void @llvm.dbg.value(metadata ptr %55, metadata !2964, metadata !DIExpression()), !dbg !3006
  store ptr %55, ptr %37, align 8, !dbg !3026, !tbaa !2916
  %56 = load i32, ptr %3, align 8, !dbg !3027, !tbaa !2179
  %57 = load ptr, ptr %44, align 8, !dbg !3028, !tbaa !2250
  %58 = load ptr, ptr %46, align 8, !dbg !3029, !tbaa !2253
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3030
  br label %60, !dbg !3031

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3006
  call void @llvm.dbg.value(metadata ptr %61, metadata !2964, metadata !DIExpression()), !dbg !3006
  store i32 %7, ptr %6, align 4, !dbg !3032, !tbaa !942
  ret ptr %61, !dbg !3033
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3034 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata ptr %1, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %2, metadata !3040, metadata !DIExpression()), !dbg !3041
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3042
  ret ptr %4, !dbg !3043
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3044 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 0, metadata !2942, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %0, metadata !2943, metadata !DIExpression()), !dbg !3048
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3050
  ret ptr %2, !dbg !3051
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3052 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %0, metadata !3039, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3059
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3061
  ret ptr %3, !dbg !3062
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3063 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3067, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %1, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %2, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3070, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3074), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %1, metadata !3078, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3083, metadata !DIExpression()), !dbg !3086
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3086, !alias.scope !3074
  %5 = icmp eq i32 %1, 10, !dbg !3087
  br i1 %5, label %6, label %7, !dbg !3089

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3090, !noalias !3074
  unreachable, !dbg !3090

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3091, !tbaa !2179, !alias.scope !3074
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3092
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3093
  ret ptr %8, !dbg !3094
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3095 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3099, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i32 %1, metadata !3100, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %3, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3103, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107), !dbg !3110
  call void @llvm.dbg.value(metadata i32 %1, metadata !3078, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3083, metadata !DIExpression()), !dbg !3113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3113, !alias.scope !3107
  %6 = icmp eq i32 %1, 10, !dbg !3114
  br i1 %6, label %7, label %8, !dbg !3115

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3116, !noalias !3107
  unreachable, !dbg !3116

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3117, !tbaa !2179, !alias.scope !3107
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3119
  ret ptr %9, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3121 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3067, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %0, metadata !3068, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %1, metadata !3069, metadata !DIExpression()), !dbg !3128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3130
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3070, metadata !DIExpression()), !dbg !3131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132), !dbg !3135
  call void @llvm.dbg.value(metadata i32 %0, metadata !3078, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3083, metadata !DIExpression()), !dbg !3138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3138, !alias.scope !3132
  %4 = icmp eq i32 %0, 10, !dbg !3139
  br i1 %4, label %5, label %6, !dbg !3140

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3141, !noalias !3132
  unreachable, !dbg !3141

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3142, !tbaa !2179, !alias.scope !3132
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3143
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3144
  ret ptr %7, !dbg !3145
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3146 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %1, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %2, metadata !3152, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %0, metadata !3100, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata ptr %1, metadata !3101, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %2, metadata !3102, metadata !DIExpression()), !dbg !3154
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3103, metadata !DIExpression()), !dbg !3157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3158), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %0, metadata !3078, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3083, metadata !DIExpression()), !dbg !3164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3164, !alias.scope !3158
  %5 = icmp eq i32 %0, 10, !dbg !3165
  br i1 %5, label %6, label %7, !dbg !3166

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3167, !noalias !3158
  unreachable, !dbg !3167

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3168, !tbaa !2179, !alias.scope !3158
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3169
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3170
  ret ptr %8, !dbg !3171
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3172 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %1, metadata !3177, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8 %2, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3181
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3183, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %4, metadata !2196, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8 %2, metadata !2197, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8 %2, metadata !2199, metadata !DIExpression()), !dbg !3185
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3187
  %6 = lshr i8 %2, 5, !dbg !3188
  %7 = zext i8 %6 to i64, !dbg !3188
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %8, metadata !2200, metadata !DIExpression()), !dbg !3185
  %9 = and i8 %2, 31, !dbg !3190
  %10 = zext i8 %9 to i32, !dbg !3190
  call void @llvm.dbg.value(metadata i32 %10, metadata !2202, metadata !DIExpression()), !dbg !3185
  %11 = load i32, ptr %8, align 4, !dbg !3191, !tbaa !942
  %12 = lshr i32 %11, %10, !dbg !3192
  call void @llvm.dbg.value(metadata i32 %12, metadata !2203, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3185
  %13 = and i32 %12, 1, !dbg !3193
  %14 = xor i32 %13, 1, !dbg !3193
  %15 = shl nuw i32 %14, %10, !dbg !3194
  %16 = xor i32 %15, %11, !dbg !3195
  store i32 %16, ptr %8, align 4, !dbg !3195, !tbaa !942
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3196
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3197
  ret ptr %17, !dbg !3198
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3199 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8 %1, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 -1, metadata !3177, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8 %1, metadata !3178, metadata !DIExpression()), !dbg !3206
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3210, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %3, metadata !2196, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %1, metadata !2197, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %1, metadata !2199, metadata !DIExpression()), !dbg !3211
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3213
  %5 = lshr i8 %1, 5, !dbg !3214
  %6 = zext i8 %5 to i64, !dbg !3214
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %7, metadata !2200, metadata !DIExpression()), !dbg !3211
  %8 = and i8 %1, 31, !dbg !3216
  %9 = zext i8 %8 to i32, !dbg !3216
  call void @llvm.dbg.value(metadata i32 %9, metadata !2202, metadata !DIExpression()), !dbg !3211
  %10 = load i32, ptr %7, align 4, !dbg !3217, !tbaa !942
  %11 = lshr i32 %10, %9, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %11, metadata !2203, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3211
  %12 = and i32 %11, 1, !dbg !3219
  %13 = xor i32 %12, 1, !dbg !3219
  %14 = shl nuw i32 %13, %9, !dbg !3220
  %15 = xor i32 %14, %10, !dbg !3221
  store i32 %15, ptr %7, align 4, !dbg !3221, !tbaa !942
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3222
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3223
  ret ptr %16, !dbg !3224
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3225 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 58, metadata !3204, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 -1, metadata !3177, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 58, metadata !3178, metadata !DIExpression()), !dbg !3231
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3179, metadata !DIExpression()), !dbg !3234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3235, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %2, metadata !2196, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i8 58, metadata !2197, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i8 58, metadata !2199, metadata !DIExpression()), !dbg !3236
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3238
  call void @llvm.dbg.value(metadata ptr %3, metadata !2200, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 26, metadata !2202, metadata !DIExpression()), !dbg !3236
  %4 = load i32, ptr %3, align 4, !dbg !3239, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %4, metadata !2203, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3236
  %5 = or i32 %4, 67108864, !dbg !3240
  store i32 %5, ptr %3, align 4, !dbg !3240, !tbaa !942
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3241
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3242
  ret ptr %6, !dbg !3243
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3244 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3177, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8 58, metadata !3178, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3253, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %3, metadata !2196, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 58, metadata !2197, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 58, metadata !2199, metadata !DIExpression()), !dbg !3254
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %4, metadata !2200, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 26, metadata !2202, metadata !DIExpression()), !dbg !3254
  %5 = load i32, ptr %4, align 4, !dbg !3257, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %5, metadata !2203, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3254
  %6 = or i32 %5, 67108864, !dbg !3258
  store i32 %6, ptr %4, align 4, !dbg !3258, !tbaa !942
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3259
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3260
  ret ptr %7, !dbg !3261
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3262 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3268
  call void @llvm.dbg.value(metadata i32 %0, metadata !3264, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 %1, metadata !3265, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %2, metadata !3266, metadata !DIExpression()), !dbg !3270
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3271
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3267, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %1, metadata !3078, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 0, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3273
  %5 = icmp eq i32 %1, 10, !dbg !3274
  br i1 %5, label %6, label %7, !dbg !3275

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3276, !noalias !3277
  unreachable, !dbg !3276

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3273
  store i32 %1, ptr %4, align 8, !dbg !3280, !tbaa.struct !3184
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3280
  call void @llvm.dbg.value(metadata ptr %4, metadata !2196, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 58, metadata !2197, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 58, metadata !2199, metadata !DIExpression()), !dbg !3281
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %9, metadata !2200, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 26, metadata !2202, metadata !DIExpression()), !dbg !3281
  %10 = load i32, ptr %9, align 4, !dbg !3284, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %10, metadata !2203, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3281
  %11 = or i32 %10, 67108864, !dbg !3285
  store i32 %11, ptr %9, align 4, !dbg !3285, !tbaa !942
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3286
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3287
  ret ptr %12, !dbg !3288
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3289 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3293, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %1, metadata !3294, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %2, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 %0, metadata !3298, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %1, metadata !3303, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %2, metadata !3304, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 -1, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3310
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3307, metadata !DIExpression()), !dbg !3311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3312, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata ptr %1, metadata !2237, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata ptr %2, metadata !2238, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !3313
  store i32 10, ptr %5, align 8, !dbg !3315, !tbaa !2179
  %6 = icmp ne ptr %1, null, !dbg !3316
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3317
  br i1 %8, label %10, label %9, !dbg !3317

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3318
  unreachable, !dbg !3318

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3319
  store ptr %1, ptr %11, align 8, !dbg !3320, !tbaa !2250
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3321
  store ptr %2, ptr %12, align 8, !dbg !3322, !tbaa !2253
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3323
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3324
  ret ptr %13, !dbg !3325
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3299 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3298, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %1, metadata !3303, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %2, metadata !3304, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %4, metadata !3306, metadata !DIExpression()), !dbg !3326
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3327
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3307, metadata !DIExpression()), !dbg !3328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3329, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %6, metadata !2236, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %1, metadata !2237, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %2, metadata !2238, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %6, metadata !2236, metadata !DIExpression()), !dbg !3330
  store i32 10, ptr %6, align 8, !dbg !3332, !tbaa !2179
  %7 = icmp ne ptr %1, null, !dbg !3333
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3334
  br i1 %9, label %11, label %10, !dbg !3334

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3335
  unreachable, !dbg !3335

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3336
  store ptr %1, ptr %12, align 8, !dbg !3337, !tbaa !2250
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3338
  store ptr %2, ptr %13, align 8, !dbg !3339, !tbaa !2253
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3340
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3341
  ret ptr %14, !dbg !3342
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3343 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %1, metadata !3348, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %2, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 0, metadata !3293, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %1, metadata !3295, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 0, metadata !3298, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %0, metadata !3303, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %1, metadata !3304, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 -1, metadata !3306, metadata !DIExpression()), !dbg !3353
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3307, metadata !DIExpression()), !dbg !3356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3357, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %4, metadata !2236, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata ptr %0, metadata !2237, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata ptr %1, metadata !2238, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata ptr %4, metadata !2236, metadata !DIExpression()), !dbg !3358
  store i32 10, ptr %4, align 8, !dbg !3360, !tbaa !2179
  %5 = icmp ne ptr %0, null, !dbg !3361
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3362
  br i1 %7, label %9, label %8, !dbg !3362

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3363
  unreachable, !dbg !3363

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3364
  store ptr %0, ptr %10, align 8, !dbg !3365, !tbaa !2250
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3366
  store ptr %1, ptr %11, align 8, !dbg !3367, !tbaa !2253
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3368
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3369
  ret ptr %12, !dbg !3370
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3371 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3375, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %1, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %2, metadata !3377, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %3, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i32 0, metadata !3298, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %0, metadata !3303, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %1, metadata !3304, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %3, metadata !3306, metadata !DIExpression()), !dbg !3380
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3307, metadata !DIExpression()), !dbg !3383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3384, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %0, metadata !2237, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %1, metadata !2238, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !3385
  store i32 10, ptr %5, align 8, !dbg !3387, !tbaa !2179
  %6 = icmp ne ptr %0, null, !dbg !3388
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3389
  br i1 %8, label %10, label %9, !dbg !3389

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3390
  unreachable, !dbg !3390

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3391
  store ptr %0, ptr %11, align 8, !dbg !3392, !tbaa !2250
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3393
  store ptr %1, ptr %12, align 8, !dbg !3394, !tbaa !2253
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3395
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3396
  ret ptr %13, !dbg !3397
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3402, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr %1, metadata !3403, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression()), !dbg !3405
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3406
  ret ptr %4, !dbg !3407
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3408 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3412, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 0, metadata !3402, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %1, metadata !3404, metadata !DIExpression()), !dbg !3415
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3417
  ret ptr %3, !dbg !3418
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %1, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 %0, metadata !3402, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %1, metadata !3403, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 -1, metadata !3404, metadata !DIExpression()), !dbg !3426
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3428
  ret ptr %3, !dbg !3429
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3430 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 0, metadata !3423, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !3402, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 -1, metadata !3404, metadata !DIExpression()), !dbg !3438
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3440
  ret ptr %2, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname_len(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !646 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !660, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %1, metadata !661, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %2, metadata !662, metadata !DIExpression()), !dbg !3442
  store i32 %2, ptr %6, align 4, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %3, metadata !663, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %4, metadata !664, metadata !DIExpression()), !dbg !3442
  %7 = sext i32 %3 to i64, !dbg !3443
  %8 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %7, !dbg !3443
  %9 = load ptr, ptr %8, align 8, !dbg !3443, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %6, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !3442
  %10 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %9, i64 noundef %4), !dbg !3444
  ret i32 %10, !dbg !3445
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3446 {
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %1, metadata !3451, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %2, metadata !3452, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %3, metadata !3453, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %4, metadata !3454, metadata !DIExpression()), !dbg !3474
  %8 = tail call ptr @__errno_location() #42, !dbg !3475
  %9 = load i32, ptr %8, align 4, !dbg !3475, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %9, metadata !3455, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 238328, metadata !3456, metadata !DIExpression()), !dbg !3474
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !3476
  call void @llvm.dbg.value(metadata i64 0, metadata !3457, metadata !DIExpression()), !dbg !3474
  store i64 0, ptr %7, align 8, !dbg !3477, !tbaa !2900
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 -821457390474406912, metadata !3463, metadata !DIExpression()), !dbg !3474
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %10, metadata !3465, metadata !DIExpression()), !dbg !3474
  %11 = sext i32 %1 to i64, !dbg !3479
  %12 = add i64 %11, %4, !dbg !3481
  %13 = icmp ult i64 %10, %12, !dbg !3482
  br i1 %13, label %85, label %14, !dbg !3483

14:                                               ; preds = %5
  %15 = sub i64 %10, %12, !dbg !3484
  %16 = getelementptr inbounds i8, ptr %0, i64 %15, !dbg !3485
  %17 = tail call i64 @strspn(ptr noundef %16, ptr noundef nonnull @.str.99) #40, !dbg !3486
  %18 = icmp ult i64 %17, %4, !dbg !3487
  br i1 %18, label %85, label %19, !dbg !3488

19:                                               ; preds = %14
  %20 = icmp eq i64 %4, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !3467, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 undef, metadata !3461, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3474
  %21 = getelementptr inbounds %struct.timespec, ptr %6, i64 0, i32 1
  br label %26, !dbg !3490

22:                                               ; preds = %80
  %23 = add nuw nsw i32 %28, 1, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %23, metadata !3467, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 %28, metadata !3467, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %33, metadata !3461, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %32, metadata !3462, metadata !DIExpression()), !dbg !3474
  %24 = icmp ugt i32 %28, 238326, !dbg !3492
  %25 = icmp eq i32 %23, 238328, !dbg !3492
  br i1 %25, label %85, label %26, !dbg !3490, !llvm.loop !3493

26:                                               ; preds = %19, %22
  %27 = phi i1 [ false, %19 ], [ %24, %22 ]
  %28 = phi i32 [ 0, %19 ], [ %23, %22 ]
  %29 = phi i64 [ undef, %19 ], [ %33, %22 ]
  %30 = phi i32 [ 0, %19 ], [ %32, %22 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !3467, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %29, metadata !3461, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %30, metadata !3462, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 0, metadata !3469, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %29, metadata !3461, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %30, metadata !3462, metadata !DIExpression()), !dbg !3474
  br i1 %20, label %31, label %36, !dbg !3496

31:                                               ; preds = %66, %26
  %32 = phi i32 [ %30, %26 ], [ %76, %66 ], !dbg !3474
  %33 = phi i64 [ %29, %26 ], [ %70, %66 ]
  %34 = call i32 %3(ptr noundef %0, ptr noundef %2) #39, !dbg !3497
  call void @llvm.dbg.value(metadata i32 %34, metadata !3473, metadata !DIExpression()), !dbg !3498
  %35 = icmp sgt i32 %34, -1, !dbg !3499
  br i1 %35, label %79, label %80, !dbg !3501

36:                                               ; preds = %26, %66
  %37 = phi i64 [ %77, %66 ], [ 0, %26 ]
  %38 = phi i64 [ %70, %66 ], [ %29, %26 ]
  %39 = phi i32 [ %76, %66 ], [ %30, %26 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !3469, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %38, metadata !3461, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %39, metadata !3462, metadata !DIExpression()), !dbg !3474
  %40 = icmp eq i32 %39, 0, !dbg !3502
  br i1 %40, label %41, label %66, !dbg !3506

41:                                               ; preds = %36
  %42 = load i64, ptr %7, align 8, !dbg !3507, !tbaa !2900
  call void @llvm.dbg.value(metadata ptr %7, metadata !3457, metadata !DIExpression(DW_OP_deref)), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %7, metadata !3509, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %42, metadata !3515, metadata !DIExpression()), !dbg !3525
  %43 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #39, !dbg !3527
  %44 = icmp eq i64 %43, 8, !dbg !3529
  br i1 %44, label %63, label %48, !dbg !3530

45:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %7, metadata !3457, metadata !DIExpression(DW_OP_deref)), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %7, metadata !3509, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %64, metadata !3515, metadata !DIExpression()), !dbg !3525
  %46 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #39, !dbg !3527
  %47 = icmp eq i64 %46, 8, !dbg !3529
  br i1 %47, label %63, label %48, !dbg !3530, !llvm.loop !3531

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %42, %41 ], [ %64, %45 ], !dbg !3507
  call void @llvm.dbg.value(metadata i64 %49, metadata !3516, metadata !DIExpression()), !dbg !3525
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #39, !dbg !3534
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3517, metadata !DIExpression()), !dbg !3535
  %50 = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %6) #39, !dbg !3536
  %51 = load i64, ptr %6, align 8, !dbg !3537, !tbaa !3538
  call void @llvm.dbg.value(metadata i64 %49, metadata !3540, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %51, metadata !3545, metadata !DIExpression()), !dbg !3546
  %52 = mul i64 %49, 2862933555777941757, !dbg !3548
  %53 = add i64 %52, 3037000493, !dbg !3549
  %54 = xor i64 %51, %53, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %54, metadata !3516, metadata !DIExpression()), !dbg !3525
  %55 = load i64, ptr %21, align 8, !dbg !3551, !tbaa !3552
  call void @llvm.dbg.value(metadata i64 %54, metadata !3540, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %55, metadata !3545, metadata !DIExpression()), !dbg !3553
  %56 = mul i64 %54, 2862933555777941757, !dbg !3555
  %57 = add i64 %56, 3037000493, !dbg !3556
  %58 = xor i64 %57, %55, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %58, metadata !3516, metadata !DIExpression()), !dbg !3525
  %59 = call i64 @clock() #39, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %58, metadata !3540, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %59, metadata !3545, metadata !DIExpression()), !dbg !3559
  %60 = mul i64 %58, 2862933555777941757, !dbg !3561
  %61 = add i64 %60, 3037000493, !dbg !3562
  %62 = xor i64 %61, %59, !dbg !3563
  store i64 %62, ptr %7, align 8, !dbg !3564, !tbaa !2900
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #39, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %62, metadata !3457, metadata !DIExpression()), !dbg !3474
  br label %66, !dbg !3532

63:                                               ; preds = %41, %45
  %64 = load i64, ptr %7, align 8, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %64, metadata !3457, metadata !DIExpression()), !dbg !3474
  %65 = icmp ugt i64 %64, -821457390474406913, !dbg !3566
  br i1 %65, label %45, label %66, !dbg !3532, !llvm.loop !3531

66:                                               ; preds = %63, %48, %36
  %67 = phi i32 [ %39, %36 ], [ 10, %48 ], [ 10, %63 ], !dbg !3474
  %68 = phi i64 [ %38, %36 ], [ %62, %48 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i64 %68, metadata !3461, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %67, metadata !3462, metadata !DIExpression()), !dbg !3474
  %69 = freeze i64 %68
  %70 = udiv i64 %69, 62, !dbg !3567
  %71 = mul i64 %70, 62
  %72 = sub i64 %69, %71
  %73 = getelementptr inbounds [63 x i8], ptr @letters, i64 0, i64 %72, !dbg !3568
  %74 = load i8, ptr %73, align 1, !dbg !3568, !tbaa !951
  %75 = getelementptr inbounds i8, ptr %16, i64 %37, !dbg !3569
  store i8 %74, ptr %75, align 1, !dbg !3570, !tbaa !951
  call void @llvm.dbg.value(metadata i64 %70, metadata !3461, metadata !DIExpression()), !dbg !3474
  %76 = add nsw i32 %67, -1, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %76, metadata !3462, metadata !DIExpression()), !dbg !3474
  %77 = add nuw i64 %37, 1, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %77, metadata !3469, metadata !DIExpression()), !dbg !3495
  %78 = icmp eq i64 %77, %4, !dbg !3573
  br i1 %78, label %31, label %36, !dbg !3496, !llvm.loop !3574

79:                                               ; preds = %31
  store i32 %9, ptr %8, align 4, !dbg !3576, !tbaa !942
  br label %83

80:                                               ; preds = %31
  %81 = load i32, ptr %8, align 4, !dbg !3578, !tbaa !942
  %82 = icmp eq i32 %81, 17, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %28, metadata !3467, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3489
  br i1 %82, label %22, label %83

83:                                               ; preds = %80, %79
  %84 = phi i32 [ %34, %79 ], [ -1, %80 ]
  br i1 %27, label %85, label %87

85:                                               ; preds = %22, %83, %5, %14
  %86 = phi i32 [ 22, %14 ], [ 22, %5 ], [ 17, %83 ], [ 17, %22 ]
  store i32 %86, ptr %8, align 4, !dbg !3474, !tbaa !942
  br label %87, !dbg !3581

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ -1, %85 ], !dbg !3474
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !3581
  ret i32 %88, !dbg !3581
}

declare !dbg !3582 i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3588 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3596 i64 @clock() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_file(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !dbg !3602 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %1, metadata !3605, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %1, metadata !3606, metadata !DIExpression()), !dbg !3607
  %3 = load i32, ptr %1, align 4, !dbg !3608, !tbaa !942
  %4 = and i32 %3, -196, !dbg !3609
  %5 = or i32 %4, 194, !dbg !3610
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %5, i32 noundef 384) #39, !dbg !3611
  ret i32 %6, !dbg !3612
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_dir(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3613 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3615, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr poison, metadata !3616, metadata !DIExpression()), !dbg !3617
  %3 = tail call i32 @mkdir(ptr noundef %0, i32 noundef 448) #39, !dbg !3618
  ret i32 %3, !dbg !3619
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_nocreate(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3620 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3622, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr poison, metadata !3623, metadata !DIExpression()), !dbg !3653
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #39, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3624, metadata !DIExpression()), !dbg !3655
  %4 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #39, !dbg !3656
  %5 = icmp eq i32 %4, 0, !dbg !3658
  %6 = tail call ptr @__errno_location() #42, !dbg !3659
  br i1 %5, label %10, label %7, !dbg !3660

7:                                                ; preds = %2
  %8 = load i32, ptr %6, align 4, !dbg !3661, !tbaa !942
  %9 = icmp eq i32 %8, 75, !dbg !3662
  br i1 %9, label %10, label %11, !dbg !3663

10:                                               ; preds = %2, %7
  store i32 17, ptr %6, align 4, !dbg !3664, !tbaa !942
  br label %11, !dbg !3664

11:                                               ; preds = %10, %7
  %12 = load i32, ptr %6, align 4, !dbg !3665, !tbaa !942
  %13 = icmp ne i32 %12, 2, !dbg !3666
  %14 = sext i1 %13 to i32, !dbg !3665
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #39, !dbg !3667
  ret i32 %14, !dbg !3668
}

; Function Attrs: nofree nounwind
declare !dbg !3669 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3675 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3678 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #29

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3681 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3685, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 %1, metadata !3686, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 %2, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 %3, metadata !3688, metadata !DIExpression()), !dbg !3689
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5), !dbg !3690
  call void @llvm.dbg.value(metadata ptr %0, metadata !660, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i32 %1, metadata !661, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i32 %2, metadata !662, metadata !DIExpression()), !dbg !3690
  store i32 %2, ptr %5, align 4, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %3, metadata !663, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 6, metadata !664, metadata !DIExpression()), !dbg !3690
  %6 = sext i32 %3 to i64, !dbg !3692
  %7 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %6, !dbg !3692
  %8 = load ptr, ptr %7, align 8, !dbg !3692, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %5, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !3690
  %9 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %8, i64 noundef 6), !dbg !3693
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5), !dbg !3694
  ret i32 %9, !dbg !3695
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #10 !dbg !3696 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3700, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 %1, metadata !3701, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %2, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %3, metadata !3703, metadata !DIExpression()), !dbg !3704
  %5 = tail call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 6), !dbg !3705
  ret i32 %5, !dbg !3706
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3707 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3746, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %2, metadata !3748, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %3, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %4, metadata !3750, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %5, metadata !3751, metadata !DIExpression()), !dbg !3752
  %7 = icmp eq ptr %1, null, !dbg !3753
  br i1 %7, label %10, label %8, !dbg !3755

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3756
  br label %12, !dbg !3756

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #39, !dbg !3757
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #39, !dbg !3758
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3758
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3759
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #39, !dbg !3760
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #39, !dbg !3760
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3761
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
  ], !dbg !3762

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #39, !dbg !3763
  %21 = load ptr, ptr %4, align 8, !dbg !3763, !tbaa !874
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3763
  br label %147, !dbg !3765

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #39, !dbg !3766
  %25 = load ptr, ptr %4, align 8, !dbg !3766, !tbaa !874
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3766
  %27 = load ptr, ptr %26, align 8, !dbg !3766, !tbaa !874
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3766
  br label %147, !dbg !3767

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #39, !dbg !3768
  %31 = load ptr, ptr %4, align 8, !dbg !3768, !tbaa !874
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3768
  %33 = load ptr, ptr %32, align 8, !dbg !3768, !tbaa !874
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3768
  %35 = load ptr, ptr %34, align 8, !dbg !3768, !tbaa !874
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3768
  br label %147, !dbg !3769

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #39, !dbg !3770
  %39 = load ptr, ptr %4, align 8, !dbg !3770, !tbaa !874
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3770
  %41 = load ptr, ptr %40, align 8, !dbg !3770, !tbaa !874
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3770
  %43 = load ptr, ptr %42, align 8, !dbg !3770, !tbaa !874
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3770
  %45 = load ptr, ptr %44, align 8, !dbg !3770, !tbaa !874
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3770
  br label %147, !dbg !3771

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #39, !dbg !3772
  %49 = load ptr, ptr %4, align 8, !dbg !3772, !tbaa !874
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3772
  %51 = load ptr, ptr %50, align 8, !dbg !3772, !tbaa !874
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3772
  %53 = load ptr, ptr %52, align 8, !dbg !3772, !tbaa !874
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3772
  %55 = load ptr, ptr %54, align 8, !dbg !3772, !tbaa !874
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3772
  %57 = load ptr, ptr %56, align 8, !dbg !3772, !tbaa !874
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3772
  br label %147, !dbg !3773

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #39, !dbg !3774
  %61 = load ptr, ptr %4, align 8, !dbg !3774, !tbaa !874
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3774
  %63 = load ptr, ptr %62, align 8, !dbg !3774, !tbaa !874
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3774
  %65 = load ptr, ptr %64, align 8, !dbg !3774, !tbaa !874
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3774
  %67 = load ptr, ptr %66, align 8, !dbg !3774, !tbaa !874
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3774
  %69 = load ptr, ptr %68, align 8, !dbg !3774, !tbaa !874
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3774
  %71 = load ptr, ptr %70, align 8, !dbg !3774, !tbaa !874
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3774
  br label %147, !dbg !3775

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #39, !dbg !3776
  %75 = load ptr, ptr %4, align 8, !dbg !3776, !tbaa !874
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3776
  %77 = load ptr, ptr %76, align 8, !dbg !3776, !tbaa !874
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3776
  %79 = load ptr, ptr %78, align 8, !dbg !3776, !tbaa !874
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3776
  %81 = load ptr, ptr %80, align 8, !dbg !3776, !tbaa !874
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3776
  %83 = load ptr, ptr %82, align 8, !dbg !3776, !tbaa !874
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3776
  %85 = load ptr, ptr %84, align 8, !dbg !3776, !tbaa !874
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3776
  %87 = load ptr, ptr %86, align 8, !dbg !3776, !tbaa !874
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3776
  br label %147, !dbg !3777

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #39, !dbg !3778
  %91 = load ptr, ptr %4, align 8, !dbg !3778, !tbaa !874
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3778
  %93 = load ptr, ptr %92, align 8, !dbg !3778, !tbaa !874
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3778
  %95 = load ptr, ptr %94, align 8, !dbg !3778, !tbaa !874
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3778
  %97 = load ptr, ptr %96, align 8, !dbg !3778, !tbaa !874
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3778
  %99 = load ptr, ptr %98, align 8, !dbg !3778, !tbaa !874
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3778
  %101 = load ptr, ptr %100, align 8, !dbg !3778, !tbaa !874
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3778
  %103 = load ptr, ptr %102, align 8, !dbg !3778, !tbaa !874
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3778
  %105 = load ptr, ptr %104, align 8, !dbg !3778, !tbaa !874
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3778
  br label %147, !dbg !3779

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #39, !dbg !3780
  %109 = load ptr, ptr %4, align 8, !dbg !3780, !tbaa !874
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3780
  %111 = load ptr, ptr %110, align 8, !dbg !3780, !tbaa !874
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3780
  %113 = load ptr, ptr %112, align 8, !dbg !3780, !tbaa !874
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3780
  %115 = load ptr, ptr %114, align 8, !dbg !3780, !tbaa !874
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3780
  %117 = load ptr, ptr %116, align 8, !dbg !3780, !tbaa !874
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3780
  %119 = load ptr, ptr %118, align 8, !dbg !3780, !tbaa !874
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3780
  %121 = load ptr, ptr %120, align 8, !dbg !3780, !tbaa !874
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3780
  %123 = load ptr, ptr %122, align 8, !dbg !3780, !tbaa !874
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3780
  %125 = load ptr, ptr %124, align 8, !dbg !3780, !tbaa !874
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3780
  br label %147, !dbg !3781

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #39, !dbg !3782
  %129 = load ptr, ptr %4, align 8, !dbg !3782, !tbaa !874
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3782
  %131 = load ptr, ptr %130, align 8, !dbg !3782, !tbaa !874
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3782
  %133 = load ptr, ptr %132, align 8, !dbg !3782, !tbaa !874
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3782
  %135 = load ptr, ptr %134, align 8, !dbg !3782, !tbaa !874
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3782
  %137 = load ptr, ptr %136, align 8, !dbg !3782, !tbaa !874
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3782
  %139 = load ptr, ptr %138, align 8, !dbg !3782, !tbaa !874
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3782
  %141 = load ptr, ptr %140, align 8, !dbg !3782, !tbaa !874
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3782
  %143 = load ptr, ptr %142, align 8, !dbg !3782, !tbaa !874
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3782
  %145 = load ptr, ptr %144, align 8, !dbg !3782, !tbaa !874
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3782
  br label %147, !dbg !3783

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3784
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3785 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3789, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %1, metadata !3790, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %2, metadata !3791, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %3, metadata !3792, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %4, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 0, metadata !3794, metadata !DIExpression()), !dbg !3795
  br label %6, !dbg !3796

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3798
  call void @llvm.dbg.value(metadata i64 %7, metadata !3794, metadata !DIExpression()), !dbg !3795
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3799
  %9 = load ptr, ptr %8, align 8, !dbg !3799, !tbaa !874
  %10 = icmp eq ptr %9, null, !dbg !3801
  %11 = add i64 %7, 1, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %11, metadata !3794, metadata !DIExpression()), !dbg !3795
  br i1 %10, label %12, label %6, !dbg !3801, !llvm.loop !3803

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3805
  ret void, !dbg !3806
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3807 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3822, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %1, metadata !3823, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %2, metadata !3824, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %3, metadata !3825, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3831
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3832
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3828, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 0, metadata !3827, metadata !DIExpression()), !dbg !3830
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3827, metadata !DIExpression()), !dbg !3830
  %10 = icmp sgt i32 %9, -1, !dbg !3834
  br i1 %10, label %18, label %11, !dbg !3834

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3834
  store i32 %12, ptr %7, align 8, !dbg !3834
  %13 = icmp ult i32 %9, -7, !dbg !3834
  br i1 %13, label %14, label %18, !dbg !3834

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3834
  %16 = sext i32 %9 to i64, !dbg !3834
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3834
  br label %22, !dbg !3834

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3834
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3834
  store ptr %21, ptr %4, align 8, !dbg !3834
  br label %22, !dbg !3834

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3834
  %25 = load ptr, ptr %24, align 8, !dbg !3834
  store ptr %25, ptr %6, align 8, !dbg !3837, !tbaa !874
  %26 = icmp eq ptr %25, null, !dbg !3838
  br i1 %26, label %197, label %27, !dbg !3839

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 1, metadata !3827, metadata !DIExpression()), !dbg !3830
  %28 = icmp sgt i32 %23, -1, !dbg !3834
  br i1 %28, label %36, label %29, !dbg !3834

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3834
  store i32 %30, ptr %7, align 8, !dbg !3834
  %31 = icmp ult i32 %23, -7, !dbg !3834
  br i1 %31, label %32, label %36, !dbg !3834

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3834
  %34 = sext i32 %23 to i64, !dbg !3834
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3834
  br label %40, !dbg !3834

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3834
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3834
  store ptr %39, ptr %4, align 8, !dbg !3834
  br label %40, !dbg !3834

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3834
  %43 = load ptr, ptr %42, align 8, !dbg !3834
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3840
  store ptr %43, ptr %44, align 8, !dbg !3837, !tbaa !874
  %45 = icmp eq ptr %43, null, !dbg !3838
  br i1 %45, label %197, label %46, !dbg !3839

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 2, metadata !3827, metadata !DIExpression()), !dbg !3830
  %47 = icmp sgt i32 %41, -1, !dbg !3834
  br i1 %47, label %55, label %48, !dbg !3834

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3834
  store i32 %49, ptr %7, align 8, !dbg !3834
  %50 = icmp ult i32 %41, -7, !dbg !3834
  br i1 %50, label %51, label %55, !dbg !3834

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3834
  %53 = sext i32 %41 to i64, !dbg !3834
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3834
  br label %59, !dbg !3834

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3834
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3834
  store ptr %58, ptr %4, align 8, !dbg !3834
  br label %59, !dbg !3834

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3834
  %62 = load ptr, ptr %61, align 8, !dbg !3834
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3840
  store ptr %62, ptr %63, align 8, !dbg !3837, !tbaa !874
  %64 = icmp eq ptr %62, null, !dbg !3838
  br i1 %64, label %197, label %65, !dbg !3839

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 3, metadata !3827, metadata !DIExpression()), !dbg !3830
  %66 = icmp sgt i32 %60, -1, !dbg !3834
  br i1 %66, label %74, label %67, !dbg !3834

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3834
  store i32 %68, ptr %7, align 8, !dbg !3834
  %69 = icmp ult i32 %60, -7, !dbg !3834
  br i1 %69, label %70, label %74, !dbg !3834

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3834
  %72 = sext i32 %60 to i64, !dbg !3834
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3834
  br label %78, !dbg !3834

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3834
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3834
  store ptr %77, ptr %4, align 8, !dbg !3834
  br label %78, !dbg !3834

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3834
  %81 = load ptr, ptr %80, align 8, !dbg !3834
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3840
  store ptr %81, ptr %82, align 8, !dbg !3837, !tbaa !874
  %83 = icmp eq ptr %81, null, !dbg !3838
  br i1 %83, label %197, label %84, !dbg !3839

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 4, metadata !3827, metadata !DIExpression()), !dbg !3830
  %85 = icmp sgt i32 %79, -1, !dbg !3834
  br i1 %85, label %93, label %86, !dbg !3834

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3834
  store i32 %87, ptr %7, align 8, !dbg !3834
  %88 = icmp ult i32 %79, -7, !dbg !3834
  br i1 %88, label %89, label %93, !dbg !3834

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3834
  %91 = sext i32 %79 to i64, !dbg !3834
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3834
  br label %97, !dbg !3834

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3834
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3834
  store ptr %96, ptr %4, align 8, !dbg !3834
  br label %97, !dbg !3834

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3834
  %100 = load ptr, ptr %99, align 8, !dbg !3834
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3840
  store ptr %100, ptr %101, align 8, !dbg !3837, !tbaa !874
  %102 = icmp eq ptr %100, null, !dbg !3838
  br i1 %102, label %197, label %103, !dbg !3839

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 5, metadata !3827, metadata !DIExpression()), !dbg !3830
  %104 = icmp sgt i32 %98, -1, !dbg !3834
  br i1 %104, label %112, label %105, !dbg !3834

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3834
  store i32 %106, ptr %7, align 8, !dbg !3834
  %107 = icmp ult i32 %98, -7, !dbg !3834
  br i1 %107, label %108, label %112, !dbg !3834

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3834
  %110 = sext i32 %98 to i64, !dbg !3834
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3834
  br label %116, !dbg !3834

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3834
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3834
  store ptr %115, ptr %4, align 8, !dbg !3834
  br label %116, !dbg !3834

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3834
  %119 = load ptr, ptr %118, align 8, !dbg !3834
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3840
  store ptr %119, ptr %120, align 8, !dbg !3837, !tbaa !874
  %121 = icmp eq ptr %119, null, !dbg !3838
  br i1 %121, label %197, label %122, !dbg !3839

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 6, metadata !3827, metadata !DIExpression()), !dbg !3830
  %123 = icmp sgt i32 %117, -1, !dbg !3834
  br i1 %123, label %131, label %124, !dbg !3834

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3834
  store i32 %125, ptr %7, align 8, !dbg !3834
  %126 = icmp ult i32 %117, -7, !dbg !3834
  br i1 %126, label %127, label %131, !dbg !3834

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3834
  %129 = sext i32 %117 to i64, !dbg !3834
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3834
  br label %135, !dbg !3834

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3834
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3834
  store ptr %134, ptr %4, align 8, !dbg !3834
  br label %135, !dbg !3834

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3834
  %138 = load ptr, ptr %137, align 8, !dbg !3834
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3840
  store ptr %138, ptr %139, align 8, !dbg !3837, !tbaa !874
  %140 = icmp eq ptr %138, null, !dbg !3838
  br i1 %140, label %197, label %141, !dbg !3839

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 7, metadata !3827, metadata !DIExpression()), !dbg !3830
  %142 = icmp sgt i32 %136, -1, !dbg !3834
  br i1 %142, label %150, label %143, !dbg !3834

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3834
  store i32 %144, ptr %7, align 8, !dbg !3834
  %145 = icmp ult i32 %136, -7, !dbg !3834
  br i1 %145, label %146, label %150, !dbg !3834

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3834
  %148 = sext i32 %136 to i64, !dbg !3834
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3834
  br label %154, !dbg !3834

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3834
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3834
  store ptr %153, ptr %4, align 8, !dbg !3834
  br label %154, !dbg !3834

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3834
  %157 = load ptr, ptr %156, align 8, !dbg !3834
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3840
  store ptr %157, ptr %158, align 8, !dbg !3837, !tbaa !874
  %159 = icmp eq ptr %157, null, !dbg !3838
  br i1 %159, label %197, label %160, !dbg !3839

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 8, metadata !3827, metadata !DIExpression()), !dbg !3830
  %161 = icmp sgt i32 %155, -1, !dbg !3834
  br i1 %161, label %169, label %162, !dbg !3834

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3834
  store i32 %163, ptr %7, align 8, !dbg !3834
  %164 = icmp ult i32 %155, -7, !dbg !3834
  br i1 %164, label %165, label %169, !dbg !3834

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3834
  %167 = sext i32 %155 to i64, !dbg !3834
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3834
  br label %173, !dbg !3834

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3834
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3834
  store ptr %172, ptr %4, align 8, !dbg !3834
  br label %173, !dbg !3834

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3834
  %176 = load ptr, ptr %175, align 8, !dbg !3834
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3840
  store ptr %176, ptr %177, align 8, !dbg !3837, !tbaa !874
  %178 = icmp eq ptr %176, null, !dbg !3838
  br i1 %178, label %197, label %179, !dbg !3839

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 9, metadata !3827, metadata !DIExpression()), !dbg !3830
  %180 = icmp sgt i32 %174, -1, !dbg !3834
  br i1 %180, label %188, label %181, !dbg !3834

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3834
  store i32 %182, ptr %7, align 8, !dbg !3834
  %183 = icmp ult i32 %174, -7, !dbg !3834
  br i1 %183, label %184, label %188, !dbg !3834

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3834
  %186 = sext i32 %174 to i64, !dbg !3834
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3834
  br label %191, !dbg !3834

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3834
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3834
  store ptr %190, ptr %4, align 8, !dbg !3834
  br label %191, !dbg !3834

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3834
  %193 = load ptr, ptr %192, align 8, !dbg !3834
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3840
  store ptr %193, ptr %194, align 8, !dbg !3837, !tbaa !874
  %195 = icmp eq ptr %193, null, !dbg !3838
  %196 = select i1 %195, i64 9, i64 10, !dbg !3839
  br label %197, !dbg !3839

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3841
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3842
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3843
  ret void, !dbg !3843
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3844 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3848, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %1, metadata !3849, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %2, metadata !3850, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %3, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3854
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3852, metadata !DIExpression()), !dbg !3855
  call void @llvm.va_start(ptr nonnull %5), !dbg !3856
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3857, !tbaa.struct !1586
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3857
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3857
  call void @llvm.va_end(ptr nonnull %5), !dbg !3858
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3859
  ret void, !dbg !3859
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3860 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3861, !tbaa !874
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3861
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #39, !dbg !3862
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #39, !dbg !3862
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #39, !dbg !3863
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #39, !dbg !3863
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #39, !dbg !3864
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #39, !dbg !3864
  ret void, !dbg !3865
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3866 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %2, metadata !3873, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata ptr %0, metadata !3875, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3878, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %2, metadata !3879, metadata !DIExpression()), !dbg !3880
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3882
  call void @llvm.dbg.value(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !3888
  %5 = icmp eq ptr %4, null, !dbg !3890
  br i1 %5, label %6, label %7, !dbg !3892

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3893
  unreachable, !dbg !3893

7:                                                ; preds = %3
  ret ptr %4, !dbg !3894
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3876 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3875, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %1, metadata !3878, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %2, metadata !3879, metadata !DIExpression()), !dbg !3895
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3896
  call void @llvm.dbg.value(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !3897
  %5 = icmp eq ptr %4, null, !dbg !3899
  br i1 %5, label %6, label %7, !dbg !3900

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3901
  unreachable, !dbg !3901

7:                                                ; preds = %3
  ret ptr %4, !dbg !3902
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3903 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3905, metadata !DIExpression()), !dbg !3906
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3907
  call void @llvm.dbg.value(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !3908
  %3 = icmp eq ptr %2, null, !dbg !3910
  br i1 %3, label %4, label %5, !dbg !3911

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3912
  unreachable, !dbg !3912

5:                                                ; preds = %1
  ret ptr %2, !dbg !3913
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3914 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3918, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i64 %0, metadata !3920, metadata !DIExpression()), !dbg !3924
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3926
  call void @llvm.dbg.value(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !3927
  %3 = icmp eq ptr %2, null, !dbg !3929
  br i1 %3, label %4, label %5, !dbg !3930

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3931
  unreachable, !dbg !3931

5:                                                ; preds = %1
  ret ptr %2, !dbg !3932
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3933 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %0, metadata !3905, metadata !DIExpression()), !dbg !3939
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3941
  call void @llvm.dbg.value(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !3942
  %3 = icmp eq ptr %2, null, !dbg !3944
  br i1 %3, label %4, label %5, !dbg !3945

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3946
  unreachable, !dbg !3946

5:                                                ; preds = %1
  ret ptr %2, !dbg !3947
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3952, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %1, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %1, metadata !3959, metadata !DIExpression()), !dbg !3960
  %3 = icmp eq i64 %1, 0, !dbg !3962
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3962
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3963
  call void @llvm.dbg.value(metadata ptr %5, metadata !3883, metadata !DIExpression()), !dbg !3964
  %6 = icmp eq ptr %5, null, !dbg !3966
  br i1 %6, label %7, label %8, !dbg !3967

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3968
  unreachable, !dbg !3968

8:                                                ; preds = %2
  ret ptr %5, !dbg !3969
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3970 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3971 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3975, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i64 %1, metadata !3976, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr %0, metadata !3978, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %1, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %1, metadata !3959, metadata !DIExpression()), !dbg !3984
  %3 = icmp eq i64 %1, 0, !dbg !3986
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3986
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3987
  call void @llvm.dbg.value(metadata ptr %5, metadata !3883, metadata !DIExpression()), !dbg !3988
  %6 = icmp eq ptr %5, null, !dbg !3990
  br i1 %6, label %7, label %8, !dbg !3991

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3992
  unreachable, !dbg !3992

8:                                                ; preds = %2
  ret ptr %5, !dbg !3993
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3994 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %1, metadata !3999, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %2, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %0, metadata !4002, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %2, metadata !4006, metadata !DIExpression()), !dbg !4007
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4009
  call void @llvm.dbg.value(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !4010
  %5 = icmp eq ptr %4, null, !dbg !4012
  br i1 %5, label %6, label %7, !dbg !4013

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4014
  unreachable, !dbg !4014

7:                                                ; preds = %3
  ret ptr %4, !dbg !4015
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4016 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4020, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i64 %1, metadata !4021, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr null, metadata !3875, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %0, metadata !3878, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !4023
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4025
  call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !4026
  %4 = icmp eq ptr %3, null, !dbg !4028
  br i1 %4, label %5, label %6, !dbg !4029

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4030
  unreachable, !dbg !4030

6:                                                ; preds = %2
  ret ptr %3, !dbg !4031
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4032 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %1, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata ptr null, metadata !3998, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %0, metadata !3999, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr null, metadata !4002, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %0, metadata !4005, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %1, metadata !4006, metadata !DIExpression()), !dbg !4041
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4043
  call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !4044
  %4 = icmp eq ptr %3, null, !dbg !4046
  br i1 %4, label %5, label %6, !dbg !4047

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4048
  unreachable, !dbg !4048

6:                                                ; preds = %2
  ret ptr %3, !dbg !4049
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4050 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4054, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr %1, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr %0, metadata !819, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %1, metadata !820, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 1, metadata !821, metadata !DIExpression()), !dbg !4057
  %3 = load i64, ptr %1, align 8, !dbg !4059, !tbaa !2900
  call void @llvm.dbg.value(metadata i64 %3, metadata !822, metadata !DIExpression()), !dbg !4057
  %4 = icmp eq ptr %0, null, !dbg !4060
  br i1 %4, label %5, label %8, !dbg !4062

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4063
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4066
  br label %15, !dbg !4066

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4067
  %10 = add nuw i64 %9, 1, !dbg !4067
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4067
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4067
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %13, metadata !822, metadata !DIExpression()), !dbg !4057
  br i1 %12, label %14, label %15, !dbg !4070

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4071
  unreachable, !dbg !4071

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4057
  call void @llvm.dbg.value(metadata i64 %16, metadata !822, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %0, metadata !3875, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i64 %16, metadata !3878, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i64 1, metadata !3879, metadata !DIExpression()), !dbg !4072
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4074
  call void @llvm.dbg.value(metadata ptr %17, metadata !3883, metadata !DIExpression()), !dbg !4075
  %18 = icmp eq ptr %17, null, !dbg !4077
  br i1 %18, label %19, label %20, !dbg !4078

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4079
  unreachable, !dbg !4079

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !819, metadata !DIExpression()), !dbg !4057
  store i64 %16, ptr %1, align 8, !dbg !4080, !tbaa !2900
  ret ptr %17, !dbg !4081
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !819, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %1, metadata !820, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %2, metadata !821, metadata !DIExpression()), !dbg !4082
  %4 = load i64, ptr %1, align 8, !dbg !4083, !tbaa !2900
  call void @llvm.dbg.value(metadata i64 %4, metadata !822, metadata !DIExpression()), !dbg !4082
  %5 = icmp eq ptr %0, null, !dbg !4084
  br i1 %5, label %6, label %13, !dbg !4085

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4086
  br i1 %7, label %8, label %20, !dbg !4087

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %9, metadata !822, metadata !DIExpression()), !dbg !4082
  %10 = icmp ugt i64 %2, 128, !dbg !4090
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4091
  call void @llvm.dbg.value(metadata i64 %12, metadata !822, metadata !DIExpression()), !dbg !4082
  br label %20, !dbg !4092

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4093
  %15 = add nuw i64 %14, 1, !dbg !4093
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4093
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4093
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %18, metadata !822, metadata !DIExpression()), !dbg !4082
  br i1 %17, label %19, label %20, !dbg !4094

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4095
  unreachable, !dbg !4095

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4082
  call void @llvm.dbg.value(metadata i64 %21, metadata !822, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %0, metadata !3875, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %21, metadata !3878, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %2, metadata !3879, metadata !DIExpression()), !dbg !4096
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4098
  call void @llvm.dbg.value(metadata ptr %22, metadata !3883, metadata !DIExpression()), !dbg !4099
  %23 = icmp eq ptr %22, null, !dbg !4101
  br i1 %23, label %24, label %25, !dbg !4102

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4103
  unreachable, !dbg !4103

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !819, metadata !DIExpression()), !dbg !4082
  store i64 %21, ptr %1, align 8, !dbg !4104, !tbaa !2900
  ret ptr %22, !dbg !4105
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !826 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !834, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata ptr %1, metadata !835, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 %2, metadata !836, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 %3, metadata !837, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 %4, metadata !838, metadata !DIExpression()), !dbg !4106
  %6 = load i64, ptr %1, align 8, !dbg !4107, !tbaa !2900
  call void @llvm.dbg.value(metadata i64 %6, metadata !839, metadata !DIExpression()), !dbg !4106
  %7 = ashr i64 %6, 1, !dbg !4108
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4108
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4108
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4108
  call void @llvm.dbg.value(metadata i64 %10, metadata !840, metadata !DIExpression()), !dbg !4106
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4110
  call void @llvm.dbg.value(metadata i64 %11, metadata !840, metadata !DIExpression()), !dbg !4106
  %12 = icmp sgt i64 %3, -1, !dbg !4111
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4113
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %15, metadata !840, metadata !DIExpression()), !dbg !4106
  %16 = icmp slt i64 %4, 0, !dbg !4114
  br i1 %16, label %17, label %30, !dbg !4114

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4114
  br i1 %18, label %19, label %24, !dbg !4114

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4114
  %21 = udiv i64 9223372036854775807, %20, !dbg !4114
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4114
  br i1 %23, label %46, label %43, !dbg !4114

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4114
  br i1 %25, label %43, label %26, !dbg !4114

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4114
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4114
  %29 = icmp ult i64 %28, %15, !dbg !4114
  br i1 %29, label %46, label %43, !dbg !4114

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4114
  br i1 %31, label %43, label %32, !dbg !4114

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4114
  br i1 %33, label %34, label %40, !dbg !4114

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4114
  br i1 %35, label %43, label %36, !dbg !4114

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4114
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4114
  %39 = icmp ult i64 %38, %4, !dbg !4114
  br i1 %39, label %46, label %43, !dbg !4114

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4114
  br i1 %42, label %46, label %43, !dbg !4114

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !841, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4106
  %44 = mul i64 %15, %4, !dbg !4114
  call void @llvm.dbg.value(metadata i64 %44, metadata !841, metadata !DIExpression()), !dbg !4106
  %45 = icmp slt i64 %44, 128, !dbg !4114
  br i1 %45, label %46, label %52, !dbg !4114

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !842, metadata !DIExpression()), !dbg !4106
  %48 = sdiv i64 %47, %4, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %48, metadata !840, metadata !DIExpression()), !dbg !4106
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4118
  call void @llvm.dbg.value(metadata i64 %51, metadata !841, metadata !DIExpression()), !dbg !4106
  br label %52, !dbg !4119

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4106
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4106
  call void @llvm.dbg.value(metadata i64 %54, metadata !841, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 %53, metadata !840, metadata !DIExpression()), !dbg !4106
  %55 = icmp eq ptr %0, null, !dbg !4120
  br i1 %55, label %56, label %57, !dbg !4122

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4123, !tbaa !2900
  br label %57, !dbg !4124

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4125
  %59 = icmp slt i64 %58, %2, !dbg !4127
  br i1 %59, label %60, label %97, !dbg !4128

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4129
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4129
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4129
  call void @llvm.dbg.value(metadata i64 %63, metadata !840, metadata !DIExpression()), !dbg !4106
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4130
  br i1 %66, label %96, label %67, !dbg !4130

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4131

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4131
  br i1 %69, label %70, label %75, !dbg !4131

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4131
  %72 = udiv i64 9223372036854775807, %71, !dbg !4131
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4131
  br i1 %74, label %96, label %94, !dbg !4131

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4131
  br i1 %76, label %94, label %77, !dbg !4131

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4131
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4131
  %80 = icmp ult i64 %79, %63, !dbg !4131
  br i1 %80, label %96, label %94, !dbg !4131

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4131
  br i1 %82, label %94, label %83, !dbg !4131

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4131
  br i1 %84, label %85, label %91, !dbg !4131

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4131
  br i1 %86, label %94, label %87, !dbg !4131

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4131
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4131
  %90 = icmp ult i64 %89, %4, !dbg !4131
  br i1 %90, label %96, label %94, !dbg !4131

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4131
  br i1 %93, label %96, label %94, !dbg !4131

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !841, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4106
  %95 = mul i64 %63, %4, !dbg !4131
  call void @llvm.dbg.value(metadata i64 %95, metadata !841, metadata !DIExpression()), !dbg !4106
  br label %97, !dbg !4132

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !4133
  unreachable, !dbg !4133

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4106
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4106
  call void @llvm.dbg.value(metadata i64 %99, metadata !841, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 %98, metadata !840, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata ptr %0, metadata !3952, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %99, metadata !3953, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 %99, metadata !3959, metadata !DIExpression()), !dbg !4136
  %100 = icmp eq i64 %99, 0, !dbg !4138
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4138
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !4139
  call void @llvm.dbg.value(metadata ptr %102, metadata !3883, metadata !DIExpression()), !dbg !4140
  %103 = icmp eq ptr %102, null, !dbg !4142
  br i1 %103, label %104, label %105, !dbg !4143

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !4144
  unreachable, !dbg !4144

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !834, metadata !DIExpression()), !dbg !4106
  store i64 %98, ptr %1, align 8, !dbg !4145, !tbaa !2900
  ret ptr %102, !dbg !4146
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4147 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4149, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i64 %0, metadata !4151, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 1, metadata !4154, metadata !DIExpression()), !dbg !4155
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4157
  call void @llvm.dbg.value(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !4158
  %3 = icmp eq ptr %2, null, !dbg !4160
  br i1 %3, label %4, label %5, !dbg !4161

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4162
  unreachable, !dbg !4162

5:                                                ; preds = %1
  ret ptr %2, !dbg !4163
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4164 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4151, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 %1, metadata !4154, metadata !DIExpression()), !dbg !4165
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4166
  call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !4167
  %4 = icmp eq ptr %3, null, !dbg !4169
  br i1 %4, label %5, label %6, !dbg !4170

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4171
  unreachable, !dbg !4171

6:                                                ; preds = %2
  ret ptr %3, !dbg !4172
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4173 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4175, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %0, metadata !4177, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i64 1, metadata !4180, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 1, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 1, metadata !4186, metadata !DIExpression()), !dbg !4187
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !4190
  %3 = icmp eq ptr %2, null, !dbg !4192
  br i1 %3, label %4, label %5, !dbg !4193

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4194
  unreachable, !dbg !4194

5:                                                ; preds = %1
  ret ptr %2, !dbg !4195
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4178 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4177, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %1, metadata !4180, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %1, metadata !4186, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %1, metadata !4186, metadata !DIExpression()), !dbg !4197
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4199
  call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !4200
  %4 = icmp eq ptr %3, null, !dbg !4202
  br i1 %4, label %5, label %6, !dbg !4203

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4204
  unreachable, !dbg !4204

6:                                                ; preds = %2
  ret ptr %3, !dbg !4205
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4206 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3905, metadata !DIExpression()), !dbg !4213
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4215
  call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !4216
  %4 = icmp eq ptr %3, null, !dbg !4218
  br i1 %4, label %5, label %6, !dbg !4219

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4220
  unreachable, !dbg !4220

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata ptr %0, metadata !4224, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4228
  ret ptr %3, !dbg !4229
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4230 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4234, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i64 %1, metadata !4235, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i64 %1, metadata !3918, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %1, metadata !3920, metadata !DIExpression()), !dbg !4239
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4241
  call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !4242
  %4 = icmp eq ptr %3, null, !dbg !4244
  br i1 %4, label %5, label %6, !dbg !4245

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4246
  unreachable, !dbg !4246

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %0, metadata !4224, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4247
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4249
  ret ptr %3, !dbg !4250
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4255, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()), !dbg !4258
  %3 = add nsw i64 %1, 1, !dbg !4259
  call void @llvm.dbg.value(metadata i64 %3, metadata !3918, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata i64 %3, metadata !3920, metadata !DIExpression()), !dbg !4262
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4264
  call void @llvm.dbg.value(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !4265
  %5 = icmp eq ptr %4, null, !dbg !4267
  br i1 %5, label %6, label %7, !dbg !4268

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4269
  unreachable, !dbg !4269

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4257, metadata !DIExpression()), !dbg !4258
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4270
  store i8 0, ptr %8, align 1, !dbg !4271, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata ptr %0, metadata !4224, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4274
  ret ptr %4, !dbg !4275
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4276 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4279
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4280
  %3 = add i64 %2, 1, !dbg !4281
  call void @llvm.dbg.value(metadata ptr %0, metadata !4210, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %3, metadata !4211, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %3, metadata !3905, metadata !DIExpression()), !dbg !4284
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4286
  call void @llvm.dbg.value(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !4287
  %5 = icmp eq ptr %4, null, !dbg !4289
  br i1 %5, label %6, label %7, !dbg !4290

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4291
  unreachable, !dbg !4291

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr %0, metadata !4224, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i64 %3, metadata !4225, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4294
  ret ptr %4, !dbg !4295
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4296 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4301, !tbaa !942
  call void @llvm.dbg.value(metadata i32 %1, metadata !4298, metadata !DIExpression()), !dbg !4302
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #39, !dbg !4301
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #39, !dbg !4301
  %3 = icmp eq i32 %1, 0, !dbg !4301
  tail call void @llvm.assume(i1 %3), !dbg !4301
  tail call void @abort() #41, !dbg !4303
  unreachable, !dbg !4303
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4304 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4309, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %1, metadata !4310, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %2, metadata !4311, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %3, metadata !4312, metadata !DIExpression()), !dbg !4314
  %5 = icmp eq ptr %1, null, !dbg !4315
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4317
  %7 = select i1 %5, ptr @.str.145, ptr %1, !dbg !4317
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %8, metadata !4311, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %7, metadata !4310, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %6, metadata !4309, metadata !DIExpression()), !dbg !4314
  %9 = icmp eq ptr %3, null, !dbg !4318
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4320
  call void @llvm.dbg.value(metadata ptr %10, metadata !4312, metadata !DIExpression()), !dbg !4314
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4321
  call void @llvm.dbg.value(metadata i64 %11, metadata !4313, metadata !DIExpression()), !dbg !4314
  %12 = icmp ult i64 %11, -3, !dbg !4322
  br i1 %12, label %13, label %17, !dbg !4324

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4325
  %15 = icmp eq i32 %14, 0, !dbg !4325
  br i1 %15, label %16, label %29, !dbg !4326

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4327, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata ptr %10, metadata !4334, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 0, metadata !4337, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 8, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i64 0, ptr %10, align 1, !dbg !4341
  br label %29, !dbg !4342

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4343
  br i1 %18, label %19, label %20, !dbg !4345

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4346
  unreachable, !dbg !4346

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4347

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4349
  br i1 %23, label %29, label %24, !dbg !4350

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4351
  br i1 %25, label %29, label %26, !dbg !4354

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4355, !tbaa !951
  %28 = zext i8 %27 to i32, !dbg !4356
  store i32 %28, ptr %6, align 4, !dbg !4357, !tbaa !942
  br label %29, !dbg !4358

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4314
  ret i64 %30, !dbg !4359
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4360 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4366 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4368, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %1, metadata !4369, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %2, metadata !4370, metadata !DIExpression()), !dbg !4372
  %4 = icmp eq i64 %2, 0, !dbg !4373
  br i1 %4, label %8, label %5, !dbg !4373

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4373
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4373
  br i1 %7, label %13, label %8, !dbg !4373

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4372
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4372
  %9 = mul i64 %2, %1, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %9, metadata !4371, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata ptr %0, metadata !4375, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i64 %9, metadata !4378, metadata !DIExpression()), !dbg !4379
  %10 = icmp eq i64 %9, 0, !dbg !4381
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4381
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4382
  br label %15, !dbg !4383

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4372
  %14 = tail call ptr @__errno_location() #42, !dbg !4384
  store i32 12, ptr %14, align 4, !dbg !4386, !tbaa !942
  br label %15, !dbg !4387

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4372
  ret ptr %16, !dbg !4388
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4389 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4393, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4394, metadata !DIExpression()), !dbg !4400
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4401
  %4 = icmp eq i32 %3, 0, !dbg !4401
  br i1 %4, label %5, label %12, !dbg !4403

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4404, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata ptr @.str.150, metadata !4407, metadata !DIExpression()), !dbg !4408
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.150, i64 2), !dbg !4411
  %7 = icmp eq i32 %6, 0, !dbg !4412
  br i1 %7, label %11, label %8, !dbg !4413

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4404, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata ptr @.str.1.151, metadata !4407, metadata !DIExpression()), !dbg !4414
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.151, i64 6), !dbg !4416
  %10 = icmp eq i32 %9, 0, !dbg !4417
  br i1 %10, label %11, label %12, !dbg !4418

11:                                               ; preds = %8, %5
  br label %12, !dbg !4419

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4398
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4420
  ret i1 %13, !dbg !4420
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4425, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata ptr %1, metadata !4426, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %2, metadata !4427, metadata !DIExpression()), !dbg !4428
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4429
  ret i32 %4, !dbg !4430
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4435, metadata !DIExpression()), !dbg !4436
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4437
  ret ptr %2, !dbg !4438
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4441, metadata !DIExpression()), !dbg !4443
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4444
  call void @llvm.dbg.value(metadata ptr %2, metadata !4442, metadata !DIExpression()), !dbg !4443
  ret ptr %2, !dbg !4445
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4446 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4448, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata ptr %1, metadata !4449, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %2, metadata !4450, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i32 %0, metadata !4441, metadata !DIExpression()), !dbg !4456
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %4, metadata !4442, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4455
  %5 = icmp eq ptr %4, null, !dbg !4459
  br i1 %5, label %6, label %9, !dbg !4460

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4461
  br i1 %7, label %19, label %8, !dbg !4464

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4465, !tbaa !951
  br label %19, !dbg !4466

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4467
  call void @llvm.dbg.value(metadata i64 %10, metadata !4452, metadata !DIExpression()), !dbg !4468
  %11 = icmp ult i64 %10, %2, !dbg !4469
  br i1 %11, label %12, label %14, !dbg !4471

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4472
  call void @llvm.dbg.value(metadata ptr %1, metadata !4474, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata ptr %4, metadata !4477, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %13, metadata !4478, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4481
  br label %19, !dbg !4482

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4483
  br i1 %15, label %19, label %16, !dbg !4486

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4487
  call void @llvm.dbg.value(metadata ptr %1, metadata !4474, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata ptr %4, metadata !4477, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 %17, metadata !4478, metadata !DIExpression()), !dbg !4489
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4491
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4492
  store i8 0, ptr %18, align 1, !dbg !4493, !tbaa !951
  br label %19, !dbg !4494

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4495
  ret i32 %20, !dbg !4496
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
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !418, !787, !789, !422, !437, !753, !791, !793, !796, !798, !800, !802, !494, !508, !556, !650, !804, !745, !810, !844, !769, !846, !849, !851, !853}
!llvm.ident = !{!855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855, !855}
!llvm.module.flags = !{!856, !857, !858, !859, !860, !861, !862}

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
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !121, globals: !131, splitDebugInlining: false, nameTableKind: None)
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
!436 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !437, file: !438, line: 66, type: !489, isLocal: false, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !439, globals: !440, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!439 = !{!123, !130}
!440 = !{!441, !443, !468, !470, !472, !474, !435, !476, !478, !480, !482, !487}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !438, line: 272, type: !171, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "old_file_name", scope: !445, file: !438, line: 304, type: !128, isLocal: true, isDefinition: true)
!445 = distinct !DISubprogram(name: "verror_at_line", scope: !438, file: !438, line: 298, type: !446, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !461)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !102, !102, !128, !97, !128, !448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !449, line: 52, baseType: !450)
!449 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !451, line: 14, baseType: !452)
!451 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !453, baseType: !454)
!453 = !DIFile(filename: "lib/error.c", directory: "/src")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !455)
!455 = !{!456, !457, !458, !459, !460}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !454, file: !453, baseType: !123, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !454, file: !453, baseType: !123, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !454, file: !453, baseType: !123, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !454, file: !453, baseType: !102, size: 32, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !454, file: !453, baseType: !102, size: 32, offset: 224)
!461 = !{!462, !463, !464, !465, !466, !467}
!462 = !DILocalVariable(name: "status", arg: 1, scope: !445, file: !438, line: 298, type: !102)
!463 = !DILocalVariable(name: "errnum", arg: 2, scope: !445, file: !438, line: 298, type: !102)
!464 = !DILocalVariable(name: "file_name", arg: 3, scope: !445, file: !438, line: 298, type: !128)
!465 = !DILocalVariable(name: "line_number", arg: 4, scope: !445, file: !438, line: 298, type: !97)
!466 = !DILocalVariable(name: "message", arg: 5, scope: !445, file: !438, line: 298, type: !128)
!467 = !DILocalVariable(name: "args", arg: 6, scope: !445, file: !438, line: 298, type: !448)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "old_line_number", scope: !445, file: !438, line: 305, type: !97, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !438, line: 338, type: !290, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !89, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !24, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "error_message_count", scope: !437, file: !438, line: 69, type: !97, isLocal: false, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !437, file: !438, line: 295, type: !102, isLocal: false, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !29, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !484, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 21)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !438, line: 214, type: !171, isLocal: true, isDefinition: true)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "program_name", scope: !494, file: !495, line: 31, type: !128, isLocal: false, isDefinition: true)
!494 = distinct !DICompileUnit(language: DW_LANG_C11, file: !495, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !496, globals: !497, splitDebugInlining: false, nameTableKind: None)
!495 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!496 = !{!122}
!497 = !{!492, !498, !500}
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !495, line: 46, type: !89, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !495, line: 49, type: !290, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "utf07FF", scope: !504, file: !505, line: 46, type: !532, isLocal: true, isDefinition: true)
!504 = distinct !DISubprogram(name: "proper_name_lite", scope: !505, file: !505, line: 38, type: !506, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !510)
!505 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!506 = !DISubroutineType(types: !507)
!507 = !{!128, !128, !128}
!508 = distinct !DICompileUnit(language: DW_LANG_C11, file: !505, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !509, splitDebugInlining: false, nameTableKind: None)
!509 = !{!502}
!510 = !{!511, !512, !513, !514, !519}
!511 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !504, file: !505, line: 38, type: !128)
!512 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !504, file: !505, line: 38, type: !128)
!513 = !DILocalVariable(name: "translation", scope: !504, file: !505, line: 40, type: !128)
!514 = !DILocalVariable(name: "w", scope: !504, file: !505, line: 47, type: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !516, line: 37, baseType: !517)
!516 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !253, line: 57, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !253, line: 42, baseType: !97)
!519 = !DILocalVariable(name: "mbs", scope: !504, file: !505, line: 48, type: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !521, line: 6, baseType: !522)
!521 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !523, line: 21, baseType: !524)
!523 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 13, size: 64, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !524, file: !523, line: 15, baseType: !102, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !524, file: !523, line: 20, baseType: !528, size: 32, offset: 32)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !524, file: !523, line: 16, size: 32, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !528, file: !523, line: 18, baseType: !97, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !528, file: !523, line: 19, baseType: !290, size: 32)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16, elements: !25)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !535, line: 78, type: !89, isLocal: true, isDefinition: true)
!535 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !535, line: 79, type: !295, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !535, line: 80, type: !139, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !535, line: 81, type: !139, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !535, line: 82, type: !275, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !535, line: 83, type: !24, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !535, line: 84, type: !89, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !535, line: 85, type: !29, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !535, line: 86, type: !29, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !535, line: 87, type: !89, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !556, file: !535, line: 76, type: !642, isLocal: false, isDefinition: true)
!556 = distinct !DICompileUnit(language: DW_LANG_C11, file: !535, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !577, globals: !578, splitDebugInlining: false, nameTableKind: None)
!557 = !{!558, !572, !106}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !559, line: 42, baseType: !97, size: 32, elements: !560)
!559 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!561 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!562 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!563 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!564 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!565 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!566 = !DIEnumerator(name: "c_quoting_style", value: 5)
!567 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!568 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!569 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!570 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!571 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !559, line: 254, baseType: !97, size: 32, elements: !573)
!573 = !{!574, !575, !576}
!574 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!575 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!576 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!577 = !{!102, !124, !125}
!578 = !{!533, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !579, !583, !593, !595, !600, !602, !604, !606, !608, !631, !638, !640}
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !556, file: !535, line: 92, type: !581, isLocal: false, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 320, elements: !80)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !556, file: !535, line: 1040, type: !585, isLocal: false, isDefinition: true)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !535, line: 56, size: 448, elements: !586)
!586 = !{!587, !588, !589, !591, !592}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !585, file: !535, line: 59, baseType: !558, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !535, line: 62, baseType: !102, size: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !585, file: !535, line: 66, baseType: !590, size: 256, offset: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !90)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !585, file: !535, line: 69, baseType: !128, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !585, file: !535, line: 72, baseType: !128, size: 64, offset: 384)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !556, file: !535, line: 107, type: !585, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "slot0", scope: !556, file: !535, line: 831, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 256)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !535, line: 321, type: !24, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !535, line: 357, type: !24, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !535, line: 358, type: !24, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !535, line: 199, type: !29, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "quote", scope: !610, file: !535, line: 228, type: !629, isLocal: true, isDefinition: true)
!610 = distinct !DISubprogram(name: "gettext_quote", scope: !535, file: !535, line: 197, type: !611, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!128, !128, !558}
!613 = !{!614, !615, !616, !617, !618}
!614 = !DILocalVariable(name: "msgid", arg: 1, scope: !610, file: !535, line: 197, type: !128)
!615 = !DILocalVariable(name: "s", arg: 2, scope: !610, file: !535, line: 197, type: !558)
!616 = !DILocalVariable(name: "translation", scope: !610, file: !535, line: 199, type: !128)
!617 = !DILocalVariable(name: "w", scope: !610, file: !535, line: 229, type: !515)
!618 = !DILocalVariable(name: "mbs", scope: !610, file: !535, line: 230, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !521, line: 6, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !523, line: 21, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 13, size: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !621, file: !523, line: 15, baseType: !102, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !621, file: !523, line: 20, baseType: !625, size: 32, offset: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !523, line: 16, size: 32, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !625, file: !523, line: 18, baseType: !97, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !625, file: !523, line: 19, baseType: !290, size: 32)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !630)
!630 = !{!26, !292}
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "slotvec", scope: !556, file: !535, line: 834, type: !633, isLocal: true, isDefinition: true)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !535, line: 823, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !634, file: !535, line: 825, baseType: !125, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !634, file: !535, line: 826, baseType: !122, size: 64, offset: 64)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "nslots", scope: !556, file: !535, line: 832, type: !102, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "slotvec0", scope: !556, file: !535, line: 833, type: !634, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 704, elements: !145)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "tryfunc", scope: !646, file: !647, line: 175, type: !665, isLocal: true, isDefinition: true)
!646 = distinct !DISubprogram(name: "gen_tempname_len", scope: !647, file: !647, line: 172, type: !648, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !659)
!647 = !DIFile(filename: "lib/tempname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "89467f8095ceec51ae791cc96ec80d48")
!648 = !DISubroutineType(types: !649)
!649 = !{!102, !122, !102, !102, !102, !125}
!650 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !651, splitDebugInlining: false, nameTableKind: None)
!651 = !{!644, !652, !654}
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !647, line: 226, type: !24, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "letters", scope: !650, file: !647, line: 151, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 504, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 63)
!659 = !{!660, !661, !662, !663, !664}
!660 = !DILocalVariable(name: "tmpl", arg: 1, scope: !646, file: !647, line: 172, type: !122)
!661 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !646, file: !647, line: 172, type: !102)
!662 = !DILocalVariable(name: "flags", arg: 3, scope: !646, file: !647, line: 172, type: !102)
!663 = !DILocalVariable(name: "kind", arg: 4, scope: !646, file: !647, line: 172, type: !102)
!664 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !646, file: !647, line: 173, type: !125)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 192, elements: !307)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!102, !122, !123}
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !672, line: 67, type: !196, isLocal: true, isDefinition: true)
!672 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !672, line: 69, type: !29, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !672, line: 83, type: !29, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !672, line: 83, type: !290, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !672, line: 85, type: !24, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !672, line: 88, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 171)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !672, line: 88, type: !9, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !672, line: 105, type: !361, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !672, line: 109, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 23)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !672, line: 113, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 28)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !672, line: 120, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 32)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !672, line: 127, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 36)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !672, line: 134, type: !338, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !672, line: 142, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 44)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !672, line: 150, type: !159, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !672, line: 159, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 52)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !672, line: 170, type: !181, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !672, line: 248, type: !275, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !672, line: 248, type: !366, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !275, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !134, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !338, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !672, line: 259, type: !3, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !672, line: 259, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 29)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !745, file: !746, line: 26, type: !748, isLocal: false, isDefinition: true)
!745 = distinct !DICompileUnit(language: DW_LANG_C11, file: !746, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !747, splitDebugInlining: false, nameTableKind: None)
!746 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!747 = !{!743}
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 376, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 47)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "exit_failure", scope: !753, file: !754, line: 24, type: !756, isLocal: false, isDefinition: true)
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!755 = !{!751}
!756 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !759, line: 34, type: !306, isLocal: true, isDefinition: true)
!759 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !759, line: 34, type: !29, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !759, line: 34, type: !333, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !766, line: 108, type: !74, isLocal: true, isDefinition: true)
!766 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "internal_state", scope: !769, file: !766, line: 97, type: !772, isLocal: true, isDefinition: true)
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !770, globals: !771, splitDebugInlining: false, nameTableKind: None)
!770 = !{!123, !125, !130}
!771 = !{!764, !767}
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !521, line: 6, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !523, line: 21, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 13, size: 64, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !774, file: !523, line: 15, baseType: !102, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !774, file: !523, line: 20, baseType: !778, size: 32, offset: 32)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !523, line: 16, size: 32, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !778, file: !523, line: 18, baseType: !97, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !778, file: !523, line: 19, baseType: !290, size: 32)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !784, line: 35, type: !24, isLocal: true, isDefinition: true)
!784 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !784, line: 35, type: !295, isLocal: true, isDefinition: true)
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !496, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!795 = !{!123}
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !799, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!799 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !803, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!803 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !805, retainedTypes: !795, globals: !809, splitDebugInlining: false, nameTableKind: None)
!805 = !{!806}
!806 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !672, line: 40, baseType: !97, size: 32, elements: !807)
!807 = !{!808}
!808 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!809 = !{!670, !673, !675, !677, !679, !681, !686, !688, !690, !695, !700, !705, !710, !712, !717, !719, !724, !726, !728, !730, !732, !734, !736, !738}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !812, retainedTypes: !843, splitDebugInlining: false, nameTableKind: None)
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
!826 = distinct !DISubprogram(name: "xpalloc", scope: !811, file: !811, line: 223, type: !827, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !833)
!827 = !DISubroutineType(types: !828)
!828 = !{!123, !123, !829, !830, !832, !830}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !831, line: 130, baseType: !832)
!831 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !126, line: 35, baseType: !254)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842}
!834 = !DILocalVariable(name: "pa", arg: 1, scope: !826, file: !811, line: 223, type: !123)
!835 = !DILocalVariable(name: "pn", arg: 2, scope: !826, file: !811, line: 223, type: !829)
!836 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !826, file: !811, line: 223, type: !830)
!837 = !DILocalVariable(name: "n_max", arg: 4, scope: !826, file: !811, line: 223, type: !832)
!838 = !DILocalVariable(name: "s", arg: 5, scope: !826, file: !811, line: 223, type: !830)
!839 = !DILocalVariable(name: "n0", scope: !826, file: !811, line: 230, type: !830)
!840 = !DILocalVariable(name: "n", scope: !826, file: !811, line: 237, type: !830)
!841 = !DILocalVariable(name: "nbytes", scope: !826, file: !811, line: 248, type: !830)
!842 = !DILocalVariable(name: "adjusted_nbytes", scope: !826, file: !811, line: 252, type: !830)
!843 = !{!122, !123, !201, !254, !127}
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !845, splitDebugInlining: false, nameTableKind: None)
!845 = !{!757, !760, !762}
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!848 = !{!201, !127, !123}
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !850, splitDebugInlining: false, nameTableKind: None)
!850 = !{!782, !785}
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!855 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!856 = !{i32 7, !"Dwarf Version", i32 5}
!857 = !{i32 2, !"Debug Info Version", i32 3}
!858 = !{i32 1, !"wchar_size", i32 4}
!859 = !{i32 8, !"PIC Level", i32 2}
!860 = !{i32 7, !"PIE Level", i32 2}
!861 = !{i32 7, !"uwtable", i32 2}
!862 = !{i32 7, !"frame-pointer", i32 1}
!863 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 59, type: !864, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !102}
!866 = !{!867}
!867 = !DILocalVariable(name: "status", arg: 1, scope: !863, file: !2, line: 59, type: !102)
!868 = !DILocation(line: 0, scope: !863)
!869 = !DILocation(line: 61, column: 14, scope: !870)
!870 = distinct !DILexicalBlock(scope: !863, file: !2, line: 61, column: 7)
!871 = !DILocation(line: 61, column: 7, scope: !863)
!872 = !DILocation(line: 62, column: 5, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !2, line: 62, column: 5)
!874 = !{!875, !875, i64 0}
!875 = !{!"any pointer", !876, i64 0}
!876 = !{!"omnipotent char", !877, i64 0}
!877 = !{!"Simple C/C++ TBAA"}
!878 = !DILocation(line: 65, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !870, file: !2, line: 64, column: 5)
!880 = !DILocation(line: 66, column: 7, scope: !879)
!881 = !DILocation(line: 71, column: 7, scope: !879)
!882 = !DILocation(line: 74, column: 7, scope: !879)
!883 = !DILocation(line: 75, column: 7, scope: !879)
!884 = !DILocation(line: 79, column: 7, scope: !879)
!885 = !DILocation(line: 83, column: 7, scope: !879)
!886 = !DILocation(line: 87, column: 7, scope: !879)
!887 = !DILocation(line: 92, column: 7, scope: !879)
!888 = !DILocation(line: 100, column: 7, scope: !879)
!889 = !DILocation(line: 106, column: 7, scope: !879)
!890 = !DILocation(line: 107, column: 7, scope: !879)
!891 = !DILocalVariable(name: "program", arg: 1, scope: !892, file: !101, line: 836, type: !128)
!892 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !101, file: !101, line: 836, type: !893, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !128}
!895 = !{!891, !896, !903, !904, !906, !907}
!896 = !DILocalVariable(name: "infomap", scope: !892, file: !101, line: 838, type: !897)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 896, elements: !30)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !892, file: !101, line: 838, size: 128, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !899, file: !101, line: 838, baseType: !128, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !899, file: !101, line: 838, baseType: !128, size: 64, offset: 64)
!903 = !DILocalVariable(name: "node", scope: !892, file: !101, line: 848, type: !128)
!904 = !DILocalVariable(name: "map_prog", scope: !892, file: !101, line: 849, type: !905)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!906 = !DILocalVariable(name: "lc_messages", scope: !892, file: !101, line: 861, type: !128)
!907 = !DILocalVariable(name: "url_program", scope: !892, file: !101, line: 874, type: !128)
!908 = !DILocation(line: 0, scope: !892, inlinedAt: !909)
!909 = distinct !DILocation(line: 108, column: 7, scope: !879)
!910 = !DILocation(line: 857, column: 3, scope: !892, inlinedAt: !909)
!911 = !DILocation(line: 861, column: 29, scope: !892, inlinedAt: !909)
!912 = !DILocation(line: 862, column: 7, scope: !913, inlinedAt: !909)
!913 = distinct !DILexicalBlock(scope: !892, file: !101, line: 862, column: 7)
!914 = !DILocation(line: 862, column: 19, scope: !913, inlinedAt: !909)
!915 = !DILocation(line: 862, column: 22, scope: !913, inlinedAt: !909)
!916 = !DILocation(line: 862, column: 7, scope: !892, inlinedAt: !909)
!917 = !DILocation(line: 868, column: 7, scope: !918, inlinedAt: !909)
!918 = distinct !DILexicalBlock(scope: !913, file: !101, line: 863, column: 5)
!919 = !DILocation(line: 870, column: 5, scope: !918, inlinedAt: !909)
!920 = !DILocation(line: 875, column: 3, scope: !892, inlinedAt: !909)
!921 = !DILocation(line: 877, column: 3, scope: !892, inlinedAt: !909)
!922 = !DILocation(line: 111, column: 3, scope: !863)
!923 = !DISubprogram(name: "dcgettext", scope: !924, file: !924, line: 51, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!924 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!925 = !DISubroutineType(types: !926)
!926 = !{!122, !128, !128, !102}
!927 = !{}
!928 = !DISubprogram(name: "__fprintf_chk", scope: !929, file: !929, line: 93, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!929 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!930 = !DISubroutineType(types: !931)
!931 = !{!102, !932, !102, !933, null}
!932 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!934 = !DISubprogram(name: "__printf_chk", scope: !929, file: !929, line: 95, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!935 = !DISubroutineType(types: !936)
!936 = !{!102, !102, !933, null}
!937 = !DISubprogram(name: "fputs_unlocked", scope: !449, file: !449, line: 691, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!938 = !DISubroutineType(types: !939)
!939 = !{!102, !933, !932}
!940 = !DILocation(line: 0, scope: !204)
!941 = !DILocation(line: 581, column: 7, scope: !212)
!942 = !{!943, !943, i64 0}
!943 = !{!"int", !876, i64 0}
!944 = !DILocation(line: 581, column: 19, scope: !212)
!945 = !DILocation(line: 581, column: 7, scope: !204)
!946 = !DILocation(line: 585, column: 26, scope: !211)
!947 = !DILocation(line: 0, scope: !211)
!948 = !DILocation(line: 586, column: 23, scope: !211)
!949 = !DILocation(line: 586, column: 28, scope: !211)
!950 = !DILocation(line: 586, column: 32, scope: !211)
!951 = !{!876, !876, i64 0}
!952 = !DILocation(line: 586, column: 38, scope: !211)
!953 = !DILocalVariable(name: "__s1", arg: 1, scope: !954, file: !955, line: 1359, type: !128)
!954 = distinct !DISubprogram(name: "streq", scope: !955, file: !955, line: 1359, type: !956, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !958)
!955 = !DIFile(filename: "./lib/string.h", directory: "/src")
!956 = !DISubroutineType(types: !957)
!957 = !{!201, !128, !128}
!958 = !{!953, !959}
!959 = !DILocalVariable(name: "__s2", arg: 2, scope: !954, file: !955, line: 1359, type: !128)
!960 = !DILocation(line: 0, scope: !954, inlinedAt: !961)
!961 = distinct !DILocation(line: 586, column: 41, scope: !211)
!962 = !DILocation(line: 1361, column: 11, scope: !954, inlinedAt: !961)
!963 = !DILocation(line: 1361, column: 10, scope: !954, inlinedAt: !961)
!964 = !DILocation(line: 586, column: 19, scope: !211)
!965 = !DILocation(line: 587, column: 5, scope: !211)
!966 = !DILocation(line: 588, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !204, file: !101, line: 588, column: 7)
!968 = !DILocation(line: 588, column: 7, scope: !204)
!969 = !DILocation(line: 590, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !101, line: 589, column: 5)
!971 = !DILocation(line: 591, column: 7, scope: !970)
!972 = !DILocation(line: 595, column: 37, scope: !204)
!973 = !DILocation(line: 595, column: 35, scope: !204)
!974 = !DILocation(line: 596, column: 29, scope: !204)
!975 = !DILocation(line: 597, column: 8, scope: !219)
!976 = !DILocation(line: 597, column: 7, scope: !204)
!977 = !DILocation(line: 604, column: 24, scope: !218)
!978 = !DILocation(line: 604, column: 12, scope: !219)
!979 = !DILocation(line: 0, scope: !217)
!980 = !DILocation(line: 610, column: 16, scope: !217)
!981 = !DILocation(line: 610, column: 7, scope: !217)
!982 = !DILocation(line: 611, column: 21, scope: !217)
!983 = !{!984, !984, i64 0}
!984 = !{!"short", !876, i64 0}
!985 = !DILocation(line: 611, column: 19, scope: !217)
!986 = !DILocation(line: 611, column: 16, scope: !217)
!987 = !DILocation(line: 610, column: 30, scope: !217)
!988 = distinct !{!988, !981, !982, !989}
!989 = !{!"llvm.loop.mustprogress"}
!990 = !DILocation(line: 612, column: 18, scope: !991)
!991 = distinct !DILexicalBlock(scope: !217, file: !101, line: 612, column: 11)
!992 = !DILocation(line: 612, column: 11, scope: !217)
!993 = !DILocation(line: 620, column: 23, scope: !204)
!994 = !DILocation(line: 625, column: 39, scope: !204)
!995 = !DILocation(line: 626, column: 3, scope: !204)
!996 = !DILocation(line: 626, column: 10, scope: !204)
!997 = !DILocation(line: 626, column: 21, scope: !204)
!998 = !DILocation(line: 628, column: 44, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !101, line: 628, column: 11)
!1000 = distinct !DILexicalBlock(scope: !204, file: !101, line: 627, column: 5)
!1001 = !DILocation(line: 628, column: 32, scope: !999)
!1002 = !DILocation(line: 628, column: 49, scope: !999)
!1003 = !DILocation(line: 628, column: 11, scope: !1000)
!1004 = !DILocation(line: 630, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !101, line: 630, column: 11)
!1006 = !DILocation(line: 630, column: 11, scope: !1000)
!1007 = !DILocation(line: 632, column: 26, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !101, line: 632, column: 15)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !101, line: 631, column: 9)
!1010 = !DILocation(line: 632, column: 34, scope: !1008)
!1011 = !DILocation(line: 632, column: 37, scope: !1008)
!1012 = !DILocation(line: 632, column: 15, scope: !1009)
!1013 = !DILocation(line: 640, column: 16, scope: !1000)
!1014 = distinct !{!1014, !995, !1015, !989}
!1015 = !DILocation(line: 641, column: 5, scope: !204)
!1016 = !DILocation(line: 644, column: 3, scope: !204)
!1017 = !DILocation(line: 0, scope: !954, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 648, column: 31, scope: !204)
!1019 = !DILocation(line: 0, scope: !954, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 649, column: 31, scope: !204)
!1021 = !DILocation(line: 0, scope: !954, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 650, column: 31, scope: !204)
!1023 = !DILocation(line: 0, scope: !954, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 651, column: 31, scope: !204)
!1025 = !DILocation(line: 0, scope: !954, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 652, column: 31, scope: !204)
!1027 = !DILocation(line: 0, scope: !954, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 653, column: 31, scope: !204)
!1029 = !DILocation(line: 0, scope: !954, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 654, column: 31, scope: !204)
!1031 = !DILocation(line: 0, scope: !954, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 655, column: 31, scope: !204)
!1033 = !DILocation(line: 0, scope: !954, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 656, column: 31, scope: !204)
!1035 = !DILocation(line: 0, scope: !954, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 657, column: 31, scope: !204)
!1037 = !DILocation(line: 663, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !204, file: !101, line: 663, column: 7)
!1039 = !DILocation(line: 664, column: 7, scope: !1038)
!1040 = !DILocation(line: 664, column: 10, scope: !1038)
!1041 = !DILocation(line: 663, column: 7, scope: !204)
!1042 = !DILocation(line: 669, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !101, line: 665, column: 5)
!1044 = !DILocation(line: 671, column: 5, scope: !1043)
!1045 = !DILocation(line: 676, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1038, file: !101, line: 673, column: 5)
!1047 = !DILocation(line: 679, column: 3, scope: !204)
!1048 = !DILocation(line: 683, column: 3, scope: !204)
!1049 = !DILocation(line: 686, column: 3, scope: !204)
!1050 = !DILocation(line: 688, column: 3, scope: !204)
!1051 = !DILocation(line: 691, column: 3, scope: !204)
!1052 = !DILocation(line: 695, column: 3, scope: !204)
!1053 = !DILocation(line: 696, column: 1, scope: !204)
!1054 = !DISubprogram(name: "setlocale", scope: !1055, file: !1055, line: 122, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1055 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!122, !102, !128}
!1058 = !DISubprogram(name: "strncmp", scope: !1059, file: !1059, line: 159, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1059 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!102, !128, !128, !125}
!1062 = !DISubprogram(name: "exit", scope: !1063, file: !1063, line: 624, type: !864, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1063 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1064 = !DISubprogram(name: "getenv", scope: !1063, file: !1063, line: 641, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!122, !128}
!1067 = !DISubprogram(name: "strcmp", scope: !1059, file: !1059, line: 156, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!102, !128, !128}
!1070 = !DISubprogram(name: "strspn", scope: !1059, file: !1059, line: 297, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!127, !128, !128}
!1073 = !DISubprogram(name: "strchr", scope: !1059, file: !1059, line: 246, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!122, !128, !102}
!1076 = !DISubprogram(name: "__ctype_b_loc", scope: !107, file: !107, line: 79, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1082 = !DISubprogram(name: "strcspn", scope: !1059, file: !1059, line: 293, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1083 = !DISubprogram(name: "fwrite_unlocked", scope: !449, file: !449, line: 704, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!125, !1086, !125, !125, !932}
!1086 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1089 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 154, type: !1090, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1093)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!102, !102, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1114, !1119, !1123, !1126, !1128}
!1094 = !DILocalVariable(name: "argc", arg: 1, scope: !1089, file: !2, line: 154, type: !102)
!1095 = !DILocalVariable(name: "argv", arg: 2, scope: !1089, file: !2, line: 154, type: !1092)
!1096 = !DILocalVariable(name: "dest_dir", scope: !1089, file: !2, line: 156, type: !128)
!1097 = !DILocalVariable(name: "dest_dir_arg", scope: !1089, file: !2, line: 157, type: !128)
!1098 = !DILocalVariable(name: "suppress_file_err", scope: !1089, file: !2, line: 158, type: !201)
!1099 = !DILocalVariable(name: "c", scope: !1089, file: !2, line: 159, type: !102)
!1100 = !DILocalVariable(name: "template", scope: !1089, file: !2, line: 160, type: !122)
!1101 = !DILocalVariable(name: "suffix", scope: !1089, file: !2, line: 161, type: !122)
!1102 = !DILocalVariable(name: "use_dest_dir", scope: !1089, file: !2, line: 162, type: !201)
!1103 = !DILocalVariable(name: "deprecated_t_option", scope: !1089, file: !2, line: 163, type: !201)
!1104 = !DILocalVariable(name: "create_directory", scope: !1089, file: !2, line: 164, type: !201)
!1105 = !DILocalVariable(name: "dry_run", scope: !1089, file: !2, line: 165, type: !201)
!1106 = !DILocalVariable(name: "status", scope: !1089, file: !2, line: 166, type: !102)
!1107 = !DILocalVariable(name: "x_count", scope: !1089, file: !2, line: 167, type: !125)
!1108 = !DILocalVariable(name: "suffix_len", scope: !1089, file: !2, line: 168, type: !125)
!1109 = !DILocalVariable(name: "dest_name", scope: !1089, file: !2, line: 169, type: !122)
!1110 = !DILocalVariable(name: "n_args", scope: !1089, file: !2, line: 215, type: !102)
!1111 = !DILocalVariable(name: "len", scope: !1112, file: !2, line: 234, type: !125)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 233, column: 5)
!1113 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 232, column: 7)
!1114 = !DILocalVariable(name: "env", scope: !1115, file: !2, line: 280, type: !122)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 279, column: 9)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 278, column: 11)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 277, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 276, column: 7)
!1119 = !DILocalVariable(name: "env", scope: !1120, file: !2, line: 299, type: !122)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 298, column: 13)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 295, column: 15)
!1122 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 294, column: 9)
!1123 = !DILocalVariable(name: "err", scope: !1124, file: !2, line: 321, type: !102)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 320, column: 5)
!1125 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 319, column: 7)
!1126 = !DILocalVariable(name: "fd", scope: !1127, file: !2, line: 332, type: !102)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 331, column: 5)
!1128 = !DILocalVariable(name: "saved_errno", scope: !1129, file: !2, line: 349, type: !102)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 348, column: 9)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 347, column: 11)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 343, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 342, column: 7)
!1133 = !DILocation(line: 0, scope: !1089)
!1134 = !DILocation(line: 172, column: 21, scope: !1089)
!1135 = !DILocation(line: 172, column: 3, scope: !1089)
!1136 = !DILocation(line: 173, column: 3, scope: !1089)
!1137 = !DILocation(line: 174, column: 3, scope: !1089)
!1138 = !DILocation(line: 175, column: 3, scope: !1089)
!1139 = !DILocation(line: 177, column: 3, scope: !1089)
!1140 = !DILocation(line: 179, column: 3, scope: !1089)
!1141 = distinct !{!1141, !1140, !1142, !989}
!1142 = !DILocation(line: 213, column: 5, scope: !1089)
!1143 = !DILocation(line: 179, column: 15, scope: !1089)
!1144 = distinct !{!1144, !1140, !1142, !989, !1145}
!1145 = !{!"llvm.loop.peeled.count", i32 1}
!1146 = !DILocation(line: 187, column: 26, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 182, column: 9)
!1148 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 180, column: 5)
!1149 = !DILocation(line: 189, column: 11, scope: !1147)
!1150 = !DILocation(line: 196, column: 11, scope: !1147)
!1151 = !DILocation(line: 199, column: 11, scope: !1147)
!1152 = !DILocation(line: 202, column: 20, scope: !1147)
!1153 = !DILocation(line: 203, column: 11, scope: !1147)
!1154 = !DILocation(line: 205, column: 9, scope: !1147)
!1155 = !DILocation(line: 209, column: 9, scope: !1147)
!1156 = !DILocation(line: 211, column: 11, scope: !1147)
!1157 = !DILocation(line: 215, column: 23, scope: !1089)
!1158 = !DILocation(line: 215, column: 21, scope: !1089)
!1159 = !DILocation(line: 216, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 216, column: 7)
!1161 = !DILocation(line: 216, column: 7, scope: !1089)
!1162 = !DILocation(line: 218, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 217, column: 5)
!1164 = !DILocation(line: 219, column: 7, scope: !1163)
!1165 = !DILocation(line: 222, column: 14, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 222, column: 7)
!1167 = !DILocation(line: 222, column: 7, scope: !1089)
!1168 = !DILocation(line: 229, column: 18, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 228, column: 5)
!1170 = !DILocation(line: 0, scope: !1166)
!1171 = !DILocation(line: 232, column: 7, scope: !1113)
!1172 = !DILocation(line: 232, column: 7, scope: !1089)
!1173 = !DILocation(line: 234, column: 20, scope: !1112)
!1174 = !DILocation(line: 0, scope: !1112)
!1175 = !DILocation(line: 235, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 235, column: 11)
!1177 = !DILocation(line: 235, column: 16, scope: !1176)
!1178 = !DILocation(line: 235, column: 32, scope: !1176)
!1179 = !DILocation(line: 235, column: 19, scope: !1176)
!1180 = !DILocation(line: 235, column: 37, scope: !1176)
!1181 = !DILocation(line: 235, column: 11, scope: !1112)
!1182 = !DILocation(line: 237, column: 11, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 236, column: 9)
!1184 = !DILocation(line: 241, column: 20, scope: !1112)
!1185 = !DILocation(line: 242, column: 35, scope: !1112)
!1186 = !DILocation(line: 242, column: 48, scope: !1112)
!1187 = !DILocation(line: 242, column: 19, scope: !1112)
!1188 = !DILocalVariable(name: "__dest", arg: 1, scope: !1189, file: !1190, line: 26, type: !1193)
!1189 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1194)
!1190 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!123, !1193, !1086, !125}
!1193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!1194 = !{!1188, !1195, !1196}
!1195 = !DILocalVariable(name: "__src", arg: 2, scope: !1189, file: !1190, line: 26, type: !1086)
!1196 = !DILocalVariable(name: "__len", arg: 3, scope: !1189, file: !1190, line: 26, type: !125)
!1197 = !DILocation(line: 0, scope: !1189, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 243, column: 7, scope: !1112)
!1199 = !DILocation(line: 29, column: 10, scope: !1189, inlinedAt: !1198)
!1200 = !DILocation(line: 244, column: 25, scope: !1112)
!1201 = !DILocation(line: 0, scope: !1189, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 244, column: 7, scope: !1112)
!1203 = !DILocation(line: 29, column: 10, scope: !1189, inlinedAt: !1202)
!1204 = !DILocation(line: 247, column: 5, scope: !1112)
!1205 = !DILocation(line: 250, column: 18, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 249, column: 5)
!1207 = !DILocation(line: 251, column: 16, scope: !1206)
!1208 = !DILocation(line: 252, column: 12, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 252, column: 11)
!1210 = !DILocation(line: 252, column: 11, scope: !1206)
!1211 = !DILocation(line: 253, column: 18, scope: !1209)
!1212 = !DILocation(line: 253, column: 9, scope: !1209)
!1213 = !DILocation(line: 255, column: 15, scope: !1209)
!1214 = !DILocation(line: 0, scope: !1209)
!1215 = !DILocation(line: 256, column: 20, scope: !1206)
!1216 = !DILocation(line: 0, scope: !1113)
!1217 = !DILocation(line: 260, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 260, column: 7)
!1219 = !DILocation(line: 260, column: 18, scope: !1218)
!1220 = !DILocation(line: 260, column: 21, scope: !1218)
!1221 = !DILocation(line: 260, column: 45, scope: !1218)
!1222 = !DILocation(line: 260, column: 7, scope: !1089)
!1223 = !DILocation(line: 262, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 261, column: 5)
!1225 = !DILocation(line: 266, column: 53, scope: !1089)
!1226 = !DILocalVariable(name: "s", arg: 1, scope: !1227, file: !2, line: 115, type: !128)
!1227 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !2, file: !2, line: 115, type: !1228, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!125, !128, !125}
!1230 = !{!1226, !1231, !1232}
!1231 = !DILocalVariable(name: "len", arg: 2, scope: !1227, file: !2, line: 115, type: !125)
!1232 = !DILocalVariable(name: "n", scope: !1227, file: !2, line: 117, type: !125)
!1233 = !DILocation(line: 0, scope: !1227, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 266, column: 13, scope: !1089)
!1235 = !DILocation(line: 118, column: 11, scope: !1236, inlinedAt: !1234)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 118, column: 3)
!1237 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 118, column: 3)
!1238 = !DILocation(line: 118, column: 15, scope: !1236, inlinedAt: !1234)
!1239 = !DILocation(line: 118, column: 24, scope: !1236, inlinedAt: !1234)
!1240 = !DILocation(line: 118, column: 18, scope: !1236, inlinedAt: !1234)
!1241 = !DILocation(line: 118, column: 29, scope: !1236, inlinedAt: !1234)
!1242 = !DILocation(line: 118, column: 3, scope: !1237, inlinedAt: !1234)
!1243 = !DILocation(line: 119, column: 5, scope: !1236, inlinedAt: !1234)
!1244 = distinct !{!1244, !1242, !1245, !989}
!1245 = !DILocation(line: 119, column: 7, scope: !1237, inlinedAt: !1234)
!1246 = !DILocation(line: 267, column: 15, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 267, column: 7)
!1248 = !DILocation(line: 267, column: 7, scope: !1089)
!1249 = !DILocation(line: 270, column: 20, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 270, column: 11)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 268, column: 5)
!1252 = !DILocation(line: 270, column: 11, scope: !1251)
!1253 = !DILocation(line: 271, column: 9, scope: !1250)
!1254 = !DILocation(line: 271, column: 37, scope: !1250)
!1255 = !DILocation(line: 272, column: 7, scope: !1251)
!1256 = !DILocation(line: 276, column: 7, scope: !1089)
!1257 = !DILocation(line: 278, column: 11, scope: !1117)
!1258 = !DILocation(line: 280, column: 23, scope: !1115)
!1259 = !DILocation(line: 0, scope: !1115)
!1260 = !DILocation(line: 281, column: 15, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 281, column: 15)
!1262 = !DILocation(line: 281, column: 19, scope: !1261)
!1263 = !DILocation(line: 281, column: 22, scope: !1261)
!1264 = !DILocation(line: 281, column: 15, scope: !1115)
!1265 = !DILocation(line: 283, column: 20, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 283, column: 20)
!1267 = !DILocation(line: 283, column: 33, scope: !1266)
!1268 = !DILocation(line: 283, column: 36, scope: !1266)
!1269 = !DILocation(line: 283, column: 20, scope: !1261)
!1270 = !DILocation(line: 0, scope: !1261)
!1271 = !DILocation(line: 288, column: 15, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 288, column: 15)
!1273 = !DILocation(line: 288, column: 41, scope: !1272)
!1274 = !DILocation(line: 288, column: 15, scope: !1115)
!1275 = !DILocation(line: 289, column: 13, scope: !1272)
!1276 = !DILocation(line: 295, column: 15, scope: !1121)
!1277 = !DILocation(line: 295, column: 28, scope: !1121)
!1278 = !DILocation(line: 295, column: 31, scope: !1121)
!1279 = !DILocation(line: 295, column: 15, scope: !1122)
!1280 = !DILocation(line: 299, column: 27, scope: !1120)
!1281 = !DILocation(line: 0, scope: !1120)
!1282 = !DILocation(line: 300, column: 27, scope: !1120)
!1283 = !DILocation(line: 300, column: 31, scope: !1120)
!1284 = !DILocation(line: 300, column: 34, scope: !1120)
!1285 = !DILocation(line: 0, scope: !1121)
!1286 = !DILocation(line: 302, column: 15, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 302, column: 15)
!1288 = !DILocation(line: 302, column: 15, scope: !1122)
!1289 = !DILocation(line: 303, column: 13, scope: !1287)
!1290 = !DILocation(line: 0, scope: !1116)
!1291 = !DILocation(line: 309, column: 19, scope: !1117)
!1292 = !DILocation(line: 310, column: 7, scope: !1117)
!1293 = !DILocation(line: 313, column: 5, scope: !1117)
!1294 = !DILocation(line: 317, column: 15, scope: !1089)
!1295 = !DILocation(line: 0, scope: !1125)
!1296 = !DILocation(line: 319, column: 7, scope: !1089)
!1297 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1298, file: !2, line: 131, type: !122)
!1298 = distinct !DISubprogram(name: "mkdtemp_len", scope: !2, file: !2, line: 131, type: !1299, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!102, !122, !125, !125, !201}
!1301 = !{!1297, !1302, !1303, !1304}
!1302 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1298, file: !2, line: 131, type: !125)
!1303 = !DILocalVariable(name: "x_len", arg: 3, scope: !1298, file: !2, line: 131, type: !125)
!1304 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1298, file: !2, line: 131, type: !201)
!1305 = !DILocation(line: 0, scope: !1298, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 321, column: 17, scope: !1124)
!1307 = !DILocation(line: 133, column: 47, scope: !1298, inlinedAt: !1306)
!1308 = !DILocation(line: 133, column: 10, scope: !1298, inlinedAt: !1306)
!1309 = !DILocation(line: 0, scope: !1124)
!1310 = !DILocation(line: 322, column: 15, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 322, column: 11)
!1312 = !DILocation(line: 322, column: 11, scope: !1124)
!1313 = !DILocation(line: 325, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 324, column: 15)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 323, column: 9)
!1316 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1317, file: !2, line: 124, type: !122)
!1317 = distinct !DISubprogram(name: "mkstemp_len", scope: !2, file: !2, line: 124, type: !1299, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1318)
!1318 = !{!1316, !1319, !1320, !1321}
!1319 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1317, file: !2, line: 124, type: !125)
!1320 = !DILocalVariable(name: "x_len", arg: 3, scope: !1317, file: !2, line: 124, type: !125)
!1321 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1317, file: !2, line: 124, type: !201)
!1322 = !DILocation(line: 0, scope: !1317, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 332, column: 16, scope: !1127)
!1324 = !DILocation(line: 126, column: 47, scope: !1317, inlinedAt: !1323)
!1325 = !DILocation(line: 126, column: 10, scope: !1317, inlinedAt: !1323)
!1326 = !DILocation(line: 0, scope: !1127)
!1327 = !DILocation(line: 333, column: 14, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 333, column: 11)
!1329 = !DILocation(line: 333, column: 18, scope: !1328)
!1330 = !DILocation(line: 333, column: 31, scope: !1328)
!1331 = !DILocation(line: 344, column: 7, scope: !1131)
!1332 = !DILocation(line: 347, column: 20, scope: !1130)
!1333 = !DILocation(line: 333, column: 34, scope: !1328)
!1334 = !DILocation(line: 333, column: 45, scope: !1328)
!1335 = !DILocation(line: 333, column: 11, scope: !1127)
!1336 = !DILocation(line: 335, column: 15, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 334, column: 9)
!1338 = !DILocation(line: 336, column: 13, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 335, column: 15)
!1340 = !DILocation(line: 342, column: 7, scope: !1089)
!1341 = !DILocation(line: 347, column: 39, scope: !1130)
!1342 = !DILocation(line: 347, column: 62, scope: !1130)
!1343 = !DILocation(line: 347, column: 48, scope: !1130)
!1344 = !DILocation(line: 347, column: 70, scope: !1130)
!1345 = !DILocation(line: 347, column: 11, scope: !1131)
!1346 = !DILocation(line: 349, column: 29, scope: !1129)
!1347 = !DILocation(line: 0, scope: !1129)
!1348 = !DILocation(line: 350, column: 11, scope: !1129)
!1349 = !DILocation(line: 351, column: 15, scope: !1129)
!1350 = !DILocation(line: 352, column: 13, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 351, column: 15)
!1352 = !DILocation(line: 357, column: 3, scope: !1089)
!1353 = !DISubprogram(name: "bindtextdomain", scope: !924, file: !924, line: 86, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!122, !128, !128}
!1356 = !DISubprogram(name: "textdomain", scope: !924, file: !924, line: 82, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1357 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !2, file: !2, line: 145, type: !490, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !927)
!1358 = !DILocation(line: 147, column: 8, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 147, column: 7)
!1360 = !DILocation(line: 147, column: 7, scope: !1357)
!1361 = !DILocation(line: 148, column: 5, scope: !1359)
!1362 = !DILocation(line: 149, column: 26, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 149, column: 12)
!1364 = !DILocation(line: 149, column: 12, scope: !1363)
!1365 = !DILocation(line: 149, column: 34, scope: !1363)
!1366 = !DILocation(line: 149, column: 12, scope: !1359)
!1367 = !DILocation(line: 150, column: 5, scope: !1363)
!1368 = !DILocation(line: 151, column: 1, scope: !1357)
!1369 = !DISubprogram(name: "atexit", scope: !1063, file: !1063, line: 602, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!102, !489}
!1372 = !DISubprogram(name: "getopt_long", scope: !405, file: !405, line: 66, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!102, !102, !1375, !128, !1377, !410}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1378 = !DISubprogram(name: "strlen", scope: !1059, file: !1059, line: 407, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!127, !128}
!1381 = !DISubprogram(name: "strrchr", scope: !1059, file: !1059, line: 273, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1382 = !DISubprogram(name: "free", scope: !1063, file: !1063, line: 555, type: !1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !123}
!1385 = !DISubprogram(name: "__errno_location", scope: !1386, file: !1386, line: 37, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1386 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!410}
!1389 = !DISubprogram(name: "puts", scope: !449, file: !449, line: 661, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!102, !128}
!1392 = !DISubprogram(name: "close", scope: !1393, file: !1393, line: 358, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1393 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!102, !102}
!1396 = !DISubprogram(name: "remove", scope: !449, file: !449, line: 152, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1397 = !DISubprogram(name: "_exit", scope: !1393, file: !1393, line: 624, type: !864, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1398 = distinct !DISubprogram(name: "last_component", scope: !788, file: !788, line: 29, type: !1065, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1399)
!1399 = !{!1400, !1401, !1402, !1403}
!1400 = !DILocalVariable(name: "name", arg: 1, scope: !1398, file: !788, line: 29, type: !128)
!1401 = !DILocalVariable(name: "base", scope: !1398, file: !788, line: 31, type: !128)
!1402 = !DILocalVariable(name: "last_was_slash", scope: !1398, file: !788, line: 35, type: !201)
!1403 = !DILocalVariable(name: "p", scope: !1404, file: !788, line: 36, type: !128)
!1404 = distinct !DILexicalBlock(scope: !1398, file: !788, line: 36, column: 3)
!1405 = !DILocation(line: 0, scope: !1398)
!1406 = !DILocation(line: 32, column: 3, scope: !1398)
!1407 = !DILocation(line: 32, column: 10, scope: !1398)
!1408 = !DILocation(line: 33, column: 9, scope: !1398)
!1409 = distinct !{!1409, !1406, !1408, !989}
!1410 = !DILocation(line: 36, column: 30, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !788, line: 36, column: 3)
!1412 = !DILocation(line: 31, column: 15, scope: !1398)
!1413 = !DILocation(line: 36, scope: !1404)
!1414 = !DILocation(line: 0, scope: !1404)
!1415 = !DILocation(line: 36, column: 3, scope: !1404)
!1416 = !DILocation(line: 47, column: 3, scope: !1398)
!1417 = !DILocation(line: 40, column: 16, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !788, line: 38, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !788, line: 37, column: 5)
!1420 = !DILocation(line: 36, column: 35, scope: !1411)
!1421 = !DILocation(line: 36, column: 3, scope: !1411)
!1422 = distinct !{!1422, !1415, !1423, !989}
!1423 = !DILocation(line: 45, column: 5, scope: !1404)
!1424 = distinct !DISubprogram(name: "base_len", scope: !788, file: !788, line: 51, type: !1425, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!125, !128}
!1427 = !{!1428, !1429, !1430}
!1428 = !DILocalVariable(name: "name", arg: 1, scope: !1424, file: !788, line: 51, type: !128)
!1429 = !DILocalVariable(name: "len", scope: !1424, file: !788, line: 53, type: !125)
!1430 = !DILocalVariable(name: "prefix_len", scope: !1424, file: !788, line: 61, type: !125)
!1431 = !DILocation(line: 0, scope: !1424)
!1432 = !DILocation(line: 54, column: 14, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1424, file: !788, line: 54, column: 3)
!1434 = !DILocation(line: 54, column: 8, scope: !1433)
!1435 = !DILocation(line: 54, scope: !1433)
!1436 = !DILocation(line: 54, column: 32, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !788, line: 54, column: 3)
!1438 = !DILocation(line: 54, column: 38, scope: !1437)
!1439 = !DILocation(line: 54, column: 41, scope: !1437)
!1440 = !DILocation(line: 54, column: 3, scope: !1433)
!1441 = distinct !{!1441, !1440, !1442, !989}
!1442 = !DILocation(line: 55, column: 5, scope: !1433)
!1443 = !DILocation(line: 66, column: 3, scope: !1424)
!1444 = distinct !DISubprogram(name: "close_stream", scope: !790, file: !790, line: 55, type: !1445, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1481)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!102, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1449, file: !230, line: 51, baseType: !102, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1449, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1449, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1449, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1449, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1449, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1449, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1449, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1449, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1449, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1449, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1449, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1449, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1449, file: !230, line: 70, baseType: !1465, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1449, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1449, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1449, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1449, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1449, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1449, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1449, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1449, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1449, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1449, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1449, file: !230, line: 93, baseType: !1465, size: 64, offset: 1344)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1449, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1449, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1449, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1449, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1481 = !{!1482, !1483, !1485, !1486}
!1482 = !DILocalVariable(name: "stream", arg: 1, scope: !1444, file: !790, line: 55, type: !1447)
!1483 = !DILocalVariable(name: "some_pending", scope: !1444, file: !790, line: 57, type: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!1485 = !DILocalVariable(name: "prev_fail", scope: !1444, file: !790, line: 58, type: !1484)
!1486 = !DILocalVariable(name: "fclose_fail", scope: !1444, file: !790, line: 59, type: !1484)
!1487 = !DILocation(line: 0, scope: !1444)
!1488 = !DILocation(line: 57, column: 30, scope: !1444)
!1489 = !DILocalVariable(name: "__stream", arg: 1, scope: !1490, file: !1491, line: 135, type: !1447)
!1490 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1491, file: !1491, line: 135, type: !1445, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1492)
!1491 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1492 = !{!1489}
!1493 = !DILocation(line: 0, scope: !1490, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 58, column: 27, scope: !1444)
!1495 = !DILocation(line: 137, column: 10, scope: !1490, inlinedAt: !1494)
!1496 = !{!1497, !943, i64 0}
!1497 = !{!"_IO_FILE", !943, i64 0, !875, i64 8, !875, i64 16, !875, i64 24, !875, i64 32, !875, i64 40, !875, i64 48, !875, i64 56, !875, i64 64, !875, i64 72, !875, i64 80, !875, i64 88, !875, i64 96, !875, i64 104, !943, i64 112, !943, i64 116, !1498, i64 120, !984, i64 128, !876, i64 130, !876, i64 131, !875, i64 136, !1498, i64 144, !875, i64 152, !875, i64 160, !875, i64 168, !875, i64 176, !1498, i64 184, !943, i64 192, !876, i64 196}
!1498 = !{!"long", !876, i64 0}
!1499 = !DILocation(line: 58, column: 43, scope: !1444)
!1500 = !DILocation(line: 59, column: 29, scope: !1444)
!1501 = !DILocation(line: 59, column: 45, scope: !1444)
!1502 = !DILocation(line: 69, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1444, file: !790, line: 69, column: 7)
!1504 = !DILocation(line: 57, column: 50, scope: !1444)
!1505 = !DILocation(line: 69, column: 33, scope: !1503)
!1506 = !DILocation(line: 69, column: 53, scope: !1503)
!1507 = !DILocation(line: 69, column: 59, scope: !1503)
!1508 = !DILocation(line: 69, column: 7, scope: !1444)
!1509 = !DILocation(line: 71, column: 11, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1503, file: !790, line: 70, column: 5)
!1511 = !DILocation(line: 72, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1510, file: !790, line: 71, column: 11)
!1513 = !DILocation(line: 72, column: 15, scope: !1512)
!1514 = !DILocation(line: 77, column: 1, scope: !1444)
!1515 = !DISubprogram(name: "__fpending", scope: !1516, file: !1516, line: 75, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1516 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!125, !1447}
!1519 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !423, file: !423, line: 50, type: !893, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1520)
!1520 = !{!1521}
!1521 = !DILocalVariable(name: "file", arg: 1, scope: !1519, file: !423, line: 50, type: !128)
!1522 = !DILocation(line: 0, scope: !1519)
!1523 = !DILocation(line: 52, column: 13, scope: !1519)
!1524 = !DILocation(line: 53, column: 1, scope: !1519)
!1525 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !423, file: !423, line: 87, type: !1526, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !201}
!1528 = !{!1529}
!1529 = !DILocalVariable(name: "ignore", arg: 1, scope: !1525, file: !423, line: 87, type: !201)
!1530 = !DILocation(line: 0, scope: !1525)
!1531 = !DILocation(line: 89, column: 16, scope: !1525)
!1532 = !{!1533, !1533, i64 0}
!1533 = !{!"_Bool", !876, i64 0}
!1534 = !DILocation(line: 90, column: 1, scope: !1525)
!1535 = distinct !DISubprogram(name: "close_stdout", scope: !423, file: !423, line: 116, type: !490, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1536)
!1536 = !{!1537}
!1537 = !DILocalVariable(name: "write_error", scope: !1538, file: !423, line: 121, type: !128)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !423, line: 120, column: 5)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !423, line: 118, column: 7)
!1540 = !DILocation(line: 118, column: 21, scope: !1539)
!1541 = !DILocation(line: 118, column: 7, scope: !1539)
!1542 = !DILocation(line: 118, column: 29, scope: !1539)
!1543 = !DILocation(line: 119, column: 7, scope: !1539)
!1544 = !DILocation(line: 119, column: 12, scope: !1539)
!1545 = !{i8 0, i8 2}
!1546 = !DILocation(line: 119, column: 25, scope: !1539)
!1547 = !DILocation(line: 119, column: 28, scope: !1539)
!1548 = !DILocation(line: 119, column: 34, scope: !1539)
!1549 = !DILocation(line: 118, column: 7, scope: !1535)
!1550 = !DILocation(line: 121, column: 33, scope: !1538)
!1551 = !DILocation(line: 0, scope: !1538)
!1552 = !DILocation(line: 122, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1538, file: !423, line: 122, column: 11)
!1554 = !DILocation(line: 0, scope: !1553)
!1555 = !DILocation(line: 122, column: 11, scope: !1538)
!1556 = !DILocation(line: 123, column: 9, scope: !1553)
!1557 = !DILocation(line: 126, column: 9, scope: !1553)
!1558 = !DILocation(line: 128, column: 14, scope: !1538)
!1559 = !DILocation(line: 128, column: 7, scope: !1538)
!1560 = !DILocation(line: 133, column: 42, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1535, file: !423, line: 133, column: 7)
!1562 = !DILocation(line: 133, column: 28, scope: !1561)
!1563 = !DILocation(line: 133, column: 50, scope: !1561)
!1564 = !DILocation(line: 133, column: 7, scope: !1535)
!1565 = !DILocation(line: 134, column: 12, scope: !1561)
!1566 = !DILocation(line: 134, column: 5, scope: !1561)
!1567 = !DILocation(line: 135, column: 1, scope: !1535)
!1568 = distinct !DISubprogram(name: "verror", scope: !438, file: !438, line: 251, type: !1569, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !102, !102, !128, !448}
!1571 = !{!1572, !1573, !1574, !1575}
!1572 = !DILocalVariable(name: "status", arg: 1, scope: !1568, file: !438, line: 251, type: !102)
!1573 = !DILocalVariable(name: "errnum", arg: 2, scope: !1568, file: !438, line: 251, type: !102)
!1574 = !DILocalVariable(name: "message", arg: 3, scope: !1568, file: !438, line: 251, type: !128)
!1575 = !DILocalVariable(name: "args", arg: 4, scope: !1568, file: !438, line: 251, type: !448)
!1576 = !DILocation(line: 0, scope: !1568)
!1577 = !DILocation(line: 251, column: 1, scope: !1568)
!1578 = !DILocation(line: 261, column: 3, scope: !1568)
!1579 = !DILocation(line: 265, column: 7, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1568, file: !438, line: 265, column: 7)
!1581 = !DILocation(line: 265, column: 7, scope: !1568)
!1582 = !DILocation(line: 266, column: 5, scope: !1580)
!1583 = !DILocation(line: 272, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !438, line: 268, column: 5)
!1585 = !DILocation(line: 276, column: 3, scope: !1568)
!1586 = !{i64 0, i64 8, !874, i64 8, i64 8, !874, i64 16, i64 8, !874, i64 24, i64 4, !942, i64 28, i64 4, !942}
!1587 = !DILocation(line: 282, column: 1, scope: !1568)
!1588 = distinct !DISubprogram(name: "flush_stdout", scope: !438, file: !438, line: 163, type: !490, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1589)
!1589 = !{!1590}
!1590 = !DILocalVariable(name: "stdout_fd", scope: !1588, file: !438, line: 166, type: !102)
!1591 = !DILocation(line: 0, scope: !1588)
!1592 = !DILocalVariable(name: "fd", arg: 1, scope: !1593, file: !438, line: 145, type: !102)
!1593 = distinct !DISubprogram(name: "is_open", scope: !438, file: !438, line: 145, type: !1394, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1594)
!1594 = !{!1592}
!1595 = !DILocation(line: 0, scope: !1593, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 182, column: 25, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1588, file: !438, line: 182, column: 7)
!1598 = !DILocation(line: 157, column: 15, scope: !1593, inlinedAt: !1596)
!1599 = !DILocation(line: 157, column: 12, scope: !1593, inlinedAt: !1596)
!1600 = !DILocation(line: 182, column: 7, scope: !1588)
!1601 = !DILocation(line: 184, column: 5, scope: !1597)
!1602 = !DILocation(line: 185, column: 1, scope: !1588)
!1603 = distinct !DISubprogram(name: "error_tail", scope: !438, file: !438, line: 219, type: !1569, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1604)
!1604 = !{!1605, !1606, !1607, !1608}
!1605 = !DILocalVariable(name: "status", arg: 1, scope: !1603, file: !438, line: 219, type: !102)
!1606 = !DILocalVariable(name: "errnum", arg: 2, scope: !1603, file: !438, line: 219, type: !102)
!1607 = !DILocalVariable(name: "message", arg: 3, scope: !1603, file: !438, line: 219, type: !128)
!1608 = !DILocalVariable(name: "args", arg: 4, scope: !1603, file: !438, line: 219, type: !448)
!1609 = !DILocation(line: 0, scope: !1603)
!1610 = !DILocation(line: 219, column: 1, scope: !1603)
!1611 = !DILocation(line: 229, column: 13, scope: !1603)
!1612 = !DILocation(line: 135, column: 10, scope: !1613, inlinedAt: !1655)
!1613 = distinct !DISubprogram(name: "vfprintf", scope: !929, file: !929, line: 132, type: !1614, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1651)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!102, !1616, !933, !450}
!1616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1619, file: !230, line: 51, baseType: !102, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1619, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1619, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1619, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1619, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1619, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1619, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1619, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1619, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1619, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1619, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1619, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1619, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1619, file: !230, line: 70, baseType: !1635, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1619, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1619, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1619, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1619, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1619, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1619, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1619, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1619, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1619, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1619, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1619, file: !230, line: 93, baseType: !1635, size: 64, offset: 1344)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1619, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1619, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1619, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1619, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1651 = !{!1652, !1653, !1654}
!1652 = !DILocalVariable(name: "__stream", arg: 1, scope: !1613, file: !929, line: 132, type: !1616)
!1653 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1613, file: !929, line: 133, type: !933)
!1654 = !DILocalVariable(name: "__ap", arg: 3, scope: !1613, file: !929, line: 133, type: !450)
!1655 = distinct !DILocation(line: 229, column: 3, scope: !1603)
!1656 = !{!1657, !1659}
!1657 = distinct !{!1657, !1658, !"vfprintf.inline: argument 0"}
!1658 = distinct !{!1658, !"vfprintf.inline"}
!1659 = distinct !{!1659, !1658, !"vfprintf.inline: argument 1"}
!1660 = !DILocation(line: 229, column: 3, scope: !1603)
!1661 = !DILocation(line: 0, scope: !1613, inlinedAt: !1655)
!1662 = !DILocation(line: 133, column: 49, scope: !1613, inlinedAt: !1655)
!1663 = !DILocation(line: 232, column: 3, scope: !1603)
!1664 = !DILocation(line: 233, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1603, file: !438, line: 233, column: 7)
!1666 = !DILocation(line: 233, column: 7, scope: !1603)
!1667 = !DILocalVariable(name: "errnum", arg: 1, scope: !1668, file: !438, line: 188, type: !102)
!1668 = distinct !DISubprogram(name: "print_errno_message", scope: !438, file: !438, line: 188, type: !864, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1669)
!1669 = !{!1667, !1670, !1671}
!1670 = !DILocalVariable(name: "s", scope: !1668, file: !438, line: 190, type: !128)
!1671 = !DILocalVariable(name: "errbuf", scope: !1668, file: !438, line: 193, type: !1672)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1673)
!1673 = !{!1674}
!1674 = !DISubrange(count: 1024)
!1675 = !DILocation(line: 0, scope: !1668, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 234, column: 5, scope: !1665)
!1677 = !DILocation(line: 193, column: 3, scope: !1668, inlinedAt: !1676)
!1678 = !DILocation(line: 193, column: 8, scope: !1668, inlinedAt: !1676)
!1679 = !DILocation(line: 195, column: 7, scope: !1668, inlinedAt: !1676)
!1680 = !DILocation(line: 207, column: 9, scope: !1681, inlinedAt: !1676)
!1681 = distinct !DILexicalBlock(scope: !1668, file: !438, line: 207, column: 7)
!1682 = !DILocation(line: 207, column: 7, scope: !1668, inlinedAt: !1676)
!1683 = !DILocation(line: 208, column: 9, scope: !1681, inlinedAt: !1676)
!1684 = !DILocation(line: 208, column: 5, scope: !1681, inlinedAt: !1676)
!1685 = !DILocation(line: 214, column: 3, scope: !1668, inlinedAt: !1676)
!1686 = !DILocation(line: 216, column: 1, scope: !1668, inlinedAt: !1676)
!1687 = !DILocation(line: 234, column: 5, scope: !1665)
!1688 = !DILocation(line: 238, column: 3, scope: !1603)
!1689 = !DILocalVariable(name: "__c", arg: 1, scope: !1690, file: !1491, line: 101, type: !102)
!1690 = distinct !DISubprogram(name: "putc_unlocked", scope: !1491, file: !1491, line: 101, type: !1691, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!102, !102, !1617}
!1693 = !{!1689, !1694}
!1694 = !DILocalVariable(name: "__stream", arg: 2, scope: !1690, file: !1491, line: 101, type: !1617)
!1695 = !DILocation(line: 0, scope: !1690, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 238, column: 3, scope: !1603)
!1697 = !DILocation(line: 103, column: 10, scope: !1690, inlinedAt: !1696)
!1698 = !{!1497, !875, i64 40}
!1699 = !{!1497, !875, i64 48}
!1700 = !{!"branch_weights", i32 2000, i32 1}
!1701 = !DILocation(line: 240, column: 3, scope: !1603)
!1702 = !DILocation(line: 241, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1603, file: !438, line: 241, column: 7)
!1704 = !DILocation(line: 241, column: 7, scope: !1603)
!1705 = !DILocation(line: 242, column: 5, scope: !1703)
!1706 = !DILocation(line: 243, column: 1, scope: !1603)
!1707 = !DISubprogram(name: "__vfprintf_chk", scope: !929, file: !929, line: 96, type: !1708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!102, !1616, !102, !933, !450}
!1710 = !DISubprogram(name: "strerror_r", scope: !1059, file: !1059, line: 444, type: !1711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!122, !102, !122, !125}
!1713 = !DISubprogram(name: "__overflow", scope: !449, file: !449, line: 886, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!102, !1617, !102}
!1716 = !DISubprogram(name: "fflush_unlocked", scope: !449, file: !449, line: 239, type: !1717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!102, !1617}
!1719 = !DISubprogram(name: "fcntl", scope: !1720, file: !1720, line: 149, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1720 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!102, !102, !102, null}
!1723 = distinct !DISubprogram(name: "error", scope: !438, file: !438, line: 285, type: !1724, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !102, !102, !128, null}
!1726 = !{!1727, !1728, !1729, !1730}
!1727 = !DILocalVariable(name: "status", arg: 1, scope: !1723, file: !438, line: 285, type: !102)
!1728 = !DILocalVariable(name: "errnum", arg: 2, scope: !1723, file: !438, line: 285, type: !102)
!1729 = !DILocalVariable(name: "message", arg: 3, scope: !1723, file: !438, line: 285, type: !128)
!1730 = !DILocalVariable(name: "ap", scope: !1723, file: !438, line: 287, type: !448)
!1731 = !DILocation(line: 0, scope: !1723)
!1732 = !DILocation(line: 287, column: 3, scope: !1723)
!1733 = !DILocation(line: 287, column: 11, scope: !1723)
!1734 = !DILocation(line: 288, column: 3, scope: !1723)
!1735 = !DILocation(line: 289, column: 3, scope: !1723)
!1736 = !DILocation(line: 290, column: 3, scope: !1723)
!1737 = !DILocation(line: 291, column: 1, scope: !1723)
!1738 = !DILocation(line: 0, scope: !445)
!1739 = !DILocation(line: 298, column: 1, scope: !445)
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
!1779 = !DILocation(line: 0, scope: !1769)
!1780 = !DILocation(line: 362, column: 3, scope: !1769)
!1781 = !DILocation(line: 362, column: 11, scope: !1769)
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
!1853 = !DISubprogram(name: "fileno", scope: !449, file: !449, line: 809, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1854 = !DISubprogram(name: "fclose", scope: !449, file: !449, line: 178, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1855 = !DISubprogram(name: "__freading", scope: !1516, file: !1516, line: 51, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1856 = !DISubprogram(name: "lseek", scope: !1393, file: !1393, line: 339, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
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
!1921 = !DISubprogram(name: "fflush", scope: !449, file: !449, line: 230, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!1922 = distinct !DISubprogram(name: "file_name_concat", scope: !797, file: !797, line: 35, type: !1923, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!122, !128, !128, !1092}
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DILocalVariable(name: "dir", arg: 1, scope: !1922, file: !797, line: 35, type: !128)
!1927 = !DILocalVariable(name: "base", arg: 2, scope: !1922, file: !797, line: 35, type: !128)
!1928 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1922, file: !797, line: 35, type: !1092)
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
!1941 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1937, file: !799, line: 48, type: !1092)
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
!1975 = !DILocalVariable(name: "__dest", arg: 1, scope: !1976, file: !1190, line: 42, type: !1193)
!1976 = distinct !DISubprogram(name: "mempcpy", scope: !1190, file: !1190, line: 42, type: !1191, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !1977)
!1977 = !{!1975, !1978, !1979}
!1978 = !DILocalVariable(name: "__src", arg: 2, scope: !1976, file: !1190, line: 42, type: !1086)
!1979 = !DILocalVariable(name: "__len", arg: 3, scope: !1976, file: !1190, line: 42, type: !125)
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
!1997 = !DISubprogram(name: "malloc", scope: !1063, file: !1063, line: 540, type: !1998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
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
!2047 = !{!1497, !875, i64 16}
!2048 = !DILocation(line: 55, column: 33, scope: !2044)
!2049 = !{!1497, !875, i64 8}
!2050 = !DILocation(line: 55, column: 25, scope: !2044)
!2051 = !DILocation(line: 56, column: 7, scope: !2044)
!2052 = !DILocation(line: 56, column: 15, scope: !2044)
!2053 = !DILocation(line: 56, column: 37, scope: !2044)
!2054 = !{!1497, !875, i64 32}
!2055 = !DILocation(line: 56, column: 29, scope: !2044)
!2056 = !DILocation(line: 57, column: 7, scope: !2044)
!2057 = !DILocation(line: 57, column: 15, scope: !2044)
!2058 = !{!1497, !875, i64 72}
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
!2070 = !{!1497, !1498, i64 144}
!2071 = !DILocation(line: 167, column: 7, scope: !2043)
!2072 = !DILocation(line: 169, column: 10, scope: !2000)
!2073 = !DILocation(line: 169, column: 3, scope: !2000)
!2074 = !DILocation(line: 170, column: 1, scope: !2000)
!2075 = !DISubprogram(name: "fseeko", scope: !449, file: !449, line: 736, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!102, !2003, !252, !102}
!2078 = distinct !DISubprogram(name: "getprogname", scope: !803, file: !803, line: 54, type: !2079, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !927)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!128}
!2081 = !DILocation(line: 58, column: 10, scope: !2078)
!2082 = !DILocation(line: 58, column: 3, scope: !2078)
!2083 = distinct !DISubprogram(name: "set_program_name", scope: !495, file: !495, line: 37, type: !893, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2084)
!2084 = !{!2085, !2086, !2087}
!2085 = !DILocalVariable(name: "argv0", arg: 1, scope: !2083, file: !495, line: 37, type: !128)
!2086 = !DILocalVariable(name: "slash", scope: !2083, file: !495, line: 44, type: !128)
!2087 = !DILocalVariable(name: "base", scope: !2083, file: !495, line: 45, type: !128)
!2088 = !DILocation(line: 0, scope: !2083)
!2089 = !DILocation(line: 44, column: 23, scope: !2083)
!2090 = !DILocation(line: 45, column: 22, scope: !2083)
!2091 = !DILocation(line: 46, column: 17, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !495, line: 46, column: 7)
!2093 = !DILocation(line: 46, column: 9, scope: !2092)
!2094 = !DILocation(line: 46, column: 25, scope: !2092)
!2095 = !DILocation(line: 46, column: 40, scope: !2092)
!2096 = !DILocalVariable(name: "__s1", arg: 1, scope: !2097, file: !955, line: 974, type: !1087)
!2097 = distinct !DISubprogram(name: "memeq", scope: !955, file: !955, line: 974, type: !2098, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!201, !1087, !1087, !125}
!2100 = !{!2096, !2101, !2102}
!2101 = !DILocalVariable(name: "__s2", arg: 2, scope: !2097, file: !955, line: 974, type: !1087)
!2102 = !DILocalVariable(name: "__n", arg: 3, scope: !2097, file: !955, line: 974, type: !125)
!2103 = !DILocation(line: 0, scope: !2097, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 46, column: 28, scope: !2092)
!2105 = !DILocation(line: 976, column: 11, scope: !2097, inlinedAt: !2104)
!2106 = !DILocation(line: 976, column: 10, scope: !2097, inlinedAt: !2104)
!2107 = !DILocation(line: 46, column: 7, scope: !2083)
!2108 = !DILocation(line: 49, column: 11, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !495, line: 49, column: 11)
!2110 = distinct !DILexicalBlock(scope: !2092, file: !495, line: 47, column: 5)
!2111 = !DILocation(line: 49, column: 36, scope: !2109)
!2112 = !DILocation(line: 49, column: 11, scope: !2110)
!2113 = !DILocation(line: 65, column: 16, scope: !2083)
!2114 = !DILocation(line: 71, column: 27, scope: !2083)
!2115 = !DILocation(line: 74, column: 33, scope: !2083)
!2116 = !DILocation(line: 76, column: 1, scope: !2083)
!2117 = !DILocation(line: 0, scope: !504)
!2118 = !DILocation(line: 40, column: 29, scope: !504)
!2119 = !DILocation(line: 41, column: 19, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !504, file: !505, line: 41, column: 7)
!2121 = !DILocation(line: 41, column: 7, scope: !504)
!2122 = !DILocation(line: 47, column: 3, scope: !504)
!2123 = !DILocation(line: 48, column: 3, scope: !504)
!2124 = !DILocation(line: 48, column: 13, scope: !504)
!2125 = !DILocalVariable(name: "ps", arg: 1, scope: !2126, file: !2127, line: 1135, type: !2130)
!2126 = distinct !DISubprogram(name: "mbszero", scope: !2127, file: !2127, line: 1135, type: !2128, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !2131)
!2127 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!2131 = !{!2125}
!2132 = !DILocation(line: 0, scope: !2126, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 48, column: 18, scope: !504)
!2134 = !DILocalVariable(name: "__dest", arg: 1, scope: !2135, file: !1190, line: 57, type: !123)
!2135 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2136, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!123, !123, !102, !125}
!2138 = !{!2134, !2139, !2140}
!2139 = !DILocalVariable(name: "__ch", arg: 2, scope: !2135, file: !1190, line: 57, type: !102)
!2140 = !DILocalVariable(name: "__len", arg: 3, scope: !2135, file: !1190, line: 57, type: !125)
!2141 = !DILocation(line: 0, scope: !2135, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 1137, column: 3, scope: !2126, inlinedAt: !2133)
!2143 = !DILocation(line: 59, column: 10, scope: !2135, inlinedAt: !2142)
!2144 = !DILocation(line: 49, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !504, file: !505, line: 49, column: 7)
!2146 = !DILocation(line: 49, column: 39, scope: !2145)
!2147 = !DILocation(line: 49, column: 44, scope: !2145)
!2148 = !DILocation(line: 54, column: 1, scope: !504)
!2149 = !DISubprogram(name: "mbrtoc32", scope: !516, file: !516, line: 57, type: !2150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!125, !2152, !933, !125, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2130)
!2155 = distinct !DISubprogram(name: "clone_quoting_options", scope: !535, file: !535, line: 113, type: !2156, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2159)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!2158, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!2159 = !{!2160, !2161, !2162}
!2160 = !DILocalVariable(name: "o", arg: 1, scope: !2155, file: !535, line: 113, type: !2158)
!2161 = !DILocalVariable(name: "saved_errno", scope: !2155, file: !535, line: 115, type: !102)
!2162 = !DILocalVariable(name: "p", scope: !2155, file: !535, line: 116, type: !2158)
!2163 = !DILocation(line: 0, scope: !2155)
!2164 = !DILocation(line: 115, column: 21, scope: !2155)
!2165 = !DILocation(line: 116, column: 40, scope: !2155)
!2166 = !DILocation(line: 116, column: 31, scope: !2155)
!2167 = !DILocation(line: 118, column: 9, scope: !2155)
!2168 = !DILocation(line: 119, column: 3, scope: !2155)
!2169 = distinct !DISubprogram(name: "get_quoting_style", scope: !535, file: !535, line: 124, type: !2170, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2174)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!558, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!2174 = !{!2175}
!2175 = !DILocalVariable(name: "o", arg: 1, scope: !2169, file: !535, line: 124, type: !2172)
!2176 = !DILocation(line: 0, scope: !2169)
!2177 = !DILocation(line: 126, column: 11, scope: !2169)
!2178 = !DILocation(line: 126, column: 46, scope: !2169)
!2179 = !{!2180, !876, i64 0}
!2180 = !{!"quoting_options", !876, i64 0, !943, i64 4, !876, i64 8, !875, i64 40, !875, i64 48}
!2181 = !DILocation(line: 126, column: 3, scope: !2169)
!2182 = distinct !DISubprogram(name: "set_quoting_style", scope: !535, file: !535, line: 132, type: !2183, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2158, !558}
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "o", arg: 1, scope: !2182, file: !535, line: 132, type: !2158)
!2187 = !DILocalVariable(name: "s", arg: 2, scope: !2182, file: !535, line: 132, type: !558)
!2188 = !DILocation(line: 0, scope: !2182)
!2189 = !DILocation(line: 134, column: 4, scope: !2182)
!2190 = !DILocation(line: 134, column: 45, scope: !2182)
!2191 = !DILocation(line: 135, column: 1, scope: !2182)
!2192 = distinct !DISubprogram(name: "set_char_quoting", scope: !535, file: !535, line: 143, type: !2193, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!102, !2158, !4, !102}
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2202, !2203}
!2196 = !DILocalVariable(name: "o", arg: 1, scope: !2192, file: !535, line: 143, type: !2158)
!2197 = !DILocalVariable(name: "c", arg: 2, scope: !2192, file: !535, line: 143, type: !4)
!2198 = !DILocalVariable(name: "i", arg: 3, scope: !2192, file: !535, line: 143, type: !102)
!2199 = !DILocalVariable(name: "uc", scope: !2192, file: !535, line: 145, type: !130)
!2200 = !DILocalVariable(name: "p", scope: !2192, file: !535, line: 146, type: !2201)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2202 = !DILocalVariable(name: "shift", scope: !2192, file: !535, line: 148, type: !102)
!2203 = !DILocalVariable(name: "r", scope: !2192, file: !535, line: 149, type: !97)
!2204 = !DILocation(line: 0, scope: !2192)
!2205 = !DILocation(line: 147, column: 6, scope: !2192)
!2206 = !DILocation(line: 147, column: 41, scope: !2192)
!2207 = !DILocation(line: 147, column: 62, scope: !2192)
!2208 = !DILocation(line: 147, column: 57, scope: !2192)
!2209 = !DILocation(line: 148, column: 15, scope: !2192)
!2210 = !DILocation(line: 149, column: 21, scope: !2192)
!2211 = !DILocation(line: 149, column: 24, scope: !2192)
!2212 = !DILocation(line: 149, column: 34, scope: !2192)
!2213 = !DILocation(line: 150, column: 19, scope: !2192)
!2214 = !DILocation(line: 150, column: 24, scope: !2192)
!2215 = !DILocation(line: 150, column: 6, scope: !2192)
!2216 = !DILocation(line: 151, column: 3, scope: !2192)
!2217 = distinct !DISubprogram(name: "set_quoting_flags", scope: !535, file: !535, line: 159, type: !2218, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!102, !2158, !102}
!2220 = !{!2221, !2222, !2223}
!2221 = !DILocalVariable(name: "o", arg: 1, scope: !2217, file: !535, line: 159, type: !2158)
!2222 = !DILocalVariable(name: "i", arg: 2, scope: !2217, file: !535, line: 159, type: !102)
!2223 = !DILocalVariable(name: "r", scope: !2217, file: !535, line: 163, type: !102)
!2224 = !DILocation(line: 0, scope: !2217)
!2225 = !DILocation(line: 161, column: 8, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2217, file: !535, line: 161, column: 7)
!2227 = !DILocation(line: 161, column: 7, scope: !2217)
!2228 = !DILocation(line: 163, column: 14, scope: !2217)
!2229 = !{!2180, !943, i64 4}
!2230 = !DILocation(line: 164, column: 12, scope: !2217)
!2231 = !DILocation(line: 165, column: 3, scope: !2217)
!2232 = distinct !DISubprogram(name: "set_custom_quoting", scope: !535, file: !535, line: 169, type: !2233, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2158, !128, !128}
!2235 = !{!2236, !2237, !2238}
!2236 = !DILocalVariable(name: "o", arg: 1, scope: !2232, file: !535, line: 169, type: !2158)
!2237 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2232, file: !535, line: 170, type: !128)
!2238 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2232, file: !535, line: 170, type: !128)
!2239 = !DILocation(line: 0, scope: !2232)
!2240 = !DILocation(line: 172, column: 8, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2232, file: !535, line: 172, column: 7)
!2242 = !DILocation(line: 172, column: 7, scope: !2232)
!2243 = !DILocation(line: 174, column: 12, scope: !2232)
!2244 = !DILocation(line: 175, column: 8, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2232, file: !535, line: 175, column: 7)
!2246 = !DILocation(line: 175, column: 19, scope: !2245)
!2247 = !DILocation(line: 176, column: 5, scope: !2245)
!2248 = !DILocation(line: 177, column: 6, scope: !2232)
!2249 = !DILocation(line: 177, column: 17, scope: !2232)
!2250 = !{!2180, !875, i64 40}
!2251 = !DILocation(line: 178, column: 6, scope: !2232)
!2252 = !DILocation(line: 178, column: 18, scope: !2232)
!2253 = !{!2180, !875, i64 48}
!2254 = !DILocation(line: 179, column: 1, scope: !2232)
!2255 = !DISubprogram(name: "abort", scope: !1063, file: !1063, line: 598, type: !490, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !927)
!2256 = distinct !DISubprogram(name: "quotearg_buffer", scope: !535, file: !535, line: 774, type: !2257, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!125, !122, !125, !128, !125, !2172}
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267}
!2260 = !DILocalVariable(name: "buffer", arg: 1, scope: !2256, file: !535, line: 774, type: !122)
!2261 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2256, file: !535, line: 774, type: !125)
!2262 = !DILocalVariable(name: "arg", arg: 3, scope: !2256, file: !535, line: 775, type: !128)
!2263 = !DILocalVariable(name: "argsize", arg: 4, scope: !2256, file: !535, line: 775, type: !125)
!2264 = !DILocalVariable(name: "o", arg: 5, scope: !2256, file: !535, line: 776, type: !2172)
!2265 = !DILocalVariable(name: "p", scope: !2256, file: !535, line: 778, type: !2172)
!2266 = !DILocalVariable(name: "saved_errno", scope: !2256, file: !535, line: 779, type: !102)
!2267 = !DILocalVariable(name: "r", scope: !2256, file: !535, line: 780, type: !125)
!2268 = !DILocation(line: 0, scope: !2256)
!2269 = !DILocation(line: 778, column: 37, scope: !2256)
!2270 = !DILocation(line: 779, column: 21, scope: !2256)
!2271 = !DILocation(line: 781, column: 43, scope: !2256)
!2272 = !DILocation(line: 781, column: 53, scope: !2256)
!2273 = !DILocation(line: 781, column: 63, scope: !2256)
!2274 = !DILocation(line: 782, column: 43, scope: !2256)
!2275 = !DILocation(line: 782, column: 58, scope: !2256)
!2276 = !DILocation(line: 780, column: 14, scope: !2256)
!2277 = !DILocation(line: 783, column: 9, scope: !2256)
!2278 = !DILocation(line: 784, column: 3, scope: !2256)
!2279 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !535, file: !535, line: 251, type: !2280, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2284)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!125, !122, !125, !128, !125, !558, !102, !2282, !128, !128}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2309, !2311, !2314, !2315, !2316, !2317, !2320, !2321, !2324, !2328, !2329, !2337, !2340, !2341, !2343, !2344, !2345, !2346}
!2285 = !DILocalVariable(name: "buffer", arg: 1, scope: !2279, file: !535, line: 251, type: !122)
!2286 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2279, file: !535, line: 251, type: !125)
!2287 = !DILocalVariable(name: "arg", arg: 3, scope: !2279, file: !535, line: 252, type: !128)
!2288 = !DILocalVariable(name: "argsize", arg: 4, scope: !2279, file: !535, line: 252, type: !125)
!2289 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2279, file: !535, line: 253, type: !558)
!2290 = !DILocalVariable(name: "flags", arg: 6, scope: !2279, file: !535, line: 253, type: !102)
!2291 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2279, file: !535, line: 254, type: !2282)
!2292 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2279, file: !535, line: 255, type: !128)
!2293 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2279, file: !535, line: 256, type: !128)
!2294 = !DILocalVariable(name: "unibyte_locale", scope: !2279, file: !535, line: 258, type: !201)
!2295 = !DILocalVariable(name: "len", scope: !2279, file: !535, line: 260, type: !125)
!2296 = !DILocalVariable(name: "orig_buffersize", scope: !2279, file: !535, line: 261, type: !125)
!2297 = !DILocalVariable(name: "quote_string", scope: !2279, file: !535, line: 262, type: !128)
!2298 = !DILocalVariable(name: "quote_string_len", scope: !2279, file: !535, line: 263, type: !125)
!2299 = !DILocalVariable(name: "backslash_escapes", scope: !2279, file: !535, line: 264, type: !201)
!2300 = !DILocalVariable(name: "elide_outer_quotes", scope: !2279, file: !535, line: 265, type: !201)
!2301 = !DILocalVariable(name: "encountered_single_quote", scope: !2279, file: !535, line: 266, type: !201)
!2302 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2279, file: !535, line: 267, type: !201)
!2303 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2279, file: !535, line: 309, type: !201)
!2304 = !DILocalVariable(name: "lq", scope: !2305, file: !535, line: 361, type: !128)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !535, line: 361, column: 11)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !535, line: 360, column: 13)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !535, line: 333, column: 7)
!2308 = distinct !DILexicalBlock(scope: !2279, file: !535, line: 312, column: 5)
!2309 = !DILocalVariable(name: "i", scope: !2310, file: !535, line: 395, type: !125)
!2310 = distinct !DILexicalBlock(scope: !2279, file: !535, line: 395, column: 3)
!2311 = !DILocalVariable(name: "is_right_quote", scope: !2312, file: !535, line: 397, type: !201)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !535, line: 396, column: 5)
!2313 = distinct !DILexicalBlock(scope: !2310, file: !535, line: 395, column: 3)
!2314 = !DILocalVariable(name: "escaping", scope: !2312, file: !535, line: 398, type: !201)
!2315 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2312, file: !535, line: 399, type: !201)
!2316 = !DILocalVariable(name: "c", scope: !2312, file: !535, line: 417, type: !130)
!2317 = !DILocalVariable(name: "m", scope: !2318, file: !535, line: 598, type: !125)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 596, column: 11)
!2319 = distinct !DILexicalBlock(scope: !2312, file: !535, line: 419, column: 9)
!2320 = !DILocalVariable(name: "printable", scope: !2318, file: !535, line: 600, type: !201)
!2321 = !DILocalVariable(name: "mbs", scope: !2322, file: !535, line: 609, type: !619)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !535, line: 608, column: 15)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !535, line: 602, column: 17)
!2324 = !DILocalVariable(name: "w", scope: !2325, file: !535, line: 618, type: !515)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !535, line: 617, column: 19)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !535, line: 616, column: 17)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !535, line: 616, column: 17)
!2328 = !DILocalVariable(name: "bytes", scope: !2325, file: !535, line: 619, type: !125)
!2329 = !DILocalVariable(name: "j", scope: !2330, file: !535, line: 648, type: !125)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !535, line: 648, column: 29)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !535, line: 647, column: 27)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !535, line: 645, column: 29)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !535, line: 636, column: 23)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !535, line: 628, column: 30)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !535, line: 623, column: 30)
!2336 = distinct !DILexicalBlock(scope: !2325, file: !535, line: 621, column: 25)
!2337 = !DILocalVariable(name: "ilim", scope: !2338, file: !535, line: 674, type: !125)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !535, line: 671, column: 15)
!2339 = distinct !DILexicalBlock(scope: !2318, file: !535, line: 670, column: 17)
!2340 = !DILabel(scope: !2279, name: "process_input", file: !535, line: 308)
!2341 = !DILabel(scope: !2342, name: "c_and_shell_escape", file: !535, line: 502)
!2342 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 478, column: 9)
!2343 = !DILabel(scope: !2342, name: "c_escape", file: !535, line: 507)
!2344 = !DILabel(scope: !2312, name: "store_escape", file: !535, line: 709)
!2345 = !DILabel(scope: !2312, name: "store_c", file: !535, line: 712)
!2346 = !DILabel(scope: !2279, name: "force_outer_quoting_style", file: !535, line: 753)
!2347 = !DILocation(line: 0, scope: !2279)
!2348 = !DILocation(line: 258, column: 25, scope: !2279)
!2349 = !DILocation(line: 258, column: 36, scope: !2279)
!2350 = !DILocation(line: 267, column: 3, scope: !2279)
!2351 = !DILocation(line: 261, column: 10, scope: !2279)
!2352 = !DILocation(line: 262, column: 15, scope: !2279)
!2353 = !DILocation(line: 263, column: 10, scope: !2279)
!2354 = !DILocation(line: 308, column: 2, scope: !2279)
!2355 = !DILocation(line: 311, column: 3, scope: !2279)
!2356 = !DILocation(line: 318, column: 11, scope: !2308)
!2357 = !DILocation(line: 319, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !535, line: 319, column: 9)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !535, line: 319, column: 9)
!2360 = distinct !DILexicalBlock(scope: !2308, file: !535, line: 318, column: 11)
!2361 = !DILocation(line: 319, column: 9, scope: !2359)
!2362 = !DILocation(line: 0, scope: !610, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 357, column: 26, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !535, line: 335, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2307, file: !535, line: 334, column: 13)
!2366 = !DILocation(line: 199, column: 29, scope: !610, inlinedAt: !2363)
!2367 = !DILocation(line: 201, column: 19, scope: !2368, inlinedAt: !2363)
!2368 = distinct !DILexicalBlock(scope: !610, file: !535, line: 201, column: 7)
!2369 = !DILocation(line: 201, column: 7, scope: !610, inlinedAt: !2363)
!2370 = !DILocation(line: 229, column: 3, scope: !610, inlinedAt: !2363)
!2371 = !DILocation(line: 230, column: 3, scope: !610, inlinedAt: !2363)
!2372 = !DILocation(line: 230, column: 13, scope: !610, inlinedAt: !2363)
!2373 = !DILocalVariable(name: "ps", arg: 1, scope: !2374, file: !2127, line: 1135, type: !2377)
!2374 = distinct !DISubprogram(name: "mbszero", scope: !2127, file: !2127, line: 1135, type: !2375, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2378)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!2378 = !{!2373}
!2379 = !DILocation(line: 0, scope: !2374, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 230, column: 18, scope: !610, inlinedAt: !2363)
!2381 = !DILocalVariable(name: "__dest", arg: 1, scope: !2382, file: !1190, line: 57, type: !123)
!2382 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2136, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2383)
!2383 = !{!2381, !2384, !2385}
!2384 = !DILocalVariable(name: "__ch", arg: 2, scope: !2382, file: !1190, line: 57, type: !102)
!2385 = !DILocalVariable(name: "__len", arg: 3, scope: !2382, file: !1190, line: 57, type: !125)
!2386 = !DILocation(line: 0, scope: !2382, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 1137, column: 3, scope: !2374, inlinedAt: !2380)
!2388 = !DILocation(line: 59, column: 10, scope: !2382, inlinedAt: !2387)
!2389 = !DILocation(line: 231, column: 7, scope: !2390, inlinedAt: !2363)
!2390 = distinct !DILexicalBlock(scope: !610, file: !535, line: 231, column: 7)
!2391 = !DILocation(line: 231, column: 40, scope: !2390, inlinedAt: !2363)
!2392 = !DILocation(line: 231, column: 45, scope: !2390, inlinedAt: !2363)
!2393 = !DILocation(line: 235, column: 1, scope: !610, inlinedAt: !2363)
!2394 = !DILocation(line: 0, scope: !610, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 358, column: 27, scope: !2364)
!2396 = !DILocation(line: 199, column: 29, scope: !610, inlinedAt: !2395)
!2397 = !DILocation(line: 201, column: 19, scope: !2368, inlinedAt: !2395)
!2398 = !DILocation(line: 201, column: 7, scope: !610, inlinedAt: !2395)
!2399 = !DILocation(line: 229, column: 3, scope: !610, inlinedAt: !2395)
!2400 = !DILocation(line: 230, column: 3, scope: !610, inlinedAt: !2395)
!2401 = !DILocation(line: 230, column: 13, scope: !610, inlinedAt: !2395)
!2402 = !DILocation(line: 0, scope: !2374, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 230, column: 18, scope: !610, inlinedAt: !2395)
!2404 = !DILocation(line: 0, scope: !2382, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1137, column: 3, scope: !2374, inlinedAt: !2403)
!2406 = !DILocation(line: 59, column: 10, scope: !2382, inlinedAt: !2405)
!2407 = !DILocation(line: 231, column: 7, scope: !2390, inlinedAt: !2395)
!2408 = !DILocation(line: 231, column: 40, scope: !2390, inlinedAt: !2395)
!2409 = !DILocation(line: 231, column: 45, scope: !2390, inlinedAt: !2395)
!2410 = !DILocation(line: 235, column: 1, scope: !610, inlinedAt: !2395)
!2411 = !DILocation(line: 360, column: 13, scope: !2307)
!2412 = !DILocation(line: 0, scope: !2305)
!2413 = !DILocation(line: 361, column: 45, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2305, file: !535, line: 361, column: 11)
!2415 = !DILocation(line: 361, column: 11, scope: !2305)
!2416 = !DILocation(line: 362, column: 13, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !535, line: 362, column: 13)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !535, line: 362, column: 13)
!2419 = !DILocation(line: 362, column: 13, scope: !2418)
!2420 = !DILocation(line: 361, column: 52, scope: !2414)
!2421 = distinct !{!2421, !2415, !2422, !989}
!2422 = !DILocation(line: 362, column: 13, scope: !2305)
!2423 = !DILocation(line: 260, column: 10, scope: !2279)
!2424 = !DILocation(line: 365, column: 28, scope: !2307)
!2425 = !DILocation(line: 367, column: 7, scope: !2308)
!2426 = !DILocation(line: 370, column: 7, scope: !2308)
!2427 = !DILocation(line: 376, column: 11, scope: !2308)
!2428 = !DILocation(line: 381, column: 11, scope: !2308)
!2429 = !DILocation(line: 382, column: 9, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !535, line: 382, column: 9)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !535, line: 382, column: 9)
!2432 = distinct !DILexicalBlock(scope: !2308, file: !535, line: 381, column: 11)
!2433 = !DILocation(line: 382, column: 9, scope: !2431)
!2434 = !DILocation(line: 389, column: 7, scope: !2308)
!2435 = !DILocation(line: 392, column: 7, scope: !2308)
!2436 = !DILocation(line: 0, scope: !2310)
!2437 = !DILocation(line: 395, column: 8, scope: !2310)
!2438 = !DILocation(line: 395, scope: !2310)
!2439 = !DILocation(line: 395, column: 34, scope: !2313)
!2440 = !DILocation(line: 395, column: 26, scope: !2313)
!2441 = !DILocation(line: 395, column: 48, scope: !2313)
!2442 = !DILocation(line: 395, column: 55, scope: !2313)
!2443 = !DILocation(line: 395, column: 3, scope: !2310)
!2444 = !DILocation(line: 395, column: 67, scope: !2313)
!2445 = !DILocation(line: 0, scope: !2312)
!2446 = !DILocation(line: 402, column: 11, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2312, file: !535, line: 401, column: 11)
!2448 = !DILocation(line: 404, column: 17, scope: !2447)
!2449 = !DILocation(line: 405, column: 39, scope: !2447)
!2450 = !DILocation(line: 409, column: 32, scope: !2447)
!2451 = !DILocation(line: 405, column: 19, scope: !2447)
!2452 = !DILocation(line: 405, column: 15, scope: !2447)
!2453 = !DILocation(line: 410, column: 11, scope: !2447)
!2454 = !DILocation(line: 410, column: 25, scope: !2447)
!2455 = !DILocalVariable(name: "__s1", arg: 1, scope: !2456, file: !955, line: 974, type: !1087)
!2456 = distinct !DISubprogram(name: "memeq", scope: !955, file: !955, line: 974, type: !2098, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2457)
!2457 = !{!2455, !2458, !2459}
!2458 = !DILocalVariable(name: "__s2", arg: 2, scope: !2456, file: !955, line: 974, type: !1087)
!2459 = !DILocalVariable(name: "__n", arg: 3, scope: !2456, file: !955, line: 974, type: !125)
!2460 = !DILocation(line: 0, scope: !2456, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 410, column: 14, scope: !2447)
!2462 = !DILocation(line: 976, column: 11, scope: !2456, inlinedAt: !2461)
!2463 = !DILocation(line: 976, column: 10, scope: !2456, inlinedAt: !2461)
!2464 = !DILocation(line: 401, column: 11, scope: !2312)
!2465 = !DILocation(line: 417, column: 25, scope: !2312)
!2466 = !DILocation(line: 418, column: 7, scope: !2312)
!2467 = !DILocation(line: 421, column: 15, scope: !2319)
!2468 = !DILocation(line: 423, column: 15, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !535, line: 423, column: 15)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !535, line: 422, column: 13)
!2471 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 421, column: 15)
!2472 = !DILocation(line: 423, column: 15, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !535, line: 423, column: 15)
!2474 = !DILocation(line: 423, column: 15, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !535, line: 423, column: 15)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !535, line: 423, column: 15)
!2477 = distinct !DILexicalBlock(scope: !2473, file: !535, line: 423, column: 15)
!2478 = !DILocation(line: 423, column: 15, scope: !2476)
!2479 = !DILocation(line: 423, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !535, line: 423, column: 15)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !535, line: 423, column: 15)
!2482 = !DILocation(line: 423, column: 15, scope: !2481)
!2483 = !DILocation(line: 423, column: 15, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !535, line: 423, column: 15)
!2485 = distinct !DILexicalBlock(scope: !2477, file: !535, line: 423, column: 15)
!2486 = !DILocation(line: 423, column: 15, scope: !2485)
!2487 = !DILocation(line: 423, column: 15, scope: !2477)
!2488 = !DILocation(line: 423, column: 15, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !535, line: 423, column: 15)
!2490 = distinct !DILexicalBlock(scope: !2469, file: !535, line: 423, column: 15)
!2491 = !DILocation(line: 423, column: 15, scope: !2490)
!2492 = !DILocation(line: 431, column: 19, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2470, file: !535, line: 430, column: 19)
!2494 = !DILocation(line: 431, column: 24, scope: !2493)
!2495 = !DILocation(line: 431, column: 28, scope: !2493)
!2496 = !DILocation(line: 431, column: 38, scope: !2493)
!2497 = !DILocation(line: 431, column: 48, scope: !2493)
!2498 = !DILocation(line: 431, column: 59, scope: !2493)
!2499 = !DILocation(line: 433, column: 19, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !535, line: 433, column: 19)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !535, line: 433, column: 19)
!2502 = distinct !DILexicalBlock(scope: !2493, file: !535, line: 432, column: 17)
!2503 = !DILocation(line: 433, column: 19, scope: !2501)
!2504 = !DILocation(line: 434, column: 19, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !535, line: 434, column: 19)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !535, line: 434, column: 19)
!2507 = !DILocation(line: 434, column: 19, scope: !2506)
!2508 = !DILocation(line: 435, column: 17, scope: !2502)
!2509 = !DILocation(line: 442, column: 20, scope: !2471)
!2510 = !DILocation(line: 447, column: 11, scope: !2319)
!2511 = !DILocation(line: 450, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 448, column: 13)
!2513 = !DILocation(line: 456, column: 19, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2512, file: !535, line: 455, column: 19)
!2515 = !DILocation(line: 456, column: 24, scope: !2514)
!2516 = !DILocation(line: 456, column: 28, scope: !2514)
!2517 = !DILocation(line: 456, column: 38, scope: !2514)
!2518 = !DILocation(line: 456, column: 47, scope: !2514)
!2519 = !DILocation(line: 456, column: 41, scope: !2514)
!2520 = !DILocation(line: 456, column: 52, scope: !2514)
!2521 = !DILocation(line: 455, column: 19, scope: !2512)
!2522 = !DILocation(line: 457, column: 25, scope: !2514)
!2523 = !DILocation(line: 457, column: 17, scope: !2514)
!2524 = !DILocation(line: 464, column: 25, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2514, file: !535, line: 458, column: 19)
!2526 = !DILocation(line: 468, column: 21, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !535, line: 468, column: 21)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !535, line: 468, column: 21)
!2529 = !DILocation(line: 468, column: 21, scope: !2528)
!2530 = !DILocation(line: 469, column: 21, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !535, line: 469, column: 21)
!2532 = distinct !DILexicalBlock(scope: !2525, file: !535, line: 469, column: 21)
!2533 = !DILocation(line: 469, column: 21, scope: !2532)
!2534 = !DILocation(line: 470, column: 21, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !535, line: 470, column: 21)
!2536 = distinct !DILexicalBlock(scope: !2525, file: !535, line: 470, column: 21)
!2537 = !DILocation(line: 470, column: 21, scope: !2536)
!2538 = !DILocation(line: 471, column: 21, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !535, line: 471, column: 21)
!2540 = distinct !DILexicalBlock(scope: !2525, file: !535, line: 471, column: 21)
!2541 = !DILocation(line: 471, column: 21, scope: !2540)
!2542 = !DILocation(line: 472, column: 21, scope: !2525)
!2543 = !DILocation(line: 482, column: 33, scope: !2342)
!2544 = !DILocation(line: 483, column: 33, scope: !2342)
!2545 = !DILocation(line: 485, column: 33, scope: !2342)
!2546 = !DILocation(line: 486, column: 33, scope: !2342)
!2547 = !DILocation(line: 487, column: 33, scope: !2342)
!2548 = !DILocation(line: 490, column: 17, scope: !2342)
!2549 = !DILocation(line: 492, column: 21, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !535, line: 491, column: 15)
!2551 = distinct !DILexicalBlock(scope: !2342, file: !535, line: 490, column: 17)
!2552 = !DILocation(line: 499, column: 35, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2342, file: !535, line: 499, column: 17)
!2554 = !DILocation(line: 0, scope: !2342)
!2555 = !DILocation(line: 502, column: 11, scope: !2342)
!2556 = !DILocation(line: 504, column: 17, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2342, file: !535, line: 503, column: 17)
!2558 = !DILocation(line: 507, column: 11, scope: !2342)
!2559 = !DILocation(line: 508, column: 17, scope: !2342)
!2560 = !DILocation(line: 517, column: 15, scope: !2319)
!2561 = !DILocation(line: 517, column: 40, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 517, column: 15)
!2563 = !DILocation(line: 517, column: 47, scope: !2562)
!2564 = !DILocation(line: 517, column: 18, scope: !2562)
!2565 = !DILocation(line: 521, column: 17, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 521, column: 15)
!2567 = !DILocation(line: 521, column: 15, scope: !2319)
!2568 = !DILocation(line: 525, column: 11, scope: !2319)
!2569 = !DILocation(line: 537, column: 15, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 536, column: 15)
!2571 = !DILocation(line: 536, column: 15, scope: !2319)
!2572 = !DILocation(line: 544, column: 15, scope: !2319)
!2573 = !DILocation(line: 546, column: 19, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !535, line: 545, column: 13)
!2575 = distinct !DILexicalBlock(scope: !2319, file: !535, line: 544, column: 15)
!2576 = !DILocation(line: 549, column: 19, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !535, line: 549, column: 19)
!2578 = !DILocation(line: 549, column: 30, scope: !2577)
!2579 = !DILocation(line: 558, column: 15, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !535, line: 558, column: 15)
!2581 = distinct !DILexicalBlock(scope: !2574, file: !535, line: 558, column: 15)
!2582 = !DILocation(line: 558, column: 15, scope: !2581)
!2583 = !DILocation(line: 559, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !535, line: 559, column: 15)
!2585 = distinct !DILexicalBlock(scope: !2574, file: !535, line: 559, column: 15)
!2586 = !DILocation(line: 559, column: 15, scope: !2585)
!2587 = !DILocation(line: 560, column: 15, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !535, line: 560, column: 15)
!2589 = distinct !DILexicalBlock(scope: !2574, file: !535, line: 560, column: 15)
!2590 = !DILocation(line: 560, column: 15, scope: !2589)
!2591 = !DILocation(line: 562, column: 13, scope: !2574)
!2592 = !DILocation(line: 602, column: 17, scope: !2318)
!2593 = !DILocation(line: 0, scope: !2318)
!2594 = !DILocation(line: 605, column: 29, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2323, file: !535, line: 603, column: 15)
!2596 = !DILocation(line: 605, column: 41, scope: !2595)
!2597 = !DILocation(line: 606, column: 15, scope: !2595)
!2598 = !DILocation(line: 609, column: 17, scope: !2322)
!2599 = !DILocation(line: 609, column: 27, scope: !2322)
!2600 = !DILocation(line: 0, scope: !2374, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 609, column: 32, scope: !2322)
!2602 = !DILocation(line: 0, scope: !2382, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 1137, column: 3, scope: !2374, inlinedAt: !2601)
!2604 = !DILocation(line: 59, column: 10, scope: !2382, inlinedAt: !2603)
!2605 = !DILocation(line: 613, column: 29, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2322, file: !535, line: 613, column: 21)
!2607 = !DILocation(line: 613, column: 21, scope: !2322)
!2608 = !DILocation(line: 614, column: 29, scope: !2606)
!2609 = !DILocation(line: 614, column: 19, scope: !2606)
!2610 = !DILocation(line: 618, column: 21, scope: !2325)
!2611 = !DILocation(line: 620, column: 54, scope: !2325)
!2612 = !DILocation(line: 0, scope: !2325)
!2613 = !DILocation(line: 619, column: 36, scope: !2325)
!2614 = !DILocation(line: 621, column: 25, scope: !2325)
!2615 = !DILocation(line: 631, column: 38, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2334, file: !535, line: 629, column: 23)
!2617 = !DILocation(line: 631, column: 48, scope: !2616)
!2618 = !DILocation(line: 626, column: 25, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2335, file: !535, line: 624, column: 23)
!2620 = !DILocation(line: 631, column: 51, scope: !2616)
!2621 = !DILocation(line: 631, column: 25, scope: !2616)
!2622 = !DILocation(line: 632, column: 28, scope: !2616)
!2623 = !DILocation(line: 631, column: 34, scope: !2616)
!2624 = distinct !{!2624, !2621, !2622, !989}
!2625 = !DILocation(line: 646, column: 29, scope: !2332)
!2626 = !DILocation(line: 0, scope: !2330)
!2627 = !DILocation(line: 649, column: 49, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2330, file: !535, line: 648, column: 29)
!2629 = !DILocation(line: 649, column: 39, scope: !2628)
!2630 = !DILocation(line: 649, column: 31, scope: !2628)
!2631 = !DILocation(line: 648, column: 60, scope: !2628)
!2632 = !DILocation(line: 648, column: 50, scope: !2628)
!2633 = !DILocation(line: 648, column: 29, scope: !2330)
!2634 = distinct !{!2634, !2633, !2635, !989}
!2635 = !DILocation(line: 654, column: 33, scope: !2330)
!2636 = !DILocation(line: 657, column: 43, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2333, file: !535, line: 657, column: 29)
!2638 = !DILocalVariable(name: "wc", arg: 1, scope: !2639, file: !2640, line: 865, type: !2643)
!2639 = distinct !DISubprogram(name: "c32isprint", scope: !2640, file: !2640, line: 865, type: !2641, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2645)
!2640 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!102, !2643}
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2644, line: 20, baseType: !97)
!2644 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2645 = !{!2638}
!2646 = !DILocation(line: 0, scope: !2639, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 657, column: 31, scope: !2637)
!2648 = !DILocation(line: 871, column: 10, scope: !2639, inlinedAt: !2647)
!2649 = !DILocation(line: 657, column: 31, scope: !2637)
!2650 = !DILocation(line: 664, column: 23, scope: !2325)
!2651 = !DILocation(line: 665, column: 19, scope: !2326)
!2652 = !DILocation(line: 666, column: 15, scope: !2323)
!2653 = !DILocation(line: 753, column: 2, scope: !2279)
!2654 = !DILocation(line: 756, column: 51, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2279, file: !535, line: 756, column: 7)
!2656 = !DILocation(line: 0, scope: !2323)
!2657 = !DILocation(line: 670, column: 19, scope: !2339)
!2658 = !DILocation(line: 670, column: 23, scope: !2339)
!2659 = !DILocation(line: 674, column: 33, scope: !2338)
!2660 = !DILocation(line: 0, scope: !2338)
!2661 = !DILocation(line: 676, column: 17, scope: !2338)
!2662 = !DILocation(line: 398, column: 12, scope: !2312)
!2663 = !DILocation(line: 678, column: 43, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !535, line: 678, column: 25)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !535, line: 677, column: 19)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !535, line: 676, column: 17)
!2667 = distinct !DILexicalBlock(scope: !2338, file: !535, line: 676, column: 17)
!2668 = !DILocation(line: 680, column: 25, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !535, line: 680, column: 25)
!2670 = distinct !DILexicalBlock(scope: !2664, file: !535, line: 679, column: 23)
!2671 = !DILocation(line: 680, column: 25, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !535, line: 680, column: 25)
!2673 = !DILocation(line: 680, column: 25, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !535, line: 680, column: 25)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !535, line: 680, column: 25)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !535, line: 680, column: 25)
!2677 = !DILocation(line: 680, column: 25, scope: !2675)
!2678 = !DILocation(line: 680, column: 25, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !535, line: 680, column: 25)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !535, line: 680, column: 25)
!2681 = !DILocation(line: 680, column: 25, scope: !2680)
!2682 = !DILocation(line: 680, column: 25, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !535, line: 680, column: 25)
!2684 = distinct !DILexicalBlock(scope: !2676, file: !535, line: 680, column: 25)
!2685 = !DILocation(line: 680, column: 25, scope: !2684)
!2686 = !DILocation(line: 680, column: 25, scope: !2676)
!2687 = !DILocation(line: 680, column: 25, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !535, line: 680, column: 25)
!2689 = distinct !DILexicalBlock(scope: !2669, file: !535, line: 680, column: 25)
!2690 = !DILocation(line: 680, column: 25, scope: !2689)
!2691 = !DILocation(line: 681, column: 25, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !535, line: 681, column: 25)
!2693 = distinct !DILexicalBlock(scope: !2670, file: !535, line: 681, column: 25)
!2694 = !DILocation(line: 681, column: 25, scope: !2693)
!2695 = !DILocation(line: 682, column: 25, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !535, line: 682, column: 25)
!2697 = distinct !DILexicalBlock(scope: !2670, file: !535, line: 682, column: 25)
!2698 = !DILocation(line: 682, column: 25, scope: !2697)
!2699 = !DILocation(line: 683, column: 38, scope: !2670)
!2700 = !DILocation(line: 683, column: 33, scope: !2670)
!2701 = !DILocation(line: 684, column: 23, scope: !2670)
!2702 = !DILocation(line: 685, column: 30, scope: !2664)
!2703 = !DILocation(line: 687, column: 25, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !535, line: 687, column: 25)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !535, line: 687, column: 25)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !535, line: 686, column: 23)
!2707 = distinct !DILexicalBlock(scope: !2664, file: !535, line: 685, column: 30)
!2708 = !DILocation(line: 687, column: 25, scope: !2705)
!2709 = !DILocation(line: 689, column: 23, scope: !2706)
!2710 = !DILocation(line: 690, column: 35, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2665, file: !535, line: 690, column: 25)
!2712 = !DILocation(line: 690, column: 30, scope: !2711)
!2713 = !DILocation(line: 690, column: 25, scope: !2665)
!2714 = !DILocation(line: 692, column: 21, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !535, line: 692, column: 21)
!2716 = distinct !DILexicalBlock(scope: !2665, file: !535, line: 692, column: 21)
!2717 = !DILocation(line: 692, column: 21, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !535, line: 692, column: 21)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !535, line: 692, column: 21)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !535, line: 692, column: 21)
!2721 = !DILocation(line: 692, column: 21, scope: !2719)
!2722 = !DILocation(line: 692, column: 21, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !535, line: 692, column: 21)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !535, line: 692, column: 21)
!2725 = !DILocation(line: 692, column: 21, scope: !2724)
!2726 = !DILocation(line: 692, column: 21, scope: !2720)
!2727 = !DILocation(line: 0, scope: !2665)
!2728 = !DILocation(line: 693, column: 21, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !535, line: 693, column: 21)
!2730 = distinct !DILexicalBlock(scope: !2665, file: !535, line: 693, column: 21)
!2731 = !DILocation(line: 693, column: 21, scope: !2730)
!2732 = !DILocation(line: 694, column: 25, scope: !2665)
!2733 = !DILocation(line: 676, column: 17, scope: !2666)
!2734 = distinct !{!2734, !2735, !2736}
!2735 = !DILocation(line: 676, column: 17, scope: !2667)
!2736 = !DILocation(line: 695, column: 19, scope: !2667)
!2737 = !DILocation(line: 409, column: 30, scope: !2447)
!2738 = !DILocation(line: 702, column: 34, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2312, file: !535, line: 702, column: 11)
!2740 = !DILocation(line: 704, column: 14, scope: !2739)
!2741 = !DILocation(line: 705, column: 14, scope: !2739)
!2742 = !DILocation(line: 705, column: 35, scope: !2739)
!2743 = !DILocation(line: 705, column: 17, scope: !2739)
!2744 = !DILocation(line: 705, column: 47, scope: !2739)
!2745 = !DILocation(line: 705, column: 65, scope: !2739)
!2746 = !DILocation(line: 706, column: 11, scope: !2739)
!2747 = !DILocation(line: 702, column: 11, scope: !2312)
!2748 = !DILocation(line: 395, column: 15, scope: !2310)
!2749 = !DILocation(line: 709, column: 5, scope: !2312)
!2750 = !DILocation(line: 710, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2312, file: !535, line: 710, column: 7)
!2752 = !DILocation(line: 710, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2751, file: !535, line: 710, column: 7)
!2754 = !DILocation(line: 710, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !535, line: 710, column: 7)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !535, line: 710, column: 7)
!2757 = distinct !DILexicalBlock(scope: !2753, file: !535, line: 710, column: 7)
!2758 = !DILocation(line: 710, column: 7, scope: !2756)
!2759 = !DILocation(line: 710, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !535, line: 710, column: 7)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !535, line: 710, column: 7)
!2762 = !DILocation(line: 710, column: 7, scope: !2761)
!2763 = !DILocation(line: 710, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !535, line: 710, column: 7)
!2765 = distinct !DILexicalBlock(scope: !2757, file: !535, line: 710, column: 7)
!2766 = !DILocation(line: 710, column: 7, scope: !2765)
!2767 = !DILocation(line: 710, column: 7, scope: !2757)
!2768 = !DILocation(line: 710, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !535, line: 710, column: 7)
!2770 = distinct !DILexicalBlock(scope: !2751, file: !535, line: 710, column: 7)
!2771 = !DILocation(line: 710, column: 7, scope: !2770)
!2772 = !DILocation(line: 712, column: 5, scope: !2312)
!2773 = !DILocation(line: 713, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !535, line: 713, column: 7)
!2775 = distinct !DILexicalBlock(scope: !2312, file: !535, line: 713, column: 7)
!2776 = !DILocation(line: 417, column: 21, scope: !2312)
!2777 = !DILocation(line: 713, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !535, line: 713, column: 7)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !535, line: 713, column: 7)
!2780 = distinct !DILexicalBlock(scope: !2774, file: !535, line: 713, column: 7)
!2781 = !DILocation(line: 713, column: 7, scope: !2779)
!2782 = !DILocation(line: 713, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !535, line: 713, column: 7)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !535, line: 713, column: 7)
!2785 = !DILocation(line: 713, column: 7, scope: !2784)
!2786 = !DILocation(line: 713, column: 7, scope: !2780)
!2787 = !DILocation(line: 714, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !535, line: 714, column: 7)
!2789 = distinct !DILexicalBlock(scope: !2312, file: !535, line: 714, column: 7)
!2790 = !DILocation(line: 714, column: 7, scope: !2789)
!2791 = !DILocation(line: 716, column: 11, scope: !2312)
!2792 = !DILocation(line: 718, column: 5, scope: !2313)
!2793 = !DILocation(line: 395, column: 82, scope: !2313)
!2794 = !DILocation(line: 395, column: 3, scope: !2313)
!2795 = distinct !{!2795, !2443, !2796, !989}
!2796 = !DILocation(line: 718, column: 5, scope: !2310)
!2797 = !DILocation(line: 720, column: 11, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2279, file: !535, line: 720, column: 7)
!2799 = !DILocation(line: 720, column: 16, scope: !2798)
!2800 = !DILocation(line: 728, column: 51, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2279, file: !535, line: 728, column: 7)
!2802 = !DILocation(line: 731, column: 11, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2801, file: !535, line: 730, column: 5)
!2804 = !DILocation(line: 732, column: 16, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2803, file: !535, line: 731, column: 11)
!2806 = !DILocation(line: 732, column: 9, scope: !2805)
!2807 = !DILocation(line: 736, column: 18, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !535, line: 736, column: 16)
!2809 = !DILocation(line: 736, column: 29, scope: !2808)
!2810 = !DILocation(line: 745, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2279, file: !535, line: 745, column: 7)
!2812 = !DILocation(line: 745, column: 20, scope: !2811)
!2813 = !DILocation(line: 746, column: 12, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !535, line: 746, column: 5)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !535, line: 746, column: 5)
!2816 = !DILocation(line: 746, column: 5, scope: !2815)
!2817 = !DILocation(line: 747, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !535, line: 747, column: 7)
!2819 = distinct !DILexicalBlock(scope: !2814, file: !535, line: 747, column: 7)
!2820 = !DILocation(line: 747, column: 7, scope: !2819)
!2821 = !DILocation(line: 746, column: 39, scope: !2814)
!2822 = distinct !{!2822, !2816, !2823, !989}
!2823 = !DILocation(line: 747, column: 7, scope: !2815)
!2824 = !DILocation(line: 749, column: 11, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2279, file: !535, line: 749, column: 7)
!2826 = !DILocation(line: 749, column: 7, scope: !2279)
!2827 = !DILocation(line: 750, column: 5, scope: !2825)
!2828 = !DILocation(line: 750, column: 17, scope: !2825)
!2829 = !DILocation(line: 756, column: 21, scope: !2655)
!2830 = !DILocation(line: 760, column: 42, scope: !2279)
!2831 = !DILocation(line: 758, column: 10, scope: !2279)
!2832 = !DILocation(line: 758, column: 3, scope: !2279)
!2833 = !DILocation(line: 762, column: 1, scope: !2279)
!2834 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1063, file: !1063, line: 98, type: !2835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!125}
!2837 = !DISubprogram(name: "iswprint", scope: !2838, file: !2838, line: 120, type: !2641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!2838 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2839 = distinct !DISubprogram(name: "quotearg_alloc", scope: !535, file: !535, line: 788, type: !2840, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!122, !128, !125, !2172}
!2842 = !{!2843, !2844, !2845}
!2843 = !DILocalVariable(name: "arg", arg: 1, scope: !2839, file: !535, line: 788, type: !128)
!2844 = !DILocalVariable(name: "argsize", arg: 2, scope: !2839, file: !535, line: 788, type: !125)
!2845 = !DILocalVariable(name: "o", arg: 3, scope: !2839, file: !535, line: 789, type: !2172)
!2846 = !DILocation(line: 0, scope: !2839)
!2847 = !DILocalVariable(name: "arg", arg: 1, scope: !2848, file: !535, line: 801, type: !128)
!2848 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !535, file: !535, line: 801, type: !2849, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!122, !128, !125, !817, !2172}
!2851 = !{!2847, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2852 = !DILocalVariable(name: "argsize", arg: 2, scope: !2848, file: !535, line: 801, type: !125)
!2853 = !DILocalVariable(name: "size", arg: 3, scope: !2848, file: !535, line: 801, type: !817)
!2854 = !DILocalVariable(name: "o", arg: 4, scope: !2848, file: !535, line: 802, type: !2172)
!2855 = !DILocalVariable(name: "p", scope: !2848, file: !535, line: 804, type: !2172)
!2856 = !DILocalVariable(name: "saved_errno", scope: !2848, file: !535, line: 805, type: !102)
!2857 = !DILocalVariable(name: "flags", scope: !2848, file: !535, line: 807, type: !102)
!2858 = !DILocalVariable(name: "bufsize", scope: !2848, file: !535, line: 808, type: !125)
!2859 = !DILocalVariable(name: "buf", scope: !2848, file: !535, line: 812, type: !122)
!2860 = !DILocation(line: 0, scope: !2848, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 791, column: 10, scope: !2839)
!2862 = !DILocation(line: 804, column: 37, scope: !2848, inlinedAt: !2861)
!2863 = !DILocation(line: 805, column: 21, scope: !2848, inlinedAt: !2861)
!2864 = !DILocation(line: 807, column: 18, scope: !2848, inlinedAt: !2861)
!2865 = !DILocation(line: 807, column: 24, scope: !2848, inlinedAt: !2861)
!2866 = !DILocation(line: 808, column: 72, scope: !2848, inlinedAt: !2861)
!2867 = !DILocation(line: 809, column: 56, scope: !2848, inlinedAt: !2861)
!2868 = !DILocation(line: 810, column: 49, scope: !2848, inlinedAt: !2861)
!2869 = !DILocation(line: 811, column: 49, scope: !2848, inlinedAt: !2861)
!2870 = !DILocation(line: 808, column: 20, scope: !2848, inlinedAt: !2861)
!2871 = !DILocation(line: 811, column: 62, scope: !2848, inlinedAt: !2861)
!2872 = !DILocation(line: 812, column: 15, scope: !2848, inlinedAt: !2861)
!2873 = !DILocation(line: 813, column: 60, scope: !2848, inlinedAt: !2861)
!2874 = !DILocation(line: 815, column: 32, scope: !2848, inlinedAt: !2861)
!2875 = !DILocation(line: 815, column: 47, scope: !2848, inlinedAt: !2861)
!2876 = !DILocation(line: 813, column: 3, scope: !2848, inlinedAt: !2861)
!2877 = !DILocation(line: 816, column: 9, scope: !2848, inlinedAt: !2861)
!2878 = !DILocation(line: 791, column: 3, scope: !2839)
!2879 = !DILocation(line: 0, scope: !2848)
!2880 = !DILocation(line: 804, column: 37, scope: !2848)
!2881 = !DILocation(line: 805, column: 21, scope: !2848)
!2882 = !DILocation(line: 807, column: 18, scope: !2848)
!2883 = !DILocation(line: 807, column: 27, scope: !2848)
!2884 = !DILocation(line: 807, column: 24, scope: !2848)
!2885 = !DILocation(line: 808, column: 72, scope: !2848)
!2886 = !DILocation(line: 809, column: 56, scope: !2848)
!2887 = !DILocation(line: 810, column: 49, scope: !2848)
!2888 = !DILocation(line: 811, column: 49, scope: !2848)
!2889 = !DILocation(line: 808, column: 20, scope: !2848)
!2890 = !DILocation(line: 811, column: 62, scope: !2848)
!2891 = !DILocation(line: 812, column: 15, scope: !2848)
!2892 = !DILocation(line: 813, column: 60, scope: !2848)
!2893 = !DILocation(line: 815, column: 32, scope: !2848)
!2894 = !DILocation(line: 815, column: 47, scope: !2848)
!2895 = !DILocation(line: 813, column: 3, scope: !2848)
!2896 = !DILocation(line: 816, column: 9, scope: !2848)
!2897 = !DILocation(line: 817, column: 7, scope: !2848)
!2898 = !DILocation(line: 818, column: 11, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2848, file: !535, line: 817, column: 7)
!2900 = !{!1498, !1498, i64 0}
!2901 = !DILocation(line: 818, column: 5, scope: !2899)
!2902 = !DILocation(line: 819, column: 3, scope: !2848)
!2903 = distinct !DISubprogram(name: "quotearg_free", scope: !535, file: !535, line: 837, type: !490, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2904)
!2904 = !{!2905, !2906}
!2905 = !DILocalVariable(name: "sv", scope: !2903, file: !535, line: 839, type: !633)
!2906 = !DILocalVariable(name: "i", scope: !2907, file: !535, line: 840, type: !102)
!2907 = distinct !DILexicalBlock(scope: !2903, file: !535, line: 840, column: 3)
!2908 = !DILocation(line: 839, column: 24, scope: !2903)
!2909 = !DILocation(line: 0, scope: !2903)
!2910 = !DILocation(line: 0, scope: !2907)
!2911 = !DILocation(line: 840, column: 21, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !535, line: 840, column: 3)
!2913 = !DILocation(line: 840, column: 3, scope: !2907)
!2914 = !DILocation(line: 842, column: 13, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2903, file: !535, line: 842, column: 7)
!2916 = !{!2917, !875, i64 8}
!2917 = !{!"slotvec", !1498, i64 0, !875, i64 8}
!2918 = !DILocation(line: 842, column: 17, scope: !2915)
!2919 = !DILocation(line: 842, column: 7, scope: !2903)
!2920 = !DILocation(line: 841, column: 17, scope: !2912)
!2921 = !DILocation(line: 841, column: 5, scope: !2912)
!2922 = !DILocation(line: 840, column: 32, scope: !2912)
!2923 = distinct !{!2923, !2913, !2924, !989}
!2924 = !DILocation(line: 841, column: 20, scope: !2907)
!2925 = !DILocation(line: 844, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2915, file: !535, line: 843, column: 5)
!2927 = !DILocation(line: 845, column: 21, scope: !2926)
!2928 = !{!2917, !1498, i64 0}
!2929 = !DILocation(line: 846, column: 20, scope: !2926)
!2930 = !DILocation(line: 847, column: 5, scope: !2926)
!2931 = !DILocation(line: 848, column: 10, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2903, file: !535, line: 848, column: 7)
!2933 = !DILocation(line: 848, column: 7, scope: !2903)
!2934 = !DILocation(line: 850, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2932, file: !535, line: 849, column: 5)
!2936 = !DILocation(line: 851, column: 15, scope: !2935)
!2937 = !DILocation(line: 852, column: 5, scope: !2935)
!2938 = !DILocation(line: 853, column: 10, scope: !2903)
!2939 = !DILocation(line: 854, column: 1, scope: !2903)
!2940 = distinct !DISubprogram(name: "quotearg_n", scope: !535, file: !535, line: 919, type: !1056, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2941)
!2941 = !{!2942, !2943}
!2942 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !535, line: 919, type: !102)
!2943 = !DILocalVariable(name: "arg", arg: 2, scope: !2940, file: !535, line: 919, type: !128)
!2944 = !DILocation(line: 0, scope: !2940)
!2945 = !DILocation(line: 921, column: 10, scope: !2940)
!2946 = !DILocation(line: 921, column: 3, scope: !2940)
!2947 = distinct !DISubprogram(name: "quotearg_n_options", scope: !535, file: !535, line: 866, type: !2948, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!122, !102, !128, !125, !2172}
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2961, !2962, !2964, !2965, !2966}
!2951 = !DILocalVariable(name: "n", arg: 1, scope: !2947, file: !535, line: 866, type: !102)
!2952 = !DILocalVariable(name: "arg", arg: 2, scope: !2947, file: !535, line: 866, type: !128)
!2953 = !DILocalVariable(name: "argsize", arg: 3, scope: !2947, file: !535, line: 866, type: !125)
!2954 = !DILocalVariable(name: "options", arg: 4, scope: !2947, file: !535, line: 867, type: !2172)
!2955 = !DILocalVariable(name: "saved_errno", scope: !2947, file: !535, line: 869, type: !102)
!2956 = !DILocalVariable(name: "sv", scope: !2947, file: !535, line: 871, type: !633)
!2957 = !DILocalVariable(name: "nslots_max", scope: !2947, file: !535, line: 873, type: !102)
!2958 = !DILocalVariable(name: "preallocated", scope: !2959, file: !535, line: 879, type: !201)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !535, line: 878, column: 5)
!2960 = distinct !DILexicalBlock(scope: !2947, file: !535, line: 877, column: 7)
!2961 = !DILocalVariable(name: "new_nslots", scope: !2959, file: !535, line: 880, type: !830)
!2962 = !DILocalVariable(name: "size", scope: !2963, file: !535, line: 891, type: !125)
!2963 = distinct !DILexicalBlock(scope: !2947, file: !535, line: 890, column: 3)
!2964 = !DILocalVariable(name: "val", scope: !2963, file: !535, line: 892, type: !122)
!2965 = !DILocalVariable(name: "flags", scope: !2963, file: !535, line: 894, type: !102)
!2966 = !DILocalVariable(name: "qsize", scope: !2963, file: !535, line: 895, type: !125)
!2967 = !DILocation(line: 0, scope: !2947)
!2968 = !DILocation(line: 869, column: 21, scope: !2947)
!2969 = !DILocation(line: 871, column: 24, scope: !2947)
!2970 = !DILocation(line: 874, column: 17, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2947, file: !535, line: 874, column: 7)
!2972 = !DILocation(line: 875, column: 5, scope: !2971)
!2973 = !DILocation(line: 877, column: 7, scope: !2960)
!2974 = !DILocation(line: 877, column: 14, scope: !2960)
!2975 = !DILocation(line: 877, column: 7, scope: !2947)
!2976 = !DILocation(line: 879, column: 31, scope: !2959)
!2977 = !DILocation(line: 0, scope: !2959)
!2978 = !DILocation(line: 880, column: 7, scope: !2959)
!2979 = !DILocation(line: 880, column: 26, scope: !2959)
!2980 = !DILocation(line: 880, column: 13, scope: !2959)
!2981 = !DILocation(line: 882, column: 31, scope: !2959)
!2982 = !DILocation(line: 883, column: 33, scope: !2959)
!2983 = !DILocation(line: 883, column: 42, scope: !2959)
!2984 = !DILocation(line: 883, column: 31, scope: !2959)
!2985 = !DILocation(line: 882, column: 22, scope: !2959)
!2986 = !DILocation(line: 882, column: 15, scope: !2959)
!2987 = !DILocation(line: 884, column: 11, scope: !2959)
!2988 = !DILocation(line: 885, column: 15, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2959, file: !535, line: 884, column: 11)
!2990 = !{i64 0, i64 8, !2900, i64 8, i64 8, !874}
!2991 = !DILocation(line: 885, column: 9, scope: !2989)
!2992 = !DILocation(line: 886, column: 20, scope: !2959)
!2993 = !DILocation(line: 886, column: 18, scope: !2959)
!2994 = !DILocation(line: 886, column: 32, scope: !2959)
!2995 = !DILocation(line: 886, column: 43, scope: !2959)
!2996 = !DILocation(line: 886, column: 53, scope: !2959)
!2997 = !DILocation(line: 0, scope: !2382, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 886, column: 7, scope: !2959)
!2999 = !DILocation(line: 59, column: 10, scope: !2382, inlinedAt: !2998)
!3000 = !DILocation(line: 887, column: 16, scope: !2959)
!3001 = !DILocation(line: 887, column: 14, scope: !2959)
!3002 = !DILocation(line: 888, column: 5, scope: !2960)
!3003 = !DILocation(line: 888, column: 5, scope: !2959)
!3004 = !DILocation(line: 891, column: 19, scope: !2963)
!3005 = !DILocation(line: 891, column: 25, scope: !2963)
!3006 = !DILocation(line: 0, scope: !2963)
!3007 = !DILocation(line: 892, column: 23, scope: !2963)
!3008 = !DILocation(line: 894, column: 26, scope: !2963)
!3009 = !DILocation(line: 894, column: 32, scope: !2963)
!3010 = !DILocation(line: 896, column: 55, scope: !2963)
!3011 = !DILocation(line: 897, column: 55, scope: !2963)
!3012 = !DILocation(line: 898, column: 55, scope: !2963)
!3013 = !DILocation(line: 899, column: 55, scope: !2963)
!3014 = !DILocation(line: 895, column: 20, scope: !2963)
!3015 = !DILocation(line: 901, column: 14, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2963, file: !535, line: 901, column: 9)
!3017 = !DILocation(line: 901, column: 9, scope: !2963)
!3018 = !DILocation(line: 903, column: 35, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !535, line: 902, column: 7)
!3020 = !DILocation(line: 903, column: 20, scope: !3019)
!3021 = !DILocation(line: 904, column: 17, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !535, line: 904, column: 13)
!3023 = !DILocation(line: 904, column: 13, scope: !3019)
!3024 = !DILocation(line: 905, column: 11, scope: !3022)
!3025 = !DILocation(line: 906, column: 27, scope: !3019)
!3026 = !DILocation(line: 906, column: 19, scope: !3019)
!3027 = !DILocation(line: 907, column: 69, scope: !3019)
!3028 = !DILocation(line: 909, column: 44, scope: !3019)
!3029 = !DILocation(line: 910, column: 44, scope: !3019)
!3030 = !DILocation(line: 907, column: 9, scope: !3019)
!3031 = !DILocation(line: 911, column: 7, scope: !3019)
!3032 = !DILocation(line: 913, column: 11, scope: !2963)
!3033 = !DILocation(line: 914, column: 5, scope: !2963)
!3034 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !535, file: !535, line: 925, type: !3035, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!122, !102, !128, !125}
!3037 = !{!3038, !3039, !3040}
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !535, line: 925, type: !102)
!3039 = !DILocalVariable(name: "arg", arg: 2, scope: !3034, file: !535, line: 925, type: !128)
!3040 = !DILocalVariable(name: "argsize", arg: 3, scope: !3034, file: !535, line: 925, type: !125)
!3041 = !DILocation(line: 0, scope: !3034)
!3042 = !DILocation(line: 927, column: 10, scope: !3034)
!3043 = !DILocation(line: 927, column: 3, scope: !3034)
!3044 = distinct !DISubprogram(name: "quotearg", scope: !535, file: !535, line: 931, type: !1065, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3045)
!3045 = !{!3046}
!3046 = !DILocalVariable(name: "arg", arg: 1, scope: !3044, file: !535, line: 931, type: !128)
!3047 = !DILocation(line: 0, scope: !3044)
!3048 = !DILocation(line: 0, scope: !2940, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 933, column: 10, scope: !3044)
!3050 = !DILocation(line: 921, column: 10, scope: !2940, inlinedAt: !3049)
!3051 = !DILocation(line: 933, column: 3, scope: !3044)
!3052 = distinct !DISubprogram(name: "quotearg_mem", scope: !535, file: !535, line: 937, type: !3053, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!122, !128, !125}
!3055 = !{!3056, !3057}
!3056 = !DILocalVariable(name: "arg", arg: 1, scope: !3052, file: !535, line: 937, type: !128)
!3057 = !DILocalVariable(name: "argsize", arg: 2, scope: !3052, file: !535, line: 937, type: !125)
!3058 = !DILocation(line: 0, scope: !3052)
!3059 = !DILocation(line: 0, scope: !3034, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 939, column: 10, scope: !3052)
!3061 = !DILocation(line: 927, column: 10, scope: !3034, inlinedAt: !3060)
!3062 = !DILocation(line: 939, column: 3, scope: !3052)
!3063 = distinct !DISubprogram(name: "quotearg_n_style", scope: !535, file: !535, line: 943, type: !3064, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!122, !102, !558, !128}
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DILocalVariable(name: "n", arg: 1, scope: !3063, file: !535, line: 943, type: !102)
!3068 = !DILocalVariable(name: "s", arg: 2, scope: !3063, file: !535, line: 943, type: !558)
!3069 = !DILocalVariable(name: "arg", arg: 3, scope: !3063, file: !535, line: 943, type: !128)
!3070 = !DILocalVariable(name: "o", scope: !3063, file: !535, line: 945, type: !2173)
!3071 = !DILocation(line: 0, scope: !3063)
!3072 = !DILocation(line: 945, column: 3, scope: !3063)
!3073 = !DILocation(line: 945, column: 32, scope: !3063)
!3074 = !{!3075}
!3075 = distinct !{!3075, !3076, !"quoting_options_from_style: argument 0"}
!3076 = distinct !{!3076, !"quoting_options_from_style"}
!3077 = !DILocation(line: 945, column: 36, scope: !3063)
!3078 = !DILocalVariable(name: "style", arg: 1, scope: !3079, file: !535, line: 183, type: !558)
!3079 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !535, file: !535, line: 183, type: !3080, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!585, !558}
!3082 = !{!3078, !3083}
!3083 = !DILocalVariable(name: "o", scope: !3079, file: !535, line: 185, type: !585)
!3084 = !DILocation(line: 0, scope: !3079, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 945, column: 36, scope: !3063)
!3086 = !DILocation(line: 185, column: 26, scope: !3079, inlinedAt: !3085)
!3087 = !DILocation(line: 186, column: 13, scope: !3088, inlinedAt: !3085)
!3088 = distinct !DILexicalBlock(scope: !3079, file: !535, line: 186, column: 7)
!3089 = !DILocation(line: 186, column: 7, scope: !3079, inlinedAt: !3085)
!3090 = !DILocation(line: 187, column: 5, scope: !3088, inlinedAt: !3085)
!3091 = !DILocation(line: 188, column: 11, scope: !3079, inlinedAt: !3085)
!3092 = !DILocation(line: 946, column: 10, scope: !3063)
!3093 = !DILocation(line: 947, column: 1, scope: !3063)
!3094 = !DILocation(line: 946, column: 3, scope: !3063)
!3095 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !535, file: !535, line: 950, type: !3096, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!122, !102, !558, !128, !125}
!3098 = !{!3099, !3100, !3101, !3102, !3103}
!3099 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !535, line: 950, type: !102)
!3100 = !DILocalVariable(name: "s", arg: 2, scope: !3095, file: !535, line: 950, type: !558)
!3101 = !DILocalVariable(name: "arg", arg: 3, scope: !3095, file: !535, line: 951, type: !128)
!3102 = !DILocalVariable(name: "argsize", arg: 4, scope: !3095, file: !535, line: 951, type: !125)
!3103 = !DILocalVariable(name: "o", scope: !3095, file: !535, line: 953, type: !2173)
!3104 = !DILocation(line: 0, scope: !3095)
!3105 = !DILocation(line: 953, column: 3, scope: !3095)
!3106 = !DILocation(line: 953, column: 32, scope: !3095)
!3107 = !{!3108}
!3108 = distinct !{!3108, !3109, !"quoting_options_from_style: argument 0"}
!3109 = distinct !{!3109, !"quoting_options_from_style"}
!3110 = !DILocation(line: 953, column: 36, scope: !3095)
!3111 = !DILocation(line: 0, scope: !3079, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 953, column: 36, scope: !3095)
!3113 = !DILocation(line: 185, column: 26, scope: !3079, inlinedAt: !3112)
!3114 = !DILocation(line: 186, column: 13, scope: !3088, inlinedAt: !3112)
!3115 = !DILocation(line: 186, column: 7, scope: !3079, inlinedAt: !3112)
!3116 = !DILocation(line: 187, column: 5, scope: !3088, inlinedAt: !3112)
!3117 = !DILocation(line: 188, column: 11, scope: !3079, inlinedAt: !3112)
!3118 = !DILocation(line: 954, column: 10, scope: !3095)
!3119 = !DILocation(line: 955, column: 1, scope: !3095)
!3120 = !DILocation(line: 954, column: 3, scope: !3095)
!3121 = distinct !DISubprogram(name: "quotearg_style", scope: !535, file: !535, line: 958, type: !3122, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!122, !558, !128}
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "s", arg: 1, scope: !3121, file: !535, line: 958, type: !558)
!3126 = !DILocalVariable(name: "arg", arg: 2, scope: !3121, file: !535, line: 958, type: !128)
!3127 = !DILocation(line: 0, scope: !3121)
!3128 = !DILocation(line: 0, scope: !3063, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 960, column: 10, scope: !3121)
!3130 = !DILocation(line: 945, column: 3, scope: !3063, inlinedAt: !3129)
!3131 = !DILocation(line: 945, column: 32, scope: !3063, inlinedAt: !3129)
!3132 = !{!3133}
!3133 = distinct !{!3133, !3134, !"quoting_options_from_style: argument 0"}
!3134 = distinct !{!3134, !"quoting_options_from_style"}
!3135 = !DILocation(line: 945, column: 36, scope: !3063, inlinedAt: !3129)
!3136 = !DILocation(line: 0, scope: !3079, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 945, column: 36, scope: !3063, inlinedAt: !3129)
!3138 = !DILocation(line: 185, column: 26, scope: !3079, inlinedAt: !3137)
!3139 = !DILocation(line: 186, column: 13, scope: !3088, inlinedAt: !3137)
!3140 = !DILocation(line: 186, column: 7, scope: !3079, inlinedAt: !3137)
!3141 = !DILocation(line: 187, column: 5, scope: !3088, inlinedAt: !3137)
!3142 = !DILocation(line: 188, column: 11, scope: !3079, inlinedAt: !3137)
!3143 = !DILocation(line: 946, column: 10, scope: !3063, inlinedAt: !3129)
!3144 = !DILocation(line: 947, column: 1, scope: !3063, inlinedAt: !3129)
!3145 = !DILocation(line: 960, column: 3, scope: !3121)
!3146 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !535, file: !535, line: 964, type: !3147, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!122, !558, !128, !125}
!3149 = !{!3150, !3151, !3152}
!3150 = !DILocalVariable(name: "s", arg: 1, scope: !3146, file: !535, line: 964, type: !558)
!3151 = !DILocalVariable(name: "arg", arg: 2, scope: !3146, file: !535, line: 964, type: !128)
!3152 = !DILocalVariable(name: "argsize", arg: 3, scope: !3146, file: !535, line: 964, type: !125)
!3153 = !DILocation(line: 0, scope: !3146)
!3154 = !DILocation(line: 0, scope: !3095, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 966, column: 10, scope: !3146)
!3156 = !DILocation(line: 953, column: 3, scope: !3095, inlinedAt: !3155)
!3157 = !DILocation(line: 953, column: 32, scope: !3095, inlinedAt: !3155)
!3158 = !{!3159}
!3159 = distinct !{!3159, !3160, !"quoting_options_from_style: argument 0"}
!3160 = distinct !{!3160, !"quoting_options_from_style"}
!3161 = !DILocation(line: 953, column: 36, scope: !3095, inlinedAt: !3155)
!3162 = !DILocation(line: 0, scope: !3079, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 953, column: 36, scope: !3095, inlinedAt: !3155)
!3164 = !DILocation(line: 185, column: 26, scope: !3079, inlinedAt: !3163)
!3165 = !DILocation(line: 186, column: 13, scope: !3088, inlinedAt: !3163)
!3166 = !DILocation(line: 186, column: 7, scope: !3079, inlinedAt: !3163)
!3167 = !DILocation(line: 187, column: 5, scope: !3088, inlinedAt: !3163)
!3168 = !DILocation(line: 188, column: 11, scope: !3079, inlinedAt: !3163)
!3169 = !DILocation(line: 954, column: 10, scope: !3095, inlinedAt: !3155)
!3170 = !DILocation(line: 955, column: 1, scope: !3095, inlinedAt: !3155)
!3171 = !DILocation(line: 966, column: 3, scope: !3146)
!3172 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !535, file: !535, line: 970, type: !3173, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!122, !128, !125, !4}
!3175 = !{!3176, !3177, !3178, !3179}
!3176 = !DILocalVariable(name: "arg", arg: 1, scope: !3172, file: !535, line: 970, type: !128)
!3177 = !DILocalVariable(name: "argsize", arg: 2, scope: !3172, file: !535, line: 970, type: !125)
!3178 = !DILocalVariable(name: "ch", arg: 3, scope: !3172, file: !535, line: 970, type: !4)
!3179 = !DILocalVariable(name: "options", scope: !3172, file: !535, line: 972, type: !585)
!3180 = !DILocation(line: 0, scope: !3172)
!3181 = !DILocation(line: 972, column: 3, scope: !3172)
!3182 = !DILocation(line: 972, column: 26, scope: !3172)
!3183 = !DILocation(line: 973, column: 13, scope: !3172)
!3184 = !{i64 0, i64 4, !951, i64 4, i64 4, !942, i64 8, i64 32, !951, i64 40, i64 8, !874, i64 48, i64 8, !874}
!3185 = !DILocation(line: 0, scope: !2192, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 974, column: 3, scope: !3172)
!3187 = !DILocation(line: 147, column: 41, scope: !2192, inlinedAt: !3186)
!3188 = !DILocation(line: 147, column: 62, scope: !2192, inlinedAt: !3186)
!3189 = !DILocation(line: 147, column: 57, scope: !2192, inlinedAt: !3186)
!3190 = !DILocation(line: 148, column: 15, scope: !2192, inlinedAt: !3186)
!3191 = !DILocation(line: 149, column: 21, scope: !2192, inlinedAt: !3186)
!3192 = !DILocation(line: 149, column: 24, scope: !2192, inlinedAt: !3186)
!3193 = !DILocation(line: 150, column: 19, scope: !2192, inlinedAt: !3186)
!3194 = !DILocation(line: 150, column: 24, scope: !2192, inlinedAt: !3186)
!3195 = !DILocation(line: 150, column: 6, scope: !2192, inlinedAt: !3186)
!3196 = !DILocation(line: 975, column: 10, scope: !3172)
!3197 = !DILocation(line: 976, column: 1, scope: !3172)
!3198 = !DILocation(line: 975, column: 3, scope: !3172)
!3199 = distinct !DISubprogram(name: "quotearg_char", scope: !535, file: !535, line: 979, type: !3200, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!122, !128, !4}
!3202 = !{!3203, !3204}
!3203 = !DILocalVariable(name: "arg", arg: 1, scope: !3199, file: !535, line: 979, type: !128)
!3204 = !DILocalVariable(name: "ch", arg: 2, scope: !3199, file: !535, line: 979, type: !4)
!3205 = !DILocation(line: 0, scope: !3199)
!3206 = !DILocation(line: 0, scope: !3172, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 981, column: 10, scope: !3199)
!3208 = !DILocation(line: 972, column: 3, scope: !3172, inlinedAt: !3207)
!3209 = !DILocation(line: 972, column: 26, scope: !3172, inlinedAt: !3207)
!3210 = !DILocation(line: 973, column: 13, scope: !3172, inlinedAt: !3207)
!3211 = !DILocation(line: 0, scope: !2192, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 974, column: 3, scope: !3172, inlinedAt: !3207)
!3213 = !DILocation(line: 147, column: 41, scope: !2192, inlinedAt: !3212)
!3214 = !DILocation(line: 147, column: 62, scope: !2192, inlinedAt: !3212)
!3215 = !DILocation(line: 147, column: 57, scope: !2192, inlinedAt: !3212)
!3216 = !DILocation(line: 148, column: 15, scope: !2192, inlinedAt: !3212)
!3217 = !DILocation(line: 149, column: 21, scope: !2192, inlinedAt: !3212)
!3218 = !DILocation(line: 149, column: 24, scope: !2192, inlinedAt: !3212)
!3219 = !DILocation(line: 150, column: 19, scope: !2192, inlinedAt: !3212)
!3220 = !DILocation(line: 150, column: 24, scope: !2192, inlinedAt: !3212)
!3221 = !DILocation(line: 150, column: 6, scope: !2192, inlinedAt: !3212)
!3222 = !DILocation(line: 975, column: 10, scope: !3172, inlinedAt: !3207)
!3223 = !DILocation(line: 976, column: 1, scope: !3172, inlinedAt: !3207)
!3224 = !DILocation(line: 981, column: 3, scope: !3199)
!3225 = distinct !DISubprogram(name: "quotearg_colon", scope: !535, file: !535, line: 985, type: !1065, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3226)
!3226 = !{!3227}
!3227 = !DILocalVariable(name: "arg", arg: 1, scope: !3225, file: !535, line: 985, type: !128)
!3228 = !DILocation(line: 0, scope: !3225)
!3229 = !DILocation(line: 0, scope: !3199, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 987, column: 10, scope: !3225)
!3231 = !DILocation(line: 0, scope: !3172, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 981, column: 10, scope: !3199, inlinedAt: !3230)
!3233 = !DILocation(line: 972, column: 3, scope: !3172, inlinedAt: !3232)
!3234 = !DILocation(line: 972, column: 26, scope: !3172, inlinedAt: !3232)
!3235 = !DILocation(line: 973, column: 13, scope: !3172, inlinedAt: !3232)
!3236 = !DILocation(line: 0, scope: !2192, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 974, column: 3, scope: !3172, inlinedAt: !3232)
!3238 = !DILocation(line: 147, column: 57, scope: !2192, inlinedAt: !3237)
!3239 = !DILocation(line: 149, column: 21, scope: !2192, inlinedAt: !3237)
!3240 = !DILocation(line: 150, column: 6, scope: !2192, inlinedAt: !3237)
!3241 = !DILocation(line: 975, column: 10, scope: !3172, inlinedAt: !3232)
!3242 = !DILocation(line: 976, column: 1, scope: !3172, inlinedAt: !3232)
!3243 = !DILocation(line: 987, column: 3, scope: !3225)
!3244 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !535, file: !535, line: 991, type: !3053, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3245)
!3245 = !{!3246, !3247}
!3246 = !DILocalVariable(name: "arg", arg: 1, scope: !3244, file: !535, line: 991, type: !128)
!3247 = !DILocalVariable(name: "argsize", arg: 2, scope: !3244, file: !535, line: 991, type: !125)
!3248 = !DILocation(line: 0, scope: !3244)
!3249 = !DILocation(line: 0, scope: !3172, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 993, column: 10, scope: !3244)
!3251 = !DILocation(line: 972, column: 3, scope: !3172, inlinedAt: !3250)
!3252 = !DILocation(line: 972, column: 26, scope: !3172, inlinedAt: !3250)
!3253 = !DILocation(line: 973, column: 13, scope: !3172, inlinedAt: !3250)
!3254 = !DILocation(line: 0, scope: !2192, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 974, column: 3, scope: !3172, inlinedAt: !3250)
!3256 = !DILocation(line: 147, column: 57, scope: !2192, inlinedAt: !3255)
!3257 = !DILocation(line: 149, column: 21, scope: !2192, inlinedAt: !3255)
!3258 = !DILocation(line: 150, column: 6, scope: !2192, inlinedAt: !3255)
!3259 = !DILocation(line: 975, column: 10, scope: !3172, inlinedAt: !3250)
!3260 = !DILocation(line: 976, column: 1, scope: !3172, inlinedAt: !3250)
!3261 = !DILocation(line: 993, column: 3, scope: !3244)
!3262 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !535, file: !535, line: 997, type: !3064, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3263)
!3263 = !{!3264, !3265, !3266, !3267}
!3264 = !DILocalVariable(name: "n", arg: 1, scope: !3262, file: !535, line: 997, type: !102)
!3265 = !DILocalVariable(name: "s", arg: 2, scope: !3262, file: !535, line: 997, type: !558)
!3266 = !DILocalVariable(name: "arg", arg: 3, scope: !3262, file: !535, line: 997, type: !128)
!3267 = !DILocalVariable(name: "options", scope: !3262, file: !535, line: 999, type: !585)
!3268 = !DILocation(line: 185, column: 26, scope: !3079, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 1000, column: 13, scope: !3262)
!3270 = !DILocation(line: 0, scope: !3262)
!3271 = !DILocation(line: 999, column: 3, scope: !3262)
!3272 = !DILocation(line: 999, column: 26, scope: !3262)
!3273 = !DILocation(line: 0, scope: !3079, inlinedAt: !3269)
!3274 = !DILocation(line: 186, column: 13, scope: !3088, inlinedAt: !3269)
!3275 = !DILocation(line: 186, column: 7, scope: !3079, inlinedAt: !3269)
!3276 = !DILocation(line: 187, column: 5, scope: !3088, inlinedAt: !3269)
!3277 = !{!3278}
!3278 = distinct !{!3278, !3279, !"quoting_options_from_style: argument 0"}
!3279 = distinct !{!3279, !"quoting_options_from_style"}
!3280 = !DILocation(line: 1000, column: 13, scope: !3262)
!3281 = !DILocation(line: 0, scope: !2192, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 1001, column: 3, scope: !3262)
!3283 = !DILocation(line: 147, column: 57, scope: !2192, inlinedAt: !3282)
!3284 = !DILocation(line: 149, column: 21, scope: !2192, inlinedAt: !3282)
!3285 = !DILocation(line: 150, column: 6, scope: !2192, inlinedAt: !3282)
!3286 = !DILocation(line: 1002, column: 10, scope: !3262)
!3287 = !DILocation(line: 1003, column: 1, scope: !3262)
!3288 = !DILocation(line: 1002, column: 3, scope: !3262)
!3289 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !535, file: !535, line: 1006, type: !3290, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!122, !102, !128, !128, !128}
!3292 = !{!3293, !3294, !3295, !3296}
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3289, file: !535, line: 1006, type: !102)
!3294 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3289, file: !535, line: 1006, type: !128)
!3295 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3289, file: !535, line: 1007, type: !128)
!3296 = !DILocalVariable(name: "arg", arg: 4, scope: !3289, file: !535, line: 1007, type: !128)
!3297 = !DILocation(line: 0, scope: !3289)
!3298 = !DILocalVariable(name: "n", arg: 1, scope: !3299, file: !535, line: 1014, type: !102)
!3299 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !535, file: !535, line: 1014, type: !3300, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!122, !102, !128, !128, !128, !125}
!3302 = !{!3298, !3303, !3304, !3305, !3306, !3307}
!3303 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3299, file: !535, line: 1014, type: !128)
!3304 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3299, file: !535, line: 1015, type: !128)
!3305 = !DILocalVariable(name: "arg", arg: 4, scope: !3299, file: !535, line: 1016, type: !128)
!3306 = !DILocalVariable(name: "argsize", arg: 5, scope: !3299, file: !535, line: 1016, type: !125)
!3307 = !DILocalVariable(name: "o", scope: !3299, file: !535, line: 1018, type: !585)
!3308 = !DILocation(line: 0, scope: !3299, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 1009, column: 10, scope: !3289)
!3310 = !DILocation(line: 1018, column: 3, scope: !3299, inlinedAt: !3309)
!3311 = !DILocation(line: 1018, column: 26, scope: !3299, inlinedAt: !3309)
!3312 = !DILocation(line: 1018, column: 30, scope: !3299, inlinedAt: !3309)
!3313 = !DILocation(line: 0, scope: !2232, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 1019, column: 3, scope: !3299, inlinedAt: !3309)
!3315 = !DILocation(line: 174, column: 12, scope: !2232, inlinedAt: !3314)
!3316 = !DILocation(line: 175, column: 8, scope: !2245, inlinedAt: !3314)
!3317 = !DILocation(line: 175, column: 19, scope: !2245, inlinedAt: !3314)
!3318 = !DILocation(line: 176, column: 5, scope: !2245, inlinedAt: !3314)
!3319 = !DILocation(line: 177, column: 6, scope: !2232, inlinedAt: !3314)
!3320 = !DILocation(line: 177, column: 17, scope: !2232, inlinedAt: !3314)
!3321 = !DILocation(line: 178, column: 6, scope: !2232, inlinedAt: !3314)
!3322 = !DILocation(line: 178, column: 18, scope: !2232, inlinedAt: !3314)
!3323 = !DILocation(line: 1020, column: 10, scope: !3299, inlinedAt: !3309)
!3324 = !DILocation(line: 1021, column: 1, scope: !3299, inlinedAt: !3309)
!3325 = !DILocation(line: 1009, column: 3, scope: !3289)
!3326 = !DILocation(line: 0, scope: !3299)
!3327 = !DILocation(line: 1018, column: 3, scope: !3299)
!3328 = !DILocation(line: 1018, column: 26, scope: !3299)
!3329 = !DILocation(line: 1018, column: 30, scope: !3299)
!3330 = !DILocation(line: 0, scope: !2232, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 1019, column: 3, scope: !3299)
!3332 = !DILocation(line: 174, column: 12, scope: !2232, inlinedAt: !3331)
!3333 = !DILocation(line: 175, column: 8, scope: !2245, inlinedAt: !3331)
!3334 = !DILocation(line: 175, column: 19, scope: !2245, inlinedAt: !3331)
!3335 = !DILocation(line: 176, column: 5, scope: !2245, inlinedAt: !3331)
!3336 = !DILocation(line: 177, column: 6, scope: !2232, inlinedAt: !3331)
!3337 = !DILocation(line: 177, column: 17, scope: !2232, inlinedAt: !3331)
!3338 = !DILocation(line: 178, column: 6, scope: !2232, inlinedAt: !3331)
!3339 = !DILocation(line: 178, column: 18, scope: !2232, inlinedAt: !3331)
!3340 = !DILocation(line: 1020, column: 10, scope: !3299)
!3341 = !DILocation(line: 1021, column: 1, scope: !3299)
!3342 = !DILocation(line: 1020, column: 3, scope: !3299)
!3343 = distinct !DISubprogram(name: "quotearg_custom", scope: !535, file: !535, line: 1024, type: !3344, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!122, !128, !128, !128}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3343, file: !535, line: 1024, type: !128)
!3348 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3343, file: !535, line: 1024, type: !128)
!3349 = !DILocalVariable(name: "arg", arg: 3, scope: !3343, file: !535, line: 1025, type: !128)
!3350 = !DILocation(line: 0, scope: !3343)
!3351 = !DILocation(line: 0, scope: !3289, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 1027, column: 10, scope: !3343)
!3353 = !DILocation(line: 0, scope: !3299, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1009, column: 10, scope: !3289, inlinedAt: !3352)
!3355 = !DILocation(line: 1018, column: 3, scope: !3299, inlinedAt: !3354)
!3356 = !DILocation(line: 1018, column: 26, scope: !3299, inlinedAt: !3354)
!3357 = !DILocation(line: 1018, column: 30, scope: !3299, inlinedAt: !3354)
!3358 = !DILocation(line: 0, scope: !2232, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 1019, column: 3, scope: !3299, inlinedAt: !3354)
!3360 = !DILocation(line: 174, column: 12, scope: !2232, inlinedAt: !3359)
!3361 = !DILocation(line: 175, column: 8, scope: !2245, inlinedAt: !3359)
!3362 = !DILocation(line: 175, column: 19, scope: !2245, inlinedAt: !3359)
!3363 = !DILocation(line: 176, column: 5, scope: !2245, inlinedAt: !3359)
!3364 = !DILocation(line: 177, column: 6, scope: !2232, inlinedAt: !3359)
!3365 = !DILocation(line: 177, column: 17, scope: !2232, inlinedAt: !3359)
!3366 = !DILocation(line: 178, column: 6, scope: !2232, inlinedAt: !3359)
!3367 = !DILocation(line: 178, column: 18, scope: !2232, inlinedAt: !3359)
!3368 = !DILocation(line: 1020, column: 10, scope: !3299, inlinedAt: !3354)
!3369 = !DILocation(line: 1021, column: 1, scope: !3299, inlinedAt: !3354)
!3370 = !DILocation(line: 1027, column: 3, scope: !3343)
!3371 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !535, file: !535, line: 1031, type: !3372, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!122, !128, !128, !128, !125}
!3374 = !{!3375, !3376, !3377, !3378}
!3375 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3371, file: !535, line: 1031, type: !128)
!3376 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3371, file: !535, line: 1031, type: !128)
!3377 = !DILocalVariable(name: "arg", arg: 3, scope: !3371, file: !535, line: 1032, type: !128)
!3378 = !DILocalVariable(name: "argsize", arg: 4, scope: !3371, file: !535, line: 1032, type: !125)
!3379 = !DILocation(line: 0, scope: !3371)
!3380 = !DILocation(line: 0, scope: !3299, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 1034, column: 10, scope: !3371)
!3382 = !DILocation(line: 1018, column: 3, scope: !3299, inlinedAt: !3381)
!3383 = !DILocation(line: 1018, column: 26, scope: !3299, inlinedAt: !3381)
!3384 = !DILocation(line: 1018, column: 30, scope: !3299, inlinedAt: !3381)
!3385 = !DILocation(line: 0, scope: !2232, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 1019, column: 3, scope: !3299, inlinedAt: !3381)
!3387 = !DILocation(line: 174, column: 12, scope: !2232, inlinedAt: !3386)
!3388 = !DILocation(line: 175, column: 8, scope: !2245, inlinedAt: !3386)
!3389 = !DILocation(line: 175, column: 19, scope: !2245, inlinedAt: !3386)
!3390 = !DILocation(line: 176, column: 5, scope: !2245, inlinedAt: !3386)
!3391 = !DILocation(line: 177, column: 6, scope: !2232, inlinedAt: !3386)
!3392 = !DILocation(line: 177, column: 17, scope: !2232, inlinedAt: !3386)
!3393 = !DILocation(line: 178, column: 6, scope: !2232, inlinedAt: !3386)
!3394 = !DILocation(line: 178, column: 18, scope: !2232, inlinedAt: !3386)
!3395 = !DILocation(line: 1020, column: 10, scope: !3299, inlinedAt: !3381)
!3396 = !DILocation(line: 1021, column: 1, scope: !3299, inlinedAt: !3381)
!3397 = !DILocation(line: 1034, column: 3, scope: !3371)
!3398 = distinct !DISubprogram(name: "quote_n_mem", scope: !535, file: !535, line: 1049, type: !3399, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!128, !102, !128, !125}
!3401 = !{!3402, !3403, !3404}
!3402 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !535, line: 1049, type: !102)
!3403 = !DILocalVariable(name: "arg", arg: 2, scope: !3398, file: !535, line: 1049, type: !128)
!3404 = !DILocalVariable(name: "argsize", arg: 3, scope: !3398, file: !535, line: 1049, type: !125)
!3405 = !DILocation(line: 0, scope: !3398)
!3406 = !DILocation(line: 1051, column: 10, scope: !3398)
!3407 = !DILocation(line: 1051, column: 3, scope: !3398)
!3408 = distinct !DISubprogram(name: "quote_mem", scope: !535, file: !535, line: 1055, type: !3409, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!128, !128, !125}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "arg", arg: 1, scope: !3408, file: !535, line: 1055, type: !128)
!3413 = !DILocalVariable(name: "argsize", arg: 2, scope: !3408, file: !535, line: 1055, type: !125)
!3414 = !DILocation(line: 0, scope: !3408)
!3415 = !DILocation(line: 0, scope: !3398, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1057, column: 10, scope: !3408)
!3417 = !DILocation(line: 1051, column: 10, scope: !3398, inlinedAt: !3416)
!3418 = !DILocation(line: 1057, column: 3, scope: !3408)
!3419 = distinct !DISubprogram(name: "quote_n", scope: !535, file: !535, line: 1061, type: !3420, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!128, !102, !128}
!3422 = !{!3423, !3424}
!3423 = !DILocalVariable(name: "n", arg: 1, scope: !3419, file: !535, line: 1061, type: !102)
!3424 = !DILocalVariable(name: "arg", arg: 2, scope: !3419, file: !535, line: 1061, type: !128)
!3425 = !DILocation(line: 0, scope: !3419)
!3426 = !DILocation(line: 0, scope: !3398, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 1063, column: 10, scope: !3419)
!3428 = !DILocation(line: 1051, column: 10, scope: !3398, inlinedAt: !3427)
!3429 = !DILocation(line: 1063, column: 3, scope: !3419)
!3430 = distinct !DISubprogram(name: "quote", scope: !535, file: !535, line: 1067, type: !3431, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!128, !128}
!3433 = !{!3434}
!3434 = !DILocalVariable(name: "arg", arg: 1, scope: !3430, file: !535, line: 1067, type: !128)
!3435 = !DILocation(line: 0, scope: !3430)
!3436 = !DILocation(line: 0, scope: !3419, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 1069, column: 10, scope: !3430)
!3438 = !DILocation(line: 0, scope: !3398, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 1063, column: 10, scope: !3419, inlinedAt: !3437)
!3440 = !DILocation(line: 1051, column: 10, scope: !3398, inlinedAt: !3439)
!3441 = !DILocation(line: 1069, column: 3, scope: !3430)
!3442 = !DILocation(line: 0, scope: !646)
!3443 = !DILocation(line: 181, column: 53, scope: !646)
!3444 = !DILocation(line: 181, column: 10, scope: !646)
!3445 = !DILocation(line: 181, column: 3, scope: !646)
!3446 = distinct !DISubprogram(name: "try_tempname_len", scope: !647, file: !647, line: 189, type: !3447, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!102, !122, !102, !123, !667, !125}
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3461, !3462, !3463, !3465, !3466, !3467, !3469, !3473}
!3450 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3446, file: !647, line: 189, type: !122)
!3451 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3446, file: !647, line: 189, type: !102)
!3452 = !DILocalVariable(name: "args", arg: 3, scope: !3446, file: !647, line: 189, type: !123)
!3453 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3446, file: !647, line: 190, type: !667)
!3454 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3446, file: !647, line: 190, type: !125)
!3455 = !DILocalVariable(name: "saved_errno", scope: !3446, file: !647, line: 192, type: !102)
!3456 = !DILocalVariable(name: "attempts", scope: !3446, file: !647, line: 208, type: !97)
!3457 = !DILocalVariable(name: "v", scope: !3446, file: !647, line: 212, type: !3458)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "random_value", file: !647, line: 64, baseType: !3459)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3460, line: 75, baseType: !127)
!3460 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!3461 = !DILocalVariable(name: "vdigbuf", scope: !3446, file: !647, line: 216, type: !3458)
!3462 = !DILocalVariable(name: "vdigits", scope: !3446, file: !647, line: 217, type: !102)
!3463 = !DILocalVariable(name: "biased_min", scope: !3446, file: !647, line: 221, type: !3464)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3465 = !DILocalVariable(name: "len", scope: !3446, file: !647, line: 224, type: !125)
!3466 = !DILocalVariable(name: "XXXXXX", scope: !3446, file: !647, line: 233, type: !122)
!3467 = !DILocalVariable(name: "count", scope: !3468, file: !647, line: 235, type: !97)
!3468 = distinct !DILexicalBlock(scope: !3446, file: !647, line: 235, column: 3)
!3469 = !DILocalVariable(name: "i", scope: !3470, file: !647, line: 237, type: !125)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !647, line: 237, column: 7)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !647, line: 236, column: 5)
!3472 = distinct !DILexicalBlock(scope: !3468, file: !647, line: 235, column: 3)
!3473 = !DILocalVariable(name: "fd", scope: !3471, file: !647, line: 254, type: !102)
!3474 = !DILocation(line: 0, scope: !3446)
!3475 = !DILocation(line: 192, column: 21, scope: !3446)
!3476 = !DILocation(line: 212, column: 3, scope: !3446)
!3477 = !DILocation(line: 212, column: 16, scope: !3446)
!3478 = !DILocation(line: 224, column: 16, scope: !3446)
!3479 = !DILocation(line: 225, column: 28, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3446, file: !647, line: 225, column: 7)
!3481 = !DILocation(line: 225, column: 26, scope: !3480)
!3482 = !DILocation(line: 225, column: 11, scope: !3480)
!3483 = !DILocation(line: 226, column: 7, scope: !3480)
!3484 = !DILocation(line: 226, column: 43, scope: !3480)
!3485 = !DILocation(line: 226, column: 19, scope: !3480)
!3486 = !DILocation(line: 226, column: 10, scope: !3480)
!3487 = !DILocation(line: 226, column: 62, scope: !3480)
!3488 = !DILocation(line: 225, column: 7, scope: !3446)
!3489 = !DILocation(line: 0, scope: !3468)
!3490 = !DILocation(line: 235, column: 3, scope: !3468)
!3491 = !DILocation(line: 235, column: 50, scope: !3472)
!3492 = !DILocation(line: 235, column: 38, scope: !3472)
!3493 = distinct !{!3493, !3490, !3494, !989}
!3494 = !DILocation(line: 262, column: 5, scope: !3468)
!3495 = !DILocation(line: 0, scope: !3470)
!3496 = !DILocation(line: 237, column: 7, scope: !3470)
!3497 = !DILocation(line: 254, column: 16, scope: !3471)
!3498 = !DILocation(line: 0, scope: !3471)
!3499 = !DILocation(line: 255, column: 14, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3471, file: !647, line: 255, column: 11)
!3501 = !DILocation(line: 255, column: 11, scope: !3471)
!3502 = !DILocation(line: 239, column: 23, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !647, line: 239, column: 15)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !647, line: 238, column: 9)
!3505 = distinct !DILexicalBlock(scope: !3470, file: !647, line: 237, column: 7)
!3506 = !DILocation(line: 239, column: 15, scope: !3504)
!3507 = !DILocation(line: 242, column: 39, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3503, file: !647, line: 240, column: 13)
!3509 = !DILocalVariable(name: "r", arg: 1, scope: !3510, file: !647, line: 93, type: !3513)
!3510 = distinct !DISubprogram(name: "random_bits", scope: !647, file: !647, line: 93, type: !3511, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3514)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!201, !3513, !3458}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3514 = !{!3509, !3515, !3516, !3517}
!3515 = !DILocalVariable(name: "s", arg: 2, scope: !3510, file: !647, line: 93, type: !3458)
!3516 = !DILocalVariable(name: "v", scope: !3510, file: !647, line: 107, type: !3458)
!3517 = !DILocalVariable(name: "tv", scope: !3510, file: !647, line: 110, type: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3519, line: 11, size: 128, elements: !3520)
!3519 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3520 = !{!3521, !3523}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3518, file: !3519, line: 16, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !253, line: 160, baseType: !254)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3518, file: !3519, line: 21, baseType: !3524, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !253, line: 197, baseType: !254)
!3525 = !DILocation(line: 0, scope: !3510, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 242, column: 22, scope: !3508)
!3527 = !DILocation(line: 96, column: 7, scope: !3528, inlinedAt: !3526)
!3528 = distinct !DILexicalBlock(scope: !3510, file: !647, line: 96, column: 7)
!3529 = !DILocation(line: 96, column: 49, scope: !3528, inlinedAt: !3526)
!3530 = !DILocation(line: 96, column: 7, scope: !3510, inlinedAt: !3526)
!3531 = distinct !{!3531, !3532, !3533, !989}
!3532 = !DILocation(line: 242, column: 15, scope: !3508)
!3533 = !DILocation(line: 243, column: 17, scope: !3508)
!3534 = !DILocation(line: 110, column: 3, scope: !3510, inlinedAt: !3526)
!3535 = !DILocation(line: 110, column: 23, scope: !3510, inlinedAt: !3526)
!3536 = !DILocation(line: 111, column: 3, scope: !3510, inlinedAt: !3526)
!3537 = !DILocation(line: 112, column: 32, scope: !3510, inlinedAt: !3526)
!3538 = !{!3539, !1498, i64 0}
!3539 = !{!"timespec", !1498, i64 0, !1498, i64 8}
!3540 = !DILocalVariable(name: "r", arg: 1, scope: !3541, file: !647, line: 74, type: !3458)
!3541 = distinct !DISubprogram(name: "mix_random_values", scope: !647, file: !647, line: 74, type: !3542, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3544)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!3458, !3458, !3458}
!3544 = !{!3540, !3545}
!3545 = !DILocalVariable(name: "s", arg: 2, scope: !3541, file: !647, line: 74, type: !3458)
!3546 = !DILocation(line: 0, scope: !3541, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 112, column: 7, scope: !3510, inlinedAt: !3526)
!3548 = !DILocation(line: 79, column: 31, scope: !3541, inlinedAt: !3547)
!3549 = !DILocation(line: 79, column: 35, scope: !3541, inlinedAt: !3547)
!3550 = !DILocation(line: 79, column: 49, scope: !3541, inlinedAt: !3547)
!3551 = !DILocation(line: 113, column: 32, scope: !3510, inlinedAt: !3526)
!3552 = !{!3539, !1498, i64 8}
!3553 = !DILocation(line: 0, scope: !3541, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 113, column: 7, scope: !3510, inlinedAt: !3526)
!3555 = !DILocation(line: 79, column: 31, scope: !3541, inlinedAt: !3554)
!3556 = !DILocation(line: 79, column: 35, scope: !3541, inlinedAt: !3554)
!3557 = !DILocation(line: 79, column: 49, scope: !3541, inlinedAt: !3554)
!3558 = !DILocation(line: 116, column: 30, scope: !3510, inlinedAt: !3526)
!3559 = !DILocation(line: 0, scope: !3541, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 116, column: 8, scope: !3510, inlinedAt: !3526)
!3561 = !DILocation(line: 79, column: 31, scope: !3541, inlinedAt: !3560)
!3562 = !DILocation(line: 79, column: 35, scope: !3541, inlinedAt: !3560)
!3563 = !DILocation(line: 79, column: 49, scope: !3541, inlinedAt: !3560)
!3564 = !DILocation(line: 116, column: 6, scope: !3510, inlinedAt: !3526)
!3565 = !DILocation(line: 118, column: 1, scope: !3510, inlinedAt: !3526)
!3566 = !DILocation(line: 242, column: 42, scope: !3508)
!3567 = !DILocation(line: 250, column: 19, scope: !3504)
!3568 = !DILocation(line: 249, column: 23, scope: !3504)
!3569 = !DILocation(line: 249, column: 11, scope: !3504)
!3570 = !DILocation(line: 249, column: 21, scope: !3504)
!3571 = !DILocation(line: 251, column: 18, scope: !3504)
!3572 = !DILocation(line: 237, column: 45, scope: !3505)
!3573 = !DILocation(line: 237, column: 28, scope: !3505)
!3574 = distinct !{!3574, !3496, !3575, !989}
!3575 = !DILocation(line: 252, column: 9, scope: !3470)
!3576 = !DILocation(line: 257, column: 11, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3500, file: !647, line: 256, column: 9)
!3578 = !DILocation(line: 260, column: 16, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3500, file: !647, line: 260, column: 16)
!3580 = !DILocation(line: 260, column: 22, scope: !3579)
!3581 = !DILocation(line: 267, column: 1, scope: !3446)
!3582 = !DISubprogram(name: "getrandom", scope: !3583, file: !3583, line: 34, type: !3584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!3583 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/random.h", directory: "", checksumkind: CSK_MD5, checksum: "993db293d7c3a15007a82e16d5213f99")
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!3586, !123, !125, !97}
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !449, line: 77, baseType: !3587)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !253, line: 194, baseType: !254)
!3588 = !DISubprogram(name: "clock_gettime", scope: !3589, file: !3589, line: 279, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!3589 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!102, !3592, !3595}
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3593, line: 7, baseType: !3594)
!3593 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !253, line: 169, baseType: !102)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3596 = !DISubprogram(name: "clock", scope: !3589, file: !3589, line: 72, type: !3597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!3599}
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3600, line: 7, baseType: !3601)
!3600 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !253, line: 156, baseType: !254)
!3602 = distinct !DISubprogram(name: "try_file", scope: !647, file: !647, line: 126, type: !668, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3603)
!3603 = !{!3604, !3605, !3606}
!3604 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3602, file: !647, line: 126, type: !122)
!3605 = !DILocalVariable(name: "flags", arg: 2, scope: !3602, file: !647, line: 126, type: !123)
!3606 = !DILocalVariable(name: "openflags", scope: !3602, file: !647, line: 128, type: !410)
!3607 = !DILocation(line: 0, scope: !3602)
!3608 = !DILocation(line: 130, column: 19, scope: !3602)
!3609 = !DILocation(line: 130, column: 30, scope: !3602)
!3610 = !DILocation(line: 131, column: 37, scope: !3602)
!3611 = !DILocation(line: 129, column: 10, scope: !3602)
!3612 = !DILocation(line: 129, column: 3, scope: !3602)
!3613 = distinct !DISubprogram(name: "try_dir", scope: !647, file: !647, line: 135, type: !668, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3614)
!3614 = !{!3615, !3616}
!3615 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3613, file: !647, line: 135, type: !122)
!3616 = !DILocalVariable(name: "flags", arg: 2, scope: !3613, file: !647, line: 135, type: !123)
!3617 = !DILocation(line: 0, scope: !3613)
!3618 = !DILocation(line: 137, column: 10, scope: !3613)
!3619 = !DILocation(line: 137, column: 3, scope: !3613)
!3620 = distinct !DISubprogram(name: "try_nocreate", scope: !647, file: !647, line: 141, type: !668, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3620, file: !647, line: 141, type: !122)
!3623 = !DILocalVariable(name: "flags", arg: 2, scope: !3620, file: !647, line: 141, type: !123)
!3624 = !DILocalVariable(name: "st", scope: !3620, file: !647, line: 143, type: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3626, line: 44, size: 1024, elements: !3627)
!3626 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3627 = !{!3628, !3630, !3632, !3634, !3636, !3638, !3640, !3641, !3642, !3643, !3645, !3646, !3648, !3649, !3650, !3651}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3625, file: !3626, line: 46, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !253, line: 145, baseType: !127)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3625, file: !3626, line: 47, baseType: !3631, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !253, line: 148, baseType: !127)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3625, file: !3626, line: 48, baseType: !3633, size: 32, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !253, line: 150, baseType: !97)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3625, file: !3626, line: 49, baseType: !3635, size: 32, offset: 160)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !253, line: 151, baseType: !97)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3625, file: !3626, line: 50, baseType: !3637, size: 32, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !253, line: 146, baseType: !97)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3625, file: !3626, line: 51, baseType: !3639, size: 32, offset: 224)
!3639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !253, line: 147, baseType: !97)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3625, file: !3626, line: 52, baseType: !3629, size: 64, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3625, file: !3626, line: 53, baseType: !3629, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3625, file: !3626, line: 54, baseType: !252, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3625, file: !3626, line: 55, baseType: !3644, size: 32, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !253, line: 175, baseType: !102)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3625, file: !3626, line: 56, baseType: !102, size: 32, offset: 480)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3625, file: !3626, line: 57, baseType: !3647, size: 64, offset: 512)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !253, line: 180, baseType: !254)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3625, file: !3626, line: 65, baseType: !3518, size: 128, offset: 576)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3625, file: !3626, line: 66, baseType: !3518, size: 128, offset: 704)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3625, file: !3626, line: 67, baseType: !3518, size: 128, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3625, file: !3626, line: 79, baseType: !3652, size: 64, offset: 960)
!3652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !25)
!3653 = !DILocation(line: 0, scope: !3620)
!3654 = !DILocation(line: 143, column: 3, scope: !3620)
!3655 = !DILocation(line: 143, column: 17, scope: !3620)
!3656 = !DILocation(line: 145, column: 7, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3620, file: !647, line: 145, column: 7)
!3658 = !DILocation(line: 145, column: 36, scope: !3657)
!3659 = !DILocation(line: 0, scope: !3657)
!3660 = !DILocation(line: 145, column: 41, scope: !3657)
!3661 = !DILocation(line: 145, column: 44, scope: !3657)
!3662 = !DILocation(line: 145, column: 50, scope: !3657)
!3663 = !DILocation(line: 145, column: 7, scope: !3620)
!3664 = !DILocation(line: 146, column: 5, scope: !3657)
!3665 = !DILocation(line: 147, column: 10, scope: !3620)
!3666 = !DILocation(line: 147, column: 16, scope: !3620)
!3667 = !DILocation(line: 148, column: 1, scope: !3620)
!3668 = !DILocation(line: 147, column: 3, scope: !3620)
!3669 = !DISubprogram(name: "lstat", scope: !3670, file: !3670, line: 313, type: !3671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!3670 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!102, !933, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3674)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3675 = !DISubprogram(name: "mkdir", scope: !3670, file: !3670, line: 389, type: !3676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!102, !128, !3633}
!3678 = !DISubprogram(name: "open", scope: !1720, file: !1720, line: 181, type: !3679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!102, !128, !102, null}
!3681 = distinct !DISubprogram(name: "gen_tempname", scope: !647, file: !647, line: 270, type: !3682, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!102, !122, !102, !102, !102}
!3684 = !{!3685, !3686, !3687, !3688}
!3685 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3681, file: !647, line: 270, type: !122)
!3686 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3681, file: !647, line: 270, type: !102)
!3687 = !DILocalVariable(name: "flags", arg: 3, scope: !3681, file: !647, line: 270, type: !102)
!3688 = !DILocalVariable(name: "kind", arg: 4, scope: !3681, file: !647, line: 270, type: !102)
!3689 = !DILocation(line: 0, scope: !3681)
!3690 = !DILocation(line: 0, scope: !646, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 272, column: 10, scope: !3681)
!3692 = !DILocation(line: 181, column: 53, scope: !646, inlinedAt: !3691)
!3693 = !DILocation(line: 181, column: 10, scope: !646, inlinedAt: !3691)
!3694 = !DILocation(line: 181, column: 3, scope: !646, inlinedAt: !3691)
!3695 = !DILocation(line: 272, column: 3, scope: !3681)
!3696 = distinct !DISubprogram(name: "try_tempname", scope: !647, file: !647, line: 277, type: !3697, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!102, !122, !102, !123, !667}
!3699 = !{!3700, !3701, !3702, !3703}
!3700 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3696, file: !647, line: 277, type: !122)
!3701 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3696, file: !647, line: 277, type: !102)
!3702 = !DILocalVariable(name: "args", arg: 3, scope: !3696, file: !647, line: 277, type: !123)
!3703 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3696, file: !647, line: 278, type: !667)
!3704 = !DILocation(line: 0, scope: !3696)
!3705 = !DILocation(line: 280, column: 10, scope: !3696)
!3706 = !DILocation(line: 280, column: 3, scope: !3696)
!3707 = distinct !DISubprogram(name: "version_etc_arn", scope: !672, file: !672, line: 61, type: !3708, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3745)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3710, !128, !128, !128, !3744, !125}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !3712)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3712, file: !230, line: 51, baseType: !102, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3712, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3712, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3712, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3712, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3712, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3712, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3712, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3712, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3712, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3712, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3712, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3712, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3712, file: !230, line: 70, baseType: !3728, size: 64, offset: 832)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3712, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3712, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3712, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3712, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3712, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3712, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3712, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3712, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3712, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3712, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3712, file: !230, line: 93, baseType: !3728, size: 64, offset: 1344)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3712, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3712, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3712, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3712, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!3745 = !{!3746, !3747, !3748, !3749, !3750, !3751}
!3746 = !DILocalVariable(name: "stream", arg: 1, scope: !3707, file: !672, line: 61, type: !3710)
!3747 = !DILocalVariable(name: "command_name", arg: 2, scope: !3707, file: !672, line: 62, type: !128)
!3748 = !DILocalVariable(name: "package", arg: 3, scope: !3707, file: !672, line: 62, type: !128)
!3749 = !DILocalVariable(name: "version", arg: 4, scope: !3707, file: !672, line: 63, type: !128)
!3750 = !DILocalVariable(name: "authors", arg: 5, scope: !3707, file: !672, line: 64, type: !3744)
!3751 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3707, file: !672, line: 64, type: !125)
!3752 = !DILocation(line: 0, scope: !3707)
!3753 = !DILocation(line: 66, column: 7, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3707, file: !672, line: 66, column: 7)
!3755 = !DILocation(line: 66, column: 7, scope: !3707)
!3756 = !DILocation(line: 67, column: 5, scope: !3754)
!3757 = !DILocation(line: 69, column: 5, scope: !3754)
!3758 = !DILocation(line: 83, column: 3, scope: !3707)
!3759 = !DILocation(line: 85, column: 3, scope: !3707)
!3760 = !DILocation(line: 88, column: 3, scope: !3707)
!3761 = !DILocation(line: 95, column: 3, scope: !3707)
!3762 = !DILocation(line: 97, column: 3, scope: !3707)
!3763 = !DILocation(line: 105, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3707, file: !672, line: 98, column: 5)
!3765 = !DILocation(line: 106, column: 7, scope: !3764)
!3766 = !DILocation(line: 109, column: 7, scope: !3764)
!3767 = !DILocation(line: 110, column: 7, scope: !3764)
!3768 = !DILocation(line: 113, column: 7, scope: !3764)
!3769 = !DILocation(line: 115, column: 7, scope: !3764)
!3770 = !DILocation(line: 120, column: 7, scope: !3764)
!3771 = !DILocation(line: 122, column: 7, scope: !3764)
!3772 = !DILocation(line: 127, column: 7, scope: !3764)
!3773 = !DILocation(line: 129, column: 7, scope: !3764)
!3774 = !DILocation(line: 134, column: 7, scope: !3764)
!3775 = !DILocation(line: 137, column: 7, scope: !3764)
!3776 = !DILocation(line: 142, column: 7, scope: !3764)
!3777 = !DILocation(line: 145, column: 7, scope: !3764)
!3778 = !DILocation(line: 150, column: 7, scope: !3764)
!3779 = !DILocation(line: 154, column: 7, scope: !3764)
!3780 = !DILocation(line: 159, column: 7, scope: !3764)
!3781 = !DILocation(line: 163, column: 7, scope: !3764)
!3782 = !DILocation(line: 170, column: 7, scope: !3764)
!3783 = !DILocation(line: 174, column: 7, scope: !3764)
!3784 = !DILocation(line: 176, column: 1, scope: !3707)
!3785 = distinct !DISubprogram(name: "version_etc_ar", scope: !672, file: !672, line: 183, type: !3786, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3710, !128, !128, !128, !3744}
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794}
!3789 = !DILocalVariable(name: "stream", arg: 1, scope: !3785, file: !672, line: 183, type: !3710)
!3790 = !DILocalVariable(name: "command_name", arg: 2, scope: !3785, file: !672, line: 184, type: !128)
!3791 = !DILocalVariable(name: "package", arg: 3, scope: !3785, file: !672, line: 184, type: !128)
!3792 = !DILocalVariable(name: "version", arg: 4, scope: !3785, file: !672, line: 185, type: !128)
!3793 = !DILocalVariable(name: "authors", arg: 5, scope: !3785, file: !672, line: 185, type: !3744)
!3794 = !DILocalVariable(name: "n_authors", scope: !3785, file: !672, line: 187, type: !125)
!3795 = !DILocation(line: 0, scope: !3785)
!3796 = !DILocation(line: 189, column: 8, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3785, file: !672, line: 189, column: 3)
!3798 = !DILocation(line: 189, scope: !3797)
!3799 = !DILocation(line: 189, column: 23, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3797, file: !672, line: 189, column: 3)
!3801 = !DILocation(line: 189, column: 3, scope: !3797)
!3802 = !DILocation(line: 189, column: 52, scope: !3800)
!3803 = distinct !{!3803, !3801, !3804, !989}
!3804 = !DILocation(line: 190, column: 5, scope: !3797)
!3805 = !DILocation(line: 191, column: 3, scope: !3785)
!3806 = !DILocation(line: 192, column: 1, scope: !3785)
!3807 = distinct !DISubprogram(name: "version_etc_va", scope: !672, file: !672, line: 199, type: !3808, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3821)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3710, !128, !128, !128, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !449, line: 52, baseType: !3811)
!3811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !451, line: 14, baseType: !3812)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3813, baseType: !3814)
!3813 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3814, file: !3813, line: 192, baseType: !123, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3814, file: !3813, line: 192, baseType: !123, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3814, file: !3813, line: 192, baseType: !123, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3814, file: !3813, line: 192, baseType: !102, size: 32, offset: 192)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3814, file: !3813, line: 192, baseType: !102, size: 32, offset: 224)
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3822 = !DILocalVariable(name: "stream", arg: 1, scope: !3807, file: !672, line: 199, type: !3710)
!3823 = !DILocalVariable(name: "command_name", arg: 2, scope: !3807, file: !672, line: 200, type: !128)
!3824 = !DILocalVariable(name: "package", arg: 3, scope: !3807, file: !672, line: 200, type: !128)
!3825 = !DILocalVariable(name: "version", arg: 4, scope: !3807, file: !672, line: 201, type: !128)
!3826 = !DILocalVariable(name: "authors", arg: 5, scope: !3807, file: !672, line: 201, type: !3810)
!3827 = !DILocalVariable(name: "n_authors", scope: !3807, file: !672, line: 203, type: !125)
!3828 = !DILocalVariable(name: "authtab", scope: !3807, file: !672, line: 204, type: !3829)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !80)
!3830 = !DILocation(line: 0, scope: !3807)
!3831 = !DILocation(line: 201, column: 46, scope: !3807)
!3832 = !DILocation(line: 204, column: 3, scope: !3807)
!3833 = !DILocation(line: 204, column: 15, scope: !3807)
!3834 = !DILocation(line: 208, column: 35, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !672, line: 206, column: 3)
!3836 = distinct !DILexicalBlock(scope: !3807, file: !672, line: 206, column: 3)
!3837 = !DILocation(line: 208, column: 33, scope: !3835)
!3838 = !DILocation(line: 208, column: 67, scope: !3835)
!3839 = !DILocation(line: 206, column: 3, scope: !3836)
!3840 = !DILocation(line: 208, column: 14, scope: !3835)
!3841 = !DILocation(line: 0, scope: !3836)
!3842 = !DILocation(line: 211, column: 3, scope: !3807)
!3843 = !DILocation(line: 213, column: 1, scope: !3807)
!3844 = distinct !DISubprogram(name: "version_etc", scope: !672, file: !672, line: 230, type: !3845, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{null, !3710, !128, !128, !128, null}
!3847 = !{!3848, !3849, !3850, !3851, !3852}
!3848 = !DILocalVariable(name: "stream", arg: 1, scope: !3844, file: !672, line: 230, type: !3710)
!3849 = !DILocalVariable(name: "command_name", arg: 2, scope: !3844, file: !672, line: 231, type: !128)
!3850 = !DILocalVariable(name: "package", arg: 3, scope: !3844, file: !672, line: 231, type: !128)
!3851 = !DILocalVariable(name: "version", arg: 4, scope: !3844, file: !672, line: 232, type: !128)
!3852 = !DILocalVariable(name: "authors", scope: !3844, file: !672, line: 234, type: !3810)
!3853 = !DILocation(line: 0, scope: !3844)
!3854 = !DILocation(line: 234, column: 3, scope: !3844)
!3855 = !DILocation(line: 234, column: 11, scope: !3844)
!3856 = !DILocation(line: 235, column: 3, scope: !3844)
!3857 = !DILocation(line: 236, column: 3, scope: !3844)
!3858 = !DILocation(line: 237, column: 3, scope: !3844)
!3859 = !DILocation(line: 238, column: 1, scope: !3844)
!3860 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !672, file: !672, line: 241, type: !490, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !927)
!3861 = !DILocation(line: 243, column: 3, scope: !3860)
!3862 = !DILocation(line: 248, column: 3, scope: !3860)
!3863 = !DILocation(line: 254, column: 3, scope: !3860)
!3864 = !DILocation(line: 259, column: 3, scope: !3860)
!3865 = !DILocation(line: 261, column: 1, scope: !3860)
!3866 = distinct !DISubprogram(name: "xnrealloc", scope: !3867, file: !3867, line: 147, type: !3868, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3870)
!3867 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!123, !123, !125, !125}
!3870 = !{!3871, !3872, !3873}
!3871 = !DILocalVariable(name: "p", arg: 1, scope: !3866, file: !3867, line: 147, type: !123)
!3872 = !DILocalVariable(name: "n", arg: 2, scope: !3866, file: !3867, line: 147, type: !125)
!3873 = !DILocalVariable(name: "s", arg: 3, scope: !3866, file: !3867, line: 147, type: !125)
!3874 = !DILocation(line: 0, scope: !3866)
!3875 = !DILocalVariable(name: "p", arg: 1, scope: !3876, file: !811, line: 83, type: !123)
!3876 = distinct !DISubprogram(name: "xreallocarray", scope: !811, file: !811, line: 83, type: !3868, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3877)
!3877 = !{!3875, !3878, !3879}
!3878 = !DILocalVariable(name: "n", arg: 2, scope: !3876, file: !811, line: 83, type: !125)
!3879 = !DILocalVariable(name: "s", arg: 3, scope: !3876, file: !811, line: 83, type: !125)
!3880 = !DILocation(line: 0, scope: !3876, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 149, column: 10, scope: !3866)
!3882 = !DILocation(line: 85, column: 25, scope: !3876, inlinedAt: !3881)
!3883 = !DILocalVariable(name: "p", arg: 1, scope: !3884, file: !811, line: 37, type: !123)
!3884 = distinct !DISubprogram(name: "check_nonnull", scope: !811, file: !811, line: 37, type: !3885, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!123, !123}
!3887 = !{!3883}
!3888 = !DILocation(line: 0, scope: !3884, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 85, column: 10, scope: !3876, inlinedAt: !3881)
!3890 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !3889)
!3891 = distinct !DILexicalBlock(scope: !3884, file: !811, line: 39, column: 7)
!3892 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !3889)
!3893 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !3889)
!3894 = !DILocation(line: 149, column: 3, scope: !3866)
!3895 = !DILocation(line: 0, scope: !3876)
!3896 = !DILocation(line: 85, column: 25, scope: !3876)
!3897 = !DILocation(line: 0, scope: !3884, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 85, column: 10, scope: !3876)
!3899 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !3898)
!3900 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !3898)
!3901 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !3898)
!3902 = !DILocation(line: 85, column: 3, scope: !3876)
!3903 = distinct !DISubprogram(name: "xmalloc", scope: !811, file: !811, line: 47, type: !1998, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3904)
!3904 = !{!3905}
!3905 = !DILocalVariable(name: "s", arg: 1, scope: !3903, file: !811, line: 47, type: !125)
!3906 = !DILocation(line: 0, scope: !3903)
!3907 = !DILocation(line: 49, column: 25, scope: !3903)
!3908 = !DILocation(line: 0, scope: !3884, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 49, column: 10, scope: !3903)
!3910 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !3909)
!3911 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !3909)
!3912 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !3909)
!3913 = !DILocation(line: 49, column: 3, scope: !3903)
!3914 = distinct !DISubprogram(name: "ximalloc", scope: !811, file: !811, line: 53, type: !3915, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!123, !830}
!3917 = !{!3918}
!3918 = !DILocalVariable(name: "s", arg: 1, scope: !3914, file: !811, line: 53, type: !830)
!3919 = !DILocation(line: 0, scope: !3914)
!3920 = !DILocalVariable(name: "s", arg: 1, scope: !3921, file: !3922, line: 55, type: !830)
!3921 = distinct !DISubprogram(name: "imalloc", scope: !3922, file: !3922, line: 55, type: !3915, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3923)
!3922 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3923 = !{!3920}
!3924 = !DILocation(line: 0, scope: !3921, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 55, column: 25, scope: !3914)
!3926 = !DILocation(line: 57, column: 26, scope: !3921, inlinedAt: !3925)
!3927 = !DILocation(line: 0, scope: !3884, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 55, column: 10, scope: !3914)
!3929 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !3928)
!3930 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !3928)
!3931 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !3928)
!3932 = !DILocation(line: 55, column: 3, scope: !3914)
!3933 = distinct !DISubprogram(name: "xcharalloc", scope: !811, file: !811, line: 59, type: !3934, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!122, !125}
!3936 = !{!3937}
!3937 = !DILocalVariable(name: "n", arg: 1, scope: !3933, file: !811, line: 59, type: !125)
!3938 = !DILocation(line: 0, scope: !3933)
!3939 = !DILocation(line: 0, scope: !3903, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 61, column: 10, scope: !3933)
!3941 = !DILocation(line: 49, column: 25, scope: !3903, inlinedAt: !3940)
!3942 = !DILocation(line: 0, scope: !3884, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 49, column: 10, scope: !3903, inlinedAt: !3940)
!3944 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !3943)
!3945 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !3943)
!3946 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !3943)
!3947 = !DILocation(line: 61, column: 3, scope: !3933)
!3948 = distinct !DISubprogram(name: "xrealloc", scope: !811, file: !811, line: 68, type: !3949, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!123, !123, !125}
!3951 = !{!3952, !3953}
!3952 = !DILocalVariable(name: "p", arg: 1, scope: !3948, file: !811, line: 68, type: !123)
!3953 = !DILocalVariable(name: "s", arg: 2, scope: !3948, file: !811, line: 68, type: !125)
!3954 = !DILocation(line: 0, scope: !3948)
!3955 = !DILocalVariable(name: "ptr", arg: 1, scope: !3956, file: !3957, line: 2057, type: !123)
!3956 = distinct !DISubprogram(name: "rpl_realloc", scope: !3957, file: !3957, line: 2057, type: !3949, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3958)
!3957 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3958 = !{!3955, !3959}
!3959 = !DILocalVariable(name: "size", arg: 2, scope: !3956, file: !3957, line: 2057, type: !125)
!3960 = !DILocation(line: 0, scope: !3956, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 70, column: 25, scope: !3948)
!3962 = !DILocation(line: 2059, column: 24, scope: !3956, inlinedAt: !3961)
!3963 = !DILocation(line: 2059, column: 10, scope: !3956, inlinedAt: !3961)
!3964 = !DILocation(line: 0, scope: !3884, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 70, column: 10, scope: !3948)
!3966 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !3965)
!3967 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !3965)
!3968 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !3965)
!3969 = !DILocation(line: 70, column: 3, scope: !3948)
!3970 = !DISubprogram(name: "realloc", scope: !1063, file: !1063, line: 551, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!3971 = distinct !DISubprogram(name: "xirealloc", scope: !811, file: !811, line: 74, type: !3972, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!123, !123, !830}
!3974 = !{!3975, !3976}
!3975 = !DILocalVariable(name: "p", arg: 1, scope: !3971, file: !811, line: 74, type: !123)
!3976 = !DILocalVariable(name: "s", arg: 2, scope: !3971, file: !811, line: 74, type: !830)
!3977 = !DILocation(line: 0, scope: !3971)
!3978 = !DILocalVariable(name: "p", arg: 1, scope: !3979, file: !3922, line: 66, type: !123)
!3979 = distinct !DISubprogram(name: "irealloc", scope: !3922, file: !3922, line: 66, type: !3972, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3980)
!3980 = !{!3978, !3981}
!3981 = !DILocalVariable(name: "s", arg: 2, scope: !3979, file: !3922, line: 66, type: !830)
!3982 = !DILocation(line: 0, scope: !3979, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 76, column: 25, scope: !3971)
!3984 = !DILocation(line: 0, scope: !3956, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 68, column: 26, scope: !3979, inlinedAt: !3983)
!3986 = !DILocation(line: 2059, column: 24, scope: !3956, inlinedAt: !3985)
!3987 = !DILocation(line: 2059, column: 10, scope: !3956, inlinedAt: !3985)
!3988 = !DILocation(line: 0, scope: !3884, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 76, column: 10, scope: !3971)
!3990 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !3989)
!3991 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !3989)
!3992 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !3989)
!3993 = !DILocation(line: 76, column: 3, scope: !3971)
!3994 = distinct !DISubprogram(name: "xireallocarray", scope: !811, file: !811, line: 89, type: !3995, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!123, !123, !830, !830}
!3997 = !{!3998, !3999, !4000}
!3998 = !DILocalVariable(name: "p", arg: 1, scope: !3994, file: !811, line: 89, type: !123)
!3999 = !DILocalVariable(name: "n", arg: 2, scope: !3994, file: !811, line: 89, type: !830)
!4000 = !DILocalVariable(name: "s", arg: 3, scope: !3994, file: !811, line: 89, type: !830)
!4001 = !DILocation(line: 0, scope: !3994)
!4002 = !DILocalVariable(name: "p", arg: 1, scope: !4003, file: !3922, line: 98, type: !123)
!4003 = distinct !DISubprogram(name: "ireallocarray", scope: !3922, file: !3922, line: 98, type: !3995, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4004)
!4004 = !{!4002, !4005, !4006}
!4005 = !DILocalVariable(name: "n", arg: 2, scope: !4003, file: !3922, line: 98, type: !830)
!4006 = !DILocalVariable(name: "s", arg: 3, scope: !4003, file: !3922, line: 98, type: !830)
!4007 = !DILocation(line: 0, scope: !4003, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 91, column: 25, scope: !3994)
!4009 = !DILocation(line: 101, column: 13, scope: !4003, inlinedAt: !4008)
!4010 = !DILocation(line: 0, scope: !3884, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 91, column: 10, scope: !3994)
!4012 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4011)
!4013 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4011)
!4014 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4011)
!4015 = !DILocation(line: 91, column: 3, scope: !3994)
!4016 = distinct !DISubprogram(name: "xnmalloc", scope: !811, file: !811, line: 98, type: !4017, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!123, !125, !125}
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "n", arg: 1, scope: !4016, file: !811, line: 98, type: !125)
!4021 = !DILocalVariable(name: "s", arg: 2, scope: !4016, file: !811, line: 98, type: !125)
!4022 = !DILocation(line: 0, scope: !4016)
!4023 = !DILocation(line: 0, scope: !3876, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 100, column: 10, scope: !4016)
!4025 = !DILocation(line: 85, column: 25, scope: !3876, inlinedAt: !4024)
!4026 = !DILocation(line: 0, scope: !3884, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 85, column: 10, scope: !3876, inlinedAt: !4024)
!4028 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4027)
!4029 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4027)
!4030 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4027)
!4031 = !DILocation(line: 100, column: 3, scope: !4016)
!4032 = distinct !DISubprogram(name: "xinmalloc", scope: !811, file: !811, line: 104, type: !4033, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!123, !830, !830}
!4035 = !{!4036, !4037}
!4036 = !DILocalVariable(name: "n", arg: 1, scope: !4032, file: !811, line: 104, type: !830)
!4037 = !DILocalVariable(name: "s", arg: 2, scope: !4032, file: !811, line: 104, type: !830)
!4038 = !DILocation(line: 0, scope: !4032)
!4039 = !DILocation(line: 0, scope: !3994, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 106, column: 10, scope: !4032)
!4041 = !DILocation(line: 0, scope: !4003, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 91, column: 25, scope: !3994, inlinedAt: !4040)
!4043 = !DILocation(line: 101, column: 13, scope: !4003, inlinedAt: !4042)
!4044 = !DILocation(line: 0, scope: !3884, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 91, column: 10, scope: !3994, inlinedAt: !4040)
!4046 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4045)
!4047 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4045)
!4048 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4045)
!4049 = !DILocation(line: 106, column: 3, scope: !4032)
!4050 = distinct !DISubprogram(name: "x2realloc", scope: !811, file: !811, line: 116, type: !4051, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!123, !123, !817}
!4053 = !{!4054, !4055}
!4054 = !DILocalVariable(name: "p", arg: 1, scope: !4050, file: !811, line: 116, type: !123)
!4055 = !DILocalVariable(name: "ps", arg: 2, scope: !4050, file: !811, line: 116, type: !817)
!4056 = !DILocation(line: 0, scope: !4050)
!4057 = !DILocation(line: 0, scope: !814, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 118, column: 10, scope: !4050)
!4059 = !DILocation(line: 178, column: 14, scope: !814, inlinedAt: !4058)
!4060 = !DILocation(line: 180, column: 9, scope: !4061, inlinedAt: !4058)
!4061 = distinct !DILexicalBlock(scope: !814, file: !811, line: 180, column: 7)
!4062 = !DILocation(line: 180, column: 7, scope: !814, inlinedAt: !4058)
!4063 = !DILocation(line: 182, column: 13, scope: !4064, inlinedAt: !4058)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !811, line: 182, column: 11)
!4065 = distinct !DILexicalBlock(scope: !4061, file: !811, line: 181, column: 5)
!4066 = !DILocation(line: 182, column: 11, scope: !4065, inlinedAt: !4058)
!4067 = !DILocation(line: 197, column: 11, scope: !4068, inlinedAt: !4058)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !811, line: 197, column: 11)
!4069 = distinct !DILexicalBlock(scope: !4061, file: !811, line: 195, column: 5)
!4070 = !DILocation(line: 197, column: 11, scope: !4069, inlinedAt: !4058)
!4071 = !DILocation(line: 198, column: 9, scope: !4068, inlinedAt: !4058)
!4072 = !DILocation(line: 0, scope: !3876, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 201, column: 7, scope: !814, inlinedAt: !4058)
!4074 = !DILocation(line: 85, column: 25, scope: !3876, inlinedAt: !4073)
!4075 = !DILocation(line: 0, scope: !3884, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 85, column: 10, scope: !3876, inlinedAt: !4073)
!4077 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4076)
!4078 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4076)
!4079 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4076)
!4080 = !DILocation(line: 202, column: 7, scope: !814, inlinedAt: !4058)
!4081 = !DILocation(line: 118, column: 3, scope: !4050)
!4082 = !DILocation(line: 0, scope: !814)
!4083 = !DILocation(line: 178, column: 14, scope: !814)
!4084 = !DILocation(line: 180, column: 9, scope: !4061)
!4085 = !DILocation(line: 180, column: 7, scope: !814)
!4086 = !DILocation(line: 182, column: 13, scope: !4064)
!4087 = !DILocation(line: 182, column: 11, scope: !4065)
!4088 = !DILocation(line: 190, column: 30, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4064, file: !811, line: 183, column: 9)
!4090 = !DILocation(line: 191, column: 16, scope: !4089)
!4091 = !DILocation(line: 191, column: 13, scope: !4089)
!4092 = !DILocation(line: 192, column: 9, scope: !4089)
!4093 = !DILocation(line: 197, column: 11, scope: !4068)
!4094 = !DILocation(line: 197, column: 11, scope: !4069)
!4095 = !DILocation(line: 198, column: 9, scope: !4068)
!4096 = !DILocation(line: 0, scope: !3876, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 201, column: 7, scope: !814)
!4098 = !DILocation(line: 85, column: 25, scope: !3876, inlinedAt: !4097)
!4099 = !DILocation(line: 0, scope: !3884, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 85, column: 10, scope: !3876, inlinedAt: !4097)
!4101 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4100)
!4102 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4100)
!4103 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4100)
!4104 = !DILocation(line: 202, column: 7, scope: !814)
!4105 = !DILocation(line: 203, column: 3, scope: !814)
!4106 = !DILocation(line: 0, scope: !826)
!4107 = !DILocation(line: 230, column: 14, scope: !826)
!4108 = !DILocation(line: 238, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !826, file: !811, line: 238, column: 7)
!4110 = !DILocation(line: 238, column: 7, scope: !826)
!4111 = !DILocation(line: 240, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !826, file: !811, line: 240, column: 7)
!4113 = !DILocation(line: 240, column: 18, scope: !4112)
!4114 = !DILocation(line: 253, column: 8, scope: !826)
!4115 = !DILocation(line: 258, column: 27, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !811, line: 257, column: 5)
!4117 = distinct !DILexicalBlock(scope: !826, file: !811, line: 256, column: 7)
!4118 = !DILocation(line: 259, column: 32, scope: !4116)
!4119 = !DILocation(line: 260, column: 5, scope: !4116)
!4120 = !DILocation(line: 262, column: 9, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !826, file: !811, line: 262, column: 7)
!4122 = !DILocation(line: 262, column: 7, scope: !826)
!4123 = !DILocation(line: 263, column: 9, scope: !4121)
!4124 = !DILocation(line: 263, column: 5, scope: !4121)
!4125 = !DILocation(line: 264, column: 9, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !826, file: !811, line: 264, column: 7)
!4127 = !DILocation(line: 264, column: 14, scope: !4126)
!4128 = !DILocation(line: 265, column: 7, scope: !4126)
!4129 = !DILocation(line: 265, column: 11, scope: !4126)
!4130 = !DILocation(line: 266, column: 11, scope: !4126)
!4131 = !DILocation(line: 267, column: 14, scope: !4126)
!4132 = !DILocation(line: 264, column: 7, scope: !826)
!4133 = !DILocation(line: 268, column: 5, scope: !4126)
!4134 = !DILocation(line: 0, scope: !3948, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 269, column: 8, scope: !826)
!4136 = !DILocation(line: 0, scope: !3956, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 70, column: 25, scope: !3948, inlinedAt: !4135)
!4138 = !DILocation(line: 2059, column: 24, scope: !3956, inlinedAt: !4137)
!4139 = !DILocation(line: 2059, column: 10, scope: !3956, inlinedAt: !4137)
!4140 = !DILocation(line: 0, scope: !3884, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 70, column: 10, scope: !3948, inlinedAt: !4135)
!4142 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4141)
!4143 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4141)
!4144 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4141)
!4145 = !DILocation(line: 270, column: 7, scope: !826)
!4146 = !DILocation(line: 271, column: 3, scope: !826)
!4147 = distinct !DISubprogram(name: "xzalloc", scope: !811, file: !811, line: 279, type: !1998, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4148)
!4148 = !{!4149}
!4149 = !DILocalVariable(name: "s", arg: 1, scope: !4147, file: !811, line: 279, type: !125)
!4150 = !DILocation(line: 0, scope: !4147)
!4151 = !DILocalVariable(name: "n", arg: 1, scope: !4152, file: !811, line: 294, type: !125)
!4152 = distinct !DISubprogram(name: "xcalloc", scope: !811, file: !811, line: 294, type: !4017, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4153)
!4153 = !{!4151, !4154}
!4154 = !DILocalVariable(name: "s", arg: 2, scope: !4152, file: !811, line: 294, type: !125)
!4155 = !DILocation(line: 0, scope: !4152, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 281, column: 10, scope: !4147)
!4157 = !DILocation(line: 296, column: 25, scope: !4152, inlinedAt: !4156)
!4158 = !DILocation(line: 0, scope: !3884, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 296, column: 10, scope: !4152, inlinedAt: !4156)
!4160 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4159)
!4161 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4159)
!4162 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4159)
!4163 = !DILocation(line: 281, column: 3, scope: !4147)
!4164 = !DISubprogram(name: "calloc", scope: !1063, file: !1063, line: 543, type: !4017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!4165 = !DILocation(line: 0, scope: !4152)
!4166 = !DILocation(line: 296, column: 25, scope: !4152)
!4167 = !DILocation(line: 0, scope: !3884, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 296, column: 10, scope: !4152)
!4169 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4168)
!4170 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4168)
!4171 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4168)
!4172 = !DILocation(line: 296, column: 3, scope: !4152)
!4173 = distinct !DISubprogram(name: "xizalloc", scope: !811, file: !811, line: 285, type: !3915, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4174)
!4174 = !{!4175}
!4175 = !DILocalVariable(name: "s", arg: 1, scope: !4173, file: !811, line: 285, type: !830)
!4176 = !DILocation(line: 0, scope: !4173)
!4177 = !DILocalVariable(name: "n", arg: 1, scope: !4178, file: !811, line: 300, type: !830)
!4178 = distinct !DISubprogram(name: "xicalloc", scope: !811, file: !811, line: 300, type: !4033, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4179)
!4179 = !{!4177, !4180}
!4180 = !DILocalVariable(name: "s", arg: 2, scope: !4178, file: !811, line: 300, type: !830)
!4181 = !DILocation(line: 0, scope: !4178, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 287, column: 10, scope: !4173)
!4183 = !DILocalVariable(name: "n", arg: 1, scope: !4184, file: !3922, line: 77, type: !830)
!4184 = distinct !DISubprogram(name: "icalloc", scope: !3922, file: !3922, line: 77, type: !4033, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4185)
!4185 = !{!4183, !4186}
!4186 = !DILocalVariable(name: "s", arg: 2, scope: !4184, file: !3922, line: 77, type: !830)
!4187 = !DILocation(line: 0, scope: !4184, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 302, column: 25, scope: !4178, inlinedAt: !4182)
!4189 = !DILocation(line: 91, column: 10, scope: !4184, inlinedAt: !4188)
!4190 = !DILocation(line: 0, scope: !3884, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 302, column: 10, scope: !4178, inlinedAt: !4182)
!4192 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4191)
!4195 = !DILocation(line: 287, column: 3, scope: !4173)
!4196 = !DILocation(line: 0, scope: !4178)
!4197 = !DILocation(line: 0, scope: !4184, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 302, column: 25, scope: !4178)
!4199 = !DILocation(line: 91, column: 10, scope: !4184, inlinedAt: !4198)
!4200 = !DILocation(line: 0, scope: !3884, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 302, column: 10, scope: !4178)
!4202 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4201)
!4203 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4201)
!4204 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4201)
!4205 = !DILocation(line: 302, column: 3, scope: !4178)
!4206 = distinct !DISubprogram(name: "xmemdup", scope: !811, file: !811, line: 310, type: !4207, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4209)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!123, !1087, !125}
!4209 = !{!4210, !4211}
!4210 = !DILocalVariable(name: "p", arg: 1, scope: !4206, file: !811, line: 310, type: !1087)
!4211 = !DILocalVariable(name: "s", arg: 2, scope: !4206, file: !811, line: 310, type: !125)
!4212 = !DILocation(line: 0, scope: !4206)
!4213 = !DILocation(line: 0, scope: !3903, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 312, column: 18, scope: !4206)
!4215 = !DILocation(line: 49, column: 25, scope: !3903, inlinedAt: !4214)
!4216 = !DILocation(line: 0, scope: !3884, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 49, column: 10, scope: !3903, inlinedAt: !4214)
!4218 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4217)
!4219 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4217)
!4220 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4217)
!4221 = !DILocalVariable(name: "__dest", arg: 1, scope: !4222, file: !1190, line: 26, type: !1193)
!4222 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4223)
!4223 = !{!4221, !4224, !4225}
!4224 = !DILocalVariable(name: "__src", arg: 2, scope: !4222, file: !1190, line: 26, type: !1086)
!4225 = !DILocalVariable(name: "__len", arg: 3, scope: !4222, file: !1190, line: 26, type: !125)
!4226 = !DILocation(line: 0, scope: !4222, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 312, column: 10, scope: !4206)
!4228 = !DILocation(line: 29, column: 10, scope: !4222, inlinedAt: !4227)
!4229 = !DILocation(line: 312, column: 3, scope: !4206)
!4230 = distinct !DISubprogram(name: "ximemdup", scope: !811, file: !811, line: 316, type: !4231, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!123, !1087, !830}
!4233 = !{!4234, !4235}
!4234 = !DILocalVariable(name: "p", arg: 1, scope: !4230, file: !811, line: 316, type: !1087)
!4235 = !DILocalVariable(name: "s", arg: 2, scope: !4230, file: !811, line: 316, type: !830)
!4236 = !DILocation(line: 0, scope: !4230)
!4237 = !DILocation(line: 0, scope: !3914, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 318, column: 18, scope: !4230)
!4239 = !DILocation(line: 0, scope: !3921, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 55, column: 25, scope: !3914, inlinedAt: !4238)
!4241 = !DILocation(line: 57, column: 26, scope: !3921, inlinedAt: !4240)
!4242 = !DILocation(line: 0, scope: !3884, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 55, column: 10, scope: !3914, inlinedAt: !4238)
!4244 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4243)
!4245 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4243)
!4246 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4243)
!4247 = !DILocation(line: 0, scope: !4222, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 318, column: 10, scope: !4230)
!4249 = !DILocation(line: 29, column: 10, scope: !4222, inlinedAt: !4248)
!4250 = !DILocation(line: 318, column: 3, scope: !4230)
!4251 = distinct !DISubprogram(name: "ximemdup0", scope: !811, file: !811, line: 325, type: !4252, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!122, !1087, !830}
!4254 = !{!4255, !4256, !4257}
!4255 = !DILocalVariable(name: "p", arg: 1, scope: !4251, file: !811, line: 325, type: !1087)
!4256 = !DILocalVariable(name: "s", arg: 2, scope: !4251, file: !811, line: 325, type: !830)
!4257 = !DILocalVariable(name: "result", scope: !4251, file: !811, line: 327, type: !122)
!4258 = !DILocation(line: 0, scope: !4251)
!4259 = !DILocation(line: 327, column: 30, scope: !4251)
!4260 = !DILocation(line: 0, scope: !3914, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 327, column: 18, scope: !4251)
!4262 = !DILocation(line: 0, scope: !3921, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 55, column: 25, scope: !3914, inlinedAt: !4261)
!4264 = !DILocation(line: 57, column: 26, scope: !3921, inlinedAt: !4263)
!4265 = !DILocation(line: 0, scope: !3884, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 55, column: 10, scope: !3914, inlinedAt: !4261)
!4267 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4266)
!4268 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4266)
!4269 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4266)
!4270 = !DILocation(line: 328, column: 3, scope: !4251)
!4271 = !DILocation(line: 328, column: 13, scope: !4251)
!4272 = !DILocation(line: 0, scope: !4222, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 329, column: 10, scope: !4251)
!4274 = !DILocation(line: 29, column: 10, scope: !4222, inlinedAt: !4273)
!4275 = !DILocation(line: 329, column: 3, scope: !4251)
!4276 = distinct !DISubprogram(name: "xstrdup", scope: !811, file: !811, line: 335, type: !1065, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4277)
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "string", arg: 1, scope: !4276, file: !811, line: 335, type: !128)
!4279 = !DILocation(line: 0, scope: !4276)
!4280 = !DILocation(line: 337, column: 27, scope: !4276)
!4281 = !DILocation(line: 337, column: 43, scope: !4276)
!4282 = !DILocation(line: 0, scope: !4206, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 337, column: 10, scope: !4276)
!4284 = !DILocation(line: 0, scope: !3903, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 312, column: 18, scope: !4206, inlinedAt: !4283)
!4286 = !DILocation(line: 49, column: 25, scope: !3903, inlinedAt: !4285)
!4287 = !DILocation(line: 0, scope: !3884, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 49, column: 10, scope: !3903, inlinedAt: !4285)
!4289 = !DILocation(line: 39, column: 8, scope: !3891, inlinedAt: !4288)
!4290 = !DILocation(line: 39, column: 7, scope: !3884, inlinedAt: !4288)
!4291 = !DILocation(line: 40, column: 5, scope: !3891, inlinedAt: !4288)
!4292 = !DILocation(line: 0, scope: !4222, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 312, column: 10, scope: !4206, inlinedAt: !4283)
!4294 = !DILocation(line: 29, column: 10, scope: !4222, inlinedAt: !4293)
!4295 = !DILocation(line: 337, column: 3, scope: !4276)
!4296 = distinct !DISubprogram(name: "xalloc_die", scope: !759, file: !759, line: 32, type: !490, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !4297)
!4297 = !{!4298}
!4298 = !DILocalVariable(name: "__errstatus", scope: !4299, file: !759, line: 34, type: !4300)
!4299 = distinct !DILexicalBlock(scope: !4296, file: !759, line: 34, column: 3)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4301 = !DILocation(line: 34, column: 3, scope: !4299)
!4302 = !DILocation(line: 0, scope: !4299)
!4303 = !DILocation(line: 40, column: 3, scope: !4296)
!4304 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !766, file: !766, line: 100, type: !4305, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4308)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!125, !2153, !128, !125, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!4308 = !{!4309, !4310, !4311, !4312, !4313}
!4309 = !DILocalVariable(name: "pwc", arg: 1, scope: !4304, file: !766, line: 100, type: !2153)
!4310 = !DILocalVariable(name: "s", arg: 2, scope: !4304, file: !766, line: 100, type: !128)
!4311 = !DILocalVariable(name: "n", arg: 3, scope: !4304, file: !766, line: 100, type: !125)
!4312 = !DILocalVariable(name: "ps", arg: 4, scope: !4304, file: !766, line: 100, type: !4307)
!4313 = !DILocalVariable(name: "ret", scope: !4304, file: !766, line: 130, type: !125)
!4314 = !DILocation(line: 0, scope: !4304)
!4315 = !DILocation(line: 105, column: 9, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4304, file: !766, line: 105, column: 7)
!4317 = !DILocation(line: 105, column: 7, scope: !4304)
!4318 = !DILocation(line: 117, column: 10, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4304, file: !766, line: 117, column: 7)
!4320 = !DILocation(line: 117, column: 7, scope: !4304)
!4321 = !DILocation(line: 130, column: 16, scope: !4304)
!4322 = !DILocation(line: 135, column: 11, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4304, file: !766, line: 135, column: 7)
!4324 = !DILocation(line: 135, column: 25, scope: !4323)
!4325 = !DILocation(line: 135, column: 30, scope: !4323)
!4326 = !DILocation(line: 135, column: 7, scope: !4304)
!4327 = !DILocalVariable(name: "ps", arg: 1, scope: !4328, file: !2127, line: 1135, type: !4307)
!4328 = distinct !DISubprogram(name: "mbszero", scope: !2127, file: !2127, line: 1135, type: !4329, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{null, !4307}
!4331 = !{!4327}
!4332 = !DILocation(line: 0, scope: !4328, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 137, column: 5, scope: !4323)
!4334 = !DILocalVariable(name: "__dest", arg: 1, scope: !4335, file: !1190, line: 57, type: !123)
!4335 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2136, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4336)
!4336 = !{!4334, !4337, !4338}
!4337 = !DILocalVariable(name: "__ch", arg: 2, scope: !4335, file: !1190, line: 57, type: !102)
!4338 = !DILocalVariable(name: "__len", arg: 3, scope: !4335, file: !1190, line: 57, type: !125)
!4339 = !DILocation(line: 0, scope: !4335, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 1137, column: 3, scope: !4328, inlinedAt: !4333)
!4341 = !DILocation(line: 59, column: 10, scope: !4335, inlinedAt: !4340)
!4342 = !DILocation(line: 137, column: 5, scope: !4323)
!4343 = !DILocation(line: 138, column: 11, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4304, file: !766, line: 138, column: 7)
!4345 = !DILocation(line: 138, column: 7, scope: !4304)
!4346 = !DILocation(line: 139, column: 5, scope: !4344)
!4347 = !DILocation(line: 143, column: 26, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4304, file: !766, line: 143, column: 7)
!4349 = !DILocation(line: 143, column: 41, scope: !4348)
!4350 = !DILocation(line: 143, column: 7, scope: !4304)
!4351 = !DILocation(line: 145, column: 15, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !766, line: 145, column: 11)
!4353 = distinct !DILexicalBlock(scope: !4348, file: !766, line: 144, column: 5)
!4354 = !DILocation(line: 145, column: 11, scope: !4353)
!4355 = !DILocation(line: 146, column: 32, scope: !4352)
!4356 = !DILocation(line: 146, column: 16, scope: !4352)
!4357 = !DILocation(line: 146, column: 14, scope: !4352)
!4358 = !DILocation(line: 146, column: 9, scope: !4352)
!4359 = !DILocation(line: 286, column: 1, scope: !4304)
!4360 = !DISubprogram(name: "mbsinit", scope: !4361, file: !4361, line: 293, type: !4362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !927)
!4361 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!102, !4364}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!4366 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !847, file: !847, line: 27, type: !3868, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !4367)
!4367 = !{!4368, !4369, !4370, !4371}
!4368 = !DILocalVariable(name: "ptr", arg: 1, scope: !4366, file: !847, line: 27, type: !123)
!4369 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4366, file: !847, line: 27, type: !125)
!4370 = !DILocalVariable(name: "size", arg: 3, scope: !4366, file: !847, line: 27, type: !125)
!4371 = !DILocalVariable(name: "nbytes", scope: !4366, file: !847, line: 29, type: !125)
!4372 = !DILocation(line: 0, scope: !4366)
!4373 = !DILocation(line: 30, column: 7, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4366, file: !847, line: 30, column: 7)
!4375 = !DILocalVariable(name: "ptr", arg: 1, scope: !4376, file: !3957, line: 2057, type: !123)
!4376 = distinct !DISubprogram(name: "rpl_realloc", scope: !3957, file: !3957, line: 2057, type: !3949, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !4377)
!4377 = !{!4375, !4378}
!4378 = !DILocalVariable(name: "size", arg: 2, scope: !4376, file: !3957, line: 2057, type: !125)
!4379 = !DILocation(line: 0, scope: !4376, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 37, column: 10, scope: !4366)
!4381 = !DILocation(line: 2059, column: 24, scope: !4376, inlinedAt: !4380)
!4382 = !DILocation(line: 2059, column: 10, scope: !4376, inlinedAt: !4380)
!4383 = !DILocation(line: 37, column: 3, scope: !4366)
!4384 = !DILocation(line: 32, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4374, file: !847, line: 31, column: 5)
!4386 = !DILocation(line: 32, column: 13, scope: !4385)
!4387 = !DILocation(line: 33, column: 7, scope: !4385)
!4388 = !DILocation(line: 38, column: 1, scope: !4366)
!4389 = distinct !DISubprogram(name: "hard_locale", scope: !784, file: !784, line: 28, type: !4390, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!201, !102}
!4392 = !{!4393, !4394}
!4393 = !DILocalVariable(name: "category", arg: 1, scope: !4389, file: !784, line: 28, type: !102)
!4394 = !DILocalVariable(name: "locale", scope: !4389, file: !784, line: 30, type: !4395)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4396)
!4396 = !{!4397}
!4397 = !DISubrange(count: 257)
!4398 = !DILocation(line: 0, scope: !4389)
!4399 = !DILocation(line: 30, column: 3, scope: !4389)
!4400 = !DILocation(line: 30, column: 8, scope: !4389)
!4401 = !DILocation(line: 32, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4389, file: !784, line: 32, column: 7)
!4403 = !DILocation(line: 32, column: 7, scope: !4389)
!4404 = !DILocalVariable(name: "__s1", arg: 1, scope: !4405, file: !955, line: 1359, type: !128)
!4405 = distinct !DISubprogram(name: "streq", scope: !955, file: !955, line: 1359, type: !956, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4406)
!4406 = !{!4404, !4407}
!4407 = !DILocalVariable(name: "__s2", arg: 2, scope: !4405, file: !955, line: 1359, type: !128)
!4408 = !DILocation(line: 0, scope: !4405, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 35, column: 9, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4389, file: !784, line: 35, column: 7)
!4411 = !DILocation(line: 1361, column: 11, scope: !4405, inlinedAt: !4409)
!4412 = !DILocation(line: 1361, column: 10, scope: !4405, inlinedAt: !4409)
!4413 = !DILocation(line: 35, column: 29, scope: !4410)
!4414 = !DILocation(line: 0, scope: !4405, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 35, column: 32, scope: !4410)
!4416 = !DILocation(line: 1361, column: 11, scope: !4405, inlinedAt: !4415)
!4417 = !DILocation(line: 1361, column: 10, scope: !4405, inlinedAt: !4415)
!4418 = !DILocation(line: 35, column: 7, scope: !4389)
!4419 = !DILocation(line: 46, column: 3, scope: !4389)
!4420 = !DILocation(line: 47, column: 1, scope: !4389)
!4421 = distinct !DISubprogram(name: "setlocale_null_r", scope: !852, file: !852, line: 154, type: !4422, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!102, !102, !122, !125}
!4424 = !{!4425, !4426, !4427}
!4425 = !DILocalVariable(name: "category", arg: 1, scope: !4421, file: !852, line: 154, type: !102)
!4426 = !DILocalVariable(name: "buf", arg: 2, scope: !4421, file: !852, line: 154, type: !122)
!4427 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4421, file: !852, line: 154, type: !125)
!4428 = !DILocation(line: 0, scope: !4421)
!4429 = !DILocation(line: 159, column: 10, scope: !4421)
!4430 = !DILocation(line: 159, column: 3, scope: !4421)
!4431 = distinct !DISubprogram(name: "setlocale_null", scope: !852, file: !852, line: 186, type: !4432, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!128, !102}
!4434 = !{!4435}
!4435 = !DILocalVariable(name: "category", arg: 1, scope: !4431, file: !852, line: 186, type: !102)
!4436 = !DILocation(line: 0, scope: !4431)
!4437 = !DILocation(line: 189, column: 10, scope: !4431)
!4438 = !DILocation(line: 189, column: 3, scope: !4431)
!4439 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !854, file: !854, line: 35, type: !4432, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4440)
!4440 = !{!4441, !4442}
!4441 = !DILocalVariable(name: "category", arg: 1, scope: !4439, file: !854, line: 35, type: !102)
!4442 = !DILocalVariable(name: "result", scope: !4439, file: !854, line: 37, type: !128)
!4443 = !DILocation(line: 0, scope: !4439)
!4444 = !DILocation(line: 37, column: 24, scope: !4439)
!4445 = !DILocation(line: 62, column: 3, scope: !4439)
!4446 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !854, file: !854, line: 66, type: !4422, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4447)
!4447 = !{!4448, !4449, !4450, !4451, !4452}
!4448 = !DILocalVariable(name: "category", arg: 1, scope: !4446, file: !854, line: 66, type: !102)
!4449 = !DILocalVariable(name: "buf", arg: 2, scope: !4446, file: !854, line: 66, type: !122)
!4450 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4446, file: !854, line: 66, type: !125)
!4451 = !DILocalVariable(name: "result", scope: !4446, file: !854, line: 111, type: !128)
!4452 = !DILocalVariable(name: "length", scope: !4453, file: !854, line: 125, type: !125)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !854, line: 124, column: 5)
!4454 = distinct !DILexicalBlock(scope: !4446, file: !854, line: 113, column: 7)
!4455 = !DILocation(line: 0, scope: !4446)
!4456 = !DILocation(line: 0, scope: !4439, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 111, column: 24, scope: !4446)
!4458 = !DILocation(line: 37, column: 24, scope: !4439, inlinedAt: !4457)
!4459 = !DILocation(line: 113, column: 14, scope: !4454)
!4460 = !DILocation(line: 113, column: 7, scope: !4446)
!4461 = !DILocation(line: 116, column: 19, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !854, line: 116, column: 11)
!4463 = distinct !DILexicalBlock(scope: !4454, file: !854, line: 114, column: 5)
!4464 = !DILocation(line: 116, column: 11, scope: !4463)
!4465 = !DILocation(line: 120, column: 16, scope: !4462)
!4466 = !DILocation(line: 120, column: 9, scope: !4462)
!4467 = !DILocation(line: 125, column: 23, scope: !4453)
!4468 = !DILocation(line: 0, scope: !4453)
!4469 = !DILocation(line: 126, column: 18, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4453, file: !854, line: 126, column: 11)
!4471 = !DILocation(line: 126, column: 11, scope: !4453)
!4472 = !DILocation(line: 128, column: 39, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4470, file: !854, line: 127, column: 9)
!4474 = !DILocalVariable(name: "__dest", arg: 1, scope: !4475, file: !1190, line: 26, type: !1193)
!4475 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4476)
!4476 = !{!4474, !4477, !4478}
!4477 = !DILocalVariable(name: "__src", arg: 2, scope: !4475, file: !1190, line: 26, type: !1086)
!4478 = !DILocalVariable(name: "__len", arg: 3, scope: !4475, file: !1190, line: 26, type: !125)
!4479 = !DILocation(line: 0, scope: !4475, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 128, column: 11, scope: !4473)
!4481 = !DILocation(line: 29, column: 10, scope: !4475, inlinedAt: !4480)
!4482 = !DILocation(line: 129, column: 11, scope: !4473)
!4483 = !DILocation(line: 133, column: 23, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !854, line: 133, column: 15)
!4485 = distinct !DILexicalBlock(scope: !4470, file: !854, line: 132, column: 9)
!4486 = !DILocation(line: 133, column: 15, scope: !4485)
!4487 = !DILocation(line: 138, column: 44, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4484, file: !854, line: 134, column: 13)
!4489 = !DILocation(line: 0, scope: !4475, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 138, column: 15, scope: !4488)
!4491 = !DILocation(line: 29, column: 10, scope: !4475, inlinedAt: !4490)
!4492 = !DILocation(line: 139, column: 15, scope: !4488)
!4493 = !DILocation(line: 139, column: 32, scope: !4488)
!4494 = !DILocation(line: 140, column: 13, scope: !4488)
!4495 = !DILocation(line: 0, scope: !4454)
!4496 = !DILocation(line: 145, column: 1, scope: !4446)
