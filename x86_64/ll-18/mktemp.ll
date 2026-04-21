; ModuleID = 'src/mktemp.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !472
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !443
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !462
@.str.1.53 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !464
@.str.2.55 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !466
@.str.3.54 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !468
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !470
@.str.4.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !474
@.str.5.49 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !476
@.str.6.50 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !481
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !486
@.str.75 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !492
@.str.1.76 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !494
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !496
@.str.79 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !527
@.str.1.80 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !530
@.str.2.81 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !532
@.str.3.82 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !534
@.str.4.83 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !536
@.str.5.84 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !538
@.str.6.85 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !540
@.str.7.86 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !542
@.str.8.87 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !544
@.str.9.88 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !546
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.79, ptr @.str.1.80, ptr @.str.2.81, ptr @.str.3.82, ptr @.str.4.83, ptr @.str.5.84, ptr @.str.6.85, ptr @.str.7.86, ptr @.str.8.87, ptr @.str.9.88, ptr null], align 16, !dbg !548
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !573
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !587
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !625
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !632
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !589
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !634
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !577
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !594
@.str.11.89 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !596
@.str.12.92 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !598
@.str.13.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !600
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !602
@gen_tempname_len.tryfunc = internal unnamed_addr constant [3 x ptr] [ptr @try_file, ptr @try_dir, ptr @try_nocreate], align 16, !dbg !638
@.str.99 = private unnamed_addr constant [2 x i8] c"X\00", align 1, !dbg !646
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !648
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !664
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !667
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !669
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !671
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !673
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !675
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !680
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !682
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !684
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !689
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !694
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !699
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !704
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !706
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !711
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !713
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !718
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !720
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !722
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !724
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !726
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !728
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !730
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !732
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !737
@exit_failure = dso_local global i32 1, align 4, !dbg !745
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !751
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !754
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !756
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !758
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !761
@.str.1.150 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !776

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !858 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !862, metadata !DIExpression()), !dbg !863
  %2 = icmp eq i32 %0, 0, !dbg !864
  br i1 %2, label %8, label %3, !dbg !866

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !867, !tbaa !869
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !867
  %6 = load ptr, ptr @program_name, align 8, !dbg !867, !tbaa !869
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !867
  br label %42, !dbg !867

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !873
  %10 = load ptr, ptr @program_name, align 8, !dbg !873, !tbaa !869
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !873
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !875
  %13 = load ptr, ptr @stdout, align 8, !dbg !875, !tbaa !869
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !875
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #40, !dbg !876
  %16 = load ptr, ptr @stdout, align 8, !dbg !876, !tbaa !869
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !876
  %18 = load ptr, ptr @stdout, align 8, !dbg !877, !tbaa !869
  %19 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4, ptr noundef %18), !dbg !877
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !878
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !878
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !879
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !879
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !880
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !880
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !881
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !881
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !882
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !882
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !883
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !883
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !884
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !884
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !885
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !885
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !886, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !905, metadata !899, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr poison, metadata !898, metadata !DIExpression()), !dbg !903
  tail call void @emit_bug_reporting_address() #40, !dbg !906
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !907
  call void @llvm.dbg.value(metadata ptr %28, metadata !901, metadata !DIExpression()), !dbg !903
  %29 = icmp eq ptr %28, null, !dbg !908
  br i1 %29, label %37, label %30, !dbg !910

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.62, i64 noundef 3) #41, !dbg !911
  %32 = icmp eq i32 %31, 0, !dbg !911
  br i1 %32, label %37, label %33, !dbg !912

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #40, !dbg !913
  %35 = load ptr, ptr @stdout, align 8, !dbg !913, !tbaa !869
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !913
  br label %37, !dbg !915

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !898, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !902, metadata !DIExpression()), !dbg !903
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #40, !dbg !916
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5) #40, !dbg !916
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #40, !dbg !917
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.66) #40, !dbg !917
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !918
  unreachable, !dbg !918
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !919 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !923 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !929 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !932 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !204 {
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !208, metadata !DIExpression()), !dbg !936
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !936
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !937, !tbaa !938
  %3 = icmp eq i32 %2, -1, !dbg !940
  br i1 %3, label %4, label %16, !dbg !941

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.32) #40, !dbg !942
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !943
  %6 = icmp eq ptr %5, null, !dbg !944
  br i1 %6, label %14, label %7, !dbg !945

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !946, !tbaa !947
  %9 = icmp eq i8 %8, 0, !dbg !946
  br i1 %9, label %14, label %10, !dbg !948

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !949, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !955, metadata !DIExpression()), !dbg !956
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.33) #41, !dbg !958
  %12 = icmp eq i32 %11, 0, !dbg !959
  %13 = zext i1 %12 to i32, !dbg !948
  br label %14, !dbg !948

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !960, !tbaa !938
  br label %16, !dbg !961

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !962
  %18 = icmp eq i32 %17, 0, !dbg !962
  br i1 %18, label %22, label %19, !dbg !964

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !965, !tbaa !869
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !965
  br label %124, !dbg !967

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !936
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.34) #41, !dbg !968
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !969
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !936
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !970
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !936
  %26 = icmp eq ptr %25, null, !dbg !971
  br i1 %26, label %54, label %27, !dbg !972

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !973
  br i1 %28, label %54, label %29, !dbg !974

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !975
  tail call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !975
  %30 = icmp ult ptr %24, %25, !dbg !976
  br i1 %30, label %31, label %54, !dbg !977

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !936
  %33 = load ptr, ptr %32, align 8, !tbaa !869
  br label %34, !dbg !977

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !975
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !975
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !978
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !975
  %38 = load i8, ptr %35, align 1, !dbg !978, !tbaa !947
  %39 = sext i8 %38 to i64, !dbg !978
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !978
  %41 = load i16, ptr %40, align 2, !dbg !978, !tbaa !979
  %42 = freeze i16 %41, !dbg !981
  %43 = lshr i16 %42, 13, !dbg !981
  %44 = and i16 %43, 1, !dbg !981
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !982
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !975
  %47 = icmp ult ptr %37, %25, !dbg !976
  %48 = icmp ult i64 %46, 2, !dbg !983
  %49 = select i1 %47, i1 %48, i1 false, !dbg !983
  br i1 %49, label %34, label %50, !dbg !977, !llvm.loop !984

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !986
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !988
  %53 = zext i1 %51 to i8, !dbg !988
  br label %54, !dbg !988

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !936
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !936
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !213, metadata !DIExpression()), !dbg !936
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !215, metadata !DIExpression()), !dbg !936
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.35) #41, !dbg !989
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !221, metadata !DIExpression()), !dbg !936
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !222, metadata !DIExpression()), !dbg !936
  br label %59, !dbg !991

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !936
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !936
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !213, metadata !DIExpression()), !dbg !936
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !222, metadata !DIExpression()), !dbg !936
  %62 = load i8, ptr %60, align 1, !dbg !992, !tbaa !947
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !993

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !994
  %65 = load i8, ptr %64, align 1, !dbg !997, !tbaa !947
  %66 = icmp eq i8 %65, 45, !dbg !998
  %67 = select i1 %66, i8 0, i8 %61, !dbg !999
  br label %68, !dbg !999

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !936
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !213, metadata !DIExpression()), !dbg !936
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1000
  %71 = load ptr, ptr %70, align 8, !dbg !1000, !tbaa !869
  %72 = sext i8 %62 to i64, !dbg !1000
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1000
  %74 = load i16, ptr %73, align 2, !dbg !1000, !tbaa !979
  %75 = and i16 %74, 8192, !dbg !1000
  %76 = icmp eq i16 %75, 0, !dbg !1000
  br i1 %76, label %92, label %77, !dbg !1002

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1003
  br i1 %78, label %94, label %79, !dbg !1006

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1007
  %81 = load i8, ptr %80, align 1, !dbg !1007, !tbaa !947
  %82 = sext i8 %81 to i64, !dbg !1007
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1007
  %84 = load i16, ptr %83, align 2, !dbg !1007, !tbaa !979
  %85 = and i16 %84, 8192, !dbg !1007
  %86 = icmp eq i16 %85, 0, !dbg !1007
  br i1 %86, label %87, label %94, !dbg !1008

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1009
  %89 = icmp ne i8 %88, 0, !dbg !1009
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1011
  br i1 %91, label %92, label %94, !dbg !1011

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1012
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !222, metadata !DIExpression()), !dbg !936
  br label %59, !dbg !991, !llvm.loop !1013

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1015
  %96 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !869
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1015
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !949, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata !905, metadata !955, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !279, metadata !DIExpression()), !dbg !936
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.49, i64 noundef 6) #41, !dbg !1036
  %99 = icmp eq i32 %98, 0, !dbg !1036
  br i1 %99, label %103, label %100, !dbg !1038

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.50, i64 noundef 9) #41, !dbg !1039
  %102 = icmp eq i32 %101, 0, !dbg !1039
  br i1 %102, label %103, label %106, !dbg !1040

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1041
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %104, ptr noundef %55) #40, !dbg !1041
  br label %109, !dbg !1043

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1044
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.5, i32 noundef %107, ptr noundef %55) #40, !dbg !1044
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !869
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %110), !dbg !1046
  %112 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !869
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.56, ptr noundef %112), !dbg !1047
  %114 = ptrtoint ptr %60 to i64, !dbg !1048
  %115 = sub i64 %114, %95, !dbg !1048
  %116 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !869
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1048
  %118 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !869
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %118), !dbg !1049
  %120 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !869
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %120), !dbg !1050
  %122 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !869
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1051
  br label %124, !dbg !1052

124:                                              ; preds = %109, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1088 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1093, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1094, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1096, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1097, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1100, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1102, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1104, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1108, metadata !DIExpression()), !dbg !1132
  %3 = load ptr, ptr %1, align 8, !dbg !1133, !tbaa !869
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1134
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #40, !dbg !1135
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #40, !dbg !1136
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #40, !dbg !1137
  %7 = tail call i32 @atexit(ptr noundef nonnull @maybe_close_stdout) #40, !dbg !1138
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
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1096, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %40, metadata !1097, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1100, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %34, metadata !1101, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %28, metadata !1102, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %21, metadata !1103, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1104, metadata !DIExpression()), !dbg !1132
  %41 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1143
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1098, metadata !DIExpression()), !dbg !1132
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
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1096, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1097, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1100, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %34, metadata !1101, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %28, metadata !1102, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %21, metadata !1103, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1104, metadata !DIExpression()), !dbg !1132
  %43 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1143
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1098, metadata !DIExpression()), !dbg !1132
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
  %46 = load ptr, ptr @optarg, align 8, !dbg !1146, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %46, metadata !1096, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1101, metadata !DIExpression()), !dbg !1132
  br label %33, !dbg !1149, !llvm.loop !1141

47:                                               ; preds = %38, %42
  %48 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1101, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1132
  br label %27, !dbg !1150, !llvm.loop !1141

49:                                               ; preds = %38, %42
  %50 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1104, metadata !DIExpression()), !dbg !1132
  br label %8, !dbg !1151, !llvm.loop !1141

51:                                               ; preds = %42, %38
  %52 = phi i8 [ %40, %38 ], [ 1, %42 ], !dbg !1140
  %53 = load ptr, ptr @optarg, align 8, !dbg !1152, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %38, !dbg !1153, !llvm.loop !1141

54:                                               ; preds = %38, %42
  tail call void @usage(i32 noundef 0) #44, !dbg !1154
  unreachable, !dbg !1154

55:                                               ; preds = %38, %38, %42, %42
  %56 = load ptr, ptr @stdout, align 8, !dbg !1155, !tbaa !869
  %57 = load ptr, ptr @Version, align 8, !dbg !1155, !tbaa !869
  %58 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #40, !dbg !1155
  %59 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.20) #40, !dbg !1155
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %56, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef null) #40, !dbg !1155
  tail call void @exit(i32 noundef 0) #42, !dbg !1155
  unreachable, !dbg !1155

60:                                               ; preds = %38, %42
  tail call void @usage(i32 noundef 1) #44, !dbg !1156
  unreachable, !dbg !1156

61:                                               ; preds = %38, %42
  %62 = phi i8 [ 1, %42 ], [ %40, %38 ], !dbg !1140
  %63 = load i32, ptr @optind, align 4, !dbg !1157, !tbaa !938
  %64 = sub nsw i32 %0, %63, !dbg !1158
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1109, metadata !DIExpression()), !dbg !1132
  %65 = icmp sgt i32 %64, 1, !dbg !1159
  br i1 %65, label %66, label %68, !dbg !1161

66:                                               ; preds = %61
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1162
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67) #40, !dbg !1162
  tail call void @usage(i32 noundef 1) #44, !dbg !1164
  unreachable, !dbg !1164

68:                                               ; preds = %61
  %69 = icmp eq i32 %63, %0, !dbg !1165
  br i1 %69, label %74, label %70, !dbg !1167

70:                                               ; preds = %68
  %71 = sext i32 %63 to i64, !dbg !1168
  %72 = getelementptr inbounds ptr, ptr %1, i64 %71, !dbg !1168
  %73 = load ptr, ptr %72, align 8, !dbg !1168, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1099, metadata !DIExpression()), !dbg !1132
  br label %74

74:                                               ; preds = %68, %70
  %75 = phi i8 [ %34, %70 ], [ 1, %68 ], !dbg !1132
  %76 = phi ptr [ %73, %70 ], [ @.str.74, %68 ], !dbg !1170
  tail call void @llvm.dbg.value(metadata ptr %76, metadata !1099, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8 %75, metadata !1101, metadata !DIExpression()), !dbg !1132
  %77 = icmp eq ptr %39, null, !dbg !1171
  br i1 %77, label %96, label %78, !dbg !1172

78:                                               ; preds = %74
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76) #41, !dbg !1173
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1110, metadata !DIExpression()), !dbg !1174
  %80 = icmp eq i64 %79, 0, !dbg !1175
  br i1 %80, label %86, label %81, !dbg !1177

81:                                               ; preds = %78
  %82 = add i64 %79, -1, !dbg !1178
  %83 = getelementptr inbounds i8, ptr %76, i64 %82, !dbg !1179
  %84 = load i8, ptr %83, align 1, !dbg !1179, !tbaa !947
  %85 = icmp eq i8 %84, 88, !dbg !1180
  br i1 %85, label %89, label %86, !dbg !1181

86:                                               ; preds = %81, %78
  %87 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1182
  %88 = tail call ptr @quote(ptr noundef %76) #40, !dbg !1182
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %87, ptr noundef %88) #40, !dbg !1182
  unreachable, !dbg !1182

89:                                               ; preds = %81
  %90 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #41, !dbg !1184
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1107, metadata !DIExpression()), !dbg !1132
  %91 = add i64 %79, 1, !dbg !1185
  %92 = add i64 %91, %90, !dbg !1186
  %93 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %92) #45, !dbg !1187
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %93, metadata !1188, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %76, metadata !1195, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %79, metadata !1196, metadata !DIExpression()), !dbg !1197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %93, ptr noundef nonnull align 1 %76, i64 noundef %79, i1 noundef false) #40, !dbg !1199
  %94 = getelementptr inbounds i8, ptr %93, i64 %79, !dbg !1200
  %95 = add i64 %90, 1, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %94, metadata !1188, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata ptr %39, metadata !1195, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %95, metadata !1196, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %94, ptr noundef nonnull align 1 %39, i64 noundef %95, i1 noundef false) #40, !dbg !1204
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !1099, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %94, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %108, !dbg !1205

96:                                               ; preds = %74
  %97 = tail call noalias nonnull ptr @xstrdup(ptr noundef %76) #40, !dbg !1206
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !1099, metadata !DIExpression()), !dbg !1132
  %98 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %97, i32 noundef 88) #41, !dbg !1208
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !1100, metadata !DIExpression()), !dbg !1132
  %99 = icmp eq ptr %98, null, !dbg !1209
  br i1 %99, label %100, label %103, !dbg !1211

100:                                              ; preds = %96
  %101 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %97), !dbg !1212
  %102 = getelementptr inbounds i8, ptr %97, i64 %101, !dbg !1212
  tail call void @llvm.dbg.value(metadata ptr %102, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %105, !dbg !1213

103:                                              ; preds = %96
  %104 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !1214
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1100, metadata !DIExpression()), !dbg !1132
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi ptr [ %104, %103 ], [ %102, %100 ], !dbg !1215
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1100, metadata !DIExpression()), !dbg !1132
  %107 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106) #41, !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1107, metadata !DIExpression()), !dbg !1132
  br label %108

108:                                              ; preds = %105, %89
  %109 = phi i64 [ %90, %89 ], [ %107, %105 ], !dbg !1217
  %110 = phi ptr [ %93, %89 ], [ null, %105 ], !dbg !1132
  %111 = phi ptr [ %94, %89 ], [ %106, %105 ], !dbg !1217
  %112 = phi ptr [ %93, %89 ], [ %97, %105 ], !dbg !1217
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !1099, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %111, metadata !1100, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !1108, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !1107, metadata !DIExpression()), !dbg !1132
  %113 = icmp eq i64 %109, 0, !dbg !1218
  br i1 %113, label %120, label %114, !dbg !1220

114:                                              ; preds = %108
  %115 = tail call ptr @last_component(ptr noundef nonnull %111) #41, !dbg !1221
  %116 = icmp eq ptr %115, %111, !dbg !1222
  br i1 %116, label %120, label %117, !dbg !1223

117:                                              ; preds = %114
  %118 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1224
  %119 = tail call ptr @quote(ptr noundef nonnull %111) #40, !dbg !1224
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %118, ptr noundef %119) #40, !dbg !1224
  unreachable, !dbg !1224

120:                                              ; preds = %114, %108
  %121 = ptrtoint ptr %111 to i64, !dbg !1226
  %122 = ptrtoint ptr %112 to i64, !dbg !1226
  %123 = sub i64 %121, %122, !dbg !1226
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !1227, metadata !DIExpression()), !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1232, metadata !DIExpression()), !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1233, metadata !DIExpression()), !dbg !1234
  %124 = getelementptr i8, ptr %112, i64 -1, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1233, metadata !DIExpression()), !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1232, metadata !DIExpression()), !dbg !1234
  %125 = icmp eq i64 %123, 0, !dbg !1237
  br i1 %125, label %139, label %126, !dbg !1240

126:                                              ; preds = %120, %132
  %127 = phi i64 [ %133, %132 ], [ 0, %120 ]
  %128 = phi i64 [ %134, %132 ], [ %123, %120 ]
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !1233, metadata !DIExpression()), !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1232, metadata !DIExpression()), !dbg !1234
  %129 = getelementptr i8, ptr %124, i64 %128, !dbg !1241
  %130 = load i8, ptr %129, align 1, !dbg !1241, !tbaa !947
  %131 = icmp eq i8 %130, 88, !dbg !1242
  br i1 %131, label %132, label %136, !dbg !1243

132:                                              ; preds = %126
  %133 = add nuw i64 %127, 1, !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !1233, metadata !DIExpression()), !dbg !1234
  %134 = add i64 %128, -1, !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !1232, metadata !DIExpression()), !dbg !1234
  %135 = icmp eq i64 %134, 0, !dbg !1237
  br i1 %135, label %136, label %126, !dbg !1240, !llvm.loop !1246

136:                                              ; preds = %126, %132
  %137 = phi i64 [ %123, %132 ], [ %127, %126 ], !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !1106, metadata !DIExpression()), !dbg !1132
  %138 = icmp ult i64 %137, 3, !dbg !1248
  br i1 %138, label %139, label %146, !dbg !1250

139:                                              ; preds = %120, %136
  %140 = icmp eq ptr %112, %110, !dbg !1251
  br i1 %140, label %141, label %143, !dbg !1254

141:                                              ; preds = %139
  %142 = getelementptr inbounds i8, ptr %110, i64 %123, !dbg !1255
  store i8 0, ptr %142, align 1, !dbg !1256, !tbaa !947
  br label %143, !dbg !1255

143:                                              ; preds = %141, %139
  %144 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1257
  %145 = tail call ptr @quote(ptr noundef nonnull %112) #40, !dbg !1257
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %144, ptr noundef %145) #40, !dbg !1257
  unreachable, !dbg !1257

146:                                              ; preds = %136
  %147 = and i8 %75, 1, !dbg !1258
  %148 = icmp eq i8 %147, 0, !dbg !1258
  br i1 %148, label %192, label %149, !dbg !1259

149:                                              ; preds = %146
  %150 = icmp eq i8 %28, 0, !dbg !1260
  br i1 %150, label %170, label %151, !dbg !1261

151:                                              ; preds = %149
  %152 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #40, !dbg !1262
  tail call void @llvm.dbg.value(metadata ptr %152, metadata !1113, metadata !DIExpression()), !dbg !1263
  %153 = icmp eq ptr %152, null, !dbg !1264
  br i1 %153, label %157, label %154, !dbg !1266

154:                                              ; preds = %151
  %155 = load i8, ptr %152, align 1, !dbg !1267, !tbaa !947
  %156 = icmp eq i8 %155, 0, !dbg !1267
  br i1 %156, label %157, label %163, !dbg !1268

157:                                              ; preds = %154, %151
  %158 = icmp eq ptr %37, null, !dbg !1269
  br i1 %158, label %162, label %159, !dbg !1271

159:                                              ; preds = %157
  %160 = load i8, ptr %37, align 1, !dbg !1272, !tbaa !947
  %161 = icmp eq i8 %160, 0, !dbg !1272
  br i1 %161, label %162, label %163, !dbg !1273

162:                                              ; preds = %159, %157
  tail call void @llvm.dbg.value(metadata ptr @.str.26, metadata !1095, metadata !DIExpression()), !dbg !1132
  br label %163

163:                                              ; preds = %159, %154, %162
  %164 = phi ptr [ @.str.26, %162 ], [ %152, %154 ], [ %37, %159 ], !dbg !1274
  tail call void @llvm.dbg.value(metadata ptr %164, metadata !1095, metadata !DIExpression()), !dbg !1132
  %165 = tail call ptr @last_component(ptr noundef nonnull %112) #41, !dbg !1275
  %166 = icmp eq ptr %165, %112, !dbg !1277
  br i1 %166, label %189, label %167, !dbg !1278

167:                                              ; preds = %163
  %168 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !1279
  %169 = tail call ptr @quote(ptr noundef nonnull %112) #40, !dbg !1279
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %168, ptr noundef %169) #40, !dbg !1279
  unreachable, !dbg !1279

170:                                              ; preds = %149
  %171 = icmp eq ptr %37, null, !dbg !1280
  br i1 %171, label %175, label %172, !dbg !1281

172:                                              ; preds = %170
  %173 = load i8, ptr %37, align 1, !dbg !1282, !tbaa !947
  %174 = icmp eq i8 %173, 0, !dbg !1282
  br i1 %174, label %175, label %182, !dbg !1283

175:                                              ; preds = %172, %170
  %176 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #40, !dbg !1284
  tail call void @llvm.dbg.value(metadata ptr %176, metadata !1118, metadata !DIExpression()), !dbg !1285
  %177 = icmp eq ptr %176, null, !dbg !1286
  br i1 %177, label %182, label %178, !dbg !1287

178:                                              ; preds = %175
  %179 = load i8, ptr %176, align 1, !dbg !1288, !tbaa !947
  %180 = icmp eq i8 %179, 0, !dbg !1288
  %181 = select i1 %180, ptr @.str.26, ptr %176, !dbg !1286
  br label %182, !dbg !1286

182:                                              ; preds = %175, %178, %172
  %183 = phi ptr [ %37, %172 ], [ @.str.26, %175 ], [ %181, %178 ], !dbg !1289
  tail call void @llvm.dbg.value(metadata ptr %183, metadata !1095, metadata !DIExpression()), !dbg !1132
  %184 = load i8, ptr %112, align 1, !dbg !1290, !tbaa !947
  %185 = icmp eq i8 %184, 47, !dbg !1290
  br i1 %185, label %186, label %189, !dbg !1292

186:                                              ; preds = %182
  %187 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !1293
  %188 = tail call ptr @quote(ptr noundef nonnull %112) #40, !dbg !1293
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %187, ptr noundef %188) #40, !dbg !1293
  unreachable, !dbg !1293

189:                                              ; preds = %163, %182
  %190 = phi ptr [ %183, %182 ], [ %164, %163 ], !dbg !1294
  tail call void @llvm.dbg.value(metadata ptr %190, metadata !1095, metadata !DIExpression()), !dbg !1132
  %191 = tail call noalias nonnull ptr @file_name_concat(ptr noundef %190, ptr noundef nonnull %112, ptr noundef null) #40, !dbg !1295
  tail call void @llvm.dbg.value(metadata ptr %191, metadata !1108, metadata !DIExpression()), !dbg !1132
  tail call void @free(ptr noundef nonnull %112) #40, !dbg !1296
  tail call void @llvm.dbg.value(metadata ptr %191, metadata !1099, metadata !DIExpression()), !dbg !1132
  br label %192, !dbg !1297

192:                                              ; preds = %189, %146
  %193 = phi ptr [ %191, %189 ], [ %112, %146 ], !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %193, metadata !1099, metadata !DIExpression()), !dbg !1132
  %194 = tail call noalias nonnull ptr @xstrdup(ptr noundef %193) #40, !dbg !1298
  tail call void @llvm.dbg.value(metadata ptr %194, metadata !1108, metadata !DIExpression()), !dbg !1132
  %195 = icmp eq i8 %21, 0, !dbg !1299
  br i1 %195, label %207, label %196, !dbg !1300

196:                                              ; preds = %192
  call void @llvm.dbg.value(metadata ptr %194, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %109, metadata !1306, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %137, metadata !1307, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %9, metadata !1308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1309
  %197 = trunc i64 %109 to i32, !dbg !1311
  %198 = tail call i32 @gen_tempname_len(ptr noundef nonnull %194, i32 noundef %197, i32 noundef 0, i32 noundef %9, i64 noundef %137) #40, !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !1122, metadata !DIExpression()), !dbg !1313
  %199 = icmp eq i32 %198, 0, !dbg !1314
  br i1 %199, label %226, label %200, !dbg !1316

200:                                              ; preds = %196
  %201 = icmp eq i8 %62, 0, !dbg !1317
  br i1 %201, label %202, label %239, !dbg !1320

202:                                              ; preds = %200
  %203 = tail call ptr @__errno_location() #43, !dbg !1321
  %204 = load i32, ptr %203, align 4, !dbg !1321, !tbaa !938
  %205 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1321
  %206 = tail call ptr @quote(ptr noundef %193) #40, !dbg !1321
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %204, ptr noundef %205, ptr noundef %206) #40, !dbg !1321
  br label %239, !dbg !1321

207:                                              ; preds = %192
  call void @llvm.dbg.value(metadata ptr %194, metadata !1322, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %109, metadata !1325, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %137, metadata !1326, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %11, metadata !1327, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1328
  %208 = trunc i64 %109 to i32, !dbg !1330
  %209 = tail call i32 @gen_tempname_len(ptr noundef nonnull %194, i32 noundef %208, i32 noundef 0, i32 noundef %11, i64 noundef %137) #40, !dbg !1331
  tail call void @llvm.dbg.value(metadata i32 %209, metadata !1125, metadata !DIExpression()), !dbg !1332
  %210 = icmp slt i32 %209, 0, !dbg !1333
  br i1 %210, label %219, label %211, !dbg !1335

211:                                              ; preds = %207
  call void @llvm.dbg.value(metadata i1 %10, metadata !1327, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1328
  br i1 %10, label %214, label %212, !dbg !1336

212:                                              ; preds = %211
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  %213 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %194), !dbg !1337
  br label %239, !dbg !1338

214:                                              ; preds = %211
  %215 = tail call i32 @close(i32 noundef %209) #40, !dbg !1339
  %216 = icmp eq i32 %215, 0, !dbg !1340
  br i1 %216, label %217, label %219, !dbg !1341

217:                                              ; preds = %214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  %218 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %194), !dbg !1337
  br label %228, !dbg !1338

219:                                              ; preds = %214, %207
  %220 = icmp eq i8 %62, 0, !dbg !1342
  br i1 %220, label %221, label %239, !dbg !1345

221:                                              ; preds = %219
  %222 = tail call ptr @__errno_location() #43, !dbg !1346
  %223 = load i32, ptr %222, align 4, !dbg !1346, !tbaa !938
  %224 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1346
  %225 = tail call ptr @quote(ptr noundef %193) #40, !dbg !1346
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %223, ptr noundef %224, ptr noundef %225) #40, !dbg !1346
  br label %239, !dbg !1346

226:                                              ; preds = %196
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1132
  %227 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %194), !dbg !1337
  br i1 %10, label %228, label %239, !dbg !1338

228:                                              ; preds = %217, %226
  store i1 true, ptr @stdout_closed, align 1, !dbg !1347
  %229 = load ptr, ptr @stdout, align 8, !dbg !1348, !tbaa !869
  %230 = tail call i32 @close_stream(ptr noundef %229) #40, !dbg !1349
  %231 = icmp eq i32 %230, 0, !dbg !1350
  br i1 %231, label %239, label %232, !dbg !1351

232:                                              ; preds = %228
  %233 = tail call ptr @__errno_location() #43, !dbg !1352
  %234 = load i32, ptr %233, align 4, !dbg !1352, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %234, metadata !1127, metadata !DIExpression()), !dbg !1353
  %235 = tail call i32 @remove(ptr noundef nonnull %194) #40, !dbg !1354
  %236 = icmp eq i8 %62, 0, !dbg !1355
  br i1 %236, label %237, label %239, !dbg !1357

237:                                              ; preds = %232
  %238 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1358
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %234, ptr noundef %238) #40, !dbg !1358
  br label %239, !dbg !1358

239:                                              ; preds = %212, %219, %221, %200, %202, %232, %237, %226, %228
  %240 = phi i32 [ 0, %226 ], [ 0, %228 ], [ 1, %237 ], [ 1, %232 ], [ 1, %202 ], [ 1, %200 ], [ 1, %221 ], [ 1, %219 ], [ 0, %212 ], !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 %240, metadata !1105, metadata !DIExpression()), !dbg !1132
  ret i32 %240, !dbg !1359
}

; Function Attrs: nounwind
declare !dbg !1360 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1363 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @maybe_close_stdout() #10 !dbg !1364 {
  %1 = load i1, ptr @stdout_closed, align 1, !dbg !1365
  br i1 %1, label %3, label %2, !dbg !1367

2:                                                ; preds = %0
  tail call void @close_stdout() #40, !dbg !1368
  br label %8, !dbg !1368

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !1369, !tbaa !869
  %5 = tail call i32 @close_stream(ptr noundef %4) #40, !dbg !1371
  %6 = icmp eq i32 %5, 0, !dbg !1372
  br i1 %6, label %8, label %7, !dbg !1373

7:                                                ; preds = %3
  tail call void @_exit(i32 noundef 1) #42, !dbg !1374
  unreachable, !dbg !1374

8:                                                ; preds = %3, %2
  ret void, !dbg !1375
}

; Function Attrs: nounwind
declare !dbg !1376 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1379 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1385 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1388 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1389 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1392 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1396 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1399 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1403 noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn
declare !dbg !1404 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1405 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1407, metadata !DIExpression()), !dbg !1412
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1408, metadata !DIExpression()), !dbg !1412
  br label %2, !dbg !1413

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1412
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1408, metadata !DIExpression()), !dbg !1412
  %4 = load i8, ptr %3, align 1, !dbg !1414, !tbaa !947
  %5 = icmp eq i8 %4, 47, !dbg !1414
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1408, metadata !DIExpression()), !dbg !1412
  br i1 %5, label %2, label %7, !dbg !1413, !llvm.loop !1416

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !1417
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !1419
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !1412
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1410, metadata !DIExpression()), !dbg !1421
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !1409, metadata !DIExpression()), !dbg !1412
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1408, metadata !DIExpression()), !dbg !1412
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !1422

12:                                               ; preds = %7
  ret ptr %9, !dbg !1423

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !1424
  %15 = icmp eq i8 %14, 0, !dbg !1424
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !1428
  %17 = select i1 %15, i8 %10, i8 0, !dbg !1428
  br label %18, !dbg !1428

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !1412
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !1412
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1409, metadata !DIExpression()), !dbg !1412
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1408, metadata !DIExpression()), !dbg !1412
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1429
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1410, metadata !DIExpression()), !dbg !1421
  %22 = load i8, ptr %21, align 1, !dbg !1417, !tbaa !947
  br label %7, !dbg !1430, !llvm.loop !1431
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1433 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1437, metadata !DIExpression()), !dbg !1440
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !1441
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1438, metadata !DIExpression()), !dbg !1440
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !1443
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1438, metadata !DIExpression()), !dbg !1440
  %4 = icmp ugt i64 %2, 1, !dbg !1444
  br i1 %4, label %5, label %13, !dbg !1446

5:                                                ; preds = %1, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1438, metadata !DIExpression()), !dbg !1440
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !1447
  %8 = load i8, ptr %7, align 1, !dbg !1447, !tbaa !947
  %9 = icmp eq i8 %8, 47, !dbg !1447
  br i1 %9, label %10, label %13, !dbg !1448

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1438, metadata !DIExpression()), !dbg !1440
  %12 = icmp ugt i64 %11, 1, !dbg !1444
  br i1 %12, label %5, label %13, !dbg !1446, !llvm.loop !1450

13:                                               ; preds = %5, %10, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %10 ], [ %6, %5 ], !dbg !1452
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1439, metadata !DIExpression()), !dbg !1440
  ret i64 %14, !dbg !1453
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !1454 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1492, metadata !DIExpression()), !dbg !1497
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !1498
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1493, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1499, metadata !DIExpression()), !dbg !1503
  %3 = load i32, ptr %0, align 8, !dbg !1505, !tbaa !1506
  %4 = and i32 %3, 32, !dbg !1509
  %5 = icmp eq i32 %4, 0, !dbg !1509
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1495, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !1510
  %7 = icmp eq i32 %6, 0, !dbg !1511
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !1496, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  br i1 %5, label %8, label %18, !dbg !1512

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !1514
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1493, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  %10 = select i1 %7, i1 true, i1 %9, !dbg !1515
  %11 = xor i1 %7, true, !dbg !1515
  %12 = sext i1 %11 to i32, !dbg !1515
  br i1 %10, label %21, label %13, !dbg !1515

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !1516
  %15 = load i32, ptr %14, align 4, !dbg !1516, !tbaa !938
  %16 = icmp ne i32 %15, 9, !dbg !1517
  %17 = sext i1 %16 to i32, !dbg !1518
  br label %21, !dbg !1518

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !1519

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !1521
  store i32 0, ptr %20, align 4, !dbg !1523, !tbaa !938
  br label %21, !dbg !1521

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !1497
  ret i32 %22, !dbg !1524
}

; Function Attrs: nounwind
declare !dbg !1525 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1531, metadata !DIExpression()), !dbg !1532
  store ptr %0, ptr @file_name, align 8, !dbg !1533, !tbaa !869
  ret void, !dbg !1534
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1535 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1541, !tbaa !1542
  ret void, !dbg !1544
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() local_unnamed_addr #10 !dbg !1545 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1550, !tbaa !869
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1551
  %3 = icmp eq i32 %2, 0, !dbg !1552
  br i1 %3, label %22, label %4, !dbg !1553

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1554, !tbaa !1542, !range !1555, !noundef !905
  %6 = icmp eq i8 %5, 0, !dbg !1554
  br i1 %6, label %11, label %7, !dbg !1556

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1557
  %9 = load i32, ptr %8, align 4, !dbg !1557, !tbaa !938
  %10 = icmp eq i32 %9, 32, !dbg !1558
  br i1 %10, label %22, label %11, !dbg !1559

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1.44, i32 noundef 5) #40, !dbg !1560
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1547, metadata !DIExpression()), !dbg !1561
  %13 = load ptr, ptr @file_name, align 8, !dbg !1562, !tbaa !869
  %14 = icmp eq ptr %13, null, !dbg !1562
  %15 = tail call ptr @__errno_location() #43, !dbg !1564
  %16 = load i32, ptr %15, align 4, !dbg !1564, !tbaa !938
  br i1 %14, label %19, label %17, !dbg !1565

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1566
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.45, ptr noundef %18, ptr noundef %12) #40, !dbg !1566
  br label %20, !dbg !1566

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.46, ptr noundef %12) #40, !dbg !1567
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1568, !tbaa !938
  tail call void @_exit(i32 noundef %21) #42, !dbg !1569
  unreachable, !dbg !1569

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1570, !tbaa !869
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1572
  %25 = icmp eq i32 %24, 0, !dbg !1573
  br i1 %25, label %28, label %26, !dbg !1574

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1575, !tbaa !938
  tail call void @_exit(i32 noundef %27) #42, !dbg !1576
  unreachable, !dbg !1576

28:                                               ; preds = %22
  ret void, !dbg !1577
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1578 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1582, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1584, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1585, metadata !DIExpression()), !dbg !1586
  tail call fastcc void @flush_stdout(), !dbg !1587
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1588, !tbaa !869
  %6 = icmp eq ptr %5, null, !dbg !1588
  br i1 %6, label %8, label %7, !dbg !1590

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1591
  br label %12, !dbg !1591

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1592, !tbaa !869
  %10 = tail call ptr @getprogname() #41, !dbg !1592
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef %10) #40, !dbg !1592
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1594
  ret void, !dbg !1595
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1596 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()), !dbg !1603
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1606
  %2 = icmp slt i32 %1, 0, !dbg !1607
  br i1 %2, label %6, label %3, !dbg !1608

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1609, !tbaa !869
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1609
  br label %6, !dbg !1609

6:                                                ; preds = %3, %0
  ret void, !dbg !1610
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1611 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1617
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1613, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1614, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1615, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1616, metadata !DIExpression()), !dbg !1618
  %6 = load ptr, ptr @stderr, align 8, !dbg !1619, !tbaa !869
  call void @llvm.dbg.value(metadata ptr %6, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr %2, metadata !1660, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr %3, metadata !1661, metadata !DIExpression()), !dbg !1662
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1664
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1665, !tbaa !938
  %9 = add i32 %8, 1, !dbg !1665
  store i32 %9, ptr @error_message_count, align 4, !dbg !1665, !tbaa !938
  %10 = icmp eq i32 %1, 0, !dbg !1666
  br i1 %10, label %20, label %11, !dbg !1668

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1669, metadata !DIExpression(), metadata !1617, metadata ptr %5, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %1, metadata !1672, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1679
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1680
  call void @llvm.dbg.value(metadata ptr %12, metadata !1673, metadata !DIExpression()), !dbg !1677
  %13 = icmp eq ptr %12, null, !dbg !1681
  br i1 %13, label %14, label %16, !dbg !1683

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.48, ptr noundef nonnull @.str.5.49, i32 noundef 5) #40, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %15, metadata !1673, metadata !DIExpression()), !dbg !1677
  br label %16, !dbg !1685

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1677
  call void @llvm.dbg.value(metadata ptr %17, metadata !1673, metadata !DIExpression()), !dbg !1677
  %18 = load ptr, ptr @stderr, align 8, !dbg !1686, !tbaa !869
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.50, ptr noundef %17) #40, !dbg !1686
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1687
  br label %20, !dbg !1688

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1689, !tbaa !869
  call void @llvm.dbg.value(metadata i32 10, metadata !1690, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata ptr %21, metadata !1695, metadata !DIExpression()), !dbg !1696
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1698
  %23 = load ptr, ptr %22, align 8, !dbg !1698, !tbaa !1699
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1698
  %25 = load ptr, ptr %24, align 8, !dbg !1698, !tbaa !1700
  %26 = icmp ult ptr %23, %25, !dbg !1698
  br i1 %26, label %29, label %27, !dbg !1698, !prof !1701

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !1698
  br label %31, !dbg !1698

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1698
  store ptr %30, ptr %22, align 8, !dbg !1698, !tbaa !1699
  store i8 10, ptr %23, align 1, !dbg !1698, !tbaa !947
  br label %31, !dbg !1698

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1702, !tbaa !869
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !1702
  %34 = icmp eq i32 %0, 0, !dbg !1703
  br i1 %34, label %36, label %35, !dbg !1705

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !1706
  unreachable, !dbg !1706

36:                                               ; preds = %31
  ret void, !dbg !1707
}

declare !dbg !1708 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nounwind
declare !dbg !1711 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1714 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1717 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1720 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1724 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1737
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1731, metadata !DIExpression(), metadata !1737, metadata ptr %4, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1728, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1729, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1730, metadata !DIExpression()), !dbg !1738
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !1739
  call void @llvm.va_start(ptr nonnull %4), !dbg !1740
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !1741
  call void @llvm.va_end(ptr nonnull %4), !dbg !1742
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !1743
  ret void, !dbg !1743
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !445 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !456, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !457, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !458, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !459, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !460, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !461, metadata !DIExpression()), !dbg !1744
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1745, !tbaa !938
  %8 = icmp eq i32 %7, 0, !dbg !1745
  br i1 %8, label %23, label %9, !dbg !1747

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1748, !tbaa !938
  %11 = icmp eq i32 %10, %3, !dbg !1751
  br i1 %11, label %12, label %22, !dbg !1752

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1753, !tbaa !869
  %14 = icmp eq ptr %13, %2, !dbg !1754
  br i1 %14, label %36, label %15, !dbg !1755

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1756
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1757
  br i1 %18, label %19, label %22, !dbg !1757

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1758
  %21 = icmp eq i32 %20, 0, !dbg !1759
  br i1 %21, label %36, label %22, !dbg !1760

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1761, !tbaa !869
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1762, !tbaa !938
  br label %23, !dbg !1763

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1764
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1765, !tbaa !869
  %25 = icmp eq ptr %24, null, !dbg !1765
  br i1 %25, label %27, label %26, !dbg !1767

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !1768
  br label %31, !dbg !1768

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1769, !tbaa !869
  %29 = tail call ptr @getprogname() #41, !dbg !1769
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.53, ptr noundef %29) #40, !dbg !1769
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1771, !tbaa !869
  %33 = icmp eq ptr %2, null, !dbg !1771
  %34 = select i1 %33, ptr @.str.3.54, ptr @.str.2.55, !dbg !1771
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !1771
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1772
  br label %36, !dbg !1773

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1773
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1774 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1784
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1783, metadata !DIExpression(), metadata !1784, metadata ptr %6, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1778, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1779, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1780, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1781, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1782, metadata !DIExpression()), !dbg !1785
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !1786
  call void @llvm.va_start(ptr nonnull %6), !dbg !1787
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !1788
  call void @llvm.va_end(ptr nonnull %6), !dbg !1789
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !1790
  ret void, !dbg !1790
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1829, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1830, metadata !DIExpression()), !dbg !1833
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1831, metadata !DIExpression()), !dbg !1833
  %3 = icmp slt i32 %2, 0, !dbg !1835
  br i1 %3, label %4, label %6, !dbg !1837

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1838
  br label %24, !dbg !1839

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !1840
  %8 = icmp eq i32 %7, 0, !dbg !1840
  br i1 %8, label %13, label %9, !dbg !1842

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1843
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !1844
  %12 = icmp eq i64 %11, -1, !dbg !1845
  br i1 %12, label %16, label %13, !dbg !1846

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !1847
  %15 = icmp eq i32 %14, 0, !dbg !1847
  br i1 %15, label %16, label %18, !dbg !1848

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1830, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1832, metadata !DIExpression()), !dbg !1833
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1849
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1832, metadata !DIExpression()), !dbg !1833
  br label %24, !dbg !1850

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !1851
  %20 = load i32, ptr %19, align 4, !dbg !1851, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1830, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1832, metadata !DIExpression()), !dbg !1833
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1849
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1832, metadata !DIExpression()), !dbg !1833
  %22 = icmp eq i32 %20, 0, !dbg !1852
  br i1 %22, label %24, label %23, !dbg !1850

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1854, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1832, metadata !DIExpression()), !dbg !1833
  br label %24, !dbg !1856

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1833
  ret i32 %25, !dbg !1857
}

; Function Attrs: nofree nounwind
declare !dbg !1858 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1859 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1860 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1861 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !1864 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1902, metadata !DIExpression()), !dbg !1903
  %2 = icmp eq ptr %0, null, !dbg !1904
  br i1 %2, label %6, label %3, !dbg !1906

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !1907
  %5 = icmp eq i32 %4, 0, !dbg !1907
  br i1 %5, label %6, label %8, !dbg !1908

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !1909
  br label %16, !dbg !1910

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !1911, metadata !DIExpression()), !dbg !1916
  %9 = load i32, ptr %0, align 8, !dbg !1918, !tbaa !1506
  %10 = and i32 %9, 256, !dbg !1920
  %11 = icmp eq i32 %10, 0, !dbg !1920
  br i1 %11, label %14, label %12, !dbg !1921

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !1922
  br label %14, !dbg !1922

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !1923
  br label %16, !dbg !1924

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !1903
  ret i32 %17, !dbg !1925
}

; Function Attrs: nofree nounwind
declare !dbg !1926 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @file_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1927 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1931, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1932, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1933, metadata !DIExpression()), !dbg !1935
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #40, !dbg !1936
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1934, metadata !DIExpression()), !dbg !1935
  %5 = icmp eq ptr %4, null, !dbg !1937
  br i1 %5, label %6, label %7, !dbg !1939

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !1940
  unreachable, !dbg !1940

7:                                                ; preds = %3
  ret ptr %4, !dbg !1941
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #20 !dbg !1942 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1944, metadata !DIExpression()), !dbg !1955
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1945, metadata !DIExpression()), !dbg !1955
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1946, metadata !DIExpression()), !dbg !1955
  %4 = tail call ptr @last_component(ptr noundef %0) #41, !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1947, metadata !DIExpression()), !dbg !1955
  %5 = tail call i64 @base_len(ptr noundef %4) #41, !dbg !1957
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1948, metadata !DIExpression()), !dbg !1955
  %6 = ptrtoint ptr %4 to i64, !dbg !1958
  %7 = ptrtoint ptr %0 to i64, !dbg !1958
  %8 = sub i64 %6, %7, !dbg !1958
  %9 = add i64 %8, %5, !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1949, metadata !DIExpression()), !dbg !1955
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1960
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1950, metadata !DIExpression()), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1951, metadata !DIExpression()), !dbg !1955
  %11 = icmp eq i64 %5, 0, !dbg !1961
  br i1 %11, label %21, label %12, !dbg !1963

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i64 %9, !dbg !1964
  %14 = getelementptr i8, ptr %13, i64 -1, !dbg !1964
  %15 = load i8, ptr %14, align 1, !dbg !1964, !tbaa !947
  %16 = icmp eq i8 %15, 47, !dbg !1964
  br i1 %16, label %25, label %17, !dbg !1967

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1968, !tbaa !947
  %19 = icmp ne i8 %18, 47, !dbg !1968
  %20 = select i1 %19, i8 47, i8 0, !dbg !1969
  br label %25, !dbg !1969

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1970, !tbaa !947
  %23 = icmp eq i8 %22, 47, !dbg !1970
  %24 = select i1 %23, i8 46, i8 0, !dbg !1972
  br label %25, !dbg !1972

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1955
  %28 = zext i1 %26 to i64, !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 %27, metadata !1951, metadata !DIExpression()), !dbg !1955
  %29 = add i64 %10, 1, !dbg !1973
  %30 = add i64 %29, %9, !dbg !1974
  %31 = add i64 %30, %28, !dbg !1975
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #45, !dbg !1976
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !1952, metadata !DIExpression()), !dbg !1955
  %33 = icmp eq ptr %32, null, !dbg !1977
  br i1 %33, label %41, label %34, !dbg !1979

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1980, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata ptr %0, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %9, metadata !1984, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #40, !dbg !1987
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1987
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !1953, metadata !DIExpression()), !dbg !1988
  store i8 %27, ptr %35, align 1, !dbg !1989, !tbaa !947
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1990
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1953, metadata !DIExpression()), !dbg !1988
  %37 = icmp eq ptr %2, null, !dbg !1991
  br i1 %37, label %39, label %38, !dbg !1993

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1994, !tbaa !869
  br label %39, !dbg !1995

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1980, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata ptr %1, metadata !1983, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %10, metadata !1984, metadata !DIExpression()), !dbg !1996
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #40, !dbg !1998
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1998
  tail call void @llvm.dbg.value(metadata ptr %40, metadata !1953, metadata !DIExpression()), !dbg !1988
  store i8 0, ptr %40, align 1, !dbg !1999, !tbaa !947
  br label %41, !dbg !2000

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !2001
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2002 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2005 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2044, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2045, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2046, metadata !DIExpression()), !dbg !2050
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2051
  %5 = load ptr, ptr %4, align 8, !dbg !2051, !tbaa !2052
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2053
  %7 = load ptr, ptr %6, align 8, !dbg !2053, !tbaa !2054
  %8 = icmp eq ptr %5, %7, !dbg !2055
  br i1 %8, label %9, label %27, !dbg !2056

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2057
  %11 = load ptr, ptr %10, align 8, !dbg !2057, !tbaa !1699
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2058
  %13 = load ptr, ptr %12, align 8, !dbg !2058, !tbaa !2059
  %14 = icmp eq ptr %11, %13, !dbg !2060
  br i1 %14, label %15, label %27, !dbg !2061

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2062
  %17 = load ptr, ptr %16, align 8, !dbg !2062, !tbaa !2063
  %18 = icmp eq ptr %17, null, !dbg !2064
  br i1 %18, label %19, label %27, !dbg !2065

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2066
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !2067
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2047, metadata !DIExpression()), !dbg !2068
  %22 = icmp eq i64 %21, -1, !dbg !2069
  br i1 %22, label %29, label %23, !dbg !2071

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2072, !tbaa !1506
  %25 = and i32 %24, -17, !dbg !2072
  store i32 %25, ptr %0, align 8, !dbg !2072, !tbaa !1506
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2073
  store i64 %21, ptr %26, align 8, !dbg !2074, !tbaa !2075
  br label %29, !dbg !2076

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2077
  br label %29, !dbg !2078

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2050
  ret i32 %30, !dbg !2079
}

; Function Attrs: nofree nounwind
declare !dbg !2080 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2083 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2086, !tbaa !869
  ret ptr %1, !dbg !2087
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2088 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2090, metadata !DIExpression()), !dbg !2093
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2094
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2091, metadata !DIExpression()), !dbg !2093
  %3 = icmp eq ptr %2, null, !dbg !2095
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2095
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2095
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2092, metadata !DIExpression()), !dbg !2093
  %6 = ptrtoint ptr %5 to i64, !dbg !2096
  %7 = ptrtoint ptr %0 to i64, !dbg !2096
  %8 = sub i64 %6, %7, !dbg !2096
  %9 = icmp sgt i64 %8, 6, !dbg !2098
  br i1 %9, label %10, label %19, !dbg !2099

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %11, metadata !2101, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata ptr @.str.75, metadata !2106, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 7, metadata !2107, metadata !DIExpression()), !dbg !2108
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.75, i64 7), !dbg !2110
  %13 = icmp eq i32 %12, 0, !dbg !2111
  br i1 %13, label %14, label %19, !dbg !2112

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2090, metadata !DIExpression()), !dbg !2093
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.76, i64 noundef 3) #41, !dbg !2113
  %16 = icmp eq i32 %15, 0, !dbg !2116
  %17 = select i1 %16, i64 3, i64 0, !dbg !2117
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2117
  br label %19, !dbg !2117

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2093
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2092, metadata !DIExpression()), !dbg !2093
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2090, metadata !DIExpression()), !dbg !2093
  store ptr %20, ptr @program_name, align 8, !dbg !2118, !tbaa !869
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2119, !tbaa !869
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2120, !tbaa !869
  ret void, !dbg !2121
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !498 {
  %3 = alloca i32, align 4, !DIAssignID !2122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !508, metadata !DIExpression(), metadata !2122, metadata ptr %3, metadata !DIExpression()), !dbg !2123
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !513, metadata !DIExpression(), metadata !2124, metadata ptr %4, metadata !DIExpression()), !dbg !2123
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !505, metadata !DIExpression()), !dbg !2123
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !506, metadata !DIExpression()), !dbg !2123
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2125
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !507, metadata !DIExpression()), !dbg !2123
  %6 = icmp eq ptr %5, %0, !dbg !2126
  br i1 %6, label %7, label %14, !dbg !2128

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2130
  call void @llvm.dbg.value(metadata ptr %4, metadata !2131, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %4, metadata !2140, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 8, metadata !2146, metadata !DIExpression()), !dbg !2147
  store i64 0, ptr %4, align 8, !dbg !2149
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2150
  %9 = icmp eq i64 %8, 2, !dbg !2152
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2153
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2154
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2123
  ret ptr %15, !dbg !2154
}

; Function Attrs: nounwind
declare !dbg !2155 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2161 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2166, metadata !DIExpression()), !dbg !2169
  %2 = tail call ptr @__errno_location() #43, !dbg !2170
  %3 = load i32, ptr %2, align 4, !dbg !2170, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2167, metadata !DIExpression()), !dbg !2169
  %4 = icmp eq ptr %0, null, !dbg !2171
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2171
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2172
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2168, metadata !DIExpression()), !dbg !2169
  store i32 %3, ptr %2, align 4, !dbg !2173, !tbaa !938
  ret ptr %6, !dbg !2174
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !2175 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2181, metadata !DIExpression()), !dbg !2182
  %2 = icmp eq ptr %0, null, !dbg !2183
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2183
  %4 = load i32, ptr %3, align 8, !dbg !2184, !tbaa !2185
  ret i32 %4, !dbg !2187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2188 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2192, metadata !DIExpression()), !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2193, metadata !DIExpression()), !dbg !2194
  %3 = icmp eq ptr %0, null, !dbg !2195
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2195
  store i32 %1, ptr %4, align 8, !dbg !2196, !tbaa !2185
  ret void, !dbg !2197
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2198 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2202, metadata !DIExpression()), !dbg !2210
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2203, metadata !DIExpression()), !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2204, metadata !DIExpression()), !dbg !2210
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2205, metadata !DIExpression()), !dbg !2210
  %4 = icmp eq ptr %0, null, !dbg !2211
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2211
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2212
  %7 = lshr i8 %1, 5, !dbg !2213
  %8 = zext nneg i8 %7 to i64, !dbg !2213
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2214
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2206, metadata !DIExpression()), !dbg !2210
  %10 = and i8 %1, 31, !dbg !2215
  %11 = zext nneg i8 %10 to i32, !dbg !2215
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2208, metadata !DIExpression()), !dbg !2210
  %12 = load i32, ptr %9, align 4, !dbg !2216, !tbaa !938
  %13 = lshr i32 %12, %11, !dbg !2217
  %14 = and i32 %13, 1, !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2209, metadata !DIExpression()), !dbg !2210
  %15 = xor i32 %13, %2, !dbg !2219
  %16 = and i32 %15, 1, !dbg !2219
  %17 = shl nuw i32 %16, %11, !dbg !2220
  %18 = xor i32 %17, %12, !dbg !2221
  store i32 %18, ptr %9, align 4, !dbg !2221, !tbaa !938
  ret i32 %14, !dbg !2222
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2223 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2227, metadata !DIExpression()), !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2228, metadata !DIExpression()), !dbg !2230
  %3 = icmp eq ptr %0, null, !dbg !2231
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2233
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2227, metadata !DIExpression()), !dbg !2230
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2234
  %6 = load i32, ptr %5, align 4, !dbg !2234, !tbaa !2235
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2229, metadata !DIExpression()), !dbg !2230
  store i32 %1, ptr %5, align 4, !dbg !2236, !tbaa !2235
  ret i32 %6, !dbg !2237
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2238 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2242, metadata !DIExpression()), !dbg !2245
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2243, metadata !DIExpression()), !dbg !2245
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2244, metadata !DIExpression()), !dbg !2245
  %4 = icmp eq ptr %0, null, !dbg !2246
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2248
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2242, metadata !DIExpression()), !dbg !2245
  store i32 10, ptr %5, align 8, !dbg !2249, !tbaa !2185
  %6 = icmp ne ptr %1, null, !dbg !2250
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2252
  br i1 %8, label %10, label %9, !dbg !2252

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2253
  unreachable, !dbg !2253

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2254
  store ptr %1, ptr %11, align 8, !dbg !2255, !tbaa !2256
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2257
  store ptr %2, ptr %12, align 8, !dbg !2258, !tbaa !2259
  ret void, !dbg !2260
}

; Function Attrs: noreturn nounwind
declare !dbg !2261 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2262 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2266, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2267, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2268, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2269, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2270, metadata !DIExpression()), !dbg !2274
  %6 = icmp eq ptr %4, null, !dbg !2275
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2275
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2271, metadata !DIExpression()), !dbg !2274
  %8 = tail call ptr @__errno_location() #43, !dbg !2276
  %9 = load i32, ptr %8, align 4, !dbg !2276, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2272, metadata !DIExpression()), !dbg !2274
  %10 = load i32, ptr %7, align 8, !dbg !2277, !tbaa !2185
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2278
  %12 = load i32, ptr %11, align 4, !dbg !2278, !tbaa !2235
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2279
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2280
  %15 = load ptr, ptr %14, align 8, !dbg !2280, !tbaa !2256
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2281
  %17 = load ptr, ptr %16, align 8, !dbg !2281, !tbaa !2259
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2282
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2273, metadata !DIExpression()), !dbg !2274
  store i32 %9, ptr %8, align 4, !dbg !2283, !tbaa !938
  ret i64 %18, !dbg !2284
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2285 {
  %10 = alloca i32, align 4, !DIAssignID !2353
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2354
  %12 = alloca i32, align 4, !DIAssignID !2355
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2356
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2357
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2331, metadata !DIExpression(), metadata !2357, metadata ptr %14, metadata !DIExpression()), !dbg !2358
  %15 = alloca i32, align 4, !DIAssignID !2359
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2334, metadata !DIExpression(), metadata !2359, metadata ptr %15, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2291, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2293, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2294, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2295, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2296, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2297, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2298, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2299, metadata !DIExpression()), !dbg !2361
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2362
  %17 = icmp eq i64 %16, 1, !dbg !2363
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2300, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2303, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2304, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2361
  %18 = trunc i32 %5 to i8, !dbg !2364
  %19 = lshr i8 %18, 1, !dbg !2364
  %20 = and i8 %19, 1, !dbg !2364
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2306, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2308, metadata !DIExpression()), !dbg !2361
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2365

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2366
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2367
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2368
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2369
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2361
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2370
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2371
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2308, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2306, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2305, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2304, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2303, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2294, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2299, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2298, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2295, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.label(metadata !2309), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2361
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
  ], !dbg !2373

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2295, metadata !DIExpression()), !dbg !2361
  br label %114, !dbg !2374

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2306, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2295, metadata !DIExpression()), !dbg !2361
  %43 = and i8 %37, 1, !dbg !2375
  %44 = icmp eq i8 %43, 0, !dbg !2375
  br i1 %44, label %45, label %114, !dbg !2374

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2377
  br i1 %46, label %114, label %47, !dbg !2380

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2377, !tbaa !947
  br label %114, !dbg !2377

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !611, metadata !DIExpression(), metadata !2355, metadata ptr %12, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.assign(metadata i1 undef, metadata !612, metadata !DIExpression(), metadata !2356, metadata ptr %13, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata ptr @.str.11.89, metadata !608, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %29, metadata !609, metadata !DIExpression()), !dbg !2381
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.11.89, i32 noundef 5) #40, !dbg !2385
  call void @llvm.dbg.value(metadata ptr %49, metadata !610, metadata !DIExpression()), !dbg !2381
  %50 = icmp eq ptr %49, @.str.11.89, !dbg !2386
  br i1 %50, label %51, label %60, !dbg !2388

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2389
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %13, metadata !2391, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata ptr %13, metadata !2399, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i64 8, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i64 0, ptr %13, align 8, !dbg !2406
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2407
  %53 = icmp eq i64 %52, 3, !dbg !2409
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2410
  %57 = icmp eq i32 %29, 9, !dbg !2410
  %58 = select i1 %57, ptr @.str.10.91, ptr @.str.12.92, !dbg !2410
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2411
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2411
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2298, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.assign(metadata i1 undef, metadata !611, metadata !DIExpression(), metadata !2353, metadata ptr %10, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !612, metadata !DIExpression(), metadata !2354, metadata ptr %11, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata ptr @.str.12.92, metadata !608, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %29, metadata !609, metadata !DIExpression()), !dbg !2412
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.90, ptr noundef nonnull @.str.12.92, i32 noundef 5) #40, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %62, metadata !610, metadata !DIExpression()), !dbg !2412
  %63 = icmp eq ptr %62, @.str.12.92, !dbg !2415
  br i1 %63, label %64, label %73, !dbg !2416

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2417
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %11, metadata !2391, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata ptr %11, metadata !2399, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 8, metadata !2403, metadata !DIExpression()), !dbg !2421
  store i64 0, ptr %11, align 8, !dbg !2423
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2424
  %66 = icmp eq i64 %65, 3, !dbg !2425
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2426
  %70 = icmp eq i32 %29, 9, !dbg !2426
  %71 = select i1 %70, ptr @.str.10.91, ptr @.str.12.92, !dbg !2426
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2426
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2427
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2427
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2299, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2298, metadata !DIExpression()), !dbg !2361
  %76 = and i8 %37, 1, !dbg !2428
  %77 = icmp eq i8 %76, 0, !dbg !2428
  br i1 %77, label %78, label %93, !dbg !2429

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2311, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2301, metadata !DIExpression()), !dbg !2361
  %79 = load i8, ptr %74, align 1, !dbg !2431, !tbaa !947
  %80 = icmp eq i8 %79, 0, !dbg !2433
  br i1 %80, label %93, label %81, !dbg !2433

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2311, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2301, metadata !DIExpression()), !dbg !2361
  %85 = icmp ult i64 %84, %40, !dbg !2434
  br i1 %85, label %86, label %88, !dbg !2437

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2434
  store i8 %82, ptr %87, align 1, !dbg !2434, !tbaa !947
  br label %88, !dbg !2434

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2301, metadata !DIExpression()), !dbg !2361
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2311, metadata !DIExpression()), !dbg !2430
  %91 = load i8, ptr %90, align 1, !dbg !2431, !tbaa !947
  %92 = icmp eq i8 %91, 0, !dbg !2433
  br i1 %92, label %93, label %81, !dbg !2433, !llvm.loop !2439

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2441
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2303, metadata !DIExpression()), !dbg !2361
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2442
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2304, metadata !DIExpression()), !dbg !2361
  br label %114, !dbg !2443

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2361
  br label %98, !dbg !2444

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2305, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2361
  br label %98, !dbg !2445

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2369
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2306, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2305, metadata !DIExpression()), !dbg !2361
  %101 = and i8 %100, 1, !dbg !2446
  %102 = icmp eq i8 %101, 0, !dbg !2446
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2448
  br label %104, !dbg !2448

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2361
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2364
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2306, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2305, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2295, metadata !DIExpression()), !dbg !2361
  %107 = and i8 %106, 1, !dbg !2449
  %108 = icmp eq i8 %107, 0, !dbg !2449
  br i1 %108, label %109, label %114, !dbg !2451

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2452
  br i1 %110, label %114, label %111, !dbg !2455

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2452, !tbaa !947
  br label %114, !dbg !2452

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2361
  br label %114, !dbg !2456

113:                                              ; preds = %28
  call void @abort() #42, !dbg !2457
  unreachable, !dbg !2457

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2441
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.91, %45 ], [ @.str.10.91, %47 ], [ @.str.10.91, %42 ], [ %34, %28 ], [ @.str.12.92, %109 ], [ @.str.12.92, %111 ], [ @.str.12.92, %104 ], [ @.str.10.91, %41 ], !dbg !2361
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2361
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2361
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2306, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2305, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2304, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2303, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2299, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2298, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2295, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2316, metadata !DIExpression()), !dbg !2458
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
  br label %138, !dbg !2459

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2441
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2366
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2370
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2371
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2460
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2461
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2308, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2294, metadata !DIExpression()), !dbg !2361
  %147 = icmp eq i64 %139, -1, !dbg !2462
  br i1 %147, label %148, label %152, !dbg !2463

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2464
  %150 = load i8, ptr %149, align 1, !dbg !2464, !tbaa !947
  %151 = icmp eq i8 %150, 0, !dbg !2465
  br i1 %151, label %612, label %154, !dbg !2466

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2467
  br i1 %153, label %612, label %154, !dbg !2466

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2318, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2468
  br i1 %128, label %155, label %170, !dbg !2469

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2471
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2472
  br i1 %157, label %158, label %160, !dbg !2472

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2473
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2294, metadata !DIExpression()), !dbg !2361
  br label %160, !dbg !2474

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2474
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2294, metadata !DIExpression()), !dbg !2361
  %162 = icmp ugt i64 %156, %161, !dbg !2475
  br i1 %162, label %170, label %163, !dbg !2476

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2477
  call void @llvm.dbg.value(metadata ptr %164, metadata !2478, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %119, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %120, metadata !2482, metadata !DIExpression()), !dbg !2483
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2485
  %166 = icmp ne i32 %165, 0, !dbg !2486
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2487
  %168 = xor i1 %166, true, !dbg !2487
  %169 = zext i1 %168 to i8, !dbg !2487
  br i1 %167, label %170, label %666, !dbg !2487

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2468
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2318, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2294, metadata !DIExpression()), !dbg !2361
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2488
  %175 = load i8, ptr %174, align 1, !dbg !2488, !tbaa !947
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2323, metadata !DIExpression()), !dbg !2468
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
  ], !dbg !2489

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2490

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2491

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2321, metadata !DIExpression()), !dbg !2468
  %179 = and i8 %144, 1, !dbg !2495
  %180 = icmp eq i8 %179, 0, !dbg !2495
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2495
  br i1 %181, label %182, label %198, !dbg !2495

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2497
  br i1 %183, label %184, label %186, !dbg !2501

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2497
  store i8 39, ptr %185, align 1, !dbg !2497, !tbaa !947
  br label %186, !dbg !2497

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2501
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2301, metadata !DIExpression()), !dbg !2361
  %188 = icmp ult i64 %187, %146, !dbg !2502
  br i1 %188, label %189, label %191, !dbg !2505

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2502
  store i8 36, ptr %190, align 1, !dbg !2502, !tbaa !947
  br label %191, !dbg !2502

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2505
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2301, metadata !DIExpression()), !dbg !2361
  %193 = icmp ult i64 %192, %146, !dbg !2506
  br i1 %193, label %194, label %196, !dbg !2509

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2506
  store i8 39, ptr %195, align 1, !dbg !2506, !tbaa !947
  br label %196, !dbg !2506

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2310, metadata !DIExpression()), !dbg !2361
  br label %198, !dbg !2510

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2361
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2301, metadata !DIExpression()), !dbg !2361
  %201 = icmp ult i64 %199, %146, !dbg !2511
  br i1 %201, label %202, label %204, !dbg !2514

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2511
  store i8 92, ptr %203, align 1, !dbg !2511, !tbaa !947
  br label %204, !dbg !2511

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2514
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2301, metadata !DIExpression()), !dbg !2361
  br i1 %125, label %206, label %476, !dbg !2515

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2517
  %208 = icmp ult i64 %207, %171, !dbg !2518
  br i1 %208, label %209, label %465, !dbg !2519

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2520
  %211 = load i8, ptr %210, align 1, !dbg !2520, !tbaa !947
  %212 = add i8 %211, -48, !dbg !2521
  %213 = icmp ult i8 %212, 10, !dbg !2521
  br i1 %213, label %214, label %465, !dbg !2521

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2522
  br i1 %215, label %216, label %218, !dbg !2526

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2522
  store i8 48, ptr %217, align 1, !dbg !2522, !tbaa !947
  br label %218, !dbg !2522

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2301, metadata !DIExpression()), !dbg !2361
  %220 = icmp ult i64 %219, %146, !dbg !2527
  br i1 %220, label %221, label %223, !dbg !2530

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2527
  store i8 48, ptr %222, align 1, !dbg !2527, !tbaa !947
  br label %223, !dbg !2527

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2301, metadata !DIExpression()), !dbg !2361
  br label %465, !dbg !2531

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2532

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2533

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2534

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2536

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2538
  %231 = icmp ult i64 %230, %171, !dbg !2539
  br i1 %231, label %232, label %465, !dbg !2540

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2541
  %234 = load i8, ptr %233, align 1, !dbg !2541, !tbaa !947
  %235 = icmp eq i8 %234, 63, !dbg !2542
  br i1 %235, label %236, label %465, !dbg !2543

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2544
  %238 = load i8, ptr %237, align 1, !dbg !2544, !tbaa !947
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
  ], !dbg !2545

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2546

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2316, metadata !DIExpression()), !dbg !2458
  %241 = icmp ult i64 %140, %146, !dbg !2548
  br i1 %241, label %242, label %244, !dbg !2551

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2548
  store i8 63, ptr %243, align 1, !dbg !2548, !tbaa !947
  br label %244, !dbg !2548

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2551
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2301, metadata !DIExpression()), !dbg !2361
  %246 = icmp ult i64 %245, %146, !dbg !2552
  br i1 %246, label %247, label %249, !dbg !2555

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2552
  store i8 34, ptr %248, align 1, !dbg !2552, !tbaa !947
  br label %249, !dbg !2552

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2301, metadata !DIExpression()), !dbg !2361
  %251 = icmp ult i64 %250, %146, !dbg !2556
  br i1 %251, label %252, label %254, !dbg !2559

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2556
  store i8 34, ptr %253, align 1, !dbg !2556, !tbaa !947
  br label %254, !dbg !2556

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2301, metadata !DIExpression()), !dbg !2361
  %256 = icmp ult i64 %255, %146, !dbg !2560
  br i1 %256, label %257, label %259, !dbg !2563

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2560
  store i8 63, ptr %258, align 1, !dbg !2560, !tbaa !947
  br label %259, !dbg !2560

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2301, metadata !DIExpression()), !dbg !2361
  br label %465, !dbg !2564

261:                                              ; preds = %170
  br label %272, !dbg !2565

262:                                              ; preds = %170
  br label %272, !dbg !2566

263:                                              ; preds = %170
  br label %270, !dbg !2567

264:                                              ; preds = %170
  br label %270, !dbg !2568

265:                                              ; preds = %170
  br label %272, !dbg !2569

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2570

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2571

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2574

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2576

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2577
  call void @llvm.dbg.label(metadata !2324), !dbg !2578
  br i1 %133, label %272, label %655, !dbg !2579

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2577
  call void @llvm.dbg.label(metadata !2327), !dbg !2581
  br i1 %124, label %520, label %476, !dbg !2582

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2583

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2584, !tbaa !947
  %277 = icmp eq i8 %276, 0, !dbg !2586
  br i1 %277, label %278, label %465, !dbg !2587

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2588
  br i1 %279, label %280, label %465, !dbg !2590

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2322, metadata !DIExpression()), !dbg !2468
  br label %281, !dbg !2591

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2322, metadata !DIExpression()), !dbg !2468
  br i1 %133, label %465, label %655, !dbg !2592

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2322, metadata !DIExpression()), !dbg !2468
  br i1 %132, label %284, label %465, !dbg !2594

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2595

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2598
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2600
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2600
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2600
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2302, metadata !DIExpression()), !dbg !2361
  %291 = icmp ult i64 %140, %290, !dbg !2601
  br i1 %291, label %292, label %294, !dbg !2604

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2601
  store i8 39, ptr %293, align 1, !dbg !2601, !tbaa !947
  br label %294, !dbg !2601

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2301, metadata !DIExpression()), !dbg !2361
  %296 = icmp ult i64 %295, %290, !dbg !2605
  br i1 %296, label %297, label %299, !dbg !2608

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2605
  store i8 92, ptr %298, align 1, !dbg !2605, !tbaa !947
  br label %299, !dbg !2605

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2301, metadata !DIExpression()), !dbg !2361
  %301 = icmp ult i64 %300, %290, !dbg !2609
  br i1 %301, label %302, label %304, !dbg !2612

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2609
  store i8 39, ptr %303, align 1, !dbg !2609, !tbaa !947
  br label %304, !dbg !2609

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2361
  br label %465, !dbg !2613

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2614

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2328, metadata !DIExpression()), !dbg !2615
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !2616
  %309 = load ptr, ptr %308, align 8, !dbg !2616, !tbaa !869
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2616
  %312 = load i16, ptr %311, align 2, !dbg !2616, !tbaa !979
  %313 = and i16 %312, 16384, !dbg !2618
  %314 = icmp ne i16 %313, 0, !dbg !2618
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2330, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2615
  br label %355, !dbg !2619

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2620
  call void @llvm.dbg.value(metadata ptr %14, metadata !2391, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %14, metadata !2399, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 8, metadata !2403, metadata !DIExpression()), !dbg !2623
  store i64 0, ptr %14, align 8, !dbg !2625
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2330, metadata !DIExpression()), !dbg !2615
  %316 = icmp eq i64 %171, -1, !dbg !2626
  br i1 %316, label %317, label %319, !dbg !2628

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2294, metadata !DIExpression()), !dbg !2361
  br label %319, !dbg !2630

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2294, metadata !DIExpression()), !dbg !2361
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2631
  %321 = sub i64 %320, %145, !dbg !2632
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !2633
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2338, metadata !DIExpression()), !dbg !2360
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2634

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2615
  %324 = icmp ult i64 %145, %320, !dbg !2635
  br i1 %324, label %326, label %351, !dbg !2637

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2330, metadata !DIExpression()), !dbg !2615
  br label %351, !dbg !2638

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2328, metadata !DIExpression()), !dbg !2615
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2640
  %330 = load i8, ptr %329, align 1, !dbg !2640, !tbaa !947
  %331 = icmp eq i8 %330, 0, !dbg !2637
  br i1 %331, label %351, label %332, !dbg !2641

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2642
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2328, metadata !DIExpression()), !dbg !2615
  %334 = add i64 %333, %145, !dbg !2643
  %335 = icmp eq i64 %333, %321, !dbg !2635
  br i1 %335, label %351, label %326, !dbg !2637, !llvm.loop !2644

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2339, metadata !DIExpression()), !dbg !2645
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2646
  %339 = and i1 %338, %132, !dbg !2646
  br i1 %339, label %340, label %347, !dbg !2646

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2339, metadata !DIExpression()), !dbg !2645
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2647
  %343 = load i8, ptr %342, align 1, !dbg !2647, !tbaa !947
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2649

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2339, metadata !DIExpression()), !dbg !2645
  %346 = icmp eq i64 %345, %322, !dbg !2651
  br i1 %346, label %347, label %340, !dbg !2652, !llvm.loop !2653

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2655, !tbaa !938
  call void @llvm.dbg.value(metadata i32 %348, metadata !2657, metadata !DIExpression()), !dbg !2665
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !2667
  %350 = icmp ne i32 %349, 0, !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2330, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2328, metadata !DIExpression()), !dbg !2615
  br label %351, !dbg !2669

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2330, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2328, metadata !DIExpression()), !dbg !2615
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2670
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2671
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2330, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2615
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2670
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2671
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2468
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2672
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2330, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2328, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2294, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2468
  %359 = icmp ult i64 %357, 2, !dbg !2673
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2674
  br i1 %361, label %461, label %362, !dbg !2674

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2675
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2347, metadata !DIExpression()), !dbg !2676
  br label %364, !dbg !2677

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2361
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2460
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2458
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2468
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2678
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2318, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2301, metadata !DIExpression()), !dbg !2361
  br i1 %360, label %417, label %371, !dbg !2679

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2684

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2321, metadata !DIExpression()), !dbg !2468
  %373 = and i8 %366, 1, !dbg !2687
  %374 = icmp eq i8 %373, 0, !dbg !2687
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2687
  br i1 %375, label %376, label %392, !dbg !2687

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2689
  br i1 %377, label %378, label %380, !dbg !2693

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2689
  store i8 39, ptr %379, align 1, !dbg !2689, !tbaa !947
  br label %380, !dbg !2689

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2301, metadata !DIExpression()), !dbg !2361
  %382 = icmp ult i64 %381, %146, !dbg !2694
  br i1 %382, label %383, label %385, !dbg !2697

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2694
  store i8 36, ptr %384, align 1, !dbg !2694, !tbaa !947
  br label %385, !dbg !2694

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2301, metadata !DIExpression()), !dbg !2361
  %387 = icmp ult i64 %386, %146, !dbg !2698
  br i1 %387, label %388, label %390, !dbg !2701

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2698
  store i8 39, ptr %389, align 1, !dbg !2698, !tbaa !947
  br label %390, !dbg !2698

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2310, metadata !DIExpression()), !dbg !2361
  br label %392, !dbg !2702

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2361
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2301, metadata !DIExpression()), !dbg !2361
  %395 = icmp ult i64 %393, %146, !dbg !2703
  br i1 %395, label %396, label %398, !dbg !2706

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2703
  store i8 92, ptr %397, align 1, !dbg !2703, !tbaa !947
  br label %398, !dbg !2703

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2301, metadata !DIExpression()), !dbg !2361
  %400 = icmp ult i64 %399, %146, !dbg !2707
  br i1 %400, label %401, label %405, !dbg !2710

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2707
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2707
  store i8 %403, ptr %404, align 1, !dbg !2707, !tbaa !947
  br label %405, !dbg !2707

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2301, metadata !DIExpression()), !dbg !2361
  %407 = icmp ult i64 %406, %146, !dbg !2711
  br i1 %407, label %408, label %413, !dbg !2714

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2711
  %411 = or disjoint i8 %410, 48, !dbg !2711
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2711
  store i8 %411, ptr %412, align 1, !dbg !2711, !tbaa !947
  br label %413, !dbg !2711

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2301, metadata !DIExpression()), !dbg !2361
  %415 = and i8 %370, 7, !dbg !2715
  %416 = or disjoint i8 %415, 48, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2323, metadata !DIExpression()), !dbg !2468
  br label %426, !dbg !2717

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2718
  %419 = icmp eq i8 %418, 0, !dbg !2718
  br i1 %419, label %426, label %420, !dbg !2720

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2721
  br i1 %421, label %422, label %424, !dbg !2725

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2721
  store i8 92, ptr %423, align 1, !dbg !2721, !tbaa !947
  br label %424, !dbg !2721

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2725
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2318, metadata !DIExpression()), !dbg !2468
  br label %426, !dbg !2726

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2361
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2460
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2468
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2468
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2318, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2301, metadata !DIExpression()), !dbg !2361
  %432 = add i64 %367, 1, !dbg !2727
  %433 = icmp ugt i64 %363, %432, !dbg !2729
  br i1 %433, label %434, label %463, !dbg !2730

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2731
  %436 = icmp ne i8 %435, 0, !dbg !2731
  %437 = and i8 %430, 1, !dbg !2731
  %438 = icmp eq i8 %437, 0, !dbg !2731
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2731
  br i1 %439, label %440, label %451, !dbg !2731

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2734
  br i1 %441, label %442, label %444, !dbg !2738

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2734
  store i8 39, ptr %443, align 1, !dbg !2734, !tbaa !947
  br label %444, !dbg !2734

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2738
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2301, metadata !DIExpression()), !dbg !2361
  %446 = icmp ult i64 %445, %146, !dbg !2739
  br i1 %446, label %447, label %449, !dbg !2742

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2739
  store i8 39, ptr %448, align 1, !dbg !2739, !tbaa !947
  br label %449, !dbg !2739

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2361
  br label %451, !dbg !2743

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2744
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2301, metadata !DIExpression()), !dbg !2361
  %454 = icmp ult i64 %452, %146, !dbg !2745
  br i1 %454, label %455, label %457, !dbg !2748

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2745
  store i8 %431, ptr %456, align 1, !dbg !2745, !tbaa !947
  br label %457, !dbg !2745

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2316, metadata !DIExpression()), !dbg !2458
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2749
  %460 = load i8, ptr %459, align 1, !dbg !2749, !tbaa !947
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2323, metadata !DIExpression()), !dbg !2468
  br label %364, !dbg !2750, !llvm.loop !2751

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2322, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2318, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2294, metadata !DIExpression()), !dbg !2361
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2322, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2318, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2294, metadata !DIExpression()), !dbg !2361
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2754
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2361
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2366
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2361
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2361
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2458
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2468
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2468
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2468
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2322, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2318, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2294, metadata !DIExpression()), !dbg !2361
  br i1 %126, label %487, label %476, !dbg !2755

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
  br i1 %137, label %488, label %509, !dbg !2757

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2758

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
  %499 = lshr i8 %490, 5, !dbg !2759
  %500 = zext nneg i8 %499 to i64, !dbg !2759
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2760
  %502 = load i32, ptr %501, align 4, !dbg !2760, !tbaa !938
  %503 = and i8 %490, 31, !dbg !2761
  %504 = zext nneg i8 %503 to i32, !dbg !2761
  %505 = shl nuw i32 1, %504, !dbg !2762
  %506 = and i32 %502, %505, !dbg !2762
  %507 = icmp eq i32 %506, 0, !dbg !2762
  %508 = and i1 %172, %507, !dbg !2763
  br i1 %508, label %558, label %520, !dbg !2763

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
  br i1 %172, label %558, label %520, !dbg !2764

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2754
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2361
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2366
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2370
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2460
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2765
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2468
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2468
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2322, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2294, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.label(metadata !2350), !dbg !2766
  br i1 %131, label %530, label %659, !dbg !2767

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2321, metadata !DIExpression()), !dbg !2468
  %531 = and i8 %525, 1, !dbg !2769
  %532 = icmp eq i8 %531, 0, !dbg !2769
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2769
  br i1 %533, label %534, label %550, !dbg !2769

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2771
  br i1 %535, label %536, label %538, !dbg !2775

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2771
  store i8 39, ptr %537, align 1, !dbg !2771, !tbaa !947
  br label %538, !dbg !2771

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2775
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2301, metadata !DIExpression()), !dbg !2361
  %540 = icmp ult i64 %539, %529, !dbg !2776
  br i1 %540, label %541, label %543, !dbg !2779

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2776
  store i8 36, ptr %542, align 1, !dbg !2776, !tbaa !947
  br label %543, !dbg !2776

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2301, metadata !DIExpression()), !dbg !2361
  %545 = icmp ult i64 %544, %529, !dbg !2780
  br i1 %545, label %546, label %548, !dbg !2783

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2780
  store i8 39, ptr %547, align 1, !dbg !2780, !tbaa !947
  br label %548, !dbg !2780

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2310, metadata !DIExpression()), !dbg !2361
  br label %550, !dbg !2784

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2468
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2301, metadata !DIExpression()), !dbg !2361
  %553 = icmp ult i64 %551, %529, !dbg !2785
  br i1 %553, label %554, label %556, !dbg !2788

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2785
  store i8 92, ptr %555, align 1, !dbg !2785, !tbaa !947
  br label %556, !dbg !2785

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2322, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2294, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.label(metadata !2351), !dbg !2789
  br label %585, !dbg !2790

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2754
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2361
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2366
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2370
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2460
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2765
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2468
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2468
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2793
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2323, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2322, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2321, metadata !DIExpression()), !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2294, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.label(metadata !2351), !dbg !2789
  %569 = and i8 %563, 1, !dbg !2790
  %570 = icmp ne i8 %569, 0, !dbg !2790
  %571 = and i8 %565, 1, !dbg !2790
  %572 = icmp eq i8 %571, 0, !dbg !2790
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2790
  br i1 %573, label %574, label %585, !dbg !2790

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2794
  br i1 %575, label %576, label %578, !dbg !2798

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2794
  store i8 39, ptr %577, align 1, !dbg !2794, !tbaa !947
  br label %578, !dbg !2794

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2301, metadata !DIExpression()), !dbg !2361
  %580 = icmp ult i64 %579, %568, !dbg !2799
  br i1 %580, label %581, label %583, !dbg !2802

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2799
  store i8 39, ptr %582, align 1, !dbg !2799, !tbaa !947
  br label %583, !dbg !2799

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2361
  br label %585, !dbg !2803

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2468
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2301, metadata !DIExpression()), !dbg !2361
  %595 = icmp ult i64 %593, %586, !dbg !2804
  br i1 %595, label %596, label %598, !dbg !2807

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2804
  store i8 %587, ptr %597, align 1, !dbg !2804, !tbaa !947
  br label %598, !dbg !2804

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2807
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2301, metadata !DIExpression()), !dbg !2361
  %600 = icmp eq i8 %588, 0, !dbg !2808
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2308, metadata !DIExpression()), !dbg !2361
  br label %602, !dbg !2811

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2754
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2361
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2366
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2370
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2371
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2460
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2765
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2316, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2310, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2308, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2294, metadata !DIExpression()), !dbg !2361
  %611 = add i64 %609, 1, !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2316, metadata !DIExpression()), !dbg !2458
  br label %138, !dbg !2813, !llvm.loop !2814

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2292, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2308, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2307, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2302, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2301, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2294, metadata !DIExpression()), !dbg !2361
  %613 = icmp eq i64 %140, 0, !dbg !2816
  %614 = and i1 %132, %613, !dbg !2818
  %615 = xor i1 %614, true, !dbg !2818
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2818
  br i1 %616, label %617, label %655, !dbg !2818

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2819
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2819
  br i1 %621, label %622, label %631, !dbg !2819

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2821
  %624 = icmp eq i8 %623, 0, !dbg !2821
  br i1 %624, label %627, label %625, !dbg !2824

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2825
  br label %672, !dbg !2826

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2827
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2829
  br i1 %630, label %28, label %631, !dbg !2829

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2830
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2832
  br i1 %634, label %635, label %650, !dbg !2832

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2303, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2301, metadata !DIExpression()), !dbg !2361
  %636 = load i8, ptr %119, align 1, !dbg !2833, !tbaa !947
  %637 = icmp eq i8 %636, 0, !dbg !2836
  br i1 %637, label %650, label %638, !dbg !2836

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2303, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2301, metadata !DIExpression()), !dbg !2361
  %642 = icmp ult i64 %641, %146, !dbg !2837
  br i1 %642, label %643, label %645, !dbg !2840

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2837
  store i8 %639, ptr %644, align 1, !dbg !2837, !tbaa !947
  br label %645, !dbg !2837

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2301, metadata !DIExpression()), !dbg !2361
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2303, metadata !DIExpression()), !dbg !2361
  %648 = load i8, ptr %647, align 1, !dbg !2833, !tbaa !947
  %649 = icmp eq i8 %648, 0, !dbg !2836
  br i1 %649, label %650, label %638, !dbg !2836, !llvm.loop !2842

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2441
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2301, metadata !DIExpression()), !dbg !2361
  %652 = icmp ult i64 %651, %146, !dbg !2844
  br i1 %652, label %653, label %672, !dbg !2846

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2847
  store i8 0, ptr %654, align 1, !dbg !2848, !tbaa !947
  br label %672, !dbg !2847

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2352), !dbg !2849
  %657 = icmp eq i8 %123, 0, !dbg !2850
  %658 = select i1 %657, i32 2, i32 4, !dbg !2850
  br label %666, !dbg !2850

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2352), !dbg !2849
  %662 = icmp eq i32 %115, 2, !dbg !2852
  %663 = icmp eq i8 %123, 0, !dbg !2850
  %664 = select i1 %663, i32 2, i32 4, !dbg !2850
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2850
  br label %666, !dbg !2850

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2295, metadata !DIExpression()), !dbg !2361
  %670 = and i32 %5, -3, !dbg !2853
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2854
  br label %672, !dbg !2855

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2856
}

; Function Attrs: nounwind
declare !dbg !2857 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2860 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2862 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2866, metadata !DIExpression()), !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()), !dbg !2869
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %0, metadata !2870, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr null, metadata !2876, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %2, metadata !2877, metadata !DIExpression()), !dbg !2883
  %4 = icmp eq ptr %2, null, !dbg !2885
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2885
  call void @llvm.dbg.value(metadata ptr %5, metadata !2878, metadata !DIExpression()), !dbg !2883
  %6 = tail call ptr @__errno_location() #43, !dbg !2886
  %7 = load i32, ptr %6, align 4, !dbg !2886, !tbaa !938
  call void @llvm.dbg.value(metadata i32 %7, metadata !2879, metadata !DIExpression()), !dbg !2883
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2887
  %9 = load i32, ptr %8, align 4, !dbg !2887, !tbaa !2235
  %10 = or i32 %9, 1, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %10, metadata !2880, metadata !DIExpression()), !dbg !2883
  %11 = load i32, ptr %5, align 8, !dbg !2889, !tbaa !2185
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2890
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2891
  %14 = load ptr, ptr %13, align 8, !dbg !2891, !tbaa !2256
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2892
  %16 = load ptr, ptr %15, align 8, !dbg !2892, !tbaa !2259
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2893
  %18 = add i64 %17, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %18, metadata !2881, metadata !DIExpression()), !dbg !2883
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2895
  call void @llvm.dbg.value(metadata ptr %19, metadata !2882, metadata !DIExpression()), !dbg !2883
  %20 = load i32, ptr %5, align 8, !dbg !2896, !tbaa !2185
  %21 = load ptr, ptr %13, align 8, !dbg !2897, !tbaa !2256
  %22 = load ptr, ptr %15, align 8, !dbg !2898, !tbaa !2259
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2899
  store i32 %7, ptr %6, align 4, !dbg !2900, !tbaa !938
  ret ptr %19, !dbg !2901
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2871 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2870, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2876, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2877, metadata !DIExpression()), !dbg !2902
  %5 = icmp eq ptr %3, null, !dbg !2903
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2903
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2878, metadata !DIExpression()), !dbg !2902
  %7 = tail call ptr @__errno_location() #43, !dbg !2904
  %8 = load i32, ptr %7, align 4, !dbg !2904, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2879, metadata !DIExpression()), !dbg !2902
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2905
  %10 = load i32, ptr %9, align 4, !dbg !2905, !tbaa !2235
  %11 = icmp eq ptr %2, null, !dbg !2906
  %12 = zext i1 %11 to i32, !dbg !2906
  %13 = or i32 %10, %12, !dbg !2907
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2880, metadata !DIExpression()), !dbg !2902
  %14 = load i32, ptr %6, align 8, !dbg !2908, !tbaa !2185
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2909
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2910
  %17 = load ptr, ptr %16, align 8, !dbg !2910, !tbaa !2256
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2911
  %19 = load ptr, ptr %18, align 8, !dbg !2911, !tbaa !2259
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2912
  %21 = add i64 %20, 1, !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2881, metadata !DIExpression()), !dbg !2902
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2914
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2882, metadata !DIExpression()), !dbg !2902
  %23 = load i32, ptr %6, align 8, !dbg !2915, !tbaa !2185
  %24 = load ptr, ptr %16, align 8, !dbg !2916, !tbaa !2256
  %25 = load ptr, ptr %18, align 8, !dbg !2917, !tbaa !2259
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2918
  store i32 %8, ptr %7, align 4, !dbg !2919, !tbaa !938
  br i1 %11, label %28, label %27, !dbg !2920

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2921, !tbaa !2923
  br label %28, !dbg !2924

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2925
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2926 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2931, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2928, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2929, metadata !DIExpression()), !dbg !2933
  %2 = load i32, ptr @nslots, align 4, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2929, metadata !DIExpression()), !dbg !2933
  %3 = icmp sgt i32 %2, 1, !dbg !2934
  br i1 %3, label %4, label %6, !dbg !2936

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2934
  br label %10, !dbg !2936

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2937
  %8 = load ptr, ptr %7, align 8, !dbg !2937, !tbaa !2939
  %9 = icmp eq ptr %8, @slot0, !dbg !2941
  br i1 %9, label %17, label %16, !dbg !2942

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2929, metadata !DIExpression()), !dbg !2933
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2943
  %13 = load ptr, ptr %12, align 8, !dbg !2943, !tbaa !2939
  tail call void @free(ptr noundef %13) #40, !dbg !2944
  %14 = add nuw nsw i64 %11, 1, !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2929, metadata !DIExpression()), !dbg !2933
  %15 = icmp eq i64 %14, %5, !dbg !2934
  br i1 %15, label %6, label %10, !dbg !2936, !llvm.loop !2946

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2948
  store i64 256, ptr @slotvec0, align 8, !dbg !2950, !tbaa !2951
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2952, !tbaa !2939
  br label %17, !dbg !2953

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2954
  br i1 %18, label %20, label %19, !dbg !2956

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2957
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2959, !tbaa !869
  br label %20, !dbg !2960

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2961, !tbaa !938
  ret void, !dbg !2962
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2963 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2966, metadata !DIExpression()), !dbg !2967
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2968
  ret ptr %3, !dbg !2969
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2970 {
  %5 = alloca i64, align 8, !DIAssignID !2990
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2984, metadata !DIExpression(), metadata !2990, metadata ptr %5, metadata !DIExpression()), !dbg !2991
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2975, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2976, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2977, metadata !DIExpression()), !dbg !2992
  %6 = tail call ptr @__errno_location() #43, !dbg !2993
  %7 = load i32, ptr %6, align 4, !dbg !2993, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2978, metadata !DIExpression()), !dbg !2992
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2994, !tbaa !869
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2979, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2980, metadata !DIExpression()), !dbg !2992
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2995
  br i1 %9, label %10, label %11, !dbg !2995

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2997
  unreachable, !dbg !2997

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2998, !tbaa !938
  %13 = icmp sgt i32 %12, %0, !dbg !2999
  br i1 %13, label %32, label %14, !dbg !3000

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3001
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2991
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3002
  %16 = sext i32 %12 to i64, !dbg !3003
  store i64 %16, ptr %5, align 8, !dbg !3004, !tbaa !2923, !DIAssignID !3005
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2984, metadata !DIExpression(), metadata !3005, metadata ptr %5, metadata !DIExpression()), !dbg !2991
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3006
  %18 = add nuw nsw i32 %0, 1, !dbg !3007
  %19 = sub i32 %18, %12, !dbg !3008
  %20 = sext i32 %19 to i64, !dbg !3009
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3010
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2979, metadata !DIExpression()), !dbg !2992
  store ptr %21, ptr @slotvec, align 8, !dbg !3011, !tbaa !869
  br i1 %15, label %22, label %23, !dbg !3012

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3013, !tbaa.struct !3015
  br label %23, !dbg !3016

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3017, !tbaa !938
  %25 = sext i32 %24 to i64, !dbg !3018
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3018
  %27 = load i64, ptr %5, align 8, !dbg !3019, !tbaa !2923
  %28 = sub nsw i64 %27, %25, !dbg !3020
  %29 = shl i64 %28, 4, !dbg !3021
  call void @llvm.dbg.value(metadata ptr %26, metadata !2399, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 %29, metadata !2403, metadata !DIExpression()), !dbg !3022
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3024
  %30 = load i64, ptr %5, align 8, !dbg !3025, !tbaa !2923
  %31 = trunc i64 %30 to i32, !dbg !3025
  store i32 %31, ptr @nslots, align 4, !dbg !3026, !tbaa !938
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3027
  br label %32, !dbg !3028

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2979, metadata !DIExpression()), !dbg !2992
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3029
  %36 = load i64, ptr %35, align 8, !dbg !3030, !tbaa !2951
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2985, metadata !DIExpression()), !dbg !3031
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3032
  %38 = load ptr, ptr %37, align 8, !dbg !3032, !tbaa !2939
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2987, metadata !DIExpression()), !dbg !3031
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3033
  %40 = load i32, ptr %39, align 4, !dbg !3033, !tbaa !2235
  %41 = or i32 %40, 1, !dbg !3034
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2988, metadata !DIExpression()), !dbg !3031
  %42 = load i32, ptr %3, align 8, !dbg !3035, !tbaa !2185
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3036
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3037
  %45 = load ptr, ptr %44, align 8, !dbg !3037, !tbaa !2256
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3038
  %47 = load ptr, ptr %46, align 8, !dbg !3038, !tbaa !2259
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2989, metadata !DIExpression()), !dbg !3031
  %49 = icmp ugt i64 %36, %48, !dbg !3040
  br i1 %49, label %60, label %50, !dbg !3042

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2985, metadata !DIExpression()), !dbg !3031
  store i64 %51, ptr %35, align 8, !dbg !3045, !tbaa !2951
  %52 = icmp eq ptr %38, @slot0, !dbg !3046
  br i1 %52, label %54, label %53, !dbg !3048

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3049
  br label %54, !dbg !3049

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3050
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2987, metadata !DIExpression()), !dbg !3031
  store ptr %55, ptr %37, align 8, !dbg !3051, !tbaa !2939
  %56 = load i32, ptr %3, align 8, !dbg !3052, !tbaa !2185
  %57 = load ptr, ptr %44, align 8, !dbg !3053, !tbaa !2256
  %58 = load ptr, ptr %46, align 8, !dbg !3054, !tbaa !2259
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3055
  br label %60, !dbg !3056

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3031
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2987, metadata !DIExpression()), !dbg !3031
  store i32 %7, ptr %6, align 4, !dbg !3057, !tbaa !938
  ret ptr %61, !dbg !3058
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3059 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3063, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3064, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3065, metadata !DIExpression()), !dbg !3066
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3067
  ret ptr %4, !dbg !3068
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3069 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3071, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %0, metadata !2966, metadata !DIExpression()), !dbg !3073
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3075
  ret ptr %2, !dbg !3076
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3077 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !3065, metadata !DIExpression()), !dbg !3084
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3086
  ret ptr %3, !dbg !3087
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3088 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3096
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3095, metadata !DIExpression(), metadata !3096, metadata ptr %4, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3092, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3093, metadata !DIExpression()), !dbg !3097
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3097
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3098
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099), !dbg !3102
  call void @llvm.dbg.value(metadata i32 %1, metadata !3103, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3108, metadata !DIExpression()), !dbg !3111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3111, !alias.scope !3099, !DIAssignID !3112
  call void @llvm.dbg.assign(metadata i8 0, metadata !3095, metadata !DIExpression(), metadata !3112, metadata ptr %4, metadata !DIExpression()), !dbg !3097
  %5 = icmp eq i32 %1, 10, !dbg !3113
  br i1 %5, label %6, label %7, !dbg !3115

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3116, !noalias !3099
  unreachable, !dbg !3116

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3117, !tbaa !2185, !alias.scope !3099, !DIAssignID !3118
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3095, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3118, metadata ptr %4, metadata !DIExpression()), !dbg !3097
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3119
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3120
  ret ptr %8, !dbg !3121
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3122 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3131
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3130, metadata !DIExpression(), metadata !3131, metadata ptr %5, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3126, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3127, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3128, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3129, metadata !DIExpression()), !dbg !3132
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3134), !dbg !3137
  call void @llvm.dbg.value(metadata i32 %1, metadata !3103, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3108, metadata !DIExpression()), !dbg !3140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3140, !alias.scope !3134, !DIAssignID !3141
  call void @llvm.dbg.assign(metadata i8 0, metadata !3130, metadata !DIExpression(), metadata !3141, metadata ptr %5, metadata !DIExpression()), !dbg !3132
  %6 = icmp eq i32 %1, 10, !dbg !3142
  br i1 %6, label %7, label %8, !dbg !3143

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3144, !noalias !3134
  unreachable, !dbg !3144

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3145, !tbaa !2185, !alias.scope !3134, !DIAssignID !3146
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3130, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3146, metadata ptr %5, metadata !DIExpression()), !dbg !3132
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3147
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3148
  ret ptr %9, !dbg !3149
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3150 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3156
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3154, metadata !DIExpression()), !dbg !3157
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3095, metadata !DIExpression(), metadata !3156, metadata ptr %3, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 0, metadata !3092, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 %0, metadata !3093, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %1, metadata !3094, metadata !DIExpression()), !dbg !3158
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3161), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %0, metadata !3103, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3108, metadata !DIExpression()), !dbg !3167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3167, !alias.scope !3161, !DIAssignID !3168
  call void @llvm.dbg.assign(metadata i8 0, metadata !3095, metadata !DIExpression(), metadata !3168, metadata ptr %3, metadata !DIExpression()), !dbg !3158
  %4 = icmp eq i32 %0, 10, !dbg !3169
  br i1 %4, label %5, label %6, !dbg !3170

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3171, !noalias !3161
  unreachable, !dbg !3171

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3172, !tbaa !2185, !alias.scope !3161, !DIAssignID !3173
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3095, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3173, metadata ptr %3, metadata !DIExpression()), !dbg !3158
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3174
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3175
  ret ptr %7, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3177 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3184
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3181, metadata !DIExpression()), !dbg !3185
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3182, metadata !DIExpression()), !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3130, metadata !DIExpression(), metadata !3184, metadata ptr %4, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 %0, metadata !3127, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata ptr %1, metadata !3128, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %2, metadata !3129, metadata !DIExpression()), !dbg !3186
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %0, metadata !3103, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3108, metadata !DIExpression()), !dbg !3195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3195, !alias.scope !3189, !DIAssignID !3196
  call void @llvm.dbg.assign(metadata i8 0, metadata !3130, metadata !DIExpression(), metadata !3196, metadata ptr %4, metadata !DIExpression()), !dbg !3186
  %5 = icmp eq i32 %0, 10, !dbg !3197
  br i1 %5, label %6, label %7, !dbg !3198

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3199, !noalias !3189
  unreachable, !dbg !3199

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3200, !tbaa !2185, !alias.scope !3189, !DIAssignID !3201
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3130, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3201, metadata ptr %4, metadata !DIExpression()), !dbg !3186
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3202
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3203
  ret ptr %8, !dbg !3204
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3205 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3213
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3213, metadata ptr %4, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3211, metadata !DIExpression()), !dbg !3214
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3216, !tbaa.struct !3217, !DIAssignID !3218
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3218, metadata ptr %4, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2202, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2203, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2204, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2205, metadata !DIExpression()), !dbg !3219
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3221
  %6 = lshr i8 %2, 5, !dbg !3222
  %7 = zext nneg i8 %6 to i64, !dbg !3222
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3223
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2206, metadata !DIExpression()), !dbg !3219
  %9 = and i8 %2, 31, !dbg !3224
  %10 = zext nneg i8 %9 to i32, !dbg !3224
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2208, metadata !DIExpression()), !dbg !3219
  %11 = load i32, ptr %8, align 4, !dbg !3225, !tbaa !938
  %12 = lshr i32 %11, %10, !dbg !3226
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2209, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3219
  %13 = and i32 %12, 1, !dbg !3227
  %14 = xor i32 %13, 1, !dbg !3227
  %15 = shl nuw i32 %14, %10, !dbg !3228
  %16 = xor i32 %15, %11, !dbg !3229
  store i32 %16, ptr %8, align 4, !dbg !3229, !tbaa !938
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3230
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3231
  ret ptr %17, !dbg !3232
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3233 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3239
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3237, metadata !DIExpression()), !dbg !3240
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3238, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3239, metadata ptr %3, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 -1, metadata !3210, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8 %1, metadata !3211, metadata !DIExpression()), !dbg !3241
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3244, !tbaa.struct !3217, !DIAssignID !3245
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3245, metadata ptr %3, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %3, metadata !2202, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8 %1, metadata !2203, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 1, metadata !2204, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8 %1, metadata !2205, metadata !DIExpression()), !dbg !3246
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3248
  %5 = lshr i8 %1, 5, !dbg !3249
  %6 = zext nneg i8 %5 to i64, !dbg !3249
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %7, metadata !2206, metadata !DIExpression()), !dbg !3246
  %8 = and i8 %1, 31, !dbg !3251
  %9 = zext nneg i8 %8 to i32, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %9, metadata !2208, metadata !DIExpression()), !dbg !3246
  %10 = load i32, ptr %7, align 4, !dbg !3252, !tbaa !938
  %11 = lshr i32 %10, %9, !dbg !3253
  call void @llvm.dbg.value(metadata i32 %11, metadata !2209, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3246
  %12 = and i32 %11, 1, !dbg !3254
  %13 = xor i32 %12, 1, !dbg !3254
  %14 = shl nuw i32 %13, %9, !dbg !3255
  %15 = xor i32 %14, %10, !dbg !3256
  store i32 %15, ptr %7, align 4, !dbg !3256, !tbaa !938
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3257
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3258
  ret ptr %16, !dbg !3259
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3260 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3263
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %0, metadata !3237, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8 58, metadata !3238, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3263, metadata ptr %2, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 -1, metadata !3210, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 58, metadata !3211, metadata !DIExpression()), !dbg !3267
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3270, !tbaa.struct !3217, !DIAssignID !3271
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3271, metadata ptr %2, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata ptr %2, metadata !2202, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 58, metadata !2203, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 1, metadata !2204, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 58, metadata !2205, metadata !DIExpression()), !dbg !3272
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %3, metadata !2206, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 26, metadata !2208, metadata !DIExpression()), !dbg !3272
  %4 = load i32, ptr %3, align 4, !dbg !3275, !tbaa !938
  call void @llvm.dbg.value(metadata i32 %4, metadata !2209, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3272
  %5 = or i32 %4, 67108864, !dbg !3276
  store i32 %5, ptr %3, align 4, !dbg !3276, !tbaa !938
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3277
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3278
  ret ptr %6, !dbg !3279
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3280 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3284
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3282, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3283, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3284, metadata ptr %3, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 58, metadata !3211, metadata !DIExpression()), !dbg !3286
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3289, !tbaa.struct !3217, !DIAssignID !3290
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3290, metadata ptr %3, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %3, metadata !2202, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 58, metadata !2203, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 1, metadata !2204, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 58, metadata !2205, metadata !DIExpression()), !dbg !3291
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3293
  call void @llvm.dbg.value(metadata ptr %4, metadata !2206, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 26, metadata !2208, metadata !DIExpression()), !dbg !3291
  %5 = load i32, ptr %4, align 4, !dbg !3294, !tbaa !938
  call void @llvm.dbg.value(metadata i32 %5, metadata !2209, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3291
  %6 = or i32 %5, 67108864, !dbg !3295
  store i32 %6, ptr %4, align 4, !dbg !3295, !tbaa !938
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3296
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3297
  ret ptr %7, !dbg !3298
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3299 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3304, metadata !DIExpression(), metadata !3305, metadata ptr %4, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3108, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3307
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3302, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3303, metadata !DIExpression()), !dbg !3306
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3309
  call void @llvm.dbg.value(metadata i32 %1, metadata !3103, metadata !DIExpression()), !dbg !3310
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3310
  %5 = icmp eq i32 %1, 10, !dbg !3311
  br i1 %5, label %6, label %7, !dbg !3312

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3313, !noalias !3314
  unreachable, !dbg !3313

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3310
  store i32 %1, ptr %4, align 8, !dbg !3317, !tbaa.struct !3217, !DIAssignID !3318
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3317
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3304, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3318, metadata ptr %4, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3304, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3319, metadata ptr %8, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2202, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2203, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2204, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2205, metadata !DIExpression()), !dbg !3320
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3322
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2206, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2208, metadata !DIExpression()), !dbg !3320
  %10 = load i32, ptr %9, align 4, !dbg !3323, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2209, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3320
  %11 = or i32 %10, 67108864, !dbg !3324
  store i32 %11, ptr %9, align 4, !dbg !3324, !tbaa !938, !DIAssignID !3325
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3304, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3325, metadata ptr %9, metadata !DIExpression()), !dbg !3306
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3326
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3327
  ret ptr %12, !dbg !3328
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3329 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3337
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3333, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3334, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3336, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3337, metadata ptr %5, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %1, metadata !3345, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %2, metadata !3346, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %3, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 -1, metadata !3348, metadata !DIExpression()), !dbg !3349
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3352, !tbaa.struct !3217, !DIAssignID !3353
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3353, metadata ptr %5, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3354, metadata ptr undef, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %5, metadata !2242, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %1, metadata !2243, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %2, metadata !2244, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %5, metadata !2242, metadata !DIExpression()), !dbg !3355
  store i32 10, ptr %5, align 8, !dbg !3357, !tbaa !2185, !DIAssignID !3358
  call void @llvm.dbg.assign(metadata i32 10, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3358, metadata ptr %5, metadata !DIExpression()), !dbg !3349
  %6 = icmp ne ptr %1, null, !dbg !3359
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3360
  br i1 %8, label %10, label %9, !dbg !3360

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3361
  unreachable, !dbg !3361

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3362
  store ptr %1, ptr %11, align 8, !dbg !3363, !tbaa !2256, !DIAssignID !3364
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3364, metadata ptr %11, metadata !DIExpression()), !dbg !3349
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3365
  store ptr %2, ptr %12, align 8, !dbg !3366, !tbaa !2259, !DIAssignID !3367
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3367, metadata ptr %12, metadata !DIExpression()), !dbg !3349
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3368
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3369
  ret ptr %13, !dbg !3370
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3340 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3371
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3371, metadata ptr %6, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3345, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3346, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3347, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3348, metadata !DIExpression()), !dbg !3372
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3374, !tbaa.struct !3217, !DIAssignID !3375
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3375, metadata ptr %6, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3376, metadata ptr undef, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata ptr %6, metadata !2242, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %1, metadata !2243, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %2, metadata !2244, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %6, metadata !2242, metadata !DIExpression()), !dbg !3377
  store i32 10, ptr %6, align 8, !dbg !3379, !tbaa !2185, !DIAssignID !3380
  call void @llvm.dbg.assign(metadata i32 10, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3380, metadata ptr %6, metadata !DIExpression()), !dbg !3372
  %7 = icmp ne ptr %1, null, !dbg !3381
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3382
  br i1 %9, label %11, label %10, !dbg !3382

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3383
  unreachable, !dbg !3383

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3384
  store ptr %1, ptr %12, align 8, !dbg !3385, !tbaa !2256, !DIAssignID !3386
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3386, metadata ptr %12, metadata !DIExpression()), !dbg !3372
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3387
  store ptr %2, ptr %13, align 8, !dbg !3388, !tbaa !2259, !DIAssignID !3389
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3389, metadata ptr %13, metadata !DIExpression()), !dbg !3372
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3390
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3391
  ret ptr %14, !dbg !3392
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3393 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3400
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3397, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3398, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3399, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 0, metadata !3333, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %0, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %1, metadata !3335, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %2, metadata !3336, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3400, metadata ptr %4, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %0, metadata !3345, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %1, metadata !3346, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %2, metadata !3347, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 -1, metadata !3348, metadata !DIExpression()), !dbg !3404
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3407, !tbaa.struct !3217, !DIAssignID !3408
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3408, metadata ptr %4, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3409, metadata ptr undef, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %4, metadata !2242, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %0, metadata !2243, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %1, metadata !2244, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %4, metadata !2242, metadata !DIExpression()), !dbg !3410
  store i32 10, ptr %4, align 8, !dbg !3412, !tbaa !2185, !DIAssignID !3413
  call void @llvm.dbg.assign(metadata i32 10, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3413, metadata ptr %4, metadata !DIExpression()), !dbg !3404
  %5 = icmp ne ptr %0, null, !dbg !3414
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3415
  br i1 %7, label %9, label %8, !dbg !3415

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3416
  unreachable, !dbg !3416

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3417
  store ptr %0, ptr %10, align 8, !dbg !3418, !tbaa !2256, !DIAssignID !3419
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3419, metadata ptr %10, metadata !DIExpression()), !dbg !3404
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3420
  store ptr %1, ptr %11, align 8, !dbg !3421, !tbaa !2259, !DIAssignID !3422
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3422, metadata ptr %11, metadata !DIExpression()), !dbg !3404
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3423
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3424
  ret ptr %12, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3426 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3434
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3431, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3432, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3433, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3434, metadata ptr %5, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %0, metadata !3345, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %1, metadata !3346, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %2, metadata !3347, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %3, metadata !3348, metadata !DIExpression()), !dbg !3436
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3439, !tbaa.struct !3217, !DIAssignID !3440
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3440, metadata ptr %5, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3441, metadata ptr undef, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %5, metadata !2242, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %0, metadata !2243, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %1, metadata !2244, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %5, metadata !2242, metadata !DIExpression()), !dbg !3442
  store i32 10, ptr %5, align 8, !dbg !3444, !tbaa !2185, !DIAssignID !3445
  call void @llvm.dbg.assign(metadata i32 10, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3445, metadata ptr %5, metadata !DIExpression()), !dbg !3436
  %6 = icmp ne ptr %0, null, !dbg !3446
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3447
  br i1 %8, label %10, label %9, !dbg !3447

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3448
  unreachable, !dbg !3448

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3449
  store ptr %0, ptr %11, align 8, !dbg !3450, !tbaa !2256, !DIAssignID !3451
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3451, metadata ptr %11, metadata !DIExpression()), !dbg !3436
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3452
  store ptr %1, ptr %12, align 8, !dbg !3453, !tbaa !2259, !DIAssignID !3454
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3454, metadata ptr %12, metadata !DIExpression()), !dbg !3436
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3455
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3456
  ret ptr %13, !dbg !3457
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3458 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3462, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3463, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3464, metadata !DIExpression()), !dbg !3465
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3466
  ret ptr %4, !dbg !3467
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3468 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3474
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %1, metadata !3464, metadata !DIExpression()), !dbg !3475
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3477
  ret ptr %3, !dbg !3478
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3479 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3483, metadata !DIExpression()), !dbg !3485
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %0, metadata !3462, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata ptr %1, metadata !3463, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 -1, metadata !3464, metadata !DIExpression()), !dbg !3486
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3488
  ret ptr %3, !dbg !3489
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3490 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3483, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %0, metadata !3484, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i64 -1, metadata !3464, metadata !DIExpression()), !dbg !3498
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3500
  ret ptr %2, !dbg !3501
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname_len(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !640 {
  %6 = alloca i32, align 4, !DIAssignID !3502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !656, metadata !DIExpression(), metadata !3502, metadata ptr %6, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !654, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !655, metadata !DIExpression()), !dbg !3503
  store i32 %2, ptr %6, align 4, !tbaa !938, !DIAssignID !3504
  call void @llvm.dbg.assign(metadata i32 %2, metadata !656, metadata !DIExpression(), metadata !3504, metadata ptr %6, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !657, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !658, metadata !DIExpression()), !dbg !3503
  %7 = sext i32 %3 to i64, !dbg !3505
  %8 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %7, !dbg !3505
  %9 = load ptr, ptr %8, align 8, !dbg !3505, !tbaa !869
  %10 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %9, i64 noundef %4), !dbg !3506
  ret i32 %10, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3508 {
  %6 = alloca %struct.timespec, align 8, !DIAssignID !3536
  %7 = alloca i64, align 8, !DIAssignID !3537
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3519, metadata !DIExpression(), metadata !3537, metadata ptr %7, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3513, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3514, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3515, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3516, metadata !DIExpression()), !dbg !3538
  %8 = tail call ptr @__errno_location() #43, !dbg !3539
  %9 = load i32, ptr %8, align 4, !dbg !3539, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3517, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 238328, metadata !3518, metadata !DIExpression()), !dbg !3538
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !3540
  store i64 0, ptr %7, align 8, !dbg !3541, !tbaa !2923, !DIAssignID !3542
  call void @llvm.dbg.assign(metadata i64 0, metadata !3519, metadata !DIExpression(), metadata !3542, metadata ptr %7, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3524, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 -821457390474406912, metadata !3525, metadata !DIExpression()), !dbg !3538
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3527, metadata !DIExpression()), !dbg !3538
  %11 = sext i32 %1 to i64, !dbg !3544
  %12 = add i64 %11, %4, !dbg !3546
  %13 = icmp ult i64 %10, %12, !dbg !3547
  br i1 %13, label %78, label %14, !dbg !3548

14:                                               ; preds = %5
  %15 = sub i64 %10, %12, !dbg !3549
  %16 = getelementptr inbounds i8, ptr %0, i64 %15, !dbg !3550
  %17 = tail call i64 @strspn(ptr noundef %16, ptr noundef nonnull @.str.99) #41, !dbg !3551
  %18 = icmp ult i64 %17, %4, !dbg !3552
  br i1 %18, label %78, label %19, !dbg !3553

19:                                               ; preds = %14
  %20 = icmp eq i64 %4, 0
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3529, metadata !DIExpression()), !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !3523, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3524, metadata !DIExpression()), !dbg !3538
  %21 = getelementptr inbounds %struct.timespec, ptr %6, i64 0, i32 1
  br label %25, !dbg !3555

22:                                               ; preds = %75
  %23 = add nuw nsw i32 %26, 1, !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !3529, metadata !DIExpression()), !dbg !3554
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !3529, metadata !DIExpression()), !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3523, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !3524, metadata !DIExpression()), !dbg !3538
  %24 = icmp eq i32 %23, 238328, !dbg !3557
  br i1 %24, label %78, label %25, !dbg !3555, !llvm.loop !3558

25:                                               ; preds = %19, %22
  %26 = phi i32 [ 0, %19 ], [ %23, %22 ]
  %27 = phi i64 [ undef, %19 ], [ %31, %22 ]
  %28 = phi i32 [ 0, %19 ], [ %30, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3529, metadata !DIExpression()), !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3523, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3524, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3531, metadata !DIExpression()), !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3523, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3524, metadata !DIExpression()), !dbg !3538
  br i1 %20, label %29, label %34, !dbg !3561

29:                                               ; preds = %64, %25
  %30 = phi i32 [ %28, %25 ], [ %72, %64 ], !dbg !3538
  %31 = phi i64 [ %27, %25 ], [ %71, %64 ]
  %32 = call i32 %3(ptr noundef %0, ptr noundef %2) #40, !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !3535, metadata !DIExpression()), !dbg !3563
  %33 = icmp sgt i32 %32, -1, !dbg !3564
  br i1 %33, label %78, label %75, !dbg !3566

34:                                               ; preds = %25, %64
  %35 = phi i64 [ %73, %64 ], [ 0, %25 ]
  %36 = phi i64 [ %71, %64 ], [ %27, %25 ]
  %37 = phi i32 [ %72, %64 ], [ %28, %25 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3531, metadata !DIExpression()), !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3523, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !3524, metadata !DIExpression()), !dbg !3538
  %38 = icmp eq i32 %37, 0, !dbg !3567
  br i1 %38, label %39, label %64, !dbg !3571

39:                                               ; preds = %34
  %40 = load i64, ptr %7, align 8, !dbg !3572, !tbaa !2923
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3574, metadata !DIExpression(), metadata !3536, metadata ptr %6, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %7, metadata !3580, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %40, metadata !3581, metadata !DIExpression()), !dbg !3590
  %41 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #40, !dbg !3592
  %42 = icmp eq i64 %41, 8, !dbg !3594
  br i1 %42, label %61, label %46, !dbg !3595

43:                                               ; preds = %61
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3574, metadata !DIExpression(), metadata !3536, metadata ptr %6, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %7, metadata !3580, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %62, metadata !3581, metadata !DIExpression()), !dbg !3590
  %44 = call i64 @getrandom(ptr noundef nonnull %7, i64 noundef 8, i32 noundef 1) #40, !dbg !3592
  %45 = icmp eq i64 %44, 8, !dbg !3594
  br i1 %45, label %61, label %46, !dbg !3595, !llvm.loop !3596

46:                                               ; preds = %43, %39
  %47 = phi i64 [ %40, %39 ], [ %62, %43 ], !dbg !3572
  call void @llvm.dbg.value(metadata i64 %47, metadata !3582, metadata !DIExpression()), !dbg !3590
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #40, !dbg !3599
  %48 = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %6) #40, !dbg !3600
  %49 = load i64, ptr %6, align 8, !dbg !3601, !tbaa !3602
  call void @llvm.dbg.value(metadata i64 %47, metadata !3604, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %49, metadata !3609, metadata !DIExpression()), !dbg !3610
  %50 = mul i64 %47, 2862933555777941757, !dbg !3612
  %51 = add i64 %50, 3037000493, !dbg !3613
  %52 = xor i64 %49, %51, !dbg !3614
  call void @llvm.dbg.value(metadata i64 %52, metadata !3582, metadata !DIExpression()), !dbg !3590
  %53 = load i64, ptr %21, align 8, !dbg !3615, !tbaa !3616
  call void @llvm.dbg.value(metadata i64 %52, metadata !3604, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %53, metadata !3609, metadata !DIExpression()), !dbg !3617
  %54 = mul i64 %52, 2862933555777941757, !dbg !3619
  %55 = add i64 %54, 3037000493, !dbg !3620
  %56 = xor i64 %55, %53, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %56, metadata !3582, metadata !DIExpression()), !dbg !3590
  %57 = call i64 @clock() #40, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %56, metadata !3604, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %57, metadata !3609, metadata !DIExpression()), !dbg !3623
  %58 = mul i64 %56, 2862933555777941757, !dbg !3625
  %59 = add i64 %58, 3037000493, !dbg !3626
  %60 = xor i64 %59, %57, !dbg !3627
  store i64 %60, ptr %7, align 8, !dbg !3628, !tbaa !2923, !DIAssignID !3629
  call void @llvm.dbg.assign(metadata i64 %60, metadata !3519, metadata !DIExpression(), metadata !3629, metadata ptr %7, metadata !DIExpression()), !dbg !3538
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #40, !dbg !3630
  br label %64, !dbg !3597

61:                                               ; preds = %39, %43
  %62 = load i64, ptr %7, align 8, !dbg !3631
  %63 = icmp ugt i64 %62, -821457390474406913, !dbg !3631
  br i1 %63, label %43, label %64, !dbg !3597, !llvm.loop !3596

64:                                               ; preds = %61, %46, %34
  %65 = phi i32 [ %37, %34 ], [ 10, %46 ], [ 10, %61 ], !dbg !3538
  %66 = phi i64 [ %36, %34 ], [ %60, %46 ], [ %62, %61 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !3523, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !3524, metadata !DIExpression()), !dbg !3538
  %67 = urem i64 %66, 62, !dbg !3632
  %68 = getelementptr inbounds [63 x i8], ptr @letters, i64 0, i64 %67, !dbg !3633
  %69 = load i8, ptr %68, align 1, !dbg !3633, !tbaa !947
  %70 = getelementptr inbounds i8, ptr %16, i64 %35, !dbg !3634
  store i8 %69, ptr %70, align 1, !dbg !3635, !tbaa !947
  %71 = udiv i64 %66, 62, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !3523, metadata !DIExpression()), !dbg !3538
  %72 = add nsw i32 %65, -1, !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !3524, metadata !DIExpression()), !dbg !3538
  %73 = add nuw i64 %35, 1, !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !3531, metadata !DIExpression()), !dbg !3560
  %74 = icmp eq i64 %73, %4, !dbg !3639
  br i1 %74, label %29, label %34, !dbg !3561, !llvm.loop !3640

75:                                               ; preds = %29
  %76 = load i32, ptr %8, align 4, !dbg !3642, !tbaa !938
  %77 = icmp eq i32 %76, 17, !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3529, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3554
  br i1 %77, label %22, label %81

78:                                               ; preds = %22, %29, %5, %14
  %79 = phi i32 [ 22, %14 ], [ 22, %5 ], [ %9, %29 ], [ 17, %22 ]
  %80 = phi i32 [ -1, %14 ], [ -1, %5 ], [ %32, %29 ], [ -1, %22 ]
  store i32 %79, ptr %8, align 4, !dbg !3538, !tbaa !938
  br label %81, !dbg !3645

81:                                               ; preds = %75, %78
  %82 = phi i32 [ %80, %78 ], [ -1, %75 ], !dbg !3538
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !3645
  ret i32 %82, !dbg !3645
}

declare !dbg !3646 i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3652 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3660 i64 @clock() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @try_file(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3668, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3669, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3670, metadata !DIExpression()), !dbg !3671
  %3 = load i32, ptr %1, align 4, !dbg !3672, !tbaa !938
  %4 = and i32 %3, -196, !dbg !3673
  %5 = or disjoint i32 %4, 194, !dbg !3674
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %5, i32 noundef 384) #40, !dbg !3675
  ret i32 %6, !dbg !3676
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @try_dir(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3679, metadata !DIExpression()), !dbg !3681
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3680, metadata !DIExpression()), !dbg !3681
  %3 = tail call i32 @mkdir(ptr noundef %0, i32 noundef 448) #40, !dbg !3682
  ret i32 %3, !dbg !3683
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_nocreate(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #20 !dbg !3684 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !3716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3688, metadata !DIExpression(), metadata !3716, metadata ptr %3, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3686, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3687, metadata !DIExpression()), !dbg !3717
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #40, !dbg !3718
  %4 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #40, !dbg !3719
  %5 = icmp eq i32 %4, 0, !dbg !3721
  %6 = tail call ptr @__errno_location() #43, !dbg !3722
  br i1 %5, label %10, label %7, !dbg !3723

7:                                                ; preds = %2
  %8 = load i32, ptr %6, align 4, !dbg !3724, !tbaa !938
  %9 = icmp eq i32 %8, 75, !dbg !3725
  br i1 %9, label %10, label %11, !dbg !3726

10:                                               ; preds = %2, %7
  store i32 17, ptr %6, align 4, !dbg !3727, !tbaa !938
  br label %11, !dbg !3727

11:                                               ; preds = %10, %7
  %12 = load i32, ptr %6, align 4, !dbg !3728, !tbaa !938
  %13 = icmp ne i32 %12, 2, !dbg !3729
  %14 = sext i1 %13 to i32, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #40, !dbg !3730
  ret i32 %14, !dbg !3731
}

; Function Attrs: nofree nounwind
declare !dbg !3732 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3738 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3741 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #29

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3744 {
  %5 = alloca i32, align 4, !DIAssignID !3752
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3748, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3749, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3750, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3751, metadata !DIExpression()), !dbg !3753
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  call void @llvm.dbg.assign(metadata i1 undef, metadata !656, metadata !DIExpression(), metadata !3752, metadata ptr %5, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %0, metadata !654, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 %1, metadata !655, metadata !DIExpression()), !dbg !3754
  store i32 %2, ptr %5, align 4, !tbaa !938, !DIAssignID !3756
  call void @llvm.dbg.assign(metadata i32 %2, metadata !656, metadata !DIExpression(), metadata !3756, metadata ptr %5, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 %3, metadata !657, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 6, metadata !658, metadata !DIExpression()), !dbg !3754
  %6 = sext i32 %3 to i64, !dbg !3757
  %7 = getelementptr inbounds [3 x ptr], ptr @gen_tempname_len.tryfunc, i64 0, i64 %6, !dbg !3757
  %8 = load ptr, ptr %7, align 8, !dbg !3757, !tbaa !869
  %9 = call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %8, i64 noundef 6), !dbg !3758
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5), !dbg !3759
  ret i32 %9, !dbg !3760
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #10 !dbg !3761 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3769
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3766, metadata !DIExpression()), !dbg !3769
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3767, metadata !DIExpression()), !dbg !3769
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3768, metadata !DIExpression()), !dbg !3769
  %5 = tail call i32 @try_tempname_len(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 6), !dbg !3770
  ret i32 %5, !dbg !3771
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3772 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3811, metadata !DIExpression()), !dbg !3817
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3812, metadata !DIExpression()), !dbg !3817
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3813, metadata !DIExpression()), !dbg !3817
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3814, metadata !DIExpression()), !dbg !3817
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3815, metadata !DIExpression()), !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3816, metadata !DIExpression()), !dbg !3817
  %7 = icmp eq ptr %1, null, !dbg !3818
  br i1 %7, label %10, label %8, !dbg !3820

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3821
  br label %12, !dbg !3821

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #40, !dbg !3822
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #40, !dbg !3823
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3823
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3824
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #40, !dbg !3825
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #40, !dbg !3825
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3826
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
  ], !dbg !3827

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #40, !dbg !3828
  %21 = load ptr, ptr %4, align 8, !dbg !3828, !tbaa !869
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3828
  br label %147, !dbg !3830

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #40, !dbg !3831
  %25 = load ptr, ptr %4, align 8, !dbg !3831, !tbaa !869
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3831
  %27 = load ptr, ptr %26, align 8, !dbg !3831, !tbaa !869
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3831
  br label %147, !dbg !3832

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #40, !dbg !3833
  %31 = load ptr, ptr %4, align 8, !dbg !3833, !tbaa !869
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3833
  %33 = load ptr, ptr %32, align 8, !dbg !3833, !tbaa !869
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3833
  %35 = load ptr, ptr %34, align 8, !dbg !3833, !tbaa !869
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3833
  br label %147, !dbg !3834

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #40, !dbg !3835
  %39 = load ptr, ptr %4, align 8, !dbg !3835, !tbaa !869
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3835
  %41 = load ptr, ptr %40, align 8, !dbg !3835, !tbaa !869
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3835
  %43 = load ptr, ptr %42, align 8, !dbg !3835, !tbaa !869
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3835
  %45 = load ptr, ptr %44, align 8, !dbg !3835, !tbaa !869
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3835
  br label %147, !dbg !3836

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #40, !dbg !3837
  %49 = load ptr, ptr %4, align 8, !dbg !3837, !tbaa !869
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3837
  %51 = load ptr, ptr %50, align 8, !dbg !3837, !tbaa !869
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3837
  %53 = load ptr, ptr %52, align 8, !dbg !3837, !tbaa !869
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3837
  %55 = load ptr, ptr %54, align 8, !dbg !3837, !tbaa !869
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3837
  %57 = load ptr, ptr %56, align 8, !dbg !3837, !tbaa !869
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3837
  br label %147, !dbg !3838

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #40, !dbg !3839
  %61 = load ptr, ptr %4, align 8, !dbg !3839, !tbaa !869
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3839
  %63 = load ptr, ptr %62, align 8, !dbg !3839, !tbaa !869
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3839
  %65 = load ptr, ptr %64, align 8, !dbg !3839, !tbaa !869
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3839
  %67 = load ptr, ptr %66, align 8, !dbg !3839, !tbaa !869
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3839
  %69 = load ptr, ptr %68, align 8, !dbg !3839, !tbaa !869
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3839
  %71 = load ptr, ptr %70, align 8, !dbg !3839, !tbaa !869
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3839
  br label %147, !dbg !3840

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #40, !dbg !3841
  %75 = load ptr, ptr %4, align 8, !dbg !3841, !tbaa !869
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3841
  %77 = load ptr, ptr %76, align 8, !dbg !3841, !tbaa !869
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3841
  %79 = load ptr, ptr %78, align 8, !dbg !3841, !tbaa !869
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3841
  %81 = load ptr, ptr %80, align 8, !dbg !3841, !tbaa !869
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3841
  %83 = load ptr, ptr %82, align 8, !dbg !3841, !tbaa !869
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3841
  %85 = load ptr, ptr %84, align 8, !dbg !3841, !tbaa !869
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3841
  %87 = load ptr, ptr %86, align 8, !dbg !3841, !tbaa !869
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3841
  br label %147, !dbg !3842

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #40, !dbg !3843
  %91 = load ptr, ptr %4, align 8, !dbg !3843, !tbaa !869
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3843
  %93 = load ptr, ptr %92, align 8, !dbg !3843, !tbaa !869
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3843
  %95 = load ptr, ptr %94, align 8, !dbg !3843, !tbaa !869
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3843
  %97 = load ptr, ptr %96, align 8, !dbg !3843, !tbaa !869
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3843
  %99 = load ptr, ptr %98, align 8, !dbg !3843, !tbaa !869
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3843
  %101 = load ptr, ptr %100, align 8, !dbg !3843, !tbaa !869
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3843
  %103 = load ptr, ptr %102, align 8, !dbg !3843, !tbaa !869
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3843
  %105 = load ptr, ptr %104, align 8, !dbg !3843, !tbaa !869
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3843
  br label %147, !dbg !3844

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #40, !dbg !3845
  %109 = load ptr, ptr %4, align 8, !dbg !3845, !tbaa !869
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3845
  %111 = load ptr, ptr %110, align 8, !dbg !3845, !tbaa !869
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3845
  %113 = load ptr, ptr %112, align 8, !dbg !3845, !tbaa !869
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3845
  %115 = load ptr, ptr %114, align 8, !dbg !3845, !tbaa !869
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3845
  %117 = load ptr, ptr %116, align 8, !dbg !3845, !tbaa !869
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3845
  %119 = load ptr, ptr %118, align 8, !dbg !3845, !tbaa !869
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3845
  %121 = load ptr, ptr %120, align 8, !dbg !3845, !tbaa !869
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3845
  %123 = load ptr, ptr %122, align 8, !dbg !3845, !tbaa !869
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3845
  %125 = load ptr, ptr %124, align 8, !dbg !3845, !tbaa !869
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3845
  br label %147, !dbg !3846

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #40, !dbg !3847
  %129 = load ptr, ptr %4, align 8, !dbg !3847, !tbaa !869
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3847
  %131 = load ptr, ptr %130, align 8, !dbg !3847, !tbaa !869
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3847
  %133 = load ptr, ptr %132, align 8, !dbg !3847, !tbaa !869
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3847
  %135 = load ptr, ptr %134, align 8, !dbg !3847, !tbaa !869
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3847
  %137 = load ptr, ptr %136, align 8, !dbg !3847, !tbaa !869
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3847
  %139 = load ptr, ptr %138, align 8, !dbg !3847, !tbaa !869
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3847
  %141 = load ptr, ptr %140, align 8, !dbg !3847, !tbaa !869
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3847
  %143 = load ptr, ptr %142, align 8, !dbg !3847, !tbaa !869
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3847
  %145 = load ptr, ptr %144, align 8, !dbg !3847, !tbaa !869
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3847
  br label %147, !dbg !3848

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3850 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3855, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3856, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3857, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3858, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3859, metadata !DIExpression()), !dbg !3860
  br label %6, !dbg !3861

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3863
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3859, metadata !DIExpression()), !dbg !3860
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3864
  %9 = load ptr, ptr %8, align 8, !dbg !3864, !tbaa !869
  %10 = icmp eq ptr %9, null, !dbg !3866
  %11 = add i64 %7, 1, !dbg !3867
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3859, metadata !DIExpression()), !dbg !3860
  br i1 %10, label %12, label %6, !dbg !3866, !llvm.loop !3868

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3870
  ret void, !dbg !3871
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3872 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3891
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3889, metadata !DIExpression(), metadata !3891, metadata ptr %6, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3883, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3884, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3885, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3886, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3887, metadata !DIExpression()), !dbg !3892
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3893
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3888, metadata !DIExpression()), !dbg !3892
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3888, metadata !DIExpression()), !dbg !3892
  %10 = icmp ult i32 %9, 41, !dbg !3894
  br i1 %10, label %11, label %16, !dbg !3894

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3894
  %13 = zext nneg i32 %9 to i64, !dbg !3894
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3894
  %15 = add nuw nsw i32 %9, 8, !dbg !3894
  store i32 %15, ptr %4, align 8, !dbg !3894
  br label %19, !dbg !3894

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3894
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3894
  store ptr %18, ptr %7, align 8, !dbg !3894
  br label %19, !dbg !3894

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3894
  %22 = load ptr, ptr %21, align 8, !dbg !3894
  store ptr %22, ptr %6, align 16, !dbg !3897, !tbaa !869
  %23 = icmp eq ptr %22, null, !dbg !3898
  br i1 %23, label %128, label %24, !dbg !3899

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3888, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3888, metadata !DIExpression()), !dbg !3892
  %25 = icmp ult i32 %20, 41, !dbg !3894
  br i1 %25, label %29, label %26, !dbg !3894

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3894
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3894
  store ptr %28, ptr %7, align 8, !dbg !3894
  br label %34, !dbg !3894

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3894
  %31 = zext nneg i32 %20 to i64, !dbg !3894
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3894
  %33 = add nuw nsw i32 %20, 8, !dbg !3894
  store i32 %33, ptr %4, align 8, !dbg !3894
  br label %34, !dbg !3894

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3894
  %37 = load ptr, ptr %36, align 8, !dbg !3894
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3900
  store ptr %37, ptr %38, align 8, !dbg !3897, !tbaa !869
  %39 = icmp eq ptr %37, null, !dbg !3898
  br i1 %39, label %128, label %40, !dbg !3899

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3888, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3888, metadata !DIExpression()), !dbg !3892
  %41 = icmp ult i32 %35, 41, !dbg !3894
  br i1 %41, label %45, label %42, !dbg !3894

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3894
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3894
  store ptr %44, ptr %7, align 8, !dbg !3894
  br label %50, !dbg !3894

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3894
  %47 = zext nneg i32 %35 to i64, !dbg !3894
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3894
  %49 = add nuw nsw i32 %35, 8, !dbg !3894
  store i32 %49, ptr %4, align 8, !dbg !3894
  br label %50, !dbg !3894

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3894
  %53 = load ptr, ptr %52, align 8, !dbg !3894
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3900
  store ptr %53, ptr %54, align 16, !dbg !3897, !tbaa !869
  %55 = icmp eq ptr %53, null, !dbg !3898
  br i1 %55, label %128, label %56, !dbg !3899

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3888, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3888, metadata !DIExpression()), !dbg !3892
  %57 = icmp ult i32 %51, 41, !dbg !3894
  br i1 %57, label %61, label %58, !dbg !3894

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3894
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3894
  store ptr %60, ptr %7, align 8, !dbg !3894
  br label %66, !dbg !3894

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3894
  %63 = zext nneg i32 %51 to i64, !dbg !3894
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3894
  %65 = add nuw nsw i32 %51, 8, !dbg !3894
  store i32 %65, ptr %4, align 8, !dbg !3894
  br label %66, !dbg !3894

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3894
  %69 = load ptr, ptr %68, align 8, !dbg !3894
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3900
  store ptr %69, ptr %70, align 8, !dbg !3897, !tbaa !869
  %71 = icmp eq ptr %69, null, !dbg !3898
  br i1 %71, label %128, label %72, !dbg !3899

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3888, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3888, metadata !DIExpression()), !dbg !3892
  %73 = icmp ult i32 %67, 41, !dbg !3894
  br i1 %73, label %77, label %74, !dbg !3894

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3894
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3894
  store ptr %76, ptr %7, align 8, !dbg !3894
  br label %82, !dbg !3894

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3894
  %79 = zext nneg i32 %67 to i64, !dbg !3894
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3894
  %81 = add nuw nsw i32 %67, 8, !dbg !3894
  store i32 %81, ptr %4, align 8, !dbg !3894
  br label %82, !dbg !3894

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3894
  %85 = load ptr, ptr %84, align 8, !dbg !3894
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3900
  store ptr %85, ptr %86, align 16, !dbg !3897, !tbaa !869
  %87 = icmp eq ptr %85, null, !dbg !3898
  br i1 %87, label %128, label %88, !dbg !3899

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3888, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3888, metadata !DIExpression()), !dbg !3892
  %89 = icmp ult i32 %83, 41, !dbg !3894
  br i1 %89, label %93, label %90, !dbg !3894

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3894
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3894
  store ptr %92, ptr %7, align 8, !dbg !3894
  br label %98, !dbg !3894

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3894
  %95 = zext nneg i32 %83 to i64, !dbg !3894
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3894
  %97 = add nuw nsw i32 %83, 8, !dbg !3894
  store i32 %97, ptr %4, align 8, !dbg !3894
  br label %98, !dbg !3894

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3894
  %100 = load ptr, ptr %99, align 8, !dbg !3894
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3900
  store ptr %100, ptr %101, align 8, !dbg !3897, !tbaa !869
  %102 = icmp eq ptr %100, null, !dbg !3898
  br i1 %102, label %128, label %103, !dbg !3899

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3888, metadata !DIExpression()), !dbg !3892
  %104 = load ptr, ptr %7, align 8, !dbg !3894
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3894
  store ptr %105, ptr %7, align 8, !dbg !3894
  %106 = load ptr, ptr %104, align 8, !dbg !3894
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3900
  store ptr %106, ptr %107, align 16, !dbg !3897, !tbaa !869
  %108 = icmp eq ptr %106, null, !dbg !3898
  br i1 %108, label %128, label %109, !dbg !3899

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3888, metadata !DIExpression()), !dbg !3892
  %110 = load ptr, ptr %7, align 8, !dbg !3894
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3894
  store ptr %111, ptr %7, align 8, !dbg !3894
  %112 = load ptr, ptr %110, align 8, !dbg !3894
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3900
  store ptr %112, ptr %113, align 8, !dbg !3897, !tbaa !869
  %114 = icmp eq ptr %112, null, !dbg !3898
  br i1 %114, label %128, label %115, !dbg !3899

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3888, metadata !DIExpression()), !dbg !3892
  %116 = load ptr, ptr %7, align 8, !dbg !3894
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3894
  store ptr %117, ptr %7, align 8, !dbg !3894
  %118 = load ptr, ptr %116, align 8, !dbg !3894
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3900
  store ptr %118, ptr %119, align 16, !dbg !3897, !tbaa !869
  %120 = icmp eq ptr %118, null, !dbg !3898
  br i1 %120, label %128, label %121, !dbg !3899

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3888, metadata !DIExpression()), !dbg !3892
  %122 = load ptr, ptr %7, align 8, !dbg !3894
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3894
  store ptr %123, ptr %7, align 8, !dbg !3894
  %124 = load ptr, ptr %122, align 8, !dbg !3894
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3900
  store ptr %124, ptr %125, align 8, !dbg !3897, !tbaa !869
  %126 = icmp eq ptr %124, null, !dbg !3898
  %127 = select i1 %126, i64 9, i64 10, !dbg !3899
  br label %128, !dbg !3899

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3901
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3902
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3903
  ret void, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3904 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3917
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3912, metadata !DIExpression(), metadata !3917, metadata ptr %5, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3909, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3910, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3911, metadata !DIExpression()), !dbg !3918
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !3919
  call void @llvm.va_start(ptr nonnull %5), !dbg !3920
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3921
  call void @llvm.va_end(ptr nonnull %5), !dbg !3922
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !3923
  ret void, !dbg !3923
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3924 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3925, !tbaa !869
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3925
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #40, !dbg !3926
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #40, !dbg !3926
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #40, !dbg !3927
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #40, !dbg !3927
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #40, !dbg !3928
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #40, !dbg !3928
  ret void, !dbg !3929
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3930 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3935, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i64 %2, metadata !3943, metadata !DIExpression()), !dbg !3944
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3946
  call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !3952
  %5 = icmp eq ptr %4, null, !dbg !3954
  br i1 %5, label %6, label %7, !dbg !3956

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3957
  unreachable, !dbg !3957

7:                                                ; preds = %3
  ret ptr %4, !dbg !3958
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3940 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !3959
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()), !dbg !3959
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3943, metadata !DIExpression()), !dbg !3959
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3960
  call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !3961
  %5 = icmp eq ptr %4, null, !dbg !3963
  br i1 %5, label %6, label %7, !dbg !3964

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3965
  unreachable, !dbg !3965

7:                                                ; preds = %3
  ret ptr %4, !dbg !3966
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3967 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()), !dbg !3970
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3971
  call void @llvm.dbg.value(metadata ptr %2, metadata !3947, metadata !DIExpression()), !dbg !3972
  %3 = icmp eq ptr %2, null, !dbg !3974
  br i1 %3, label %4, label %5, !dbg !3975

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3976
  unreachable, !dbg !3976

5:                                                ; preds = %1
  ret ptr %2, !dbg !3977
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3978 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %0, metadata !3984, metadata !DIExpression()), !dbg !3988
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3990
  call void @llvm.dbg.value(metadata ptr %2, metadata !3947, metadata !DIExpression()), !dbg !3991
  %3 = icmp eq ptr %2, null, !dbg !3993
  br i1 %3, label %4, label %5, !dbg !3994

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3995
  unreachable, !dbg !3995

5:                                                ; preds = %1
  ret ptr %2, !dbg !3996
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3997 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4001, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()), !dbg !4003
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4005
  call void @llvm.dbg.value(metadata ptr %2, metadata !3947, metadata !DIExpression()), !dbg !4006
  %3 = icmp eq ptr %2, null, !dbg !4008
  br i1 %3, label %4, label %5, !dbg !4009

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4010
  unreachable, !dbg !4010

5:                                                ; preds = %1
  ret ptr %2, !dbg !4011
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4012 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4018
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %0, metadata !4019, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4026
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4027
  call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !4028
  %5 = icmp eq ptr %4, null, !dbg !4030
  br i1 %5, label %6, label %7, !dbg !4031

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4032
  unreachable, !dbg !4032

7:                                                ; preds = %2
  ret ptr %4, !dbg !4033
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4034 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4035 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 %1, metadata !4045, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %0, metadata !4019, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4048
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4050
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4051
  call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !4052
  %5 = icmp eq ptr %4, null, !dbg !4054
  br i1 %5, label %6, label %7, !dbg !4055

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4056
  unreachable, !dbg !4056

7:                                                ; preds = %2
  ret ptr %4, !dbg !4057
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4058 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4062, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4063, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4064, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4071
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4073
  call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !4074
  %5 = icmp eq ptr %4, null, !dbg !4076
  br i1 %5, label %6, label %7, !dbg !4077

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4078
  unreachable, !dbg !4078

7:                                                ; preds = %3
  ret ptr %4, !dbg !4079
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4080 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4084, metadata !DIExpression()), !dbg !4086
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4085, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata ptr null, metadata !3939, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 %0, metadata !3942, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 %1, metadata !3943, metadata !DIExpression()), !dbg !4087
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4089
  call void @llvm.dbg.value(metadata ptr %3, metadata !3947, metadata !DIExpression()), !dbg !4090
  %4 = icmp eq ptr %3, null, !dbg !4092
  br i1 %4, label %5, label %6, !dbg !4093

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4094
  unreachable, !dbg !4094

6:                                                ; preds = %2
  ret ptr %3, !dbg !4095
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4096 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4100, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata ptr null, metadata !4062, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %0, metadata !4063, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %1, metadata !4064, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr null, metadata !4066, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 %0, metadata !4069, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()), !dbg !4105
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4107
  call void @llvm.dbg.value(metadata ptr %3, metadata !3947, metadata !DIExpression()), !dbg !4108
  %4 = icmp eq ptr %3, null, !dbg !4110
  br i1 %4, label %5, label %6, !dbg !4111

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4112
  unreachable, !dbg !4112

6:                                                ; preds = %2
  ret ptr %3, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4114 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4118, metadata !DIExpression()), !dbg !4120
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata ptr %0, metadata !812, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %1, metadata !813, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 1, metadata !814, metadata !DIExpression()), !dbg !4121
  %3 = load i64, ptr %1, align 8, !dbg !4123, !tbaa !2923
  call void @llvm.dbg.value(metadata i64 %3, metadata !815, metadata !DIExpression()), !dbg !4121
  %4 = icmp eq ptr %0, null, !dbg !4124
  br i1 %4, label %5, label %8, !dbg !4126

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4127
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4130
  br label %15, !dbg !4130

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4131
  %10 = add nuw i64 %9, 1, !dbg !4131
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4131
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4131
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4131
  call void @llvm.dbg.value(metadata i64 %13, metadata !815, metadata !DIExpression()), !dbg !4121
  br i1 %12, label %14, label %15, !dbg !4134

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4135
  unreachable, !dbg !4135

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4121
  call void @llvm.dbg.value(metadata i64 %16, metadata !815, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 %16, metadata !3942, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 1, metadata !3943, metadata !DIExpression()), !dbg !4136
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4138
  call void @llvm.dbg.value(metadata ptr %17, metadata !3947, metadata !DIExpression()), !dbg !4139
  %18 = icmp eq ptr %17, null, !dbg !4141
  br i1 %18, label %19, label %20, !dbg !4142

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4143
  unreachable, !dbg !4143

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !812, metadata !DIExpression()), !dbg !4121
  store i64 %16, ptr %1, align 8, !dbg !4144, !tbaa !2923
  ret ptr %17, !dbg !4145
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !807 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !812, metadata !DIExpression()), !dbg !4146
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !813, metadata !DIExpression()), !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !814, metadata !DIExpression()), !dbg !4146
  %4 = load i64, ptr %1, align 8, !dbg !4147, !tbaa !2923
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !815, metadata !DIExpression()), !dbg !4146
  %5 = icmp eq ptr %0, null, !dbg !4148
  br i1 %5, label %6, label %13, !dbg !4149

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4150
  br i1 %7, label %8, label %20, !dbg !4151

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !815, metadata !DIExpression()), !dbg !4146
  %10 = icmp ugt i64 %2, 128, !dbg !4154
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4155
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !815, metadata !DIExpression()), !dbg !4146
  br label %20, !dbg !4156

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4157
  %15 = add nuw i64 %14, 1, !dbg !4157
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4157
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4157
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !815, metadata !DIExpression()), !dbg !4146
  br i1 %17, label %19, label %20, !dbg !4158

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4159
  unreachable, !dbg !4159

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !815, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i64 %21, metadata !3942, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i64 %2, metadata !3943, metadata !DIExpression()), !dbg !4160
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4162
  call void @llvm.dbg.value(metadata ptr %22, metadata !3947, metadata !DIExpression()), !dbg !4163
  %23 = icmp eq ptr %22, null, !dbg !4165
  br i1 %23, label %24, label %25, !dbg !4166

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4167
  unreachable, !dbg !4167

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !812, metadata !DIExpression()), !dbg !4146
  store i64 %21, ptr %1, align 8, !dbg !4168, !tbaa !2923
  ret ptr %22, !dbg !4169
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !819 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !828, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !829, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !830, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !831, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !832, metadata !DIExpression()), !dbg !4170
  %6 = load i64, ptr %1, align 8, !dbg !4171, !tbaa !2923
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !833, metadata !DIExpression()), !dbg !4170
  %7 = ashr i64 %6, 1, !dbg !4172
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4172
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4172
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4172
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !834, metadata !DIExpression()), !dbg !4170
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !834, metadata !DIExpression()), !dbg !4170
  %12 = icmp sgt i64 %3, -1, !dbg !4175
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4177
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4177
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !834, metadata !DIExpression()), !dbg !4170
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4178
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4178
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4178
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !835, metadata !DIExpression()), !dbg !4170
  %18 = icmp slt i64 %17, 128, !dbg !4178
  %19 = select i1 %18, i64 128, i64 0, !dbg !4178
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4178
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !836, metadata !DIExpression()), !dbg !4170
  %21 = icmp eq i64 %20, 0, !dbg !4179
  br i1 %21, label %26, label %22, !dbg !4181

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !834, metadata !DIExpression()), !dbg !4170
  %24 = srem i64 %20, %4, !dbg !4184
  %25 = sub nsw i64 %20, %24, !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !835, metadata !DIExpression()), !dbg !4170
  br label %26, !dbg !4186

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4170
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !835, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !834, metadata !DIExpression()), !dbg !4170
  %29 = icmp eq ptr %0, null, !dbg !4187
  br i1 %29, label %30, label %31, !dbg !4189

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4190, !tbaa !2923
  br label %31, !dbg !4191

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4192
  %33 = icmp slt i64 %32, %2, !dbg !4194
  br i1 %33, label %34, label %46, !dbg !4195

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4196
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4196
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !834, metadata !DIExpression()), !dbg !4170
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4197
  br i1 %40, label %45, label %41, !dbg !4197

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4198
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4198
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !835, metadata !DIExpression()), !dbg !4170
  br i1 %43, label %45, label %46, !dbg !4199

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !4200
  unreachable, !dbg !4200

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4170
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !835, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !834, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %48, metadata !4017, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %0, metadata !4019, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %48, metadata !4023, metadata !DIExpression()), !dbg !4203
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4205
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !4206
  call void @llvm.dbg.value(metadata ptr %50, metadata !3947, metadata !DIExpression()), !dbg !4207
  %51 = icmp eq ptr %50, null, !dbg !4209
  br i1 %51, label %52, label %53, !dbg !4210

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !4211
  unreachable, !dbg !4211

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !828, metadata !DIExpression()), !dbg !4170
  store i64 %47, ptr %1, align 8, !dbg !4212, !tbaa !2923
  ret ptr %50, !dbg !4213
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4214 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4216, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i64 %0, metadata !4218, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 1, metadata !4221, metadata !DIExpression()), !dbg !4222
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4224
  call void @llvm.dbg.value(metadata ptr %2, metadata !3947, metadata !DIExpression()), !dbg !4225
  %3 = icmp eq ptr %2, null, !dbg !4227
  br i1 %3, label %4, label %5, !dbg !4228

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4229
  unreachable, !dbg !4229

5:                                                ; preds = %1
  ret ptr %2, !dbg !4230
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4231 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4219 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4218, metadata !DIExpression()), !dbg !4232
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4232
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %3, metadata !3947, metadata !DIExpression()), !dbg !4234
  %4 = icmp eq ptr %3, null, !dbg !4236
  br i1 %4, label %5, label %6, !dbg !4237

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4238
  unreachable, !dbg !4238

6:                                                ; preds = %2
  ret ptr %3, !dbg !4239
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4240 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 1, metadata !4247, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %0, metadata !4250, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 1, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %0, metadata !4250, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 1, metadata !4253, metadata !DIExpression()), !dbg !4254
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4256
  call void @llvm.dbg.value(metadata ptr %2, metadata !3947, metadata !DIExpression()), !dbg !4257
  %3 = icmp eq ptr %2, null, !dbg !4259
  br i1 %3, label %4, label %5, !dbg !4260

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4261
  unreachable, !dbg !4261

5:                                                ; preds = %1
  ret ptr %2, !dbg !4262
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4245 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4247, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 %0, metadata !4250, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %1, metadata !4253, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %0, metadata !4250, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %1, metadata !4253, metadata !DIExpression()), !dbg !4264
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %3, metadata !3947, metadata !DIExpression()), !dbg !4267
  %4 = icmp eq ptr %3, null, !dbg !4269
  br i1 %4, label %5, label %6, !dbg !4270

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4271
  unreachable, !dbg !4271

6:                                                ; preds = %2
  ret ptr %3, !dbg !4272
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4273 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4277, metadata !DIExpression()), !dbg !4279
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %1, metadata !3969, metadata !DIExpression()), !dbg !4280
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4282
  call void @llvm.dbg.value(metadata ptr %3, metadata !3947, metadata !DIExpression()), !dbg !4283
  %4 = icmp eq ptr %3, null, !dbg !4285
  br i1 %4, label %5, label %6, !dbg !4286

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4287
  unreachable, !dbg !4287

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4288, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata ptr %0, metadata !4291, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()), !dbg !4293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4295
  ret ptr %3, !dbg !4296
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4297 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4301, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4302, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3984, metadata !DIExpression()), !dbg !4306
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4308
  call void @llvm.dbg.value(metadata ptr %3, metadata !3947, metadata !DIExpression()), !dbg !4309
  %4 = icmp eq ptr %3, null, !dbg !4311
  br i1 %4, label %5, label %6, !dbg !4312

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4313
  unreachable, !dbg !4313

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4288, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %0, metadata !4291, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()), !dbg !4314
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4316
  ret ptr %3, !dbg !4317
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4318 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4322, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4323, metadata !DIExpression()), !dbg !4325
  %3 = add nsw i64 %1, 1, !dbg !4326
  call void @llvm.dbg.value(metadata i64 %3, metadata !3982, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata i64 %3, metadata !3984, metadata !DIExpression()), !dbg !4329
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4331
  call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !4332
  %5 = icmp eq ptr %4, null, !dbg !4334
  br i1 %5, label %6, label %7, !dbg !4335

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4336
  unreachable, !dbg !4336

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4325
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4337
  store i8 0, ptr %8, align 1, !dbg !4338, !tbaa !947
  call void @llvm.dbg.value(metadata ptr %4, metadata !4288, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %0, metadata !4291, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()), !dbg !4339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4341
  ret ptr %4, !dbg !4342
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4343 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4345, metadata !DIExpression()), !dbg !4346
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4347
  %3 = add i64 %2, 1, !dbg !4348
  call void @llvm.dbg.value(metadata ptr %0, metadata !4277, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 %3, metadata !4278, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 %3, metadata !3969, metadata !DIExpression()), !dbg !4351
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4353
  call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !4354
  %5 = icmp eq ptr %4, null, !dbg !4356
  br i1 %5, label %6, label %7, !dbg !4357

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4358
  unreachable, !dbg !4358

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4288, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %0, metadata !4291, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 %3, metadata !4292, metadata !DIExpression()), !dbg !4359
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4361
  ret ptr %4, !dbg !4362
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4363 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4368, !tbaa !938
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4365, metadata !DIExpression()), !dbg !4369
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #40, !dbg !4368
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #40, !dbg !4368
  %3 = icmp eq i32 %1, 0, !dbg !4368
  tail call void @llvm.assume(i1 %3), !dbg !4368
  tail call void @abort() #42, !dbg !4370
  unreachable, !dbg !4370
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4371 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4376, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4378, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4379, metadata !DIExpression()), !dbg !4381
  %5 = icmp eq ptr %1, null, !dbg !4382
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4384
  %7 = select i1 %5, ptr @.str.145, ptr %1, !dbg !4384
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4378, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4376, metadata !DIExpression()), !dbg !4381
  %9 = icmp eq ptr %3, null, !dbg !4385
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4387
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4379, metadata !DIExpression()), !dbg !4381
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4388
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4380, metadata !DIExpression()), !dbg !4381
  %12 = icmp ult i64 %11, -3, !dbg !4389
  br i1 %12, label %13, label %17, !dbg !4391

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4392
  %15 = icmp eq i32 %14, 0, !dbg !4392
  br i1 %15, label %16, label %29, !dbg !4393

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4394, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %10, metadata !4401, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 0, metadata !4404, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 8, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i64 0, ptr %10, align 1, !dbg !4408
  br label %29, !dbg !4409

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4410
  br i1 %18, label %19, label %20, !dbg !4412

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4413
  unreachable, !dbg !4413

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4414

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4416
  br i1 %23, label %29, label %24, !dbg !4417

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4418
  br i1 %25, label %29, label %26, !dbg !4421

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4422, !tbaa !947
  %28 = zext i8 %27 to i32, !dbg !4423
  store i32 %28, ptr %6, align 4, !dbg !4424, !tbaa !938
  br label %29, !dbg !4425

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4381
  ret i64 %30, !dbg !4426
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4427 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4433 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4435, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4436, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4437, metadata !DIExpression()), !dbg !4439
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4440
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4440
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4438, metadata !DIExpression()), !dbg !4439
  br i1 %5, label %6, label %8, !dbg !4442

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4443
  store i32 12, ptr %7, align 4, !dbg !4445, !tbaa !938
  br label %12, !dbg !4446

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4440
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4438, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata ptr %0, metadata !4447, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 %9, metadata !4450, metadata !DIExpression()), !dbg !4451
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4453
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !4454
  br label %12, !dbg !4455

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4439
  ret ptr %13, !dbg !4456
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4457 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4462, metadata !DIExpression(), metadata !4466, metadata ptr %2, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4461, metadata !DIExpression()), !dbg !4467
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4468
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4469
  %4 = icmp eq i32 %3, 0, !dbg !4469
  br i1 %4, label %5, label %12, !dbg !4471

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4472, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata !905, metadata !4475, metadata !DIExpression()), !dbg !4476
  %6 = load i16, ptr %2, align 16, !dbg !4479
  %7 = icmp eq i16 %6, 67, !dbg !4479
  br i1 %7, label %11, label %8, !dbg !4480

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4472, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata ptr @.str.1.150, metadata !4475, metadata !DIExpression()), !dbg !4481
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.150, i64 6), !dbg !4483
  %10 = icmp eq i32 %9, 0, !dbg !4484
  br i1 %10, label %11, label %12, !dbg !4485

11:                                               ; preds = %8, %5
  br label %12, !dbg !4486

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4467
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4487
  ret i1 %13, !dbg !4487
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4488 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4492, metadata !DIExpression()), !dbg !4495
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4493, metadata !DIExpression()), !dbg !4495
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4494, metadata !DIExpression()), !dbg !4495
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4496
  ret i32 %4, !dbg !4497
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4498 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4502, metadata !DIExpression()), !dbg !4503
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4504
  ret ptr %2, !dbg !4505
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4506 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4508, metadata !DIExpression()), !dbg !4510
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4511
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4509, metadata !DIExpression()), !dbg !4510
  ret ptr %2, !dbg !4512
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4513 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4515, metadata !DIExpression()), !dbg !4522
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4516, metadata !DIExpression()), !dbg !4522
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4517, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 %0, metadata !4508, metadata !DIExpression()), !dbg !4523
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4525
  call void @llvm.dbg.value(metadata ptr %4, metadata !4509, metadata !DIExpression()), !dbg !4523
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4518, metadata !DIExpression()), !dbg !4522
  %5 = icmp eq ptr %4, null, !dbg !4526
  br i1 %5, label %6, label %9, !dbg !4527

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4528
  br i1 %7, label %19, label %8, !dbg !4531

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4532, !tbaa !947
  br label %19, !dbg !4533

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4519, metadata !DIExpression()), !dbg !4535
  %11 = icmp ult i64 %10, %2, !dbg !4536
  br i1 %11, label %12, label %14, !dbg !4538

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %1, metadata !4541, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata ptr %4, metadata !4544, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %13, metadata !4545, metadata !DIExpression()), !dbg !4546
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4548
  br label %19, !dbg !4549

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4550
  br i1 %15, label %19, label %16, !dbg !4553

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4554
  call void @llvm.dbg.value(metadata ptr %1, metadata !4541, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr %4, metadata !4544, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i64 %17, metadata !4545, metadata !DIExpression()), !dbg !4556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4558
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4559
  store i8 0, ptr %18, align 1, !dbg !4560, !tbaa !947
  br label %19, !dbg !4561

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4562
  ret i32 %20, !dbg !4563
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !418, !779, !782, !422, !437, !747, !784, !786, !789, !791, !793, !795, !488, !502, !550, !644, !797, !739, !803, !838, !763, !840, !842, !846, !848}
!llvm.ident = !{!850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850, !850}
!llvm.module.flags = !{!851, !852, !853, !854, !855, !856, !857}

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
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/mktemp.o -MD -MP -MF src/.deps/mktemp.Tpo -c src/mktemp.c -o src/.mktemp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !121, globals: !131, splitDebugInlining: false, nameTableKind: None)
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
!436 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !437, file: !438, line: 66, type: !483, isLocal: false, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !439, globals: !440, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!439 = !{!123, !130}
!440 = !{!441, !443, !462, !464, !466, !468, !435, !470, !472, !474, !476, !481}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !438, line: 272, type: !171, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "old_file_name", scope: !445, file: !438, line: 304, type: !128, isLocal: true, isDefinition: true)
!445 = distinct !DISubprogram(name: "verror_at_line", scope: !438, file: !438, line: 298, type: !446, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !455)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !102, !102, !128, !97, !128, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !450)
!450 = !{!451, !452, !453, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !449, file: !438, baseType: !97, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !449, file: !438, baseType: !97, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !449, file: !438, baseType: !123, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !449, file: !438, baseType: !123, size: 64, offset: 128)
!455 = !{!456, !457, !458, !459, !460, !461}
!456 = !DILocalVariable(name: "status", arg: 1, scope: !445, file: !438, line: 298, type: !102)
!457 = !DILocalVariable(name: "errnum", arg: 2, scope: !445, file: !438, line: 298, type: !102)
!458 = !DILocalVariable(name: "file_name", arg: 3, scope: !445, file: !438, line: 298, type: !128)
!459 = !DILocalVariable(name: "line_number", arg: 4, scope: !445, file: !438, line: 298, type: !97)
!460 = !DILocalVariable(name: "message", arg: 5, scope: !445, file: !438, line: 298, type: !128)
!461 = !DILocalVariable(name: "args", arg: 6, scope: !445, file: !438, line: 298, type: !448)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "old_line_number", scope: !445, file: !438, line: 305, type: !97, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !438, line: 338, type: !290, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !89, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !438, line: 346, type: !24, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "error_message_count", scope: !437, file: !438, line: 69, type: !97, isLocal: false, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !437, file: !438, line: 295, type: !102, isLocal: false, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !29, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !438, line: 208, type: !478, isLocal: true, isDefinition: true)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 21)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !438, line: 214, type: !171, isLocal: true, isDefinition: true)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null}
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "program_name", scope: !488, file: !489, line: 31, type: !128, isLocal: false, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, globals: !491, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!490 = !{!123, !122}
!491 = !{!486, !492, !494}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !489, line: 46, type: !89, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !489, line: 49, type: !290, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "utf07FF", scope: !498, file: !499, line: 46, type: !526, isLocal: true, isDefinition: true)
!498 = distinct !DISubprogram(name: "proper_name_lite", scope: !499, file: !499, line: 38, type: !500, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !504)
!499 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!500 = !DISubroutineType(types: !501)
!501 = !{!128, !128, !128}
!502 = distinct !DICompileUnit(language: DW_LANG_C11, file: !499, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !503, splitDebugInlining: false, nameTableKind: None)
!503 = !{!496}
!504 = !{!505, !506, !507, !508, !513}
!505 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !498, file: !499, line: 38, type: !128)
!506 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !498, file: !499, line: 38, type: !128)
!507 = !DILocalVariable(name: "translation", scope: !498, file: !499, line: 40, type: !128)
!508 = !DILocalVariable(name: "w", scope: !498, file: !499, line: 47, type: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !510, line: 37, baseType: !511)
!510 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !253, line: 57, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !253, line: 42, baseType: !97)
!513 = !DILocalVariable(name: "mbs", scope: !498, file: !499, line: 48, type: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !515, line: 6, baseType: !516)
!515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !517, line: 21, baseType: !518)
!517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 13, size: 64, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !518, file: !517, line: 15, baseType: !102, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !518, file: !517, line: 20, baseType: !522, size: 32, offset: 32)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !517, line: 16, size: 32, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !522, file: !517, line: 18, baseType: !97, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !522, file: !517, line: 19, baseType: !290, size: 32)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16, elements: !25)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !529, line: 78, type: !89, isLocal: true, isDefinition: true)
!529 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !529, line: 79, type: !295, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !529, line: 80, type: !139, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !529, line: 81, type: !139, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !529, line: 82, type: !275, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !529, line: 83, type: !24, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !529, line: 84, type: !89, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !529, line: 85, type: !29, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !529, line: 86, type: !29, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !529, line: 87, type: !89, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !550, file: !529, line: 76, type: !636, isLocal: false, isDefinition: true)
!550 = distinct !DICompileUnit(language: DW_LANG_C11, file: !529, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !571, globals: !572, splitDebugInlining: false, nameTableKind: None)
!551 = !{!552, !566, !106}
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !553, line: 42, baseType: !97, size: 32, elements: !554)
!553 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!555 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!556 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!557 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!558 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!559 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!560 = !DIEnumerator(name: "c_quoting_style", value: 5)
!561 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!562 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!563 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!564 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!565 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !553, line: 254, baseType: !97, size: 32, elements: !567)
!567 = !{!568, !569, !570}
!568 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!569 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!570 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!571 = !{!123, !102, !124, !125}
!572 = !{!527, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !573, !577, !587, !589, !594, !596, !598, !600, !602, !625, !632, !634}
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !550, file: !529, line: 92, type: !575, isLocal: false, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 320, elements: !80)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !550, file: !529, line: 1040, type: !579, isLocal: false, isDefinition: true)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !529, line: 56, size: 448, elements: !580)
!580 = !{!581, !582, !583, !585, !586}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !579, file: !529, line: 59, baseType: !552, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !529, line: 62, baseType: !102, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !579, file: !529, line: 66, baseType: !584, size: 256, offset: 64)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !90)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !579, file: !529, line: 69, baseType: !128, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !579, file: !529, line: 72, baseType: !128, size: 64, offset: 384)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !550, file: !529, line: 107, type: !579, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "slot0", scope: !550, file: !529, line: 831, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 256)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !529, line: 321, type: !24, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !529, line: 357, type: !24, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !529, line: 358, type: !24, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !529, line: 199, type: !29, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "quote", scope: !604, file: !529, line: 228, type: !623, isLocal: true, isDefinition: true)
!604 = distinct !DISubprogram(name: "gettext_quote", scope: !529, file: !529, line: 197, type: !605, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!128, !128, !552}
!607 = !{!608, !609, !610, !611, !612}
!608 = !DILocalVariable(name: "msgid", arg: 1, scope: !604, file: !529, line: 197, type: !128)
!609 = !DILocalVariable(name: "s", arg: 2, scope: !604, file: !529, line: 197, type: !552)
!610 = !DILocalVariable(name: "translation", scope: !604, file: !529, line: 199, type: !128)
!611 = !DILocalVariable(name: "w", scope: !604, file: !529, line: 229, type: !509)
!612 = !DILocalVariable(name: "mbs", scope: !604, file: !529, line: 230, type: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !515, line: 6, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !517, line: 21, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 13, size: 64, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !615, file: !517, line: 15, baseType: !102, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !615, file: !517, line: 20, baseType: !619, size: 32, offset: 32)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !615, file: !517, line: 16, size: 32, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !619, file: !517, line: 18, baseType: !97, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !619, file: !517, line: 19, baseType: !290, size: 32)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !624)
!624 = !{!26, !292}
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "slotvec", scope: !550, file: !529, line: 834, type: !627, isLocal: true, isDefinition: true)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !529, line: 823, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !628, file: !529, line: 825, baseType: !125, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !628, file: !529, line: 826, baseType: !122, size: 64, offset: 64)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "nslots", scope: !550, file: !529, line: 832, type: !102, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "slotvec0", scope: !550, file: !529, line: 833, type: !628, isLocal: true, isDefinition: true)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 704, elements: !145)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "tryfunc", scope: !640, file: !641, line: 175, type: !659, isLocal: true, isDefinition: true)
!640 = distinct !DISubprogram(name: "gen_tempname_len", scope: !641, file: !641, line: 172, type: !642, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !653)
!641 = !DIFile(filename: "lib/tempname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "89467f8095ceec51ae791cc96ec80d48")
!642 = !DISubroutineType(types: !643)
!643 = !{!102, !122, !102, !102, !102, !125}
!644 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-tempname.o -MD -MP -MF lib/.deps/libcoreutils_a-tempname.Tpo -c lib/tempname.c -o lib/.libcoreutils_a-tempname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !645, splitDebugInlining: false, nameTableKind: None)
!645 = !{!638, !646, !648}
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !641, line: 226, type: !24, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "letters", scope: !644, file: !641, line: 151, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 504, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 63)
!653 = !{!654, !655, !656, !657, !658}
!654 = !DILocalVariable(name: "tmpl", arg: 1, scope: !640, file: !641, line: 172, type: !122)
!655 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !640, file: !641, line: 172, type: !102)
!656 = !DILocalVariable(name: "flags", arg: 3, scope: !640, file: !641, line: 172, type: !102)
!657 = !DILocalVariable(name: "kind", arg: 4, scope: !640, file: !641, line: 172, type: !102)
!658 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !640, file: !641, line: 173, type: !125)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 192, elements: !307)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!102, !122, !123}
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !666, line: 67, type: !196, isLocal: true, isDefinition: true)
!666 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !666, line: 69, type: !29, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !666, line: 83, type: !29, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !666, line: 83, type: !290, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !666, line: 85, type: !24, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !666, line: 88, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 171)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !666, line: 88, type: !9, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !666, line: 105, type: !361, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !666, line: 109, type: !686, isLocal: true, isDefinition: true)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 23)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !666, line: 113, type: !691, isLocal: true, isDefinition: true)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 28)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !666, line: 120, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 32)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !666, line: 127, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 36)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !666, line: 134, type: !338, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !666, line: 142, type: !708, isLocal: true, isDefinition: true)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 44)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !666, line: 150, type: !159, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !666, line: 159, type: !715, isLocal: true, isDefinition: true)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 52)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !666, line: 170, type: !181, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !666, line: 248, type: !275, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !666, line: 248, type: !366, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !666, line: 254, type: !275, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !666, line: 254, type: !134, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !666, line: 254, type: !338, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !666, line: 259, type: !3, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !666, line: 259, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 29)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !739, file: !740, line: 26, type: !742, isLocal: false, isDefinition: true)
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !740, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !741, splitDebugInlining: false, nameTableKind: None)
!740 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!741 = !{!737}
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 376, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 47)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "exit_failure", scope: !747, file: !748, line: 24, type: !750, isLocal: false, isDefinition: true)
!747 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !749, splitDebugInlining: false, nameTableKind: None)
!748 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!749 = !{!745}
!750 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !753, line: 34, type: !306, isLocal: true, isDefinition: true)
!753 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !753, line: 34, type: !29, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !753, line: 34, type: !333, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !760, line: 108, type: !74, isLocal: true, isDefinition: true)
!760 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "internal_state", scope: !763, file: !760, line: 97, type: !766, isLocal: true, isDefinition: true)
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !764, globals: !765, splitDebugInlining: false, nameTableKind: None)
!764 = !{!123, !125, !130}
!765 = !{!758, !761}
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !515, line: 6, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !517, line: 21, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 13, size: 64, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !768, file: !517, line: 15, baseType: !102, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !768, file: !517, line: 20, baseType: !772, size: 32, offset: 32)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !517, line: 16, size: 32, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !772, file: !517, line: 18, baseType: !97, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !772, file: !517, line: 19, baseType: !290, size: 32)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !778, line: 35, type: !295, isLocal: true, isDefinition: true)
!778 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !781, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!781 = !{!122}
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!788 = !{!123}
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat.Tpo -c lib/filenamecat.c -o lib/.libcoreutils_a-filenamecat.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat-lgpl.Tpo -c lib/filenamecat-lgpl.c -o lib/.libcoreutils_a-filenamecat-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !796, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!796 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !798, retainedTypes: !788, globals: !802, splitDebugInlining: false, nameTableKind: None)
!798 = !{!799}
!799 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !666, line: 40, baseType: !97, size: 32, elements: !800)
!800 = !{!801}
!801 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!802 = !{!664, !667, !669, !671, !673, !675, !680, !682, !684, !689, !694, !699, !704, !706, !711, !713, !718, !720, !722, !724, !726, !728, !730, !732}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !805, retainedTypes: !837, splitDebugInlining: false, nameTableKind: None)
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
!819 = distinct !DISubprogram(name: "xpalloc", scope: !804, file: !804, line: 223, type: !820, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !827)
!820 = !DISubroutineType(types: !821)
!821 = !{!123, !123, !822, !823, !825, !823}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !824, line: 130, baseType: !825)
!824 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !826, line: 18, baseType: !254)
!826 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836}
!828 = !DILocalVariable(name: "pa", arg: 1, scope: !819, file: !804, line: 223, type: !123)
!829 = !DILocalVariable(name: "pn", arg: 2, scope: !819, file: !804, line: 223, type: !822)
!830 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !819, file: !804, line: 223, type: !823)
!831 = !DILocalVariable(name: "n_max", arg: 4, scope: !819, file: !804, line: 223, type: !825)
!832 = !DILocalVariable(name: "s", arg: 5, scope: !819, file: !804, line: 223, type: !823)
!833 = !DILocalVariable(name: "n0", scope: !819, file: !804, line: 230, type: !823)
!834 = !DILocalVariable(name: "n", scope: !819, file: !804, line: 237, type: !823)
!835 = !DILocalVariable(name: "nbytes", scope: !819, file: !804, line: 248, type: !823)
!836 = !DILocalVariable(name: "adjusted_nbytes", scope: !819, file: !804, line: 252, type: !823)
!837 = !{!122, !123}
!838 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !839, splitDebugInlining: false, nameTableKind: None)
!839 = !{!751, !754, !756}
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !843, splitDebugInlining: false, nameTableKind: None)
!843 = !{!844, !776}
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !778, line: 35, type: !24, isLocal: true, isDefinition: true)
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!848 = distinct !DICompileUnit(language: DW_LANG_C11, file: !849, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, splitDebugInlining: false, nameTableKind: None)
!849 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!850 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!851 = !{i32 7, !"Dwarf Version", i32 5}
!852 = !{i32 2, !"Debug Info Version", i32 3}
!853 = !{i32 1, !"wchar_size", i32 4}
!854 = !{i32 8, !"PIC Level", i32 2}
!855 = !{i32 7, !"PIE Level", i32 2}
!856 = !{i32 7, !"uwtable", i32 2}
!857 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!858 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 59, type: !859, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !102}
!861 = !{!862}
!862 = !DILocalVariable(name: "status", arg: 1, scope: !858, file: !2, line: 59, type: !102)
!863 = !DILocation(line: 0, scope: !858)
!864 = !DILocation(line: 61, column: 14, scope: !865)
!865 = distinct !DILexicalBlock(scope: !858, file: !2, line: 61, column: 7)
!866 = !DILocation(line: 61, column: 7, scope: !858)
!867 = !DILocation(line: 62, column: 5, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !2, line: 62, column: 5)
!869 = !{!870, !870, i64 0}
!870 = !{!"any pointer", !871, i64 0}
!871 = !{!"omnipotent char", !872, i64 0}
!872 = !{!"Simple C/C++ TBAA"}
!873 = !DILocation(line: 65, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !2, line: 64, column: 5)
!875 = !DILocation(line: 66, column: 7, scope: !874)
!876 = !DILocation(line: 71, column: 7, scope: !874)
!877 = !DILocation(line: 74, column: 7, scope: !874)
!878 = !DILocation(line: 75, column: 7, scope: !874)
!879 = !DILocation(line: 79, column: 7, scope: !874)
!880 = !DILocation(line: 83, column: 7, scope: !874)
!881 = !DILocation(line: 87, column: 7, scope: !874)
!882 = !DILocation(line: 92, column: 7, scope: !874)
!883 = !DILocation(line: 100, column: 7, scope: !874)
!884 = !DILocation(line: 106, column: 7, scope: !874)
!885 = !DILocation(line: 107, column: 7, scope: !874)
!886 = !DILocalVariable(name: "program", arg: 1, scope: !887, file: !101, line: 836, type: !128)
!887 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !101, file: !101, line: 836, type: !888, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !128}
!890 = !{!886, !891, !898, !899, !901, !902}
!891 = !DILocalVariable(name: "infomap", scope: !887, file: !101, line: 838, type: !892)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 896, elements: !30)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !887, file: !101, line: 838, size: 128, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !894, file: !101, line: 838, baseType: !128, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !894, file: !101, line: 838, baseType: !128, size: 64, offset: 64)
!898 = !DILocalVariable(name: "node", scope: !887, file: !101, line: 848, type: !128)
!899 = !DILocalVariable(name: "map_prog", scope: !887, file: !101, line: 849, type: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!901 = !DILocalVariable(name: "lc_messages", scope: !887, file: !101, line: 861, type: !128)
!902 = !DILocalVariable(name: "url_program", scope: !887, file: !101, line: 874, type: !128)
!903 = !DILocation(line: 0, scope: !887, inlinedAt: !904)
!904 = distinct !DILocation(line: 108, column: 7, scope: !874)
!905 = !{}
!906 = !DILocation(line: 857, column: 3, scope: !887, inlinedAt: !904)
!907 = !DILocation(line: 861, column: 29, scope: !887, inlinedAt: !904)
!908 = !DILocation(line: 862, column: 7, scope: !909, inlinedAt: !904)
!909 = distinct !DILexicalBlock(scope: !887, file: !101, line: 862, column: 7)
!910 = !DILocation(line: 862, column: 19, scope: !909, inlinedAt: !904)
!911 = !DILocation(line: 862, column: 22, scope: !909, inlinedAt: !904)
!912 = !DILocation(line: 862, column: 7, scope: !887, inlinedAt: !904)
!913 = !DILocation(line: 868, column: 7, scope: !914, inlinedAt: !904)
!914 = distinct !DILexicalBlock(scope: !909, file: !101, line: 863, column: 5)
!915 = !DILocation(line: 870, column: 5, scope: !914, inlinedAt: !904)
!916 = !DILocation(line: 875, column: 3, scope: !887, inlinedAt: !904)
!917 = !DILocation(line: 877, column: 3, scope: !887, inlinedAt: !904)
!918 = !DILocation(line: 111, column: 3, scope: !858)
!919 = !DISubprogram(name: "dcgettext", scope: !920, file: !920, line: 51, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!921 = !DISubroutineType(types: !922)
!922 = !{!122, !128, !128, !102}
!923 = !DISubprogram(name: "__fprintf_chk", scope: !924, file: !924, line: 93, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!925 = !DISubroutineType(types: !926)
!926 = !{!102, !927, !102, !928, null}
!927 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!928 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!929 = !DISubprogram(name: "__printf_chk", scope: !924, file: !924, line: 95, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DISubroutineType(types: !931)
!931 = !{!102, !102, !928, null}
!932 = !DISubprogram(name: "fputs_unlocked", scope: !933, file: !933, line: 691, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!934 = !DISubroutineType(types: !935)
!935 = !{!102, !928, !927}
!936 = !DILocation(line: 0, scope: !204)
!937 = !DILocation(line: 581, column: 7, scope: !212)
!938 = !{!939, !939, i64 0}
!939 = !{!"int", !871, i64 0}
!940 = !DILocation(line: 581, column: 19, scope: !212)
!941 = !DILocation(line: 581, column: 7, scope: !204)
!942 = !DILocation(line: 585, column: 26, scope: !211)
!943 = !DILocation(line: 0, scope: !211)
!944 = !DILocation(line: 586, column: 23, scope: !211)
!945 = !DILocation(line: 586, column: 28, scope: !211)
!946 = !DILocation(line: 586, column: 32, scope: !211)
!947 = !{!871, !871, i64 0}
!948 = !DILocation(line: 586, column: 38, scope: !211)
!949 = !DILocalVariable(name: "__s1", arg: 1, scope: !950, file: !951, line: 1359, type: !128)
!950 = distinct !DISubprogram(name: "streq", scope: !951, file: !951, line: 1359, type: !952, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !954)
!951 = !DIFile(filename: "./lib/string.h", directory: "/src")
!952 = !DISubroutineType(types: !953)
!953 = !{!201, !128, !128}
!954 = !{!949, !955}
!955 = !DILocalVariable(name: "__s2", arg: 2, scope: !950, file: !951, line: 1359, type: !128)
!956 = !DILocation(line: 0, scope: !950, inlinedAt: !957)
!957 = distinct !DILocation(line: 586, column: 41, scope: !211)
!958 = !DILocation(line: 1361, column: 11, scope: !950, inlinedAt: !957)
!959 = !DILocation(line: 1361, column: 10, scope: !950, inlinedAt: !957)
!960 = !DILocation(line: 586, column: 19, scope: !211)
!961 = !DILocation(line: 587, column: 5, scope: !211)
!962 = !DILocation(line: 588, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !204, file: !101, line: 588, column: 7)
!964 = !DILocation(line: 588, column: 7, scope: !204)
!965 = !DILocation(line: 590, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !101, line: 589, column: 5)
!967 = !DILocation(line: 591, column: 7, scope: !966)
!968 = !DILocation(line: 595, column: 37, scope: !204)
!969 = !DILocation(line: 595, column: 35, scope: !204)
!970 = !DILocation(line: 596, column: 29, scope: !204)
!971 = !DILocation(line: 597, column: 8, scope: !219)
!972 = !DILocation(line: 597, column: 7, scope: !204)
!973 = !DILocation(line: 604, column: 24, scope: !218)
!974 = !DILocation(line: 604, column: 12, scope: !219)
!975 = !DILocation(line: 0, scope: !217)
!976 = !DILocation(line: 610, column: 16, scope: !217)
!977 = !DILocation(line: 610, column: 7, scope: !217)
!978 = !DILocation(line: 611, column: 21, scope: !217)
!979 = !{!980, !980, i64 0}
!980 = !{!"short", !871, i64 0}
!981 = !DILocation(line: 611, column: 19, scope: !217)
!982 = !DILocation(line: 611, column: 16, scope: !217)
!983 = !DILocation(line: 610, column: 30, scope: !217)
!984 = distinct !{!984, !977, !978, !985}
!985 = !{!"llvm.loop.mustprogress"}
!986 = !DILocation(line: 612, column: 18, scope: !987)
!987 = distinct !DILexicalBlock(scope: !217, file: !101, line: 612, column: 11)
!988 = !DILocation(line: 612, column: 11, scope: !217)
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
!1013 = distinct !{!1013, !991, !1014, !985}
!1014 = !DILocation(line: 641, column: 5, scope: !204)
!1015 = !DILocation(line: 644, column: 3, scope: !204)
!1016 = !DILocation(line: 0, scope: !950, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 648, column: 31, scope: !204)
!1018 = !DILocation(line: 0, scope: !950, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 649, column: 31, scope: !204)
!1020 = !DILocation(line: 0, scope: !950, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 650, column: 31, scope: !204)
!1022 = !DILocation(line: 0, scope: !950, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 651, column: 31, scope: !204)
!1024 = !DILocation(line: 0, scope: !950, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 652, column: 31, scope: !204)
!1026 = !DILocation(line: 0, scope: !950, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 653, column: 31, scope: !204)
!1028 = !DILocation(line: 0, scope: !950, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 654, column: 31, scope: !204)
!1030 = !DILocation(line: 0, scope: !950, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 655, column: 31, scope: !204)
!1032 = !DILocation(line: 0, scope: !950, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 656, column: 31, scope: !204)
!1034 = !DILocation(line: 0, scope: !950, inlinedAt: !1035)
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
!1053 = !DISubprogram(name: "setlocale", scope: !1054, file: !1054, line: 122, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!122, !102, !128}
!1057 = !DISubprogram(name: "strncmp", scope: !1058, file: !1058, line: 159, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!102, !128, !128, !125}
!1061 = !DISubprogram(name: "exit", scope: !1062, file: !1062, line: 624, type: !859, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1062 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1063 = !DISubprogram(name: "getenv", scope: !1062, file: !1062, line: 641, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!122, !128}
!1066 = !DISubprogram(name: "strcmp", scope: !1058, file: !1058, line: 156, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!102, !128, !128}
!1069 = !DISubprogram(name: "strspn", scope: !1058, file: !1058, line: 297, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!127, !128, !128}
!1072 = !DISubprogram(name: "strchr", scope: !1058, file: !1058, line: 246, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!122, !128, !102}
!1075 = !DISubprogram(name: "__ctype_b_loc", scope: !107, file: !107, line: 79, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1081 = !DISubprogram(name: "strcspn", scope: !1058, file: !1058, line: 293, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DISubprogram(name: "fwrite_unlocked", scope: !933, file: !933, line: 704, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!125, !1085, !125, !125, !927}
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
!1141 = distinct !{!1141, !1139, !1142, !985}
!1142 = !DILocation(line: 213, column: 5, scope: !1088)
!1143 = !DILocation(line: 179, column: 15, scope: !1088)
!1144 = distinct !{!1144, !1139, !1142, !985, !1145}
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
!1201 = !DILocation(line: 244, column: 51, scope: !1111)
!1202 = !DILocation(line: 0, scope: !1189, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 244, column: 7, scope: !1111)
!1204 = !DILocation(line: 29, column: 10, scope: !1189, inlinedAt: !1203)
!1205 = !DILocation(line: 247, column: 5, scope: !1111)
!1206 = !DILocation(line: 250, column: 18, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 249, column: 5)
!1208 = !DILocation(line: 251, column: 16, scope: !1207)
!1209 = !DILocation(line: 252, column: 12, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 252, column: 11)
!1211 = !DILocation(line: 252, column: 11, scope: !1207)
!1212 = !DILocation(line: 253, column: 18, scope: !1210)
!1213 = !DILocation(line: 253, column: 9, scope: !1210)
!1214 = !DILocation(line: 255, column: 15, scope: !1210)
!1215 = !DILocation(line: 0, scope: !1210)
!1216 = !DILocation(line: 256, column: 20, scope: !1207)
!1217 = !DILocation(line: 0, scope: !1112)
!1218 = !DILocation(line: 260, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 260, column: 7)
!1220 = !DILocation(line: 260, column: 18, scope: !1219)
!1221 = !DILocation(line: 260, column: 21, scope: !1219)
!1222 = !DILocation(line: 260, column: 45, scope: !1219)
!1223 = !DILocation(line: 260, column: 7, scope: !1088)
!1224 = !DILocation(line: 262, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 261, column: 5)
!1226 = !DILocation(line: 266, column: 53, scope: !1088)
!1227 = !DILocalVariable(name: "s", arg: 1, scope: !1228, file: !2, line: 115, type: !128)
!1228 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !2, file: !2, line: 115, type: !1229, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!125, !128, !125}
!1231 = !{!1227, !1232, !1233}
!1232 = !DILocalVariable(name: "len", arg: 2, scope: !1228, file: !2, line: 115, type: !125)
!1233 = !DILocalVariable(name: "n", scope: !1228, file: !2, line: 117, type: !125)
!1234 = !DILocation(line: 0, scope: !1228, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 266, column: 13, scope: !1088)
!1236 = !DILocation(line: 118, column: 3, scope: !1228, inlinedAt: !1235)
!1237 = !DILocation(line: 118, column: 11, scope: !1238, inlinedAt: !1235)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 118, column: 3)
!1239 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 118, column: 3)
!1240 = !DILocation(line: 118, column: 15, scope: !1238, inlinedAt: !1235)
!1241 = !DILocation(line: 118, column: 18, scope: !1238, inlinedAt: !1235)
!1242 = !DILocation(line: 118, column: 29, scope: !1238, inlinedAt: !1235)
!1243 = !DILocation(line: 118, column: 3, scope: !1239, inlinedAt: !1235)
!1244 = !DILocation(line: 119, column: 5, scope: !1238, inlinedAt: !1235)
!1245 = !DILocation(line: 118, column: 40, scope: !1238, inlinedAt: !1235)
!1246 = distinct !{!1246, !1243, !1247, !985}
!1247 = !DILocation(line: 119, column: 7, scope: !1239, inlinedAt: !1235)
!1248 = !DILocation(line: 267, column: 15, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 267, column: 7)
!1250 = !DILocation(line: 267, column: 7, scope: !1088)
!1251 = !DILocation(line: 270, column: 20, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 270, column: 11)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 268, column: 5)
!1254 = !DILocation(line: 270, column: 11, scope: !1253)
!1255 = !DILocation(line: 271, column: 9, scope: !1252)
!1256 = !DILocation(line: 271, column: 37, scope: !1252)
!1257 = !DILocation(line: 272, column: 7, scope: !1253)
!1258 = !DILocation(line: 276, column: 7, scope: !1117)
!1259 = !DILocation(line: 276, column: 7, scope: !1088)
!1260 = !DILocation(line: 278, column: 11, scope: !1115)
!1261 = !DILocation(line: 278, column: 11, scope: !1116)
!1262 = !DILocation(line: 280, column: 23, scope: !1114)
!1263 = !DILocation(line: 0, scope: !1114)
!1264 = !DILocation(line: 281, column: 15, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 281, column: 15)
!1266 = !DILocation(line: 281, column: 19, scope: !1265)
!1267 = !DILocation(line: 281, column: 22, scope: !1265)
!1268 = !DILocation(line: 281, column: 15, scope: !1114)
!1269 = !DILocation(line: 283, column: 20, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 283, column: 20)
!1271 = !DILocation(line: 283, column: 33, scope: !1270)
!1272 = !DILocation(line: 283, column: 36, scope: !1270)
!1273 = !DILocation(line: 283, column: 20, scope: !1265)
!1274 = !DILocation(line: 0, scope: !1265)
!1275 = !DILocation(line: 288, column: 15, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 288, column: 15)
!1277 = !DILocation(line: 288, column: 41, scope: !1276)
!1278 = !DILocation(line: 288, column: 15, scope: !1114)
!1279 = !DILocation(line: 289, column: 13, scope: !1276)
!1280 = !DILocation(line: 295, column: 15, scope: !1120)
!1281 = !DILocation(line: 295, column: 28, scope: !1120)
!1282 = !DILocation(line: 295, column: 31, scope: !1120)
!1283 = !DILocation(line: 295, column: 15, scope: !1121)
!1284 = !DILocation(line: 299, column: 27, scope: !1119)
!1285 = !DILocation(line: 0, scope: !1119)
!1286 = !DILocation(line: 300, column: 27, scope: !1119)
!1287 = !DILocation(line: 300, column: 31, scope: !1119)
!1288 = !DILocation(line: 300, column: 34, scope: !1119)
!1289 = !DILocation(line: 0, scope: !1120)
!1290 = !DILocation(line: 302, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 302, column: 15)
!1292 = !DILocation(line: 302, column: 15, scope: !1121)
!1293 = !DILocation(line: 303, column: 13, scope: !1291)
!1294 = !DILocation(line: 0, scope: !1115)
!1295 = !DILocation(line: 309, column: 19, scope: !1116)
!1296 = !DILocation(line: 310, column: 7, scope: !1116)
!1297 = !DILocation(line: 313, column: 5, scope: !1116)
!1298 = !DILocation(line: 317, column: 15, scope: !1088)
!1299 = !DILocation(line: 319, column: 7, scope: !1124)
!1300 = !DILocation(line: 319, column: 7, scope: !1088)
!1301 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1302, file: !2, line: 131, type: !122)
!1302 = distinct !DISubprogram(name: "mkdtemp_len", scope: !2, file: !2, line: 131, type: !1303, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!102, !122, !125, !125, !201}
!1305 = !{!1301, !1306, !1307, !1308}
!1306 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1302, file: !2, line: 131, type: !125)
!1307 = !DILocalVariable(name: "x_len", arg: 3, scope: !1302, file: !2, line: 131, type: !125)
!1308 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1302, file: !2, line: 131, type: !201)
!1309 = !DILocation(line: 0, scope: !1302, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 321, column: 17, scope: !1123)
!1311 = !DILocation(line: 133, column: 34, scope: !1302, inlinedAt: !1310)
!1312 = !DILocation(line: 133, column: 10, scope: !1302, inlinedAt: !1310)
!1313 = !DILocation(line: 0, scope: !1123)
!1314 = !DILocation(line: 322, column: 15, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 322, column: 11)
!1316 = !DILocation(line: 322, column: 11, scope: !1123)
!1317 = !DILocation(line: 324, column: 16, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 324, column: 15)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 323, column: 9)
!1320 = !DILocation(line: 324, column: 15, scope: !1319)
!1321 = !DILocation(line: 325, column: 13, scope: !1318)
!1322 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1323, file: !2, line: 124, type: !122)
!1323 = distinct !DISubprogram(name: "mkstemp_len", scope: !2, file: !2, line: 124, type: !1303, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1324)
!1324 = !{!1322, !1325, !1326, !1327}
!1325 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1323, file: !2, line: 124, type: !125)
!1326 = !DILocalVariable(name: "x_len", arg: 3, scope: !1323, file: !2, line: 124, type: !125)
!1327 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1323, file: !2, line: 124, type: !201)
!1328 = !DILocation(line: 0, scope: !1323, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 332, column: 16, scope: !1126)
!1330 = !DILocation(line: 126, column: 34, scope: !1323, inlinedAt: !1329)
!1331 = !DILocation(line: 126, column: 10, scope: !1323, inlinedAt: !1329)
!1332 = !DILocation(line: 0, scope: !1126)
!1333 = !DILocation(line: 333, column: 14, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 333, column: 11)
!1335 = !DILocation(line: 333, column: 18, scope: !1334)
!1336 = !DILocation(line: 333, column: 31, scope: !1334)
!1337 = !DILocation(line: 344, column: 7, scope: !1130)
!1338 = !DILocation(line: 347, column: 20, scope: !1129)
!1339 = !DILocation(line: 333, column: 34, scope: !1334)
!1340 = !DILocation(line: 333, column: 45, scope: !1334)
!1341 = !DILocation(line: 333, column: 11, scope: !1126)
!1342 = !DILocation(line: 335, column: 16, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 335, column: 15)
!1344 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 334, column: 9)
!1345 = !DILocation(line: 335, column: 15, scope: !1344)
!1346 = !DILocation(line: 336, column: 13, scope: !1343)
!1347 = !DILocation(line: 347, column: 39, scope: !1129)
!1348 = !DILocation(line: 347, column: 62, scope: !1129)
!1349 = !DILocation(line: 347, column: 48, scope: !1129)
!1350 = !DILocation(line: 347, column: 70, scope: !1129)
!1351 = !DILocation(line: 347, column: 11, scope: !1130)
!1352 = !DILocation(line: 349, column: 29, scope: !1128)
!1353 = !DILocation(line: 0, scope: !1128)
!1354 = !DILocation(line: 350, column: 11, scope: !1128)
!1355 = !DILocation(line: 351, column: 16, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 351, column: 15)
!1357 = !DILocation(line: 351, column: 15, scope: !1128)
!1358 = !DILocation(line: 352, column: 13, scope: !1356)
!1359 = !DILocation(line: 357, column: 3, scope: !1088)
!1360 = !DISubprogram(name: "bindtextdomain", scope: !920, file: !920, line: 86, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!122, !128, !128}
!1363 = !DISubprogram(name: "textdomain", scope: !920, file: !920, line: 82, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1364 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !2, file: !2, line: 145, type: !484, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!1365 = !DILocation(line: 147, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 147, column: 7)
!1367 = !DILocation(line: 147, column: 7, scope: !1364)
!1368 = !DILocation(line: 148, column: 5, scope: !1366)
!1369 = !DILocation(line: 149, column: 26, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 149, column: 12)
!1371 = !DILocation(line: 149, column: 12, scope: !1370)
!1372 = !DILocation(line: 149, column: 34, scope: !1370)
!1373 = !DILocation(line: 149, column: 12, scope: !1366)
!1374 = !DILocation(line: 150, column: 5, scope: !1370)
!1375 = !DILocation(line: 151, column: 1, scope: !1364)
!1376 = !DISubprogram(name: "atexit", scope: !1062, file: !1062, line: 602, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!102, !483}
!1379 = !DISubprogram(name: "getopt_long", scope: !405, file: !405, line: 66, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!102, !102, !1382, !128, !1384, !410}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1385 = !DISubprogram(name: "strlen", scope: !1058, file: !1058, line: 407, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!127, !128}
!1388 = !DISubprogram(name: "strrchr", scope: !1058, file: !1058, line: 273, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1389 = !DISubprogram(name: "free", scope: !1062, file: !1062, line: 555, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !123}
!1392 = !DISubprogram(name: "__errno_location", scope: !1393, file: !1393, line: 37, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1393 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!410}
!1396 = !DISubprogram(name: "puts", scope: !933, file: !933, line: 661, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!102, !128}
!1399 = !DISubprogram(name: "close", scope: !1400, file: !1400, line: 358, type: !1401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!102, !102}
!1403 = !DISubprogram(name: "remove", scope: !933, file: !933, line: 152, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1404 = !DISubprogram(name: "_exit", scope: !1400, file: !1400, line: 624, type: !859, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1405 = distinct !DISubprogram(name: "last_component", scope: !780, file: !780, line: 29, type: !1064, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !1406)
!1406 = !{!1407, !1408, !1409, !1410}
!1407 = !DILocalVariable(name: "name", arg: 1, scope: !1405, file: !780, line: 29, type: !128)
!1408 = !DILocalVariable(name: "base", scope: !1405, file: !780, line: 31, type: !128)
!1409 = !DILocalVariable(name: "last_was_slash", scope: !1405, file: !780, line: 35, type: !201)
!1410 = !DILocalVariable(name: "p", scope: !1411, file: !780, line: 36, type: !128)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !780, line: 36, column: 3)
!1412 = !DILocation(line: 0, scope: !1405)
!1413 = !DILocation(line: 32, column: 3, scope: !1405)
!1414 = !DILocation(line: 32, column: 10, scope: !1405)
!1415 = !DILocation(line: 33, column: 9, scope: !1405)
!1416 = distinct !{!1416, !1413, !1415, !985}
!1417 = !DILocation(line: 36, column: 30, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !780, line: 36, column: 3)
!1419 = !DILocation(line: 31, column: 15, scope: !1405)
!1420 = !DILocation(line: 36, scope: !1411)
!1421 = !DILocation(line: 0, scope: !1411)
!1422 = !DILocation(line: 36, column: 3, scope: !1411)
!1423 = !DILocation(line: 47, column: 3, scope: !1405)
!1424 = !DILocation(line: 40, column: 16, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !780, line: 40, column: 16)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !780, line: 38, column: 11)
!1427 = distinct !DILexicalBlock(scope: !1418, file: !780, line: 37, column: 5)
!1428 = !DILocation(line: 40, column: 16, scope: !1426)
!1429 = !DILocation(line: 36, column: 35, scope: !1418)
!1430 = !DILocation(line: 36, column: 3, scope: !1418)
!1431 = distinct !{!1431, !1422, !1432, !985}
!1432 = !DILocation(line: 45, column: 5, scope: !1411)
!1433 = distinct !DISubprogram(name: "base_len", scope: !780, file: !780, line: 51, type: !1434, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!125, !128}
!1436 = !{!1437, !1438, !1439}
!1437 = !DILocalVariable(name: "name", arg: 1, scope: !1433, file: !780, line: 51, type: !128)
!1438 = !DILocalVariable(name: "len", scope: !1433, file: !780, line: 53, type: !125)
!1439 = !DILocalVariable(name: "prefix_len", scope: !1433, file: !780, line: 61, type: !125)
!1440 = !DILocation(line: 0, scope: !1433)
!1441 = !DILocation(line: 54, column: 14, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !780, line: 54, column: 3)
!1443 = !DILocation(line: 54, column: 8, scope: !1442)
!1444 = !DILocation(line: 54, column: 32, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !780, line: 54, column: 3)
!1446 = !DILocation(line: 54, column: 38, scope: !1445)
!1447 = !DILocation(line: 54, column: 41, scope: !1445)
!1448 = !DILocation(line: 54, column: 3, scope: !1442)
!1449 = !DILocation(line: 54, column: 70, scope: !1445)
!1450 = distinct !{!1450, !1448, !1451, !985}
!1451 = !DILocation(line: 55, column: 5, scope: !1442)
!1452 = !DILocation(line: 54, scope: !1442)
!1453 = !DILocation(line: 66, column: 3, scope: !1433)
!1454 = distinct !DISubprogram(name: "close_stream", scope: !783, file: !783, line: 55, type: !1455, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !1491)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!102, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1459, file: !230, line: 51, baseType: !102, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1459, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1459, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1459, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1459, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1459, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1459, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1459, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1459, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1459, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1459, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1459, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1459, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1459, file: !230, line: 70, baseType: !1475, size: 64, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1459, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1459, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1459, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1459, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1459, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1459, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1459, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1459, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1459, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1459, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1459, file: !230, line: 93, baseType: !1475, size: 64, offset: 1344)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1459, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1459, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1459, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1459, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1491 = !{!1492, !1493, !1495, !1496}
!1492 = !DILocalVariable(name: "stream", arg: 1, scope: !1454, file: !783, line: 55, type: !1457)
!1493 = !DILocalVariable(name: "some_pending", scope: !1454, file: !783, line: 57, type: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!1495 = !DILocalVariable(name: "prev_fail", scope: !1454, file: !783, line: 58, type: !1494)
!1496 = !DILocalVariable(name: "fclose_fail", scope: !1454, file: !783, line: 59, type: !1494)
!1497 = !DILocation(line: 0, scope: !1454)
!1498 = !DILocation(line: 57, column: 30, scope: !1454)
!1499 = !DILocalVariable(name: "__stream", arg: 1, scope: !1500, file: !1501, line: 135, type: !1457)
!1500 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1501, file: !1501, line: 135, type: !1455, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !1502)
!1501 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1502 = !{!1499}
!1503 = !DILocation(line: 0, scope: !1500, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 58, column: 27, scope: !1454)
!1505 = !DILocation(line: 137, column: 10, scope: !1500, inlinedAt: !1504)
!1506 = !{!1507, !939, i64 0}
!1507 = !{!"_IO_FILE", !939, i64 0, !870, i64 8, !870, i64 16, !870, i64 24, !870, i64 32, !870, i64 40, !870, i64 48, !870, i64 56, !870, i64 64, !870, i64 72, !870, i64 80, !870, i64 88, !870, i64 96, !870, i64 104, !939, i64 112, !939, i64 116, !1508, i64 120, !980, i64 128, !871, i64 130, !871, i64 131, !870, i64 136, !1508, i64 144, !870, i64 152, !870, i64 160, !870, i64 168, !870, i64 176, !1508, i64 184, !939, i64 192, !871, i64 196}
!1508 = !{!"long", !871, i64 0}
!1509 = !DILocation(line: 58, column: 43, scope: !1454)
!1510 = !DILocation(line: 59, column: 29, scope: !1454)
!1511 = !DILocation(line: 59, column: 45, scope: !1454)
!1512 = !DILocation(line: 69, column: 17, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1454, file: !783, line: 69, column: 7)
!1514 = !DILocation(line: 57, column: 50, scope: !1454)
!1515 = !DILocation(line: 69, column: 33, scope: !1513)
!1516 = !DILocation(line: 69, column: 53, scope: !1513)
!1517 = !DILocation(line: 69, column: 59, scope: !1513)
!1518 = !DILocation(line: 69, column: 7, scope: !1454)
!1519 = !DILocation(line: 71, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1513, file: !783, line: 70, column: 5)
!1521 = !DILocation(line: 72, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1520, file: !783, line: 71, column: 11)
!1523 = !DILocation(line: 72, column: 15, scope: !1522)
!1524 = !DILocation(line: 77, column: 1, scope: !1454)
!1525 = !DISubprogram(name: "__fpending", scope: !1526, file: !1526, line: 75, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1526 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!125, !1457}
!1529 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !423, file: !423, line: 50, type: !888, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1530)
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "file", arg: 1, scope: !1529, file: !423, line: 50, type: !128)
!1532 = !DILocation(line: 0, scope: !1529)
!1533 = !DILocation(line: 52, column: 13, scope: !1529)
!1534 = !DILocation(line: 53, column: 1, scope: !1529)
!1535 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !423, file: !423, line: 87, type: !1536, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !201}
!1538 = !{!1539}
!1539 = !DILocalVariable(name: "ignore", arg: 1, scope: !1535, file: !423, line: 87, type: !201)
!1540 = !DILocation(line: 0, scope: !1535)
!1541 = !DILocation(line: 89, column: 16, scope: !1535)
!1542 = !{!1543, !1543, i64 0}
!1543 = !{!"_Bool", !871, i64 0}
!1544 = !DILocation(line: 90, column: 1, scope: !1535)
!1545 = distinct !DISubprogram(name: "close_stdout", scope: !423, file: !423, line: 116, type: !484, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1546)
!1546 = !{!1547}
!1547 = !DILocalVariable(name: "write_error", scope: !1548, file: !423, line: 121, type: !128)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !423, line: 120, column: 5)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !423, line: 118, column: 7)
!1550 = !DILocation(line: 118, column: 21, scope: !1549)
!1551 = !DILocation(line: 118, column: 7, scope: !1549)
!1552 = !DILocation(line: 118, column: 29, scope: !1549)
!1553 = !DILocation(line: 119, column: 7, scope: !1549)
!1554 = !DILocation(line: 119, column: 12, scope: !1549)
!1555 = !{i8 0, i8 2}
!1556 = !DILocation(line: 119, column: 25, scope: !1549)
!1557 = !DILocation(line: 119, column: 28, scope: !1549)
!1558 = !DILocation(line: 119, column: 34, scope: !1549)
!1559 = !DILocation(line: 118, column: 7, scope: !1545)
!1560 = !DILocation(line: 121, column: 33, scope: !1548)
!1561 = !DILocation(line: 0, scope: !1548)
!1562 = !DILocation(line: 122, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1548, file: !423, line: 122, column: 11)
!1564 = !DILocation(line: 0, scope: !1563)
!1565 = !DILocation(line: 122, column: 11, scope: !1548)
!1566 = !DILocation(line: 123, column: 9, scope: !1563)
!1567 = !DILocation(line: 126, column: 9, scope: !1563)
!1568 = !DILocation(line: 128, column: 14, scope: !1548)
!1569 = !DILocation(line: 128, column: 7, scope: !1548)
!1570 = !DILocation(line: 133, column: 42, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1545, file: !423, line: 133, column: 7)
!1572 = !DILocation(line: 133, column: 28, scope: !1571)
!1573 = !DILocation(line: 133, column: 50, scope: !1571)
!1574 = !DILocation(line: 133, column: 7, scope: !1545)
!1575 = !DILocation(line: 134, column: 12, scope: !1571)
!1576 = !DILocation(line: 134, column: 5, scope: !1571)
!1577 = !DILocation(line: 135, column: 1, scope: !1545)
!1578 = distinct !DISubprogram(name: "verror", scope: !438, file: !438, line: 251, type: !1579, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !102, !102, !128, !448}
!1581 = !{!1582, !1583, !1584, !1585}
!1582 = !DILocalVariable(name: "status", arg: 1, scope: !1578, file: !438, line: 251, type: !102)
!1583 = !DILocalVariable(name: "errnum", arg: 2, scope: !1578, file: !438, line: 251, type: !102)
!1584 = !DILocalVariable(name: "message", arg: 3, scope: !1578, file: !438, line: 251, type: !128)
!1585 = !DILocalVariable(name: "args", arg: 4, scope: !1578, file: !438, line: 251, type: !448)
!1586 = !DILocation(line: 0, scope: !1578)
!1587 = !DILocation(line: 261, column: 3, scope: !1578)
!1588 = !DILocation(line: 265, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1578, file: !438, line: 265, column: 7)
!1590 = !DILocation(line: 265, column: 7, scope: !1578)
!1591 = !DILocation(line: 266, column: 5, scope: !1589)
!1592 = !DILocation(line: 272, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !438, line: 268, column: 5)
!1594 = !DILocation(line: 276, column: 3, scope: !1578)
!1595 = !DILocation(line: 282, column: 1, scope: !1578)
!1596 = distinct !DISubprogram(name: "flush_stdout", scope: !438, file: !438, line: 163, type: !484, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1597)
!1597 = !{!1598}
!1598 = !DILocalVariable(name: "stdout_fd", scope: !1596, file: !438, line: 166, type: !102)
!1599 = !DILocation(line: 0, scope: !1596)
!1600 = !DILocalVariable(name: "fd", arg: 1, scope: !1601, file: !438, line: 145, type: !102)
!1601 = distinct !DISubprogram(name: "is_open", scope: !438, file: !438, line: 145, type: !1401, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1602)
!1602 = !{!1600}
!1603 = !DILocation(line: 0, scope: !1601, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 182, column: 25, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1596, file: !438, line: 182, column: 7)
!1606 = !DILocation(line: 157, column: 15, scope: !1601, inlinedAt: !1604)
!1607 = !DILocation(line: 157, column: 12, scope: !1601, inlinedAt: !1604)
!1608 = !DILocation(line: 182, column: 7, scope: !1596)
!1609 = !DILocation(line: 184, column: 5, scope: !1605)
!1610 = !DILocation(line: 185, column: 1, scope: !1596)
!1611 = distinct !DISubprogram(name: "error_tail", scope: !438, file: !438, line: 219, type: !1579, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1612)
!1612 = !{!1613, !1614, !1615, !1616}
!1613 = !DILocalVariable(name: "status", arg: 1, scope: !1611, file: !438, line: 219, type: !102)
!1614 = !DILocalVariable(name: "errnum", arg: 2, scope: !1611, file: !438, line: 219, type: !102)
!1615 = !DILocalVariable(name: "message", arg: 3, scope: !1611, file: !438, line: 219, type: !128)
!1616 = !DILocalVariable(name: "args", arg: 4, scope: !1611, file: !438, line: 219, type: !448)
!1617 = distinct !DIAssignID()
!1618 = !DILocation(line: 0, scope: !1611)
!1619 = !DILocation(line: 229, column: 13, scope: !1611)
!1620 = !DILocalVariable(name: "__stream", arg: 1, scope: !1621, file: !924, line: 132, type: !1624)
!1621 = distinct !DISubprogram(name: "vfprintf", scope: !924, file: !924, line: 132, type: !1622, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1659)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!102, !1624, !928, !448}
!1624 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1628)
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1627, file: !230, line: 51, baseType: !102, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1627, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1627, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1627, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1627, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1627, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1627, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1627, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1627, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1627, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1627, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1627, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1627, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1627, file: !230, line: 70, baseType: !1643, size: 64, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1627, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1627, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1627, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1627, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1627, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1627, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1627, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1627, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1627, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1627, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1627, file: !230, line: 93, baseType: !1643, size: 64, offset: 1344)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1627, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1627, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1627, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1627, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1659 = !{!1620, !1660, !1661}
!1660 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1621, file: !924, line: 133, type: !928)
!1661 = !DILocalVariable(name: "__ap", arg: 3, scope: !1621, file: !924, line: 133, type: !448)
!1662 = !DILocation(line: 0, scope: !1621, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 229, column: 3, scope: !1611)
!1664 = !DILocation(line: 135, column: 10, scope: !1621, inlinedAt: !1663)
!1665 = !DILocation(line: 232, column: 3, scope: !1611)
!1666 = !DILocation(line: 233, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1611, file: !438, line: 233, column: 7)
!1668 = !DILocation(line: 233, column: 7, scope: !1611)
!1669 = !DILocalVariable(name: "errbuf", scope: !1670, file: !438, line: 193, type: !1674)
!1670 = distinct !DISubprogram(name: "print_errno_message", scope: !438, file: !438, line: 188, type: !859, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1671)
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
!1689 = !DILocation(line: 238, column: 3, scope: !1611)
!1690 = !DILocalVariable(name: "__c", arg: 1, scope: !1691, file: !1501, line: 101, type: !102)
!1691 = distinct !DISubprogram(name: "putc_unlocked", scope: !1501, file: !1501, line: 101, type: !1692, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!102, !102, !1625}
!1694 = !{!1690, !1695}
!1695 = !DILocalVariable(name: "__stream", arg: 2, scope: !1691, file: !1501, line: 101, type: !1625)
!1696 = !DILocation(line: 0, scope: !1691, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 238, column: 3, scope: !1611)
!1698 = !DILocation(line: 103, column: 10, scope: !1691, inlinedAt: !1697)
!1699 = !{!1507, !870, i64 40}
!1700 = !{!1507, !870, i64 48}
!1701 = !{!"branch_weights", i32 2000, i32 1}
!1702 = !DILocation(line: 240, column: 3, scope: !1611)
!1703 = !DILocation(line: 241, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1611, file: !438, line: 241, column: 7)
!1705 = !DILocation(line: 241, column: 7, scope: !1611)
!1706 = !DILocation(line: 242, column: 5, scope: !1704)
!1707 = !DILocation(line: 243, column: 1, scope: !1611)
!1708 = !DISubprogram(name: "__vfprintf_chk", scope: !924, file: !924, line: 96, type: !1709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!102, !1624, !102, !928, !448}
!1711 = !DISubprogram(name: "strerror_r", scope: !1058, file: !1058, line: 444, type: !1712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!122, !102, !122, !125}
!1714 = !DISubprogram(name: "__overflow", scope: !933, file: !933, line: 886, type: !1715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!102, !1625, !102}
!1717 = !DISubprogram(name: "fflush_unlocked", scope: !933, file: !933, line: 239, type: !1718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!102, !1625}
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
!1731 = !DILocalVariable(name: "ap", scope: !1724, file: !438, line: 287, type: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !933, line: 52, baseType: !1733)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1734, line: 12, baseType: !1735)
!1734 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !438, baseType: !1736)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !75)
!1737 = distinct !DIAssignID()
!1738 = !DILocation(line: 0, scope: !1724)
!1739 = !DILocation(line: 287, column: 3, scope: !1724)
!1740 = !DILocation(line: 288, column: 3, scope: !1724)
!1741 = !DILocation(line: 289, column: 3, scope: !1724)
!1742 = !DILocation(line: 290, column: 3, scope: !1724)
!1743 = !DILocation(line: 291, column: 1, scope: !1724)
!1744 = !DILocation(line: 0, scope: !445)
!1745 = !DILocation(line: 302, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !445, file: !438, line: 302, column: 7)
!1747 = !DILocation(line: 302, column: 7, scope: !445)
!1748 = !DILocation(line: 307, column: 11, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !438, line: 307, column: 11)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !438, line: 303, column: 5)
!1751 = !DILocation(line: 307, column: 27, scope: !1749)
!1752 = !DILocation(line: 308, column: 11, scope: !1749)
!1753 = !DILocation(line: 308, column: 28, scope: !1749)
!1754 = !DILocation(line: 308, column: 25, scope: !1749)
!1755 = !DILocation(line: 309, column: 15, scope: !1749)
!1756 = !DILocation(line: 309, column: 33, scope: !1749)
!1757 = !DILocation(line: 310, column: 19, scope: !1749)
!1758 = !DILocation(line: 311, column: 22, scope: !1749)
!1759 = !DILocation(line: 311, column: 56, scope: !1749)
!1760 = !DILocation(line: 307, column: 11, scope: !1750)
!1761 = !DILocation(line: 316, column: 21, scope: !1750)
!1762 = !DILocation(line: 317, column: 23, scope: !1750)
!1763 = !DILocation(line: 318, column: 5, scope: !1750)
!1764 = !DILocation(line: 327, column: 3, scope: !445)
!1765 = !DILocation(line: 331, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !445, file: !438, line: 331, column: 7)
!1767 = !DILocation(line: 331, column: 7, scope: !445)
!1768 = !DILocation(line: 332, column: 5, scope: !1766)
!1769 = !DILocation(line: 338, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !438, line: 334, column: 5)
!1771 = !DILocation(line: 346, column: 3, scope: !445)
!1772 = !DILocation(line: 350, column: 3, scope: !445)
!1773 = !DILocation(line: 356, column: 1, scope: !445)
!1774 = distinct !DISubprogram(name: "error_at_line", scope: !438, file: !438, line: 359, type: !1775, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !102, !102, !128, !97, !128, null}
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783}
!1778 = !DILocalVariable(name: "status", arg: 1, scope: !1774, file: !438, line: 359, type: !102)
!1779 = !DILocalVariable(name: "errnum", arg: 2, scope: !1774, file: !438, line: 359, type: !102)
!1780 = !DILocalVariable(name: "file_name", arg: 3, scope: !1774, file: !438, line: 359, type: !128)
!1781 = !DILocalVariable(name: "line_number", arg: 4, scope: !1774, file: !438, line: 360, type: !97)
!1782 = !DILocalVariable(name: "message", arg: 5, scope: !1774, file: !438, line: 360, type: !128)
!1783 = !DILocalVariable(name: "ap", scope: !1774, file: !438, line: 362, type: !1732)
!1784 = distinct !DIAssignID()
!1785 = !DILocation(line: 0, scope: !1774)
!1786 = !DILocation(line: 362, column: 3, scope: !1774)
!1787 = !DILocation(line: 363, column: 3, scope: !1774)
!1788 = !DILocation(line: 364, column: 3, scope: !1774)
!1789 = !DILocation(line: 366, column: 3, scope: !1774)
!1790 = !DILocation(line: 367, column: 1, scope: !1774)
!1791 = distinct !DISubprogram(name: "rpl_fclose", scope: !785, file: !785, line: 58, type: !1792, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1828)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!102, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1796, file: !230, line: 51, baseType: !102, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1796, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1796, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1796, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1796, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1796, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1796, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1796, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1796, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1796, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1796, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1796, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1796, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1796, file: !230, line: 70, baseType: !1812, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1796, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1796, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1796, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1796, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1796, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1796, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1796, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1796, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1796, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1796, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1796, file: !230, line: 93, baseType: !1812, size: 64, offset: 1344)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1796, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1796, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1796, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1796, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1828 = !{!1829, !1830, !1831, !1832}
!1829 = !DILocalVariable(name: "fp", arg: 1, scope: !1791, file: !785, line: 58, type: !1794)
!1830 = !DILocalVariable(name: "saved_errno", scope: !1791, file: !785, line: 60, type: !102)
!1831 = !DILocalVariable(name: "fd", scope: !1791, file: !785, line: 63, type: !102)
!1832 = !DILocalVariable(name: "result", scope: !1791, file: !785, line: 74, type: !102)
!1833 = !DILocation(line: 0, scope: !1791)
!1834 = !DILocation(line: 63, column: 12, scope: !1791)
!1835 = !DILocation(line: 64, column: 10, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1791, file: !785, line: 64, column: 7)
!1837 = !DILocation(line: 64, column: 7, scope: !1791)
!1838 = !DILocation(line: 65, column: 12, scope: !1836)
!1839 = !DILocation(line: 65, column: 5, scope: !1836)
!1840 = !DILocation(line: 70, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1791, file: !785, line: 70, column: 7)
!1842 = !DILocation(line: 70, column: 23, scope: !1841)
!1843 = !DILocation(line: 70, column: 33, scope: !1841)
!1844 = !DILocation(line: 70, column: 26, scope: !1841)
!1845 = !DILocation(line: 70, column: 59, scope: !1841)
!1846 = !DILocation(line: 71, column: 7, scope: !1841)
!1847 = !DILocation(line: 71, column: 10, scope: !1841)
!1848 = !DILocation(line: 70, column: 7, scope: !1791)
!1849 = !DILocation(line: 100, column: 12, scope: !1791)
!1850 = !DILocation(line: 105, column: 7, scope: !1791)
!1851 = !DILocation(line: 72, column: 19, scope: !1841)
!1852 = !DILocation(line: 105, column: 19, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1791, file: !785, line: 105, column: 7)
!1854 = !DILocation(line: 107, column: 13, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !785, line: 106, column: 5)
!1856 = !DILocation(line: 109, column: 5, scope: !1855)
!1857 = !DILocation(line: 112, column: 1, scope: !1791)
!1858 = !DISubprogram(name: "fileno", scope: !933, file: !933, line: 809, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1859 = !DISubprogram(name: "fclose", scope: !933, file: !933, line: 178, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1860 = !DISubprogram(name: "__freading", scope: !1526, file: !1526, line: 51, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1861 = !DISubprogram(name: "lseek", scope: !1400, file: !1400, line: 339, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!252, !102, !252, !102}
!1864 = distinct !DISubprogram(name: "rpl_fflush", scope: !787, file: !787, line: 130, type: !1865, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !1901)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!102, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1869, file: !230, line: 51, baseType: !102, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1869, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1869, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1869, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1869, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1869, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1869, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1869, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1869, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1869, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1869, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1869, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1869, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1869, file: !230, line: 70, baseType: !1885, size: 64, offset: 832)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1869, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1869, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1869, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1869, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1869, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1869, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1869, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1869, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1869, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1869, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1869, file: !230, line: 93, baseType: !1885, size: 64, offset: 1344)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1869, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1869, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1869, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1869, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "stream", arg: 1, scope: !1864, file: !787, line: 130, type: !1867)
!1903 = !DILocation(line: 0, scope: !1864)
!1904 = !DILocation(line: 151, column: 14, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1864, file: !787, line: 151, column: 7)
!1906 = !DILocation(line: 151, column: 22, scope: !1905)
!1907 = !DILocation(line: 151, column: 27, scope: !1905)
!1908 = !DILocation(line: 151, column: 7, scope: !1864)
!1909 = !DILocation(line: 152, column: 12, scope: !1905)
!1910 = !DILocation(line: 152, column: 5, scope: !1905)
!1911 = !DILocalVariable(name: "fp", arg: 1, scope: !1912, file: !787, line: 42, type: !1867)
!1912 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !787, file: !787, line: 42, type: !1913, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1867}
!1915 = !{!1911}
!1916 = !DILocation(line: 0, scope: !1912, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 157, column: 3, scope: !1864)
!1918 = !DILocation(line: 44, column: 12, scope: !1919, inlinedAt: !1917)
!1919 = distinct !DILexicalBlock(scope: !1912, file: !787, line: 44, column: 7)
!1920 = !DILocation(line: 44, column: 19, scope: !1919, inlinedAt: !1917)
!1921 = !DILocation(line: 44, column: 7, scope: !1912, inlinedAt: !1917)
!1922 = !DILocation(line: 46, column: 5, scope: !1919, inlinedAt: !1917)
!1923 = !DILocation(line: 159, column: 10, scope: !1864)
!1924 = !DILocation(line: 159, column: 3, scope: !1864)
!1925 = !DILocation(line: 236, column: 1, scope: !1864)
!1926 = !DISubprogram(name: "fflush", scope: !933, file: !933, line: 230, type: !1865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1927 = distinct !DISubprogram(name: "file_name_concat", scope: !790, file: !790, line: 35, type: !1928, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!122, !128, !128, !1091}
!1930 = !{!1931, !1932, !1933, !1934}
!1931 = !DILocalVariable(name: "dir", arg: 1, scope: !1927, file: !790, line: 35, type: !128)
!1932 = !DILocalVariable(name: "base", arg: 2, scope: !1927, file: !790, line: 35, type: !128)
!1933 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1927, file: !790, line: 35, type: !1091)
!1934 = !DILocalVariable(name: "p", scope: !1927, file: !790, line: 37, type: !122)
!1935 = !DILocation(line: 0, scope: !1927)
!1936 = !DILocation(line: 37, column: 13, scope: !1927)
!1937 = !DILocation(line: 38, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1927, file: !790, line: 38, column: 7)
!1939 = !DILocation(line: 38, column: 7, scope: !1927)
!1940 = !DILocation(line: 39, column: 5, scope: !1938)
!1941 = !DILocation(line: 40, column: 3, scope: !1927)
!1942 = distinct !DISubprogram(name: "mfile_name_concat", scope: !792, file: !792, line: 48, type: !1928, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953}
!1944 = !DILocalVariable(name: "dir", arg: 1, scope: !1942, file: !792, line: 48, type: !128)
!1945 = !DILocalVariable(name: "base", arg: 2, scope: !1942, file: !792, line: 48, type: !128)
!1946 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1942, file: !792, line: 48, type: !1091)
!1947 = !DILocalVariable(name: "dirbase", scope: !1942, file: !792, line: 50, type: !128)
!1948 = !DILocalVariable(name: "dirbaselen", scope: !1942, file: !792, line: 51, type: !125)
!1949 = !DILocalVariable(name: "dirlen", scope: !1942, file: !792, line: 52, type: !125)
!1950 = !DILocalVariable(name: "baselen", scope: !1942, file: !792, line: 53, type: !125)
!1951 = !DILocalVariable(name: "sep", scope: !1942, file: !792, line: 54, type: !4)
!1952 = !DILocalVariable(name: "p_concat", scope: !1942, file: !792, line: 71, type: !122)
!1953 = !DILocalVariable(name: "p", scope: !1954, file: !792, line: 76, type: !122)
!1954 = distinct !DILexicalBlock(scope: !1942, file: !792, line: 75, column: 3)
!1955 = !DILocation(line: 0, scope: !1942)
!1956 = !DILocation(line: 50, column: 25, scope: !1942)
!1957 = !DILocation(line: 51, column: 23, scope: !1942)
!1958 = !DILocation(line: 52, column: 27, scope: !1942)
!1959 = !DILocation(line: 52, column: 33, scope: !1942)
!1960 = !DILocation(line: 53, column: 20, scope: !1942)
!1961 = !DILocation(line: 55, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1942, file: !792, line: 55, column: 7)
!1963 = !DILocation(line: 55, column: 7, scope: !1942)
!1964 = !DILocation(line: 58, column: 13, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !792, line: 58, column: 11)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !792, line: 56, column: 5)
!1967 = !DILocation(line: 58, column: 39, scope: !1965)
!1968 = !DILocation(line: 58, column: 44, scope: !1965)
!1969 = !DILocation(line: 58, column: 11, scope: !1966)
!1970 = !DILocation(line: 61, column: 12, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1962, file: !792, line: 61, column: 12)
!1972 = !DILocation(line: 61, column: 12, scope: !1962)
!1973 = !DILocation(line: 71, column: 35, scope: !1942)
!1974 = !DILocation(line: 71, column: 52, scope: !1942)
!1975 = !DILocation(line: 71, column: 62, scope: !1942)
!1976 = !DILocation(line: 71, column: 20, scope: !1942)
!1977 = !DILocation(line: 72, column: 16, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1942, file: !792, line: 72, column: 7)
!1979 = !DILocation(line: 72, column: 7, scope: !1942)
!1980 = !DILocalVariable(name: "__dest", arg: 1, scope: !1981, file: !1190, line: 42, type: !1193)
!1981 = distinct !DISubprogram(name: "mempcpy", scope: !1190, file: !1190, line: 42, type: !1191, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1982)
!1982 = !{!1980, !1983, !1984}
!1983 = !DILocalVariable(name: "__src", arg: 2, scope: !1981, file: !1190, line: 42, type: !1085)
!1984 = !DILocalVariable(name: "__len", arg: 3, scope: !1981, file: !1190, line: 42, type: !125)
!1985 = !DILocation(line: 0, scope: !1981, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 78, column: 9, scope: !1954)
!1987 = !DILocation(line: 45, column: 10, scope: !1981, inlinedAt: !1986)
!1988 = !DILocation(line: 0, scope: !1954)
!1989 = !DILocation(line: 79, column: 8, scope: !1954)
!1990 = !DILocation(line: 80, column: 7, scope: !1954)
!1991 = !DILocation(line: 82, column: 9, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1954, file: !792, line: 82, column: 9)
!1993 = !DILocation(line: 82, column: 9, scope: !1954)
!1994 = !DILocation(line: 83, column: 23, scope: !1992)
!1995 = !DILocation(line: 83, column: 7, scope: !1992)
!1996 = !DILocation(line: 0, scope: !1981, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 85, column: 9, scope: !1954)
!1998 = !DILocation(line: 45, column: 10, scope: !1981, inlinedAt: !1997)
!1999 = !DILocation(line: 86, column: 8, scope: !1954)
!2000 = !DILocation(line: 89, column: 3, scope: !1942)
!2001 = !DILocation(line: 90, column: 1, scope: !1942)
!2002 = !DISubprogram(name: "malloc", scope: !1062, file: !1062, line: 540, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!123, !125}
!2005 = distinct !DISubprogram(name: "rpl_fseeko", scope: !794, file: !794, line: 28, type: !2006, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2043)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!102, !2008, !2042, !102}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !2010)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2010, file: !230, line: 51, baseType: !102, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2010, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2010, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2010, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2010, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2010, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2010, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2010, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2010, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2010, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2010, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2010, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2010, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2010, file: !230, line: 70, baseType: !2026, size: 64, offset: 832)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2010, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2010, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2010, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2010, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2010, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2010, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2010, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2010, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2010, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2010, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2010, file: !230, line: 93, baseType: !2026, size: 64, offset: 1344)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2010, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2010, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2010, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2010, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !933, line: 63, baseType: !252)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DILocalVariable(name: "fp", arg: 1, scope: !2005, file: !794, line: 28, type: !2008)
!2045 = !DILocalVariable(name: "offset", arg: 2, scope: !2005, file: !794, line: 28, type: !2042)
!2046 = !DILocalVariable(name: "whence", arg: 3, scope: !2005, file: !794, line: 28, type: !102)
!2047 = !DILocalVariable(name: "pos", scope: !2048, file: !794, line: 123, type: !2042)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !794, line: 119, column: 5)
!2049 = distinct !DILexicalBlock(scope: !2005, file: !794, line: 55, column: 7)
!2050 = !DILocation(line: 0, scope: !2005)
!2051 = !DILocation(line: 55, column: 12, scope: !2049)
!2052 = !{!1507, !870, i64 16}
!2053 = !DILocation(line: 55, column: 33, scope: !2049)
!2054 = !{!1507, !870, i64 8}
!2055 = !DILocation(line: 55, column: 25, scope: !2049)
!2056 = !DILocation(line: 56, column: 7, scope: !2049)
!2057 = !DILocation(line: 56, column: 15, scope: !2049)
!2058 = !DILocation(line: 56, column: 37, scope: !2049)
!2059 = !{!1507, !870, i64 32}
!2060 = !DILocation(line: 56, column: 29, scope: !2049)
!2061 = !DILocation(line: 57, column: 7, scope: !2049)
!2062 = !DILocation(line: 57, column: 15, scope: !2049)
!2063 = !{!1507, !870, i64 72}
!2064 = !DILocation(line: 57, column: 29, scope: !2049)
!2065 = !DILocation(line: 55, column: 7, scope: !2005)
!2066 = !DILocation(line: 123, column: 26, scope: !2048)
!2067 = !DILocation(line: 123, column: 19, scope: !2048)
!2068 = !DILocation(line: 0, scope: !2048)
!2069 = !DILocation(line: 124, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2048, file: !794, line: 124, column: 11)
!2071 = !DILocation(line: 124, column: 11, scope: !2048)
!2072 = !DILocation(line: 135, column: 19, scope: !2048)
!2073 = !DILocation(line: 136, column: 12, scope: !2048)
!2074 = !DILocation(line: 136, column: 20, scope: !2048)
!2075 = !{!1507, !1508, i64 144}
!2076 = !DILocation(line: 167, column: 7, scope: !2048)
!2077 = !DILocation(line: 169, column: 10, scope: !2005)
!2078 = !DILocation(line: 169, column: 3, scope: !2005)
!2079 = !DILocation(line: 170, column: 1, scope: !2005)
!2080 = !DISubprogram(name: "fseeko", scope: !933, file: !933, line: 736, type: !2081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!102, !2008, !252, !102}
!2083 = distinct !DISubprogram(name: "getprogname", scope: !796, file: !796, line: 54, type: !2084, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!128}
!2086 = !DILocation(line: 58, column: 10, scope: !2083)
!2087 = !DILocation(line: 58, column: 3, scope: !2083)
!2088 = distinct !DISubprogram(name: "set_program_name", scope: !489, file: !489, line: 37, type: !888, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2089)
!2089 = !{!2090, !2091, !2092}
!2090 = !DILocalVariable(name: "argv0", arg: 1, scope: !2088, file: !489, line: 37, type: !128)
!2091 = !DILocalVariable(name: "slash", scope: !2088, file: !489, line: 44, type: !128)
!2092 = !DILocalVariable(name: "base", scope: !2088, file: !489, line: 45, type: !128)
!2093 = !DILocation(line: 0, scope: !2088)
!2094 = !DILocation(line: 44, column: 23, scope: !2088)
!2095 = !DILocation(line: 45, column: 22, scope: !2088)
!2096 = !DILocation(line: 46, column: 17, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2088, file: !489, line: 46, column: 7)
!2098 = !DILocation(line: 46, column: 9, scope: !2097)
!2099 = !DILocation(line: 46, column: 25, scope: !2097)
!2100 = !DILocation(line: 46, column: 40, scope: !2097)
!2101 = !DILocalVariable(name: "__s1", arg: 1, scope: !2102, file: !951, line: 974, type: !1086)
!2102 = distinct !DISubprogram(name: "memeq", scope: !951, file: !951, line: 974, type: !2103, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!201, !1086, !1086, !125}
!2105 = !{!2101, !2106, !2107}
!2106 = !DILocalVariable(name: "__s2", arg: 2, scope: !2102, file: !951, line: 974, type: !1086)
!2107 = !DILocalVariable(name: "__n", arg: 3, scope: !2102, file: !951, line: 974, type: !125)
!2108 = !DILocation(line: 0, scope: !2102, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 46, column: 28, scope: !2097)
!2110 = !DILocation(line: 976, column: 11, scope: !2102, inlinedAt: !2109)
!2111 = !DILocation(line: 976, column: 10, scope: !2102, inlinedAt: !2109)
!2112 = !DILocation(line: 46, column: 7, scope: !2088)
!2113 = !DILocation(line: 49, column: 11, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !489, line: 49, column: 11)
!2115 = distinct !DILexicalBlock(scope: !2097, file: !489, line: 47, column: 5)
!2116 = !DILocation(line: 49, column: 36, scope: !2114)
!2117 = !DILocation(line: 49, column: 11, scope: !2115)
!2118 = !DILocation(line: 65, column: 16, scope: !2088)
!2119 = !DILocation(line: 71, column: 27, scope: !2088)
!2120 = !DILocation(line: 74, column: 33, scope: !2088)
!2121 = !DILocation(line: 76, column: 1, scope: !2088)
!2122 = distinct !DIAssignID()
!2123 = !DILocation(line: 0, scope: !498)
!2124 = distinct !DIAssignID()
!2125 = !DILocation(line: 40, column: 29, scope: !498)
!2126 = !DILocation(line: 41, column: 19, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !498, file: !499, line: 41, column: 7)
!2128 = !DILocation(line: 41, column: 7, scope: !498)
!2129 = !DILocation(line: 47, column: 3, scope: !498)
!2130 = !DILocation(line: 48, column: 3, scope: !498)
!2131 = !DILocalVariable(name: "ps", arg: 1, scope: !2132, file: !2133, line: 1135, type: !2136)
!2132 = distinct !DISubprogram(name: "mbszero", scope: !2133, file: !2133, line: 1135, type: !2134, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !2137)
!2133 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !2136}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2137 = !{!2131}
!2138 = !DILocation(line: 0, scope: !2132, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 48, column: 18, scope: !498)
!2140 = !DILocalVariable(name: "__dest", arg: 1, scope: !2141, file: !1190, line: 57, type: !123)
!2141 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2142, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!123, !123, !102, !125}
!2144 = !{!2140, !2145, !2146}
!2145 = !DILocalVariable(name: "__ch", arg: 2, scope: !2141, file: !1190, line: 57, type: !102)
!2146 = !DILocalVariable(name: "__len", arg: 3, scope: !2141, file: !1190, line: 57, type: !125)
!2147 = !DILocation(line: 0, scope: !2141, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 1137, column: 3, scope: !2132, inlinedAt: !2139)
!2149 = !DILocation(line: 59, column: 10, scope: !2141, inlinedAt: !2148)
!2150 = !DILocation(line: 49, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !498, file: !499, line: 49, column: 7)
!2152 = !DILocation(line: 49, column: 39, scope: !2151)
!2153 = !DILocation(line: 49, column: 44, scope: !2151)
!2154 = !DILocation(line: 54, column: 1, scope: !498)
!2155 = !DISubprogram(name: "mbrtoc32", scope: !510, file: !510, line: 57, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!125, !2158, !928, !125, !2160}
!2158 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2136)
!2161 = distinct !DISubprogram(name: "clone_quoting_options", scope: !529, file: !529, line: 113, type: !2162, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2165)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2164, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2165 = !{!2166, !2167, !2168}
!2166 = !DILocalVariable(name: "o", arg: 1, scope: !2161, file: !529, line: 113, type: !2164)
!2167 = !DILocalVariable(name: "saved_errno", scope: !2161, file: !529, line: 115, type: !102)
!2168 = !DILocalVariable(name: "p", scope: !2161, file: !529, line: 116, type: !2164)
!2169 = !DILocation(line: 0, scope: !2161)
!2170 = !DILocation(line: 115, column: 21, scope: !2161)
!2171 = !DILocation(line: 116, column: 40, scope: !2161)
!2172 = !DILocation(line: 116, column: 31, scope: !2161)
!2173 = !DILocation(line: 118, column: 9, scope: !2161)
!2174 = !DILocation(line: 119, column: 3, scope: !2161)
!2175 = distinct !DISubprogram(name: "get_quoting_style", scope: !529, file: !529, line: 124, type: !2176, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2180)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!552, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "o", arg: 1, scope: !2175, file: !529, line: 124, type: !2178)
!2182 = !DILocation(line: 0, scope: !2175)
!2183 = !DILocation(line: 126, column: 11, scope: !2175)
!2184 = !DILocation(line: 126, column: 46, scope: !2175)
!2185 = !{!2186, !939, i64 0}
!2186 = !{!"quoting_options", !939, i64 0, !939, i64 4, !871, i64 8, !870, i64 40, !870, i64 48}
!2187 = !DILocation(line: 126, column: 3, scope: !2175)
!2188 = distinct !DISubprogram(name: "set_quoting_style", scope: !529, file: !529, line: 132, type: !2189, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !2164, !552}
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "o", arg: 1, scope: !2188, file: !529, line: 132, type: !2164)
!2193 = !DILocalVariable(name: "s", arg: 2, scope: !2188, file: !529, line: 132, type: !552)
!2194 = !DILocation(line: 0, scope: !2188)
!2195 = !DILocation(line: 134, column: 4, scope: !2188)
!2196 = !DILocation(line: 134, column: 45, scope: !2188)
!2197 = !DILocation(line: 135, column: 1, scope: !2188)
!2198 = distinct !DISubprogram(name: "set_char_quoting", scope: !529, file: !529, line: 143, type: !2199, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!102, !2164, !4, !102}
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2208, !2209}
!2202 = !DILocalVariable(name: "o", arg: 1, scope: !2198, file: !529, line: 143, type: !2164)
!2203 = !DILocalVariable(name: "c", arg: 2, scope: !2198, file: !529, line: 143, type: !4)
!2204 = !DILocalVariable(name: "i", arg: 3, scope: !2198, file: !529, line: 143, type: !102)
!2205 = !DILocalVariable(name: "uc", scope: !2198, file: !529, line: 145, type: !130)
!2206 = !DILocalVariable(name: "p", scope: !2198, file: !529, line: 146, type: !2207)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2208 = !DILocalVariable(name: "shift", scope: !2198, file: !529, line: 148, type: !102)
!2209 = !DILocalVariable(name: "r", scope: !2198, file: !529, line: 149, type: !97)
!2210 = !DILocation(line: 0, scope: !2198)
!2211 = !DILocation(line: 147, column: 6, scope: !2198)
!2212 = !DILocation(line: 147, column: 41, scope: !2198)
!2213 = !DILocation(line: 147, column: 62, scope: !2198)
!2214 = !DILocation(line: 147, column: 57, scope: !2198)
!2215 = !DILocation(line: 148, column: 15, scope: !2198)
!2216 = !DILocation(line: 149, column: 21, scope: !2198)
!2217 = !DILocation(line: 149, column: 24, scope: !2198)
!2218 = !DILocation(line: 149, column: 34, scope: !2198)
!2219 = !DILocation(line: 150, column: 19, scope: !2198)
!2220 = !DILocation(line: 150, column: 24, scope: !2198)
!2221 = !DILocation(line: 150, column: 6, scope: !2198)
!2222 = !DILocation(line: 151, column: 3, scope: !2198)
!2223 = distinct !DISubprogram(name: "set_quoting_flags", scope: !529, file: !529, line: 159, type: !2224, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!102, !2164, !102}
!2226 = !{!2227, !2228, !2229}
!2227 = !DILocalVariable(name: "o", arg: 1, scope: !2223, file: !529, line: 159, type: !2164)
!2228 = !DILocalVariable(name: "i", arg: 2, scope: !2223, file: !529, line: 159, type: !102)
!2229 = !DILocalVariable(name: "r", scope: !2223, file: !529, line: 163, type: !102)
!2230 = !DILocation(line: 0, scope: !2223)
!2231 = !DILocation(line: 161, column: 8, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2223, file: !529, line: 161, column: 7)
!2233 = !DILocation(line: 161, column: 7, scope: !2223)
!2234 = !DILocation(line: 163, column: 14, scope: !2223)
!2235 = !{!2186, !939, i64 4}
!2236 = !DILocation(line: 164, column: 12, scope: !2223)
!2237 = !DILocation(line: 165, column: 3, scope: !2223)
!2238 = distinct !DISubprogram(name: "set_custom_quoting", scope: !529, file: !529, line: 169, type: !2239, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2164, !128, !128}
!2241 = !{!2242, !2243, !2244}
!2242 = !DILocalVariable(name: "o", arg: 1, scope: !2238, file: !529, line: 169, type: !2164)
!2243 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2238, file: !529, line: 170, type: !128)
!2244 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2238, file: !529, line: 170, type: !128)
!2245 = !DILocation(line: 0, scope: !2238)
!2246 = !DILocation(line: 172, column: 8, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2238, file: !529, line: 172, column: 7)
!2248 = !DILocation(line: 172, column: 7, scope: !2238)
!2249 = !DILocation(line: 174, column: 12, scope: !2238)
!2250 = !DILocation(line: 175, column: 8, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2238, file: !529, line: 175, column: 7)
!2252 = !DILocation(line: 175, column: 19, scope: !2251)
!2253 = !DILocation(line: 176, column: 5, scope: !2251)
!2254 = !DILocation(line: 177, column: 6, scope: !2238)
!2255 = !DILocation(line: 177, column: 17, scope: !2238)
!2256 = !{!2186, !870, i64 40}
!2257 = !DILocation(line: 178, column: 6, scope: !2238)
!2258 = !DILocation(line: 178, column: 18, scope: !2238)
!2259 = !{!2186, !870, i64 48}
!2260 = !DILocation(line: 179, column: 1, scope: !2238)
!2261 = !DISubprogram(name: "abort", scope: !1062, file: !1062, line: 598, type: !484, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2262 = distinct !DISubprogram(name: "quotearg_buffer", scope: !529, file: !529, line: 774, type: !2263, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!125, !122, !125, !128, !125, !2178}
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2266 = !DILocalVariable(name: "buffer", arg: 1, scope: !2262, file: !529, line: 774, type: !122)
!2267 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2262, file: !529, line: 774, type: !125)
!2268 = !DILocalVariable(name: "arg", arg: 3, scope: !2262, file: !529, line: 775, type: !128)
!2269 = !DILocalVariable(name: "argsize", arg: 4, scope: !2262, file: !529, line: 775, type: !125)
!2270 = !DILocalVariable(name: "o", arg: 5, scope: !2262, file: !529, line: 776, type: !2178)
!2271 = !DILocalVariable(name: "p", scope: !2262, file: !529, line: 778, type: !2178)
!2272 = !DILocalVariable(name: "saved_errno", scope: !2262, file: !529, line: 779, type: !102)
!2273 = !DILocalVariable(name: "r", scope: !2262, file: !529, line: 780, type: !125)
!2274 = !DILocation(line: 0, scope: !2262)
!2275 = !DILocation(line: 778, column: 37, scope: !2262)
!2276 = !DILocation(line: 779, column: 21, scope: !2262)
!2277 = !DILocation(line: 781, column: 43, scope: !2262)
!2278 = !DILocation(line: 781, column: 53, scope: !2262)
!2279 = !DILocation(line: 781, column: 63, scope: !2262)
!2280 = !DILocation(line: 782, column: 43, scope: !2262)
!2281 = !DILocation(line: 782, column: 58, scope: !2262)
!2282 = !DILocation(line: 780, column: 14, scope: !2262)
!2283 = !DILocation(line: 783, column: 9, scope: !2262)
!2284 = !DILocation(line: 784, column: 3, scope: !2262)
!2285 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !529, file: !529, line: 251, type: !2286, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2290)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!125, !122, !125, !128, !125, !552, !102, !2288, !128, !128}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2316, !2318, !2321, !2322, !2323, !2324, !2327, !2328, !2330, !2331, !2334, !2338, !2339, !2347, !2350, !2351, !2352}
!2291 = !DILocalVariable(name: "buffer", arg: 1, scope: !2285, file: !529, line: 251, type: !122)
!2292 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2285, file: !529, line: 251, type: !125)
!2293 = !DILocalVariable(name: "arg", arg: 3, scope: !2285, file: !529, line: 252, type: !128)
!2294 = !DILocalVariable(name: "argsize", arg: 4, scope: !2285, file: !529, line: 252, type: !125)
!2295 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2285, file: !529, line: 253, type: !552)
!2296 = !DILocalVariable(name: "flags", arg: 6, scope: !2285, file: !529, line: 253, type: !102)
!2297 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2285, file: !529, line: 254, type: !2288)
!2298 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2285, file: !529, line: 255, type: !128)
!2299 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2285, file: !529, line: 256, type: !128)
!2300 = !DILocalVariable(name: "unibyte_locale", scope: !2285, file: !529, line: 258, type: !201)
!2301 = !DILocalVariable(name: "len", scope: !2285, file: !529, line: 260, type: !125)
!2302 = !DILocalVariable(name: "orig_buffersize", scope: !2285, file: !529, line: 261, type: !125)
!2303 = !DILocalVariable(name: "quote_string", scope: !2285, file: !529, line: 262, type: !128)
!2304 = !DILocalVariable(name: "quote_string_len", scope: !2285, file: !529, line: 263, type: !125)
!2305 = !DILocalVariable(name: "backslash_escapes", scope: !2285, file: !529, line: 264, type: !201)
!2306 = !DILocalVariable(name: "elide_outer_quotes", scope: !2285, file: !529, line: 265, type: !201)
!2307 = !DILocalVariable(name: "encountered_single_quote", scope: !2285, file: !529, line: 266, type: !201)
!2308 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2285, file: !529, line: 267, type: !201)
!2309 = !DILabel(scope: !2285, name: "process_input", file: !529, line: 308)
!2310 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2285, file: !529, line: 309, type: !201)
!2311 = !DILocalVariable(name: "lq", scope: !2312, file: !529, line: 361, type: !128)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !529, line: 361, column: 11)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !529, line: 360, column: 13)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !529, line: 333, column: 7)
!2315 = distinct !DILexicalBlock(scope: !2285, file: !529, line: 312, column: 5)
!2316 = !DILocalVariable(name: "i", scope: !2317, file: !529, line: 395, type: !125)
!2317 = distinct !DILexicalBlock(scope: !2285, file: !529, line: 395, column: 3)
!2318 = !DILocalVariable(name: "is_right_quote", scope: !2319, file: !529, line: 397, type: !201)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !529, line: 396, column: 5)
!2320 = distinct !DILexicalBlock(scope: !2317, file: !529, line: 395, column: 3)
!2321 = !DILocalVariable(name: "escaping", scope: !2319, file: !529, line: 398, type: !201)
!2322 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2319, file: !529, line: 399, type: !201)
!2323 = !DILocalVariable(name: "c", scope: !2319, file: !529, line: 417, type: !130)
!2324 = !DILabel(scope: !2325, name: "c_and_shell_escape", file: !529, line: 502)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 478, column: 9)
!2326 = distinct !DILexicalBlock(scope: !2319, file: !529, line: 419, column: 9)
!2327 = !DILabel(scope: !2325, name: "c_escape", file: !529, line: 507)
!2328 = !DILocalVariable(name: "m", scope: !2329, file: !529, line: 598, type: !125)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 596, column: 11)
!2330 = !DILocalVariable(name: "printable", scope: !2329, file: !529, line: 600, type: !201)
!2331 = !DILocalVariable(name: "mbs", scope: !2332, file: !529, line: 609, type: !613)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !529, line: 608, column: 15)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !529, line: 602, column: 17)
!2334 = !DILocalVariable(name: "w", scope: !2335, file: !529, line: 618, type: !509)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !529, line: 617, column: 19)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !529, line: 616, column: 17)
!2337 = distinct !DILexicalBlock(scope: !2332, file: !529, line: 616, column: 17)
!2338 = !DILocalVariable(name: "bytes", scope: !2335, file: !529, line: 619, type: !125)
!2339 = !DILocalVariable(name: "j", scope: !2340, file: !529, line: 648, type: !125)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !529, line: 648, column: 29)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !529, line: 647, column: 27)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !529, line: 645, column: 29)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !529, line: 636, column: 23)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !529, line: 628, column: 30)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !529, line: 623, column: 30)
!2346 = distinct !DILexicalBlock(scope: !2335, file: !529, line: 621, column: 25)
!2347 = !DILocalVariable(name: "ilim", scope: !2348, file: !529, line: 674, type: !125)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !529, line: 671, column: 15)
!2349 = distinct !DILexicalBlock(scope: !2329, file: !529, line: 670, column: 17)
!2350 = !DILabel(scope: !2319, name: "store_escape", file: !529, line: 709)
!2351 = !DILabel(scope: !2319, name: "store_c", file: !529, line: 712)
!2352 = !DILabel(scope: !2285, name: "force_outer_quoting_style", file: !529, line: 753)
!2353 = distinct !DIAssignID()
!2354 = distinct !DIAssignID()
!2355 = distinct !DIAssignID()
!2356 = distinct !DIAssignID()
!2357 = distinct !DIAssignID()
!2358 = !DILocation(line: 0, scope: !2332)
!2359 = distinct !DIAssignID()
!2360 = !DILocation(line: 0, scope: !2335)
!2361 = !DILocation(line: 0, scope: !2285)
!2362 = !DILocation(line: 258, column: 25, scope: !2285)
!2363 = !DILocation(line: 258, column: 36, scope: !2285)
!2364 = !DILocation(line: 265, column: 8, scope: !2285)
!2365 = !DILocation(line: 267, column: 3, scope: !2285)
!2366 = !DILocation(line: 261, column: 10, scope: !2285)
!2367 = !DILocation(line: 262, column: 15, scope: !2285)
!2368 = !DILocation(line: 263, column: 10, scope: !2285)
!2369 = !DILocation(line: 264, column: 8, scope: !2285)
!2370 = !DILocation(line: 266, column: 8, scope: !2285)
!2371 = !DILocation(line: 267, column: 8, scope: !2285)
!2372 = !DILocation(line: 308, column: 2, scope: !2285)
!2373 = !DILocation(line: 311, column: 3, scope: !2285)
!2374 = !DILocation(line: 318, column: 11, scope: !2315)
!2375 = !DILocation(line: 318, column: 12, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2315, file: !529, line: 318, column: 11)
!2377 = !DILocation(line: 319, column: 9, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !529, line: 319, column: 9)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !529, line: 319, column: 9)
!2380 = !DILocation(line: 319, column: 9, scope: !2379)
!2381 = !DILocation(line: 0, scope: !604, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 357, column: 26, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !529, line: 335, column: 11)
!2384 = distinct !DILexicalBlock(scope: !2314, file: !529, line: 334, column: 13)
!2385 = !DILocation(line: 199, column: 29, scope: !604, inlinedAt: !2382)
!2386 = !DILocation(line: 201, column: 19, scope: !2387, inlinedAt: !2382)
!2387 = distinct !DILexicalBlock(scope: !604, file: !529, line: 201, column: 7)
!2388 = !DILocation(line: 201, column: 7, scope: !604, inlinedAt: !2382)
!2389 = !DILocation(line: 229, column: 3, scope: !604, inlinedAt: !2382)
!2390 = !DILocation(line: 230, column: 3, scope: !604, inlinedAt: !2382)
!2391 = !DILocalVariable(name: "ps", arg: 1, scope: !2392, file: !2133, line: 1135, type: !2395)
!2392 = distinct !DISubprogram(name: "mbszero", scope: !2133, file: !2133, line: 1135, type: !2393, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2396)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2396 = !{!2391}
!2397 = !DILocation(line: 0, scope: !2392, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 230, column: 18, scope: !604, inlinedAt: !2382)
!2399 = !DILocalVariable(name: "__dest", arg: 1, scope: !2400, file: !1190, line: 57, type: !123)
!2400 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2142, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2401)
!2401 = !{!2399, !2402, !2403}
!2402 = !DILocalVariable(name: "__ch", arg: 2, scope: !2400, file: !1190, line: 57, type: !102)
!2403 = !DILocalVariable(name: "__len", arg: 3, scope: !2400, file: !1190, line: 57, type: !125)
!2404 = !DILocation(line: 0, scope: !2400, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1137, column: 3, scope: !2392, inlinedAt: !2398)
!2406 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !2405)
!2407 = !DILocation(line: 231, column: 7, scope: !2408, inlinedAt: !2382)
!2408 = distinct !DILexicalBlock(scope: !604, file: !529, line: 231, column: 7)
!2409 = !DILocation(line: 231, column: 40, scope: !2408, inlinedAt: !2382)
!2410 = !DILocation(line: 231, column: 45, scope: !2408, inlinedAt: !2382)
!2411 = !DILocation(line: 235, column: 1, scope: !604, inlinedAt: !2382)
!2412 = !DILocation(line: 0, scope: !604, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 358, column: 27, scope: !2383)
!2414 = !DILocation(line: 199, column: 29, scope: !604, inlinedAt: !2413)
!2415 = !DILocation(line: 201, column: 19, scope: !2387, inlinedAt: !2413)
!2416 = !DILocation(line: 201, column: 7, scope: !604, inlinedAt: !2413)
!2417 = !DILocation(line: 229, column: 3, scope: !604, inlinedAt: !2413)
!2418 = !DILocation(line: 230, column: 3, scope: !604, inlinedAt: !2413)
!2419 = !DILocation(line: 0, scope: !2392, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 230, column: 18, scope: !604, inlinedAt: !2413)
!2421 = !DILocation(line: 0, scope: !2400, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1137, column: 3, scope: !2392, inlinedAt: !2420)
!2423 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !2422)
!2424 = !DILocation(line: 231, column: 7, scope: !2408, inlinedAt: !2413)
!2425 = !DILocation(line: 231, column: 40, scope: !2408, inlinedAt: !2413)
!2426 = !DILocation(line: 231, column: 45, scope: !2408, inlinedAt: !2413)
!2427 = !DILocation(line: 235, column: 1, scope: !604, inlinedAt: !2413)
!2428 = !DILocation(line: 360, column: 14, scope: !2313)
!2429 = !DILocation(line: 360, column: 13, scope: !2314)
!2430 = !DILocation(line: 0, scope: !2312)
!2431 = !DILocation(line: 361, column: 45, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2312, file: !529, line: 361, column: 11)
!2433 = !DILocation(line: 361, column: 11, scope: !2312)
!2434 = !DILocation(line: 362, column: 13, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !529, line: 362, column: 13)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !529, line: 362, column: 13)
!2437 = !DILocation(line: 362, column: 13, scope: !2436)
!2438 = !DILocation(line: 361, column: 52, scope: !2432)
!2439 = distinct !{!2439, !2433, !2440, !985}
!2440 = !DILocation(line: 362, column: 13, scope: !2312)
!2441 = !DILocation(line: 260, column: 10, scope: !2285)
!2442 = !DILocation(line: 365, column: 28, scope: !2314)
!2443 = !DILocation(line: 367, column: 7, scope: !2315)
!2444 = !DILocation(line: 370, column: 7, scope: !2315)
!2445 = !DILocation(line: 373, column: 7, scope: !2315)
!2446 = !DILocation(line: 376, column: 12, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2315, file: !529, line: 376, column: 11)
!2448 = !DILocation(line: 376, column: 11, scope: !2315)
!2449 = !DILocation(line: 381, column: 12, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2315, file: !529, line: 381, column: 11)
!2451 = !DILocation(line: 381, column: 11, scope: !2315)
!2452 = !DILocation(line: 382, column: 9, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !529, line: 382, column: 9)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !529, line: 382, column: 9)
!2455 = !DILocation(line: 382, column: 9, scope: !2454)
!2456 = !DILocation(line: 389, column: 7, scope: !2315)
!2457 = !DILocation(line: 392, column: 7, scope: !2315)
!2458 = !DILocation(line: 0, scope: !2317)
!2459 = !DILocation(line: 395, column: 8, scope: !2317)
!2460 = !DILocation(line: 309, column: 8, scope: !2285)
!2461 = !DILocation(line: 395, scope: !2317)
!2462 = !DILocation(line: 395, column: 34, scope: !2320)
!2463 = !DILocation(line: 395, column: 26, scope: !2320)
!2464 = !DILocation(line: 395, column: 48, scope: !2320)
!2465 = !DILocation(line: 395, column: 55, scope: !2320)
!2466 = !DILocation(line: 395, column: 3, scope: !2317)
!2467 = !DILocation(line: 395, column: 67, scope: !2320)
!2468 = !DILocation(line: 0, scope: !2319)
!2469 = !DILocation(line: 402, column: 11, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2319, file: !529, line: 401, column: 11)
!2471 = !DILocation(line: 404, column: 17, scope: !2470)
!2472 = !DILocation(line: 405, column: 39, scope: !2470)
!2473 = !DILocation(line: 409, column: 32, scope: !2470)
!2474 = !DILocation(line: 405, column: 19, scope: !2470)
!2475 = !DILocation(line: 405, column: 15, scope: !2470)
!2476 = !DILocation(line: 410, column: 11, scope: !2470)
!2477 = !DILocation(line: 410, column: 25, scope: !2470)
!2478 = !DILocalVariable(name: "__s1", arg: 1, scope: !2479, file: !951, line: 974, type: !1086)
!2479 = distinct !DISubprogram(name: "memeq", scope: !951, file: !951, line: 974, type: !2103, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2480)
!2480 = !{!2478, !2481, !2482}
!2481 = !DILocalVariable(name: "__s2", arg: 2, scope: !2479, file: !951, line: 974, type: !1086)
!2482 = !DILocalVariable(name: "__n", arg: 3, scope: !2479, file: !951, line: 974, type: !125)
!2483 = !DILocation(line: 0, scope: !2479, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 410, column: 14, scope: !2470)
!2485 = !DILocation(line: 976, column: 11, scope: !2479, inlinedAt: !2484)
!2486 = !DILocation(line: 976, column: 10, scope: !2479, inlinedAt: !2484)
!2487 = !DILocation(line: 401, column: 11, scope: !2319)
!2488 = !DILocation(line: 417, column: 25, scope: !2319)
!2489 = !DILocation(line: 418, column: 7, scope: !2319)
!2490 = !DILocation(line: 421, column: 15, scope: !2326)
!2491 = !DILocation(line: 423, column: 15, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !529, line: 423, column: 15)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !529, line: 422, column: 13)
!2494 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 421, column: 15)
!2495 = !DILocation(line: 423, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !529, line: 423, column: 15)
!2497 = !DILocation(line: 423, column: 15, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !529, line: 423, column: 15)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !529, line: 423, column: 15)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !529, line: 423, column: 15)
!2501 = !DILocation(line: 423, column: 15, scope: !2499)
!2502 = !DILocation(line: 423, column: 15, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !529, line: 423, column: 15)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !529, line: 423, column: 15)
!2505 = !DILocation(line: 423, column: 15, scope: !2504)
!2506 = !DILocation(line: 423, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !529, line: 423, column: 15)
!2508 = distinct !DILexicalBlock(scope: !2500, file: !529, line: 423, column: 15)
!2509 = !DILocation(line: 423, column: 15, scope: !2508)
!2510 = !DILocation(line: 423, column: 15, scope: !2500)
!2511 = !DILocation(line: 423, column: 15, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !529, line: 423, column: 15)
!2513 = distinct !DILexicalBlock(scope: !2492, file: !529, line: 423, column: 15)
!2514 = !DILocation(line: 423, column: 15, scope: !2513)
!2515 = !DILocation(line: 431, column: 19, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2493, file: !529, line: 430, column: 19)
!2517 = !DILocation(line: 431, column: 24, scope: !2516)
!2518 = !DILocation(line: 431, column: 28, scope: !2516)
!2519 = !DILocation(line: 431, column: 38, scope: !2516)
!2520 = !DILocation(line: 431, column: 48, scope: !2516)
!2521 = !DILocation(line: 431, column: 59, scope: !2516)
!2522 = !DILocation(line: 433, column: 19, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !529, line: 433, column: 19)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !529, line: 433, column: 19)
!2525 = distinct !DILexicalBlock(scope: !2516, file: !529, line: 432, column: 17)
!2526 = !DILocation(line: 433, column: 19, scope: !2524)
!2527 = !DILocation(line: 434, column: 19, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !529, line: 434, column: 19)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !529, line: 434, column: 19)
!2530 = !DILocation(line: 434, column: 19, scope: !2529)
!2531 = !DILocation(line: 435, column: 17, scope: !2525)
!2532 = !DILocation(line: 442, column: 20, scope: !2494)
!2533 = !DILocation(line: 447, column: 11, scope: !2326)
!2534 = !DILocation(line: 450, column: 19, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 448, column: 13)
!2536 = !DILocation(line: 456, column: 19, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2535, file: !529, line: 455, column: 19)
!2538 = !DILocation(line: 456, column: 24, scope: !2537)
!2539 = !DILocation(line: 456, column: 28, scope: !2537)
!2540 = !DILocation(line: 456, column: 38, scope: !2537)
!2541 = !DILocation(line: 456, column: 41, scope: !2537)
!2542 = !DILocation(line: 456, column: 52, scope: !2537)
!2543 = !DILocation(line: 455, column: 19, scope: !2535)
!2544 = !DILocation(line: 457, column: 25, scope: !2537)
!2545 = !DILocation(line: 457, column: 17, scope: !2537)
!2546 = !DILocation(line: 464, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2537, file: !529, line: 458, column: 19)
!2548 = !DILocation(line: 468, column: 21, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !529, line: 468, column: 21)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !529, line: 468, column: 21)
!2551 = !DILocation(line: 468, column: 21, scope: !2550)
!2552 = !DILocation(line: 469, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !529, line: 469, column: 21)
!2554 = distinct !DILexicalBlock(scope: !2547, file: !529, line: 469, column: 21)
!2555 = !DILocation(line: 469, column: 21, scope: !2554)
!2556 = !DILocation(line: 470, column: 21, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !529, line: 470, column: 21)
!2558 = distinct !DILexicalBlock(scope: !2547, file: !529, line: 470, column: 21)
!2559 = !DILocation(line: 470, column: 21, scope: !2558)
!2560 = !DILocation(line: 471, column: 21, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !529, line: 471, column: 21)
!2562 = distinct !DILexicalBlock(scope: !2547, file: !529, line: 471, column: 21)
!2563 = !DILocation(line: 471, column: 21, scope: !2562)
!2564 = !DILocation(line: 472, column: 21, scope: !2547)
!2565 = !DILocation(line: 482, column: 33, scope: !2325)
!2566 = !DILocation(line: 483, column: 33, scope: !2325)
!2567 = !DILocation(line: 485, column: 33, scope: !2325)
!2568 = !DILocation(line: 486, column: 33, scope: !2325)
!2569 = !DILocation(line: 487, column: 33, scope: !2325)
!2570 = !DILocation(line: 490, column: 17, scope: !2325)
!2571 = !DILocation(line: 492, column: 21, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !529, line: 491, column: 15)
!2573 = distinct !DILexicalBlock(scope: !2325, file: !529, line: 490, column: 17)
!2574 = !DILocation(line: 499, column: 35, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2325, file: !529, line: 499, column: 17)
!2576 = !DILocation(line: 499, column: 57, scope: !2575)
!2577 = !DILocation(line: 0, scope: !2325)
!2578 = !DILocation(line: 502, column: 11, scope: !2325)
!2579 = !DILocation(line: 504, column: 17, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2325, file: !529, line: 503, column: 17)
!2581 = !DILocation(line: 507, column: 11, scope: !2325)
!2582 = !DILocation(line: 508, column: 17, scope: !2325)
!2583 = !DILocation(line: 517, column: 15, scope: !2326)
!2584 = !DILocation(line: 517, column: 40, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 517, column: 15)
!2586 = !DILocation(line: 517, column: 47, scope: !2585)
!2587 = !DILocation(line: 517, column: 18, scope: !2585)
!2588 = !DILocation(line: 521, column: 17, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 521, column: 15)
!2590 = !DILocation(line: 521, column: 15, scope: !2326)
!2591 = !DILocation(line: 525, column: 11, scope: !2326)
!2592 = !DILocation(line: 537, column: 15, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 536, column: 15)
!2594 = !DILocation(line: 544, column: 15, scope: !2326)
!2595 = !DILocation(line: 546, column: 19, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !529, line: 545, column: 13)
!2597 = distinct !DILexicalBlock(scope: !2326, file: !529, line: 544, column: 15)
!2598 = !DILocation(line: 549, column: 19, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2596, file: !529, line: 549, column: 19)
!2600 = !DILocation(line: 549, column: 30, scope: !2599)
!2601 = !DILocation(line: 558, column: 15, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !529, line: 558, column: 15)
!2603 = distinct !DILexicalBlock(scope: !2596, file: !529, line: 558, column: 15)
!2604 = !DILocation(line: 558, column: 15, scope: !2603)
!2605 = !DILocation(line: 559, column: 15, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !529, line: 559, column: 15)
!2607 = distinct !DILexicalBlock(scope: !2596, file: !529, line: 559, column: 15)
!2608 = !DILocation(line: 559, column: 15, scope: !2607)
!2609 = !DILocation(line: 560, column: 15, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !529, line: 560, column: 15)
!2611 = distinct !DILexicalBlock(scope: !2596, file: !529, line: 560, column: 15)
!2612 = !DILocation(line: 560, column: 15, scope: !2611)
!2613 = !DILocation(line: 562, column: 13, scope: !2596)
!2614 = !DILocation(line: 602, column: 17, scope: !2329)
!2615 = !DILocation(line: 0, scope: !2329)
!2616 = !DILocation(line: 605, column: 29, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2333, file: !529, line: 603, column: 15)
!2618 = !DILocation(line: 605, column: 27, scope: !2617)
!2619 = !DILocation(line: 606, column: 15, scope: !2617)
!2620 = !DILocation(line: 609, column: 17, scope: !2332)
!2621 = !DILocation(line: 0, scope: !2392, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 609, column: 32, scope: !2332)
!2623 = !DILocation(line: 0, scope: !2400, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 1137, column: 3, scope: !2392, inlinedAt: !2622)
!2625 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !2624)
!2626 = !DILocation(line: 613, column: 29, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2332, file: !529, line: 613, column: 21)
!2628 = !DILocation(line: 613, column: 21, scope: !2332)
!2629 = !DILocation(line: 614, column: 29, scope: !2627)
!2630 = !DILocation(line: 614, column: 19, scope: !2627)
!2631 = !DILocation(line: 618, column: 21, scope: !2335)
!2632 = !DILocation(line: 620, column: 54, scope: !2335)
!2633 = !DILocation(line: 619, column: 36, scope: !2335)
!2634 = !DILocation(line: 621, column: 25, scope: !2335)
!2635 = !DILocation(line: 631, column: 38, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2344, file: !529, line: 629, column: 23)
!2637 = !DILocation(line: 631, column: 48, scope: !2636)
!2638 = !DILocation(line: 626, column: 25, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2345, file: !529, line: 624, column: 23)
!2640 = !DILocation(line: 631, column: 51, scope: !2636)
!2641 = !DILocation(line: 631, column: 25, scope: !2636)
!2642 = !DILocation(line: 632, column: 28, scope: !2636)
!2643 = !DILocation(line: 631, column: 34, scope: !2636)
!2644 = distinct !{!2644, !2641, !2642, !985}
!2645 = !DILocation(line: 0, scope: !2340)
!2646 = !DILocation(line: 646, column: 29, scope: !2342)
!2647 = !DILocation(line: 649, column: 39, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2340, file: !529, line: 648, column: 29)
!2649 = !DILocation(line: 649, column: 31, scope: !2648)
!2650 = !DILocation(line: 648, column: 60, scope: !2648)
!2651 = !DILocation(line: 648, column: 50, scope: !2648)
!2652 = !DILocation(line: 648, column: 29, scope: !2340)
!2653 = distinct !{!2653, !2652, !2654, !985}
!2654 = !DILocation(line: 654, column: 33, scope: !2340)
!2655 = !DILocation(line: 657, column: 43, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2343, file: !529, line: 657, column: 29)
!2657 = !DILocalVariable(name: "wc", arg: 1, scope: !2658, file: !2659, line: 865, type: !2662)
!2658 = distinct !DISubprogram(name: "c32isprint", scope: !2659, file: !2659, line: 865, type: !2660, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2664)
!2659 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!102, !2662}
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2663, line: 20, baseType: !97)
!2663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2664 = !{!2657}
!2665 = !DILocation(line: 0, scope: !2658, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 657, column: 31, scope: !2656)
!2667 = !DILocation(line: 871, column: 10, scope: !2658, inlinedAt: !2666)
!2668 = !DILocation(line: 657, column: 31, scope: !2656)
!2669 = !DILocation(line: 664, column: 23, scope: !2335)
!2670 = !DILocation(line: 665, column: 19, scope: !2336)
!2671 = !DILocation(line: 666, column: 15, scope: !2333)
!2672 = !DILocation(line: 0, scope: !2333)
!2673 = !DILocation(line: 670, column: 19, scope: !2349)
!2674 = !DILocation(line: 670, column: 23, scope: !2349)
!2675 = !DILocation(line: 674, column: 33, scope: !2348)
!2676 = !DILocation(line: 0, scope: !2348)
!2677 = !DILocation(line: 676, column: 17, scope: !2348)
!2678 = !DILocation(line: 398, column: 12, scope: !2319)
!2679 = !DILocation(line: 678, column: 43, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !529, line: 678, column: 25)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !529, line: 677, column: 19)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !529, line: 676, column: 17)
!2683 = distinct !DILexicalBlock(scope: !2348, file: !529, line: 676, column: 17)
!2684 = !DILocation(line: 680, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !529, line: 680, column: 25)
!2686 = distinct !DILexicalBlock(scope: !2680, file: !529, line: 679, column: 23)
!2687 = !DILocation(line: 680, column: 25, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !529, line: 680, column: 25)
!2689 = !DILocation(line: 680, column: 25, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !529, line: 680, column: 25)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !529, line: 680, column: 25)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !529, line: 680, column: 25)
!2693 = !DILocation(line: 680, column: 25, scope: !2691)
!2694 = !DILocation(line: 680, column: 25, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !529, line: 680, column: 25)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !529, line: 680, column: 25)
!2697 = !DILocation(line: 680, column: 25, scope: !2696)
!2698 = !DILocation(line: 680, column: 25, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !529, line: 680, column: 25)
!2700 = distinct !DILexicalBlock(scope: !2692, file: !529, line: 680, column: 25)
!2701 = !DILocation(line: 680, column: 25, scope: !2700)
!2702 = !DILocation(line: 680, column: 25, scope: !2692)
!2703 = !DILocation(line: 680, column: 25, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !529, line: 680, column: 25)
!2705 = distinct !DILexicalBlock(scope: !2685, file: !529, line: 680, column: 25)
!2706 = !DILocation(line: 680, column: 25, scope: !2705)
!2707 = !DILocation(line: 681, column: 25, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !529, line: 681, column: 25)
!2709 = distinct !DILexicalBlock(scope: !2686, file: !529, line: 681, column: 25)
!2710 = !DILocation(line: 681, column: 25, scope: !2709)
!2711 = !DILocation(line: 682, column: 25, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !529, line: 682, column: 25)
!2713 = distinct !DILexicalBlock(scope: !2686, file: !529, line: 682, column: 25)
!2714 = !DILocation(line: 682, column: 25, scope: !2713)
!2715 = !DILocation(line: 683, column: 38, scope: !2686)
!2716 = !DILocation(line: 683, column: 33, scope: !2686)
!2717 = !DILocation(line: 684, column: 23, scope: !2686)
!2718 = !DILocation(line: 685, column: 30, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2680, file: !529, line: 685, column: 30)
!2720 = !DILocation(line: 685, column: 30, scope: !2680)
!2721 = !DILocation(line: 687, column: 25, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !529, line: 687, column: 25)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !529, line: 687, column: 25)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !529, line: 686, column: 23)
!2725 = !DILocation(line: 687, column: 25, scope: !2723)
!2726 = !DILocation(line: 689, column: 23, scope: !2724)
!2727 = !DILocation(line: 690, column: 35, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2681, file: !529, line: 690, column: 25)
!2729 = !DILocation(line: 690, column: 30, scope: !2728)
!2730 = !DILocation(line: 690, column: 25, scope: !2681)
!2731 = !DILocation(line: 692, column: 21, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !529, line: 692, column: 21)
!2733 = distinct !DILexicalBlock(scope: !2681, file: !529, line: 692, column: 21)
!2734 = !DILocation(line: 692, column: 21, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !529, line: 692, column: 21)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !529, line: 692, column: 21)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !529, line: 692, column: 21)
!2738 = !DILocation(line: 692, column: 21, scope: !2736)
!2739 = !DILocation(line: 692, column: 21, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !529, line: 692, column: 21)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !529, line: 692, column: 21)
!2742 = !DILocation(line: 692, column: 21, scope: !2741)
!2743 = !DILocation(line: 692, column: 21, scope: !2737)
!2744 = !DILocation(line: 0, scope: !2681)
!2745 = !DILocation(line: 693, column: 21, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !529, line: 693, column: 21)
!2747 = distinct !DILexicalBlock(scope: !2681, file: !529, line: 693, column: 21)
!2748 = !DILocation(line: 693, column: 21, scope: !2747)
!2749 = !DILocation(line: 694, column: 25, scope: !2681)
!2750 = !DILocation(line: 676, column: 17, scope: !2682)
!2751 = distinct !{!2751, !2752, !2753}
!2752 = !DILocation(line: 676, column: 17, scope: !2683)
!2753 = !DILocation(line: 695, column: 19, scope: !2683)
!2754 = !DILocation(line: 409, column: 30, scope: !2470)
!2755 = !DILocation(line: 702, column: 34, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2319, file: !529, line: 702, column: 11)
!2757 = !DILocation(line: 704, column: 14, scope: !2756)
!2758 = !DILocation(line: 705, column: 14, scope: !2756)
!2759 = !DILocation(line: 705, column: 35, scope: !2756)
!2760 = !DILocation(line: 705, column: 17, scope: !2756)
!2761 = !DILocation(line: 705, column: 47, scope: !2756)
!2762 = !DILocation(line: 705, column: 65, scope: !2756)
!2763 = !DILocation(line: 706, column: 11, scope: !2756)
!2764 = !DILocation(line: 702, column: 11, scope: !2319)
!2765 = !DILocation(line: 395, column: 15, scope: !2317)
!2766 = !DILocation(line: 709, column: 5, scope: !2319)
!2767 = !DILocation(line: 710, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2319, file: !529, line: 710, column: 7)
!2769 = !DILocation(line: 710, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2768, file: !529, line: 710, column: 7)
!2771 = !DILocation(line: 710, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !529, line: 710, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !529, line: 710, column: 7)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !529, line: 710, column: 7)
!2775 = !DILocation(line: 710, column: 7, scope: !2773)
!2776 = !DILocation(line: 710, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !529, line: 710, column: 7)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !529, line: 710, column: 7)
!2779 = !DILocation(line: 710, column: 7, scope: !2778)
!2780 = !DILocation(line: 710, column: 7, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !529, line: 710, column: 7)
!2782 = distinct !DILexicalBlock(scope: !2774, file: !529, line: 710, column: 7)
!2783 = !DILocation(line: 710, column: 7, scope: !2782)
!2784 = !DILocation(line: 710, column: 7, scope: !2774)
!2785 = !DILocation(line: 710, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !529, line: 710, column: 7)
!2787 = distinct !DILexicalBlock(scope: !2768, file: !529, line: 710, column: 7)
!2788 = !DILocation(line: 710, column: 7, scope: !2787)
!2789 = !DILocation(line: 712, column: 5, scope: !2319)
!2790 = !DILocation(line: 713, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !529, line: 713, column: 7)
!2792 = distinct !DILexicalBlock(scope: !2319, file: !529, line: 713, column: 7)
!2793 = !DILocation(line: 417, column: 21, scope: !2319)
!2794 = !DILocation(line: 713, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !529, line: 713, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !529, line: 713, column: 7)
!2797 = distinct !DILexicalBlock(scope: !2791, file: !529, line: 713, column: 7)
!2798 = !DILocation(line: 713, column: 7, scope: !2796)
!2799 = !DILocation(line: 713, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !529, line: 713, column: 7)
!2801 = distinct !DILexicalBlock(scope: !2797, file: !529, line: 713, column: 7)
!2802 = !DILocation(line: 713, column: 7, scope: !2801)
!2803 = !DILocation(line: 713, column: 7, scope: !2797)
!2804 = !DILocation(line: 714, column: 7, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !529, line: 714, column: 7)
!2806 = distinct !DILexicalBlock(scope: !2319, file: !529, line: 714, column: 7)
!2807 = !DILocation(line: 714, column: 7, scope: !2806)
!2808 = !DILocation(line: 716, column: 13, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2319, file: !529, line: 716, column: 11)
!2810 = !DILocation(line: 716, column: 11, scope: !2319)
!2811 = !DILocation(line: 718, column: 5, scope: !2320)
!2812 = !DILocation(line: 395, column: 82, scope: !2320)
!2813 = !DILocation(line: 395, column: 3, scope: !2320)
!2814 = distinct !{!2814, !2466, !2815, !985}
!2815 = !DILocation(line: 718, column: 5, scope: !2317)
!2816 = !DILocation(line: 720, column: 11, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2285, file: !529, line: 720, column: 7)
!2818 = !DILocation(line: 720, column: 16, scope: !2817)
!2819 = !DILocation(line: 728, column: 51, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2285, file: !529, line: 728, column: 7)
!2821 = !DILocation(line: 731, column: 11, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !529, line: 731, column: 11)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !529, line: 730, column: 5)
!2824 = !DILocation(line: 731, column: 11, scope: !2823)
!2825 = !DILocation(line: 732, column: 16, scope: !2822)
!2826 = !DILocation(line: 732, column: 9, scope: !2822)
!2827 = !DILocation(line: 736, column: 18, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2822, file: !529, line: 736, column: 16)
!2829 = !DILocation(line: 736, column: 29, scope: !2828)
!2830 = !DILocation(line: 745, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2285, file: !529, line: 745, column: 7)
!2832 = !DILocation(line: 745, column: 20, scope: !2831)
!2833 = !DILocation(line: 746, column: 12, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !529, line: 746, column: 5)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !529, line: 746, column: 5)
!2836 = !DILocation(line: 746, column: 5, scope: !2835)
!2837 = !DILocation(line: 747, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !529, line: 747, column: 7)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !529, line: 747, column: 7)
!2840 = !DILocation(line: 747, column: 7, scope: !2839)
!2841 = !DILocation(line: 746, column: 39, scope: !2834)
!2842 = distinct !{!2842, !2836, !2843, !985}
!2843 = !DILocation(line: 747, column: 7, scope: !2835)
!2844 = !DILocation(line: 749, column: 11, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2285, file: !529, line: 749, column: 7)
!2846 = !DILocation(line: 749, column: 7, scope: !2285)
!2847 = !DILocation(line: 750, column: 5, scope: !2845)
!2848 = !DILocation(line: 750, column: 17, scope: !2845)
!2849 = !DILocation(line: 753, column: 2, scope: !2285)
!2850 = !DILocation(line: 756, column: 51, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2285, file: !529, line: 756, column: 7)
!2852 = !DILocation(line: 756, column: 21, scope: !2851)
!2853 = !DILocation(line: 760, column: 42, scope: !2285)
!2854 = !DILocation(line: 758, column: 10, scope: !2285)
!2855 = !DILocation(line: 758, column: 3, scope: !2285)
!2856 = !DILocation(line: 762, column: 1, scope: !2285)
!2857 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1062, file: !1062, line: 98, type: !2858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!125}
!2860 = !DISubprogram(name: "iswprint", scope: !2861, file: !2861, line: 120, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2861 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2862 = distinct !DISubprogram(name: "quotearg_alloc", scope: !529, file: !529, line: 788, type: !2863, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!122, !128, !125, !2178}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2862, file: !529, line: 788, type: !128)
!2867 = !DILocalVariable(name: "argsize", arg: 2, scope: !2862, file: !529, line: 788, type: !125)
!2868 = !DILocalVariable(name: "o", arg: 3, scope: !2862, file: !529, line: 789, type: !2178)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !DILocalVariable(name: "arg", arg: 1, scope: !2871, file: !529, line: 801, type: !128)
!2871 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !529, file: !529, line: 801, type: !2872, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!122, !128, !125, !810, !2178}
!2874 = !{!2870, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2875 = !DILocalVariable(name: "argsize", arg: 2, scope: !2871, file: !529, line: 801, type: !125)
!2876 = !DILocalVariable(name: "size", arg: 3, scope: !2871, file: !529, line: 801, type: !810)
!2877 = !DILocalVariable(name: "o", arg: 4, scope: !2871, file: !529, line: 802, type: !2178)
!2878 = !DILocalVariable(name: "p", scope: !2871, file: !529, line: 804, type: !2178)
!2879 = !DILocalVariable(name: "saved_errno", scope: !2871, file: !529, line: 805, type: !102)
!2880 = !DILocalVariable(name: "flags", scope: !2871, file: !529, line: 807, type: !102)
!2881 = !DILocalVariable(name: "bufsize", scope: !2871, file: !529, line: 808, type: !125)
!2882 = !DILocalVariable(name: "buf", scope: !2871, file: !529, line: 812, type: !122)
!2883 = !DILocation(line: 0, scope: !2871, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 791, column: 10, scope: !2862)
!2885 = !DILocation(line: 804, column: 37, scope: !2871, inlinedAt: !2884)
!2886 = !DILocation(line: 805, column: 21, scope: !2871, inlinedAt: !2884)
!2887 = !DILocation(line: 807, column: 18, scope: !2871, inlinedAt: !2884)
!2888 = !DILocation(line: 807, column: 24, scope: !2871, inlinedAt: !2884)
!2889 = !DILocation(line: 808, column: 72, scope: !2871, inlinedAt: !2884)
!2890 = !DILocation(line: 809, column: 56, scope: !2871, inlinedAt: !2884)
!2891 = !DILocation(line: 810, column: 49, scope: !2871, inlinedAt: !2884)
!2892 = !DILocation(line: 811, column: 49, scope: !2871, inlinedAt: !2884)
!2893 = !DILocation(line: 808, column: 20, scope: !2871, inlinedAt: !2884)
!2894 = !DILocation(line: 811, column: 62, scope: !2871, inlinedAt: !2884)
!2895 = !DILocation(line: 812, column: 15, scope: !2871, inlinedAt: !2884)
!2896 = !DILocation(line: 813, column: 60, scope: !2871, inlinedAt: !2884)
!2897 = !DILocation(line: 815, column: 32, scope: !2871, inlinedAt: !2884)
!2898 = !DILocation(line: 815, column: 47, scope: !2871, inlinedAt: !2884)
!2899 = !DILocation(line: 813, column: 3, scope: !2871, inlinedAt: !2884)
!2900 = !DILocation(line: 816, column: 9, scope: !2871, inlinedAt: !2884)
!2901 = !DILocation(line: 791, column: 3, scope: !2862)
!2902 = !DILocation(line: 0, scope: !2871)
!2903 = !DILocation(line: 804, column: 37, scope: !2871)
!2904 = !DILocation(line: 805, column: 21, scope: !2871)
!2905 = !DILocation(line: 807, column: 18, scope: !2871)
!2906 = !DILocation(line: 807, column: 27, scope: !2871)
!2907 = !DILocation(line: 807, column: 24, scope: !2871)
!2908 = !DILocation(line: 808, column: 72, scope: !2871)
!2909 = !DILocation(line: 809, column: 56, scope: !2871)
!2910 = !DILocation(line: 810, column: 49, scope: !2871)
!2911 = !DILocation(line: 811, column: 49, scope: !2871)
!2912 = !DILocation(line: 808, column: 20, scope: !2871)
!2913 = !DILocation(line: 811, column: 62, scope: !2871)
!2914 = !DILocation(line: 812, column: 15, scope: !2871)
!2915 = !DILocation(line: 813, column: 60, scope: !2871)
!2916 = !DILocation(line: 815, column: 32, scope: !2871)
!2917 = !DILocation(line: 815, column: 47, scope: !2871)
!2918 = !DILocation(line: 813, column: 3, scope: !2871)
!2919 = !DILocation(line: 816, column: 9, scope: !2871)
!2920 = !DILocation(line: 817, column: 7, scope: !2871)
!2921 = !DILocation(line: 818, column: 11, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2871, file: !529, line: 817, column: 7)
!2923 = !{!1508, !1508, i64 0}
!2924 = !DILocation(line: 818, column: 5, scope: !2922)
!2925 = !DILocation(line: 819, column: 3, scope: !2871)
!2926 = distinct !DISubprogram(name: "quotearg_free", scope: !529, file: !529, line: 837, type: !484, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2927)
!2927 = !{!2928, !2929}
!2928 = !DILocalVariable(name: "sv", scope: !2926, file: !529, line: 839, type: !627)
!2929 = !DILocalVariable(name: "i", scope: !2930, file: !529, line: 840, type: !102)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !529, line: 840, column: 3)
!2931 = !DILocation(line: 839, column: 24, scope: !2926)
!2932 = !DILocation(line: 0, scope: !2926)
!2933 = !DILocation(line: 0, scope: !2930)
!2934 = !DILocation(line: 840, column: 21, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2930, file: !529, line: 840, column: 3)
!2936 = !DILocation(line: 840, column: 3, scope: !2930)
!2937 = !DILocation(line: 842, column: 13, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2926, file: !529, line: 842, column: 7)
!2939 = !{!2940, !870, i64 8}
!2940 = !{!"slotvec", !1508, i64 0, !870, i64 8}
!2941 = !DILocation(line: 842, column: 17, scope: !2938)
!2942 = !DILocation(line: 842, column: 7, scope: !2926)
!2943 = !DILocation(line: 841, column: 17, scope: !2935)
!2944 = !DILocation(line: 841, column: 5, scope: !2935)
!2945 = !DILocation(line: 840, column: 32, scope: !2935)
!2946 = distinct !{!2946, !2936, !2947, !985}
!2947 = !DILocation(line: 841, column: 20, scope: !2930)
!2948 = !DILocation(line: 844, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2938, file: !529, line: 843, column: 5)
!2950 = !DILocation(line: 845, column: 21, scope: !2949)
!2951 = !{!2940, !1508, i64 0}
!2952 = !DILocation(line: 846, column: 20, scope: !2949)
!2953 = !DILocation(line: 847, column: 5, scope: !2949)
!2954 = !DILocation(line: 848, column: 10, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2926, file: !529, line: 848, column: 7)
!2956 = !DILocation(line: 848, column: 7, scope: !2926)
!2957 = !DILocation(line: 850, column: 7, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !529, line: 849, column: 5)
!2959 = !DILocation(line: 851, column: 15, scope: !2958)
!2960 = !DILocation(line: 852, column: 5, scope: !2958)
!2961 = !DILocation(line: 853, column: 10, scope: !2926)
!2962 = !DILocation(line: 854, column: 1, scope: !2926)
!2963 = distinct !DISubprogram(name: "quotearg_n", scope: !529, file: !529, line: 919, type: !1055, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2964)
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "n", arg: 1, scope: !2963, file: !529, line: 919, type: !102)
!2966 = !DILocalVariable(name: "arg", arg: 2, scope: !2963, file: !529, line: 919, type: !128)
!2967 = !DILocation(line: 0, scope: !2963)
!2968 = !DILocation(line: 921, column: 10, scope: !2963)
!2969 = !DILocation(line: 921, column: 3, scope: !2963)
!2970 = distinct !DISubprogram(name: "quotearg_n_options", scope: !529, file: !529, line: 866, type: !2971, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!122, !102, !128, !125, !2178}
!2973 = !{!2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2984, !2985, !2987, !2988, !2989}
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2970, file: !529, line: 866, type: !102)
!2975 = !DILocalVariable(name: "arg", arg: 2, scope: !2970, file: !529, line: 866, type: !128)
!2976 = !DILocalVariable(name: "argsize", arg: 3, scope: !2970, file: !529, line: 866, type: !125)
!2977 = !DILocalVariable(name: "options", arg: 4, scope: !2970, file: !529, line: 867, type: !2178)
!2978 = !DILocalVariable(name: "saved_errno", scope: !2970, file: !529, line: 869, type: !102)
!2979 = !DILocalVariable(name: "sv", scope: !2970, file: !529, line: 871, type: !627)
!2980 = !DILocalVariable(name: "nslots_max", scope: !2970, file: !529, line: 873, type: !102)
!2981 = !DILocalVariable(name: "preallocated", scope: !2982, file: !529, line: 879, type: !201)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !529, line: 878, column: 5)
!2983 = distinct !DILexicalBlock(scope: !2970, file: !529, line: 877, column: 7)
!2984 = !DILocalVariable(name: "new_nslots", scope: !2982, file: !529, line: 880, type: !823)
!2985 = !DILocalVariable(name: "size", scope: !2986, file: !529, line: 891, type: !125)
!2986 = distinct !DILexicalBlock(scope: !2970, file: !529, line: 890, column: 3)
!2987 = !DILocalVariable(name: "val", scope: !2986, file: !529, line: 892, type: !122)
!2988 = !DILocalVariable(name: "flags", scope: !2986, file: !529, line: 894, type: !102)
!2989 = !DILocalVariable(name: "qsize", scope: !2986, file: !529, line: 895, type: !125)
!2990 = distinct !DIAssignID()
!2991 = !DILocation(line: 0, scope: !2982)
!2992 = !DILocation(line: 0, scope: !2970)
!2993 = !DILocation(line: 869, column: 21, scope: !2970)
!2994 = !DILocation(line: 871, column: 24, scope: !2970)
!2995 = !DILocation(line: 874, column: 17, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2970, file: !529, line: 874, column: 7)
!2997 = !DILocation(line: 875, column: 5, scope: !2996)
!2998 = !DILocation(line: 877, column: 7, scope: !2983)
!2999 = !DILocation(line: 877, column: 14, scope: !2983)
!3000 = !DILocation(line: 877, column: 7, scope: !2970)
!3001 = !DILocation(line: 879, column: 31, scope: !2982)
!3002 = !DILocation(line: 880, column: 7, scope: !2982)
!3003 = !DILocation(line: 880, column: 26, scope: !2982)
!3004 = !DILocation(line: 880, column: 13, scope: !2982)
!3005 = distinct !DIAssignID()
!3006 = !DILocation(line: 882, column: 31, scope: !2982)
!3007 = !DILocation(line: 883, column: 33, scope: !2982)
!3008 = !DILocation(line: 883, column: 42, scope: !2982)
!3009 = !DILocation(line: 883, column: 31, scope: !2982)
!3010 = !DILocation(line: 882, column: 22, scope: !2982)
!3011 = !DILocation(line: 882, column: 15, scope: !2982)
!3012 = !DILocation(line: 884, column: 11, scope: !2982)
!3013 = !DILocation(line: 885, column: 15, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2982, file: !529, line: 884, column: 11)
!3015 = !{i64 0, i64 8, !2923, i64 8, i64 8, !869}
!3016 = !DILocation(line: 885, column: 9, scope: !3014)
!3017 = !DILocation(line: 886, column: 20, scope: !2982)
!3018 = !DILocation(line: 886, column: 18, scope: !2982)
!3019 = !DILocation(line: 886, column: 32, scope: !2982)
!3020 = !DILocation(line: 886, column: 43, scope: !2982)
!3021 = !DILocation(line: 886, column: 53, scope: !2982)
!3022 = !DILocation(line: 0, scope: !2400, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 886, column: 7, scope: !2982)
!3024 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !3023)
!3025 = !DILocation(line: 887, column: 16, scope: !2982)
!3026 = !DILocation(line: 887, column: 14, scope: !2982)
!3027 = !DILocation(line: 888, column: 5, scope: !2983)
!3028 = !DILocation(line: 888, column: 5, scope: !2982)
!3029 = !DILocation(line: 891, column: 19, scope: !2986)
!3030 = !DILocation(line: 891, column: 25, scope: !2986)
!3031 = !DILocation(line: 0, scope: !2986)
!3032 = !DILocation(line: 892, column: 23, scope: !2986)
!3033 = !DILocation(line: 894, column: 26, scope: !2986)
!3034 = !DILocation(line: 894, column: 32, scope: !2986)
!3035 = !DILocation(line: 896, column: 55, scope: !2986)
!3036 = !DILocation(line: 897, column: 55, scope: !2986)
!3037 = !DILocation(line: 898, column: 55, scope: !2986)
!3038 = !DILocation(line: 899, column: 55, scope: !2986)
!3039 = !DILocation(line: 895, column: 20, scope: !2986)
!3040 = !DILocation(line: 901, column: 14, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2986, file: !529, line: 901, column: 9)
!3042 = !DILocation(line: 901, column: 9, scope: !2986)
!3043 = !DILocation(line: 903, column: 35, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !529, line: 902, column: 7)
!3045 = !DILocation(line: 903, column: 20, scope: !3044)
!3046 = !DILocation(line: 904, column: 17, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !529, line: 904, column: 13)
!3048 = !DILocation(line: 904, column: 13, scope: !3044)
!3049 = !DILocation(line: 905, column: 11, scope: !3047)
!3050 = !DILocation(line: 906, column: 27, scope: !3044)
!3051 = !DILocation(line: 906, column: 19, scope: !3044)
!3052 = !DILocation(line: 907, column: 69, scope: !3044)
!3053 = !DILocation(line: 909, column: 44, scope: !3044)
!3054 = !DILocation(line: 910, column: 44, scope: !3044)
!3055 = !DILocation(line: 907, column: 9, scope: !3044)
!3056 = !DILocation(line: 911, column: 7, scope: !3044)
!3057 = !DILocation(line: 913, column: 11, scope: !2986)
!3058 = !DILocation(line: 914, column: 5, scope: !2986)
!3059 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !529, file: !529, line: 925, type: !3060, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!122, !102, !128, !125}
!3062 = !{!3063, !3064, !3065}
!3063 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !529, line: 925, type: !102)
!3064 = !DILocalVariable(name: "arg", arg: 2, scope: !3059, file: !529, line: 925, type: !128)
!3065 = !DILocalVariable(name: "argsize", arg: 3, scope: !3059, file: !529, line: 925, type: !125)
!3066 = !DILocation(line: 0, scope: !3059)
!3067 = !DILocation(line: 927, column: 10, scope: !3059)
!3068 = !DILocation(line: 927, column: 3, scope: !3059)
!3069 = distinct !DISubprogram(name: "quotearg", scope: !529, file: !529, line: 931, type: !1064, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3070)
!3070 = !{!3071}
!3071 = !DILocalVariable(name: "arg", arg: 1, scope: !3069, file: !529, line: 931, type: !128)
!3072 = !DILocation(line: 0, scope: !3069)
!3073 = !DILocation(line: 0, scope: !2963, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 933, column: 10, scope: !3069)
!3075 = !DILocation(line: 921, column: 10, scope: !2963, inlinedAt: !3074)
!3076 = !DILocation(line: 933, column: 3, scope: !3069)
!3077 = distinct !DISubprogram(name: "quotearg_mem", scope: !529, file: !529, line: 937, type: !3078, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!122, !128, !125}
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "arg", arg: 1, scope: !3077, file: !529, line: 937, type: !128)
!3082 = !DILocalVariable(name: "argsize", arg: 2, scope: !3077, file: !529, line: 937, type: !125)
!3083 = !DILocation(line: 0, scope: !3077)
!3084 = !DILocation(line: 0, scope: !3059, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 939, column: 10, scope: !3077)
!3086 = !DILocation(line: 927, column: 10, scope: !3059, inlinedAt: !3085)
!3087 = !DILocation(line: 939, column: 3, scope: !3077)
!3088 = distinct !DISubprogram(name: "quotearg_n_style", scope: !529, file: !529, line: 943, type: !3089, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!122, !102, !552, !128}
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DILocalVariable(name: "n", arg: 1, scope: !3088, file: !529, line: 943, type: !102)
!3093 = !DILocalVariable(name: "s", arg: 2, scope: !3088, file: !529, line: 943, type: !552)
!3094 = !DILocalVariable(name: "arg", arg: 3, scope: !3088, file: !529, line: 943, type: !128)
!3095 = !DILocalVariable(name: "o", scope: !3088, file: !529, line: 945, type: !2179)
!3096 = distinct !DIAssignID()
!3097 = !DILocation(line: 0, scope: !3088)
!3098 = !DILocation(line: 945, column: 3, scope: !3088)
!3099 = !{!3100}
!3100 = distinct !{!3100, !3101, !"quoting_options_from_style: argument 0"}
!3101 = distinct !{!3101, !"quoting_options_from_style"}
!3102 = !DILocation(line: 945, column: 36, scope: !3088)
!3103 = !DILocalVariable(name: "style", arg: 1, scope: !3104, file: !529, line: 183, type: !552)
!3104 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !529, file: !529, line: 183, type: !3105, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!579, !552}
!3107 = !{!3103, !3108}
!3108 = !DILocalVariable(name: "o", scope: !3104, file: !529, line: 185, type: !579)
!3109 = !DILocation(line: 0, scope: !3104, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 945, column: 36, scope: !3088)
!3111 = !DILocation(line: 185, column: 26, scope: !3104, inlinedAt: !3110)
!3112 = distinct !DIAssignID()
!3113 = !DILocation(line: 186, column: 13, scope: !3114, inlinedAt: !3110)
!3114 = distinct !DILexicalBlock(scope: !3104, file: !529, line: 186, column: 7)
!3115 = !DILocation(line: 186, column: 7, scope: !3104, inlinedAt: !3110)
!3116 = !DILocation(line: 187, column: 5, scope: !3114, inlinedAt: !3110)
!3117 = !DILocation(line: 188, column: 11, scope: !3104, inlinedAt: !3110)
!3118 = distinct !DIAssignID()
!3119 = !DILocation(line: 946, column: 10, scope: !3088)
!3120 = !DILocation(line: 947, column: 1, scope: !3088)
!3121 = !DILocation(line: 946, column: 3, scope: !3088)
!3122 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !529, file: !529, line: 950, type: !3123, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!122, !102, !552, !128, !125}
!3125 = !{!3126, !3127, !3128, !3129, !3130}
!3126 = !DILocalVariable(name: "n", arg: 1, scope: !3122, file: !529, line: 950, type: !102)
!3127 = !DILocalVariable(name: "s", arg: 2, scope: !3122, file: !529, line: 950, type: !552)
!3128 = !DILocalVariable(name: "arg", arg: 3, scope: !3122, file: !529, line: 951, type: !128)
!3129 = !DILocalVariable(name: "argsize", arg: 4, scope: !3122, file: !529, line: 951, type: !125)
!3130 = !DILocalVariable(name: "o", scope: !3122, file: !529, line: 953, type: !2179)
!3131 = distinct !DIAssignID()
!3132 = !DILocation(line: 0, scope: !3122)
!3133 = !DILocation(line: 953, column: 3, scope: !3122)
!3134 = !{!3135}
!3135 = distinct !{!3135, !3136, !"quoting_options_from_style: argument 0"}
!3136 = distinct !{!3136, !"quoting_options_from_style"}
!3137 = !DILocation(line: 953, column: 36, scope: !3122)
!3138 = !DILocation(line: 0, scope: !3104, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 953, column: 36, scope: !3122)
!3140 = !DILocation(line: 185, column: 26, scope: !3104, inlinedAt: !3139)
!3141 = distinct !DIAssignID()
!3142 = !DILocation(line: 186, column: 13, scope: !3114, inlinedAt: !3139)
!3143 = !DILocation(line: 186, column: 7, scope: !3104, inlinedAt: !3139)
!3144 = !DILocation(line: 187, column: 5, scope: !3114, inlinedAt: !3139)
!3145 = !DILocation(line: 188, column: 11, scope: !3104, inlinedAt: !3139)
!3146 = distinct !DIAssignID()
!3147 = !DILocation(line: 954, column: 10, scope: !3122)
!3148 = !DILocation(line: 955, column: 1, scope: !3122)
!3149 = !DILocation(line: 954, column: 3, scope: !3122)
!3150 = distinct !DISubprogram(name: "quotearg_style", scope: !529, file: !529, line: 958, type: !3151, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!122, !552, !128}
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "s", arg: 1, scope: !3150, file: !529, line: 958, type: !552)
!3155 = !DILocalVariable(name: "arg", arg: 2, scope: !3150, file: !529, line: 958, type: !128)
!3156 = distinct !DIAssignID()
!3157 = !DILocation(line: 0, scope: !3150)
!3158 = !DILocation(line: 0, scope: !3088, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 960, column: 10, scope: !3150)
!3160 = !DILocation(line: 945, column: 3, scope: !3088, inlinedAt: !3159)
!3161 = !{!3162}
!3162 = distinct !{!3162, !3163, !"quoting_options_from_style: argument 0"}
!3163 = distinct !{!3163, !"quoting_options_from_style"}
!3164 = !DILocation(line: 945, column: 36, scope: !3088, inlinedAt: !3159)
!3165 = !DILocation(line: 0, scope: !3104, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 945, column: 36, scope: !3088, inlinedAt: !3159)
!3167 = !DILocation(line: 185, column: 26, scope: !3104, inlinedAt: !3166)
!3168 = distinct !DIAssignID()
!3169 = !DILocation(line: 186, column: 13, scope: !3114, inlinedAt: !3166)
!3170 = !DILocation(line: 186, column: 7, scope: !3104, inlinedAt: !3166)
!3171 = !DILocation(line: 187, column: 5, scope: !3114, inlinedAt: !3166)
!3172 = !DILocation(line: 188, column: 11, scope: !3104, inlinedAt: !3166)
!3173 = distinct !DIAssignID()
!3174 = !DILocation(line: 946, column: 10, scope: !3088, inlinedAt: !3159)
!3175 = !DILocation(line: 947, column: 1, scope: !3088, inlinedAt: !3159)
!3176 = !DILocation(line: 960, column: 3, scope: !3150)
!3177 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !529, file: !529, line: 964, type: !3178, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!122, !552, !128, !125}
!3180 = !{!3181, !3182, !3183}
!3181 = !DILocalVariable(name: "s", arg: 1, scope: !3177, file: !529, line: 964, type: !552)
!3182 = !DILocalVariable(name: "arg", arg: 2, scope: !3177, file: !529, line: 964, type: !128)
!3183 = !DILocalVariable(name: "argsize", arg: 3, scope: !3177, file: !529, line: 964, type: !125)
!3184 = distinct !DIAssignID()
!3185 = !DILocation(line: 0, scope: !3177)
!3186 = !DILocation(line: 0, scope: !3122, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 966, column: 10, scope: !3177)
!3188 = !DILocation(line: 953, column: 3, scope: !3122, inlinedAt: !3187)
!3189 = !{!3190}
!3190 = distinct !{!3190, !3191, !"quoting_options_from_style: argument 0"}
!3191 = distinct !{!3191, !"quoting_options_from_style"}
!3192 = !DILocation(line: 953, column: 36, scope: !3122, inlinedAt: !3187)
!3193 = !DILocation(line: 0, scope: !3104, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 953, column: 36, scope: !3122, inlinedAt: !3187)
!3195 = !DILocation(line: 185, column: 26, scope: !3104, inlinedAt: !3194)
!3196 = distinct !DIAssignID()
!3197 = !DILocation(line: 186, column: 13, scope: !3114, inlinedAt: !3194)
!3198 = !DILocation(line: 186, column: 7, scope: !3104, inlinedAt: !3194)
!3199 = !DILocation(line: 187, column: 5, scope: !3114, inlinedAt: !3194)
!3200 = !DILocation(line: 188, column: 11, scope: !3104, inlinedAt: !3194)
!3201 = distinct !DIAssignID()
!3202 = !DILocation(line: 954, column: 10, scope: !3122, inlinedAt: !3187)
!3203 = !DILocation(line: 955, column: 1, scope: !3122, inlinedAt: !3187)
!3204 = !DILocation(line: 966, column: 3, scope: !3177)
!3205 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !529, file: !529, line: 970, type: !3206, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!122, !128, !125, !4}
!3208 = !{!3209, !3210, !3211, !3212}
!3209 = !DILocalVariable(name: "arg", arg: 1, scope: !3205, file: !529, line: 970, type: !128)
!3210 = !DILocalVariable(name: "argsize", arg: 2, scope: !3205, file: !529, line: 970, type: !125)
!3211 = !DILocalVariable(name: "ch", arg: 3, scope: !3205, file: !529, line: 970, type: !4)
!3212 = !DILocalVariable(name: "options", scope: !3205, file: !529, line: 972, type: !579)
!3213 = distinct !DIAssignID()
!3214 = !DILocation(line: 0, scope: !3205)
!3215 = !DILocation(line: 972, column: 3, scope: !3205)
!3216 = !DILocation(line: 973, column: 13, scope: !3205)
!3217 = !{i64 0, i64 4, !938, i64 4, i64 4, !938, i64 8, i64 32, !947, i64 40, i64 8, !869, i64 48, i64 8, !869}
!3218 = distinct !DIAssignID()
!3219 = !DILocation(line: 0, scope: !2198, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 974, column: 3, scope: !3205)
!3221 = !DILocation(line: 147, column: 41, scope: !2198, inlinedAt: !3220)
!3222 = !DILocation(line: 147, column: 62, scope: !2198, inlinedAt: !3220)
!3223 = !DILocation(line: 147, column: 57, scope: !2198, inlinedAt: !3220)
!3224 = !DILocation(line: 148, column: 15, scope: !2198, inlinedAt: !3220)
!3225 = !DILocation(line: 149, column: 21, scope: !2198, inlinedAt: !3220)
!3226 = !DILocation(line: 149, column: 24, scope: !2198, inlinedAt: !3220)
!3227 = !DILocation(line: 150, column: 19, scope: !2198, inlinedAt: !3220)
!3228 = !DILocation(line: 150, column: 24, scope: !2198, inlinedAt: !3220)
!3229 = !DILocation(line: 150, column: 6, scope: !2198, inlinedAt: !3220)
!3230 = !DILocation(line: 975, column: 10, scope: !3205)
!3231 = !DILocation(line: 976, column: 1, scope: !3205)
!3232 = !DILocation(line: 975, column: 3, scope: !3205)
!3233 = distinct !DISubprogram(name: "quotearg_char", scope: !529, file: !529, line: 979, type: !3234, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!122, !128, !4}
!3236 = !{!3237, !3238}
!3237 = !DILocalVariable(name: "arg", arg: 1, scope: !3233, file: !529, line: 979, type: !128)
!3238 = !DILocalVariable(name: "ch", arg: 2, scope: !3233, file: !529, line: 979, type: !4)
!3239 = distinct !DIAssignID()
!3240 = !DILocation(line: 0, scope: !3233)
!3241 = !DILocation(line: 0, scope: !3205, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 981, column: 10, scope: !3233)
!3243 = !DILocation(line: 972, column: 3, scope: !3205, inlinedAt: !3242)
!3244 = !DILocation(line: 973, column: 13, scope: !3205, inlinedAt: !3242)
!3245 = distinct !DIAssignID()
!3246 = !DILocation(line: 0, scope: !2198, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 974, column: 3, scope: !3205, inlinedAt: !3242)
!3248 = !DILocation(line: 147, column: 41, scope: !2198, inlinedAt: !3247)
!3249 = !DILocation(line: 147, column: 62, scope: !2198, inlinedAt: !3247)
!3250 = !DILocation(line: 147, column: 57, scope: !2198, inlinedAt: !3247)
!3251 = !DILocation(line: 148, column: 15, scope: !2198, inlinedAt: !3247)
!3252 = !DILocation(line: 149, column: 21, scope: !2198, inlinedAt: !3247)
!3253 = !DILocation(line: 149, column: 24, scope: !2198, inlinedAt: !3247)
!3254 = !DILocation(line: 150, column: 19, scope: !2198, inlinedAt: !3247)
!3255 = !DILocation(line: 150, column: 24, scope: !2198, inlinedAt: !3247)
!3256 = !DILocation(line: 150, column: 6, scope: !2198, inlinedAt: !3247)
!3257 = !DILocation(line: 975, column: 10, scope: !3205, inlinedAt: !3242)
!3258 = !DILocation(line: 976, column: 1, scope: !3205, inlinedAt: !3242)
!3259 = !DILocation(line: 981, column: 3, scope: !3233)
!3260 = distinct !DISubprogram(name: "quotearg_colon", scope: !529, file: !529, line: 985, type: !1064, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3261)
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "arg", arg: 1, scope: !3260, file: !529, line: 985, type: !128)
!3263 = distinct !DIAssignID()
!3264 = !DILocation(line: 0, scope: !3260)
!3265 = !DILocation(line: 0, scope: !3233, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 987, column: 10, scope: !3260)
!3267 = !DILocation(line: 0, scope: !3205, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 981, column: 10, scope: !3233, inlinedAt: !3266)
!3269 = !DILocation(line: 972, column: 3, scope: !3205, inlinedAt: !3268)
!3270 = !DILocation(line: 973, column: 13, scope: !3205, inlinedAt: !3268)
!3271 = distinct !DIAssignID()
!3272 = !DILocation(line: 0, scope: !2198, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 974, column: 3, scope: !3205, inlinedAt: !3268)
!3274 = !DILocation(line: 147, column: 57, scope: !2198, inlinedAt: !3273)
!3275 = !DILocation(line: 149, column: 21, scope: !2198, inlinedAt: !3273)
!3276 = !DILocation(line: 150, column: 6, scope: !2198, inlinedAt: !3273)
!3277 = !DILocation(line: 975, column: 10, scope: !3205, inlinedAt: !3268)
!3278 = !DILocation(line: 976, column: 1, scope: !3205, inlinedAt: !3268)
!3279 = !DILocation(line: 987, column: 3, scope: !3260)
!3280 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !529, file: !529, line: 991, type: !3078, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3281)
!3281 = !{!3282, !3283}
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3280, file: !529, line: 991, type: !128)
!3283 = !DILocalVariable(name: "argsize", arg: 2, scope: !3280, file: !529, line: 991, type: !125)
!3284 = distinct !DIAssignID()
!3285 = !DILocation(line: 0, scope: !3280)
!3286 = !DILocation(line: 0, scope: !3205, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 993, column: 10, scope: !3280)
!3288 = !DILocation(line: 972, column: 3, scope: !3205, inlinedAt: !3287)
!3289 = !DILocation(line: 973, column: 13, scope: !3205, inlinedAt: !3287)
!3290 = distinct !DIAssignID()
!3291 = !DILocation(line: 0, scope: !2198, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 974, column: 3, scope: !3205, inlinedAt: !3287)
!3293 = !DILocation(line: 147, column: 57, scope: !2198, inlinedAt: !3292)
!3294 = !DILocation(line: 149, column: 21, scope: !2198, inlinedAt: !3292)
!3295 = !DILocation(line: 150, column: 6, scope: !2198, inlinedAt: !3292)
!3296 = !DILocation(line: 975, column: 10, scope: !3205, inlinedAt: !3287)
!3297 = !DILocation(line: 976, column: 1, scope: !3205, inlinedAt: !3287)
!3298 = !DILocation(line: 993, column: 3, scope: !3280)
!3299 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !529, file: !529, line: 997, type: !3089, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3300)
!3300 = !{!3301, !3302, !3303, !3304}
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3299, file: !529, line: 997, type: !102)
!3302 = !DILocalVariable(name: "s", arg: 2, scope: !3299, file: !529, line: 997, type: !552)
!3303 = !DILocalVariable(name: "arg", arg: 3, scope: !3299, file: !529, line: 997, type: !128)
!3304 = !DILocalVariable(name: "options", scope: !3299, file: !529, line: 999, type: !579)
!3305 = distinct !DIAssignID()
!3306 = !DILocation(line: 0, scope: !3299)
!3307 = !DILocation(line: 185, column: 26, scope: !3104, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 1000, column: 13, scope: !3299)
!3309 = !DILocation(line: 999, column: 3, scope: !3299)
!3310 = !DILocation(line: 0, scope: !3104, inlinedAt: !3308)
!3311 = !DILocation(line: 186, column: 13, scope: !3114, inlinedAt: !3308)
!3312 = !DILocation(line: 186, column: 7, scope: !3104, inlinedAt: !3308)
!3313 = !DILocation(line: 187, column: 5, scope: !3114, inlinedAt: !3308)
!3314 = !{!3315}
!3315 = distinct !{!3315, !3316, !"quoting_options_from_style: argument 0"}
!3316 = distinct !{!3316, !"quoting_options_from_style"}
!3317 = !DILocation(line: 1000, column: 13, scope: !3299)
!3318 = distinct !DIAssignID()
!3319 = distinct !DIAssignID()
!3320 = !DILocation(line: 0, scope: !2198, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 1001, column: 3, scope: !3299)
!3322 = !DILocation(line: 147, column: 57, scope: !2198, inlinedAt: !3321)
!3323 = !DILocation(line: 149, column: 21, scope: !2198, inlinedAt: !3321)
!3324 = !DILocation(line: 150, column: 6, scope: !2198, inlinedAt: !3321)
!3325 = distinct !DIAssignID()
!3326 = !DILocation(line: 1002, column: 10, scope: !3299)
!3327 = !DILocation(line: 1003, column: 1, scope: !3299)
!3328 = !DILocation(line: 1002, column: 3, scope: !3299)
!3329 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !529, file: !529, line: 1006, type: !3330, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!122, !102, !128, !128, !128}
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !529, line: 1006, type: !102)
!3334 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3329, file: !529, line: 1006, type: !128)
!3335 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3329, file: !529, line: 1007, type: !128)
!3336 = !DILocalVariable(name: "arg", arg: 4, scope: !3329, file: !529, line: 1007, type: !128)
!3337 = distinct !DIAssignID()
!3338 = !DILocation(line: 0, scope: !3329)
!3339 = !DILocalVariable(name: "o", scope: !3340, file: !529, line: 1018, type: !579)
!3340 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !529, file: !529, line: 1014, type: !3341, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!122, !102, !128, !128, !128, !125}
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3339}
!3344 = !DILocalVariable(name: "n", arg: 1, scope: !3340, file: !529, line: 1014, type: !102)
!3345 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3340, file: !529, line: 1014, type: !128)
!3346 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3340, file: !529, line: 1015, type: !128)
!3347 = !DILocalVariable(name: "arg", arg: 4, scope: !3340, file: !529, line: 1016, type: !128)
!3348 = !DILocalVariable(name: "argsize", arg: 5, scope: !3340, file: !529, line: 1016, type: !125)
!3349 = !DILocation(line: 0, scope: !3340, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 1009, column: 10, scope: !3329)
!3351 = !DILocation(line: 1018, column: 3, scope: !3340, inlinedAt: !3350)
!3352 = !DILocation(line: 1018, column: 30, scope: !3340, inlinedAt: !3350)
!3353 = distinct !DIAssignID()
!3354 = distinct !DIAssignID()
!3355 = !DILocation(line: 0, scope: !2238, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 1019, column: 3, scope: !3340, inlinedAt: !3350)
!3357 = !DILocation(line: 174, column: 12, scope: !2238, inlinedAt: !3356)
!3358 = distinct !DIAssignID()
!3359 = !DILocation(line: 175, column: 8, scope: !2251, inlinedAt: !3356)
!3360 = !DILocation(line: 175, column: 19, scope: !2251, inlinedAt: !3356)
!3361 = !DILocation(line: 176, column: 5, scope: !2251, inlinedAt: !3356)
!3362 = !DILocation(line: 177, column: 6, scope: !2238, inlinedAt: !3356)
!3363 = !DILocation(line: 177, column: 17, scope: !2238, inlinedAt: !3356)
!3364 = distinct !DIAssignID()
!3365 = !DILocation(line: 178, column: 6, scope: !2238, inlinedAt: !3356)
!3366 = !DILocation(line: 178, column: 18, scope: !2238, inlinedAt: !3356)
!3367 = distinct !DIAssignID()
!3368 = !DILocation(line: 1020, column: 10, scope: !3340, inlinedAt: !3350)
!3369 = !DILocation(line: 1021, column: 1, scope: !3340, inlinedAt: !3350)
!3370 = !DILocation(line: 1009, column: 3, scope: !3329)
!3371 = distinct !DIAssignID()
!3372 = !DILocation(line: 0, scope: !3340)
!3373 = !DILocation(line: 1018, column: 3, scope: !3340)
!3374 = !DILocation(line: 1018, column: 30, scope: !3340)
!3375 = distinct !DIAssignID()
!3376 = distinct !DIAssignID()
!3377 = !DILocation(line: 0, scope: !2238, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 1019, column: 3, scope: !3340)
!3379 = !DILocation(line: 174, column: 12, scope: !2238, inlinedAt: !3378)
!3380 = distinct !DIAssignID()
!3381 = !DILocation(line: 175, column: 8, scope: !2251, inlinedAt: !3378)
!3382 = !DILocation(line: 175, column: 19, scope: !2251, inlinedAt: !3378)
!3383 = !DILocation(line: 176, column: 5, scope: !2251, inlinedAt: !3378)
!3384 = !DILocation(line: 177, column: 6, scope: !2238, inlinedAt: !3378)
!3385 = !DILocation(line: 177, column: 17, scope: !2238, inlinedAt: !3378)
!3386 = distinct !DIAssignID()
!3387 = !DILocation(line: 178, column: 6, scope: !2238, inlinedAt: !3378)
!3388 = !DILocation(line: 178, column: 18, scope: !2238, inlinedAt: !3378)
!3389 = distinct !DIAssignID()
!3390 = !DILocation(line: 1020, column: 10, scope: !3340)
!3391 = !DILocation(line: 1021, column: 1, scope: !3340)
!3392 = !DILocation(line: 1020, column: 3, scope: !3340)
!3393 = distinct !DISubprogram(name: "quotearg_custom", scope: !529, file: !529, line: 1024, type: !3394, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!122, !128, !128, !128}
!3396 = !{!3397, !3398, !3399}
!3397 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3393, file: !529, line: 1024, type: !128)
!3398 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3393, file: !529, line: 1024, type: !128)
!3399 = !DILocalVariable(name: "arg", arg: 3, scope: !3393, file: !529, line: 1025, type: !128)
!3400 = distinct !DIAssignID()
!3401 = !DILocation(line: 0, scope: !3393)
!3402 = !DILocation(line: 0, scope: !3329, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 1027, column: 10, scope: !3393)
!3404 = !DILocation(line: 0, scope: !3340, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1009, column: 10, scope: !3329, inlinedAt: !3403)
!3406 = !DILocation(line: 1018, column: 3, scope: !3340, inlinedAt: !3405)
!3407 = !DILocation(line: 1018, column: 30, scope: !3340, inlinedAt: !3405)
!3408 = distinct !DIAssignID()
!3409 = distinct !DIAssignID()
!3410 = !DILocation(line: 0, scope: !2238, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 1019, column: 3, scope: !3340, inlinedAt: !3405)
!3412 = !DILocation(line: 174, column: 12, scope: !2238, inlinedAt: !3411)
!3413 = distinct !DIAssignID()
!3414 = !DILocation(line: 175, column: 8, scope: !2251, inlinedAt: !3411)
!3415 = !DILocation(line: 175, column: 19, scope: !2251, inlinedAt: !3411)
!3416 = !DILocation(line: 176, column: 5, scope: !2251, inlinedAt: !3411)
!3417 = !DILocation(line: 177, column: 6, scope: !2238, inlinedAt: !3411)
!3418 = !DILocation(line: 177, column: 17, scope: !2238, inlinedAt: !3411)
!3419 = distinct !DIAssignID()
!3420 = !DILocation(line: 178, column: 6, scope: !2238, inlinedAt: !3411)
!3421 = !DILocation(line: 178, column: 18, scope: !2238, inlinedAt: !3411)
!3422 = distinct !DIAssignID()
!3423 = !DILocation(line: 1020, column: 10, scope: !3340, inlinedAt: !3405)
!3424 = !DILocation(line: 1021, column: 1, scope: !3340, inlinedAt: !3405)
!3425 = !DILocation(line: 1027, column: 3, scope: !3393)
!3426 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !529, file: !529, line: 1031, type: !3427, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!122, !128, !128, !128, !125}
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3426, file: !529, line: 1031, type: !128)
!3431 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3426, file: !529, line: 1031, type: !128)
!3432 = !DILocalVariable(name: "arg", arg: 3, scope: !3426, file: !529, line: 1032, type: !128)
!3433 = !DILocalVariable(name: "argsize", arg: 4, scope: !3426, file: !529, line: 1032, type: !125)
!3434 = distinct !DIAssignID()
!3435 = !DILocation(line: 0, scope: !3426)
!3436 = !DILocation(line: 0, scope: !3340, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 1034, column: 10, scope: !3426)
!3438 = !DILocation(line: 1018, column: 3, scope: !3340, inlinedAt: !3437)
!3439 = !DILocation(line: 1018, column: 30, scope: !3340, inlinedAt: !3437)
!3440 = distinct !DIAssignID()
!3441 = distinct !DIAssignID()
!3442 = !DILocation(line: 0, scope: !2238, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 1019, column: 3, scope: !3340, inlinedAt: !3437)
!3444 = !DILocation(line: 174, column: 12, scope: !2238, inlinedAt: !3443)
!3445 = distinct !DIAssignID()
!3446 = !DILocation(line: 175, column: 8, scope: !2251, inlinedAt: !3443)
!3447 = !DILocation(line: 175, column: 19, scope: !2251, inlinedAt: !3443)
!3448 = !DILocation(line: 176, column: 5, scope: !2251, inlinedAt: !3443)
!3449 = !DILocation(line: 177, column: 6, scope: !2238, inlinedAt: !3443)
!3450 = !DILocation(line: 177, column: 17, scope: !2238, inlinedAt: !3443)
!3451 = distinct !DIAssignID()
!3452 = !DILocation(line: 178, column: 6, scope: !2238, inlinedAt: !3443)
!3453 = !DILocation(line: 178, column: 18, scope: !2238, inlinedAt: !3443)
!3454 = distinct !DIAssignID()
!3455 = !DILocation(line: 1020, column: 10, scope: !3340, inlinedAt: !3437)
!3456 = !DILocation(line: 1021, column: 1, scope: !3340, inlinedAt: !3437)
!3457 = !DILocation(line: 1034, column: 3, scope: !3426)
!3458 = distinct !DISubprogram(name: "quote_n_mem", scope: !529, file: !529, line: 1049, type: !3459, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!128, !102, !128, !125}
!3461 = !{!3462, !3463, !3464}
!3462 = !DILocalVariable(name: "n", arg: 1, scope: !3458, file: !529, line: 1049, type: !102)
!3463 = !DILocalVariable(name: "arg", arg: 2, scope: !3458, file: !529, line: 1049, type: !128)
!3464 = !DILocalVariable(name: "argsize", arg: 3, scope: !3458, file: !529, line: 1049, type: !125)
!3465 = !DILocation(line: 0, scope: !3458)
!3466 = !DILocation(line: 1051, column: 10, scope: !3458)
!3467 = !DILocation(line: 1051, column: 3, scope: !3458)
!3468 = distinct !DISubprogram(name: "quote_mem", scope: !529, file: !529, line: 1055, type: !3469, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!128, !128, !125}
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "arg", arg: 1, scope: !3468, file: !529, line: 1055, type: !128)
!3473 = !DILocalVariable(name: "argsize", arg: 2, scope: !3468, file: !529, line: 1055, type: !125)
!3474 = !DILocation(line: 0, scope: !3468)
!3475 = !DILocation(line: 0, scope: !3458, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 1057, column: 10, scope: !3468)
!3477 = !DILocation(line: 1051, column: 10, scope: !3458, inlinedAt: !3476)
!3478 = !DILocation(line: 1057, column: 3, scope: !3468)
!3479 = distinct !DISubprogram(name: "quote_n", scope: !529, file: !529, line: 1061, type: !3480, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!128, !102, !128}
!3482 = !{!3483, !3484}
!3483 = !DILocalVariable(name: "n", arg: 1, scope: !3479, file: !529, line: 1061, type: !102)
!3484 = !DILocalVariable(name: "arg", arg: 2, scope: !3479, file: !529, line: 1061, type: !128)
!3485 = !DILocation(line: 0, scope: !3479)
!3486 = !DILocation(line: 0, scope: !3458, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 1063, column: 10, scope: !3479)
!3488 = !DILocation(line: 1051, column: 10, scope: !3458, inlinedAt: !3487)
!3489 = !DILocation(line: 1063, column: 3, scope: !3479)
!3490 = distinct !DISubprogram(name: "quote", scope: !529, file: !529, line: 1067, type: !3491, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!128, !128}
!3493 = !{!3494}
!3494 = !DILocalVariable(name: "arg", arg: 1, scope: !3490, file: !529, line: 1067, type: !128)
!3495 = !DILocation(line: 0, scope: !3490)
!3496 = !DILocation(line: 0, scope: !3479, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1069, column: 10, scope: !3490)
!3498 = !DILocation(line: 0, scope: !3458, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 1063, column: 10, scope: !3479, inlinedAt: !3497)
!3500 = !DILocation(line: 1051, column: 10, scope: !3458, inlinedAt: !3499)
!3501 = !DILocation(line: 1069, column: 3, scope: !3490)
!3502 = distinct !DIAssignID()
!3503 = !DILocation(line: 0, scope: !640)
!3504 = distinct !DIAssignID()
!3505 = !DILocation(line: 181, column: 53, scope: !640)
!3506 = !DILocation(line: 181, column: 10, scope: !640)
!3507 = !DILocation(line: 181, column: 3, scope: !640)
!3508 = distinct !DISubprogram(name: "try_tempname_len", scope: !641, file: !641, line: 189, type: !3509, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!102, !122, !102, !123, !661, !125}
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3523, !3524, !3525, !3527, !3528, !3529, !3531, !3535}
!3512 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3508, file: !641, line: 189, type: !122)
!3513 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3508, file: !641, line: 189, type: !102)
!3514 = !DILocalVariable(name: "args", arg: 3, scope: !3508, file: !641, line: 189, type: !123)
!3515 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3508, file: !641, line: 190, type: !661)
!3516 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3508, file: !641, line: 190, type: !125)
!3517 = !DILocalVariable(name: "saved_errno", scope: !3508, file: !641, line: 192, type: !102)
!3518 = !DILocalVariable(name: "attempts", scope: !3508, file: !641, line: 208, type: !97)
!3519 = !DILocalVariable(name: "v", scope: !3508, file: !641, line: 212, type: !3520)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "random_value", file: !641, line: 64, baseType: !3521)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3522, line: 75, baseType: !127)
!3522 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!3523 = !DILocalVariable(name: "vdigbuf", scope: !3508, file: !641, line: 216, type: !3520)
!3524 = !DILocalVariable(name: "vdigits", scope: !3508, file: !641, line: 217, type: !102)
!3525 = !DILocalVariable(name: "biased_min", scope: !3508, file: !641, line: 221, type: !3526)
!3526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3527 = !DILocalVariable(name: "len", scope: !3508, file: !641, line: 224, type: !125)
!3528 = !DILocalVariable(name: "XXXXXX", scope: !3508, file: !641, line: 233, type: !122)
!3529 = !DILocalVariable(name: "count", scope: !3530, file: !641, line: 235, type: !97)
!3530 = distinct !DILexicalBlock(scope: !3508, file: !641, line: 235, column: 3)
!3531 = !DILocalVariable(name: "i", scope: !3532, file: !641, line: 237, type: !125)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !641, line: 237, column: 7)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !641, line: 236, column: 5)
!3534 = distinct !DILexicalBlock(scope: !3530, file: !641, line: 235, column: 3)
!3535 = !DILocalVariable(name: "fd", scope: !3533, file: !641, line: 254, type: !102)
!3536 = distinct !DIAssignID()
!3537 = distinct !DIAssignID()
!3538 = !DILocation(line: 0, scope: !3508)
!3539 = !DILocation(line: 192, column: 21, scope: !3508)
!3540 = !DILocation(line: 212, column: 3, scope: !3508)
!3541 = !DILocation(line: 212, column: 16, scope: !3508)
!3542 = distinct !DIAssignID()
!3543 = !DILocation(line: 224, column: 16, scope: !3508)
!3544 = !DILocation(line: 225, column: 28, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3508, file: !641, line: 225, column: 7)
!3546 = !DILocation(line: 225, column: 26, scope: !3545)
!3547 = !DILocation(line: 225, column: 11, scope: !3545)
!3548 = !DILocation(line: 226, column: 7, scope: !3545)
!3549 = !DILocation(line: 226, column: 43, scope: !3545)
!3550 = !DILocation(line: 226, column: 19, scope: !3545)
!3551 = !DILocation(line: 226, column: 10, scope: !3545)
!3552 = !DILocation(line: 226, column: 62, scope: !3545)
!3553 = !DILocation(line: 225, column: 7, scope: !3508)
!3554 = !DILocation(line: 0, scope: !3530)
!3555 = !DILocation(line: 235, column: 3, scope: !3530)
!3556 = !DILocation(line: 235, column: 50, scope: !3534)
!3557 = !DILocation(line: 235, column: 38, scope: !3534)
!3558 = distinct !{!3558, !3555, !3559, !985}
!3559 = !DILocation(line: 262, column: 5, scope: !3530)
!3560 = !DILocation(line: 0, scope: !3532)
!3561 = !DILocation(line: 237, column: 7, scope: !3532)
!3562 = !DILocation(line: 254, column: 16, scope: !3533)
!3563 = !DILocation(line: 0, scope: !3533)
!3564 = !DILocation(line: 255, column: 14, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3533, file: !641, line: 255, column: 11)
!3566 = !DILocation(line: 255, column: 11, scope: !3533)
!3567 = !DILocation(line: 239, column: 23, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !641, line: 239, column: 15)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !641, line: 238, column: 9)
!3570 = distinct !DILexicalBlock(scope: !3532, file: !641, line: 237, column: 7)
!3571 = !DILocation(line: 239, column: 15, scope: !3569)
!3572 = !DILocation(line: 242, column: 39, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3568, file: !641, line: 240, column: 13)
!3574 = !DILocalVariable(name: "tv", scope: !3575, file: !641, line: 110, type: !3583)
!3575 = distinct !DISubprogram(name: "random_bits", scope: !641, file: !641, line: 93, type: !3576, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3579)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!201, !3578, !3520}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3579 = !{!3580, !3581, !3582, !3574}
!3580 = !DILocalVariable(name: "r", arg: 1, scope: !3575, file: !641, line: 93, type: !3578)
!3581 = !DILocalVariable(name: "s", arg: 2, scope: !3575, file: !641, line: 93, type: !3520)
!3582 = !DILocalVariable(name: "v", scope: !3575, file: !641, line: 107, type: !3520)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3584, line: 11, size: 128, elements: !3585)
!3584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3585 = !{!3586, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3583, file: !3584, line: 16, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !253, line: 160, baseType: !254)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3583, file: !3584, line: 21, baseType: !3589, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !253, line: 197, baseType: !254)
!3590 = !DILocation(line: 0, scope: !3575, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 242, column: 22, scope: !3573)
!3592 = !DILocation(line: 96, column: 7, scope: !3593, inlinedAt: !3591)
!3593 = distinct !DILexicalBlock(scope: !3575, file: !641, line: 96, column: 7)
!3594 = !DILocation(line: 96, column: 49, scope: !3593, inlinedAt: !3591)
!3595 = !DILocation(line: 96, column: 7, scope: !3575, inlinedAt: !3591)
!3596 = distinct !{!3596, !3597, !3598, !985}
!3597 = !DILocation(line: 242, column: 15, scope: !3573)
!3598 = !DILocation(line: 243, column: 17, scope: !3573)
!3599 = !DILocation(line: 110, column: 3, scope: !3575, inlinedAt: !3591)
!3600 = !DILocation(line: 111, column: 3, scope: !3575, inlinedAt: !3591)
!3601 = !DILocation(line: 112, column: 32, scope: !3575, inlinedAt: !3591)
!3602 = !{!3603, !1508, i64 0}
!3603 = !{!"timespec", !1508, i64 0, !1508, i64 8}
!3604 = !DILocalVariable(name: "r", arg: 1, scope: !3605, file: !641, line: 74, type: !3520)
!3605 = distinct !DISubprogram(name: "mix_random_values", scope: !641, file: !641, line: 74, type: !3606, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!3520, !3520, !3520}
!3608 = !{!3604, !3609}
!3609 = !DILocalVariable(name: "s", arg: 2, scope: !3605, file: !641, line: 74, type: !3520)
!3610 = !DILocation(line: 0, scope: !3605, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 112, column: 7, scope: !3575, inlinedAt: !3591)
!3612 = !DILocation(line: 79, column: 31, scope: !3605, inlinedAt: !3611)
!3613 = !DILocation(line: 79, column: 35, scope: !3605, inlinedAt: !3611)
!3614 = !DILocation(line: 79, column: 49, scope: !3605, inlinedAt: !3611)
!3615 = !DILocation(line: 113, column: 32, scope: !3575, inlinedAt: !3591)
!3616 = !{!3603, !1508, i64 8}
!3617 = !DILocation(line: 0, scope: !3605, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 113, column: 7, scope: !3575, inlinedAt: !3591)
!3619 = !DILocation(line: 79, column: 31, scope: !3605, inlinedAt: !3618)
!3620 = !DILocation(line: 79, column: 35, scope: !3605, inlinedAt: !3618)
!3621 = !DILocation(line: 79, column: 49, scope: !3605, inlinedAt: !3618)
!3622 = !DILocation(line: 116, column: 30, scope: !3575, inlinedAt: !3591)
!3623 = !DILocation(line: 0, scope: !3605, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 116, column: 8, scope: !3575, inlinedAt: !3591)
!3625 = !DILocation(line: 79, column: 31, scope: !3605, inlinedAt: !3624)
!3626 = !DILocation(line: 79, column: 35, scope: !3605, inlinedAt: !3624)
!3627 = !DILocation(line: 79, column: 49, scope: !3605, inlinedAt: !3624)
!3628 = !DILocation(line: 116, column: 6, scope: !3575, inlinedAt: !3591)
!3629 = distinct !DIAssignID()
!3630 = !DILocation(line: 118, column: 1, scope: !3575, inlinedAt: !3591)
!3631 = !DILocation(line: 242, column: 42, scope: !3573)
!3632 = !DILocation(line: 249, column: 39, scope: !3569)
!3633 = !DILocation(line: 249, column: 23, scope: !3569)
!3634 = !DILocation(line: 249, column: 11, scope: !3569)
!3635 = !DILocation(line: 249, column: 21, scope: !3569)
!3636 = !DILocation(line: 250, column: 19, scope: !3569)
!3637 = !DILocation(line: 251, column: 18, scope: !3569)
!3638 = !DILocation(line: 237, column: 45, scope: !3570)
!3639 = !DILocation(line: 237, column: 28, scope: !3570)
!3640 = distinct !{!3640, !3561, !3641, !985}
!3641 = !DILocation(line: 252, column: 9, scope: !3532)
!3642 = !DILocation(line: 260, column: 16, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3565, file: !641, line: 260, column: 16)
!3644 = !DILocation(line: 260, column: 22, scope: !3643)
!3645 = !DILocation(line: 267, column: 1, scope: !3508)
!3646 = !DISubprogram(name: "getrandom", scope: !3647, file: !3647, line: 34, type: !3648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3647 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/random.h", directory: "", checksumkind: CSK_MD5, checksum: "993db293d7c3a15007a82e16d5213f99")
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!3650, !123, !125, !97}
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !933, line: 77, baseType: !3651)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !253, line: 194, baseType: !254)
!3652 = !DISubprogram(name: "clock_gettime", scope: !3653, file: !3653, line: 279, type: !3654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3653 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!102, !3656, !3659}
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3657, line: 7, baseType: !3658)
!3657 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !253, line: 169, baseType: !102)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3660 = !DISubprogram(name: "clock", scope: !3653, file: !3653, line: 72, type: !3661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!3663}
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3664, line: 7, baseType: !3665)
!3664 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !253, line: 156, baseType: !254)
!3666 = distinct !DISubprogram(name: "try_file", scope: !641, file: !641, line: 126, type: !662, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3666, file: !641, line: 126, type: !122)
!3669 = !DILocalVariable(name: "flags", arg: 2, scope: !3666, file: !641, line: 126, type: !123)
!3670 = !DILocalVariable(name: "openflags", scope: !3666, file: !641, line: 128, type: !410)
!3671 = !DILocation(line: 0, scope: !3666)
!3672 = !DILocation(line: 130, column: 19, scope: !3666)
!3673 = !DILocation(line: 130, column: 30, scope: !3666)
!3674 = !DILocation(line: 131, column: 37, scope: !3666)
!3675 = !DILocation(line: 129, column: 10, scope: !3666)
!3676 = !DILocation(line: 129, column: 3, scope: !3666)
!3677 = distinct !DISubprogram(name: "try_dir", scope: !641, file: !641, line: 135, type: !662, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3678)
!3678 = !{!3679, !3680}
!3679 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3677, file: !641, line: 135, type: !122)
!3680 = !DILocalVariable(name: "flags", arg: 2, scope: !3677, file: !641, line: 135, type: !123)
!3681 = !DILocation(line: 0, scope: !3677)
!3682 = !DILocation(line: 137, column: 10, scope: !3677)
!3683 = !DILocation(line: 137, column: 3, scope: !3677)
!3684 = distinct !DISubprogram(name: "try_nocreate", scope: !641, file: !641, line: 141, type: !662, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3685)
!3685 = !{!3686, !3687, !3688}
!3686 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3684, file: !641, line: 141, type: !122)
!3687 = !DILocalVariable(name: "flags", arg: 2, scope: !3684, file: !641, line: 141, type: !123)
!3688 = !DILocalVariable(name: "st", scope: !3684, file: !641, line: 143, type: !3689)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3690, line: 26, size: 1152, elements: !3691)
!3690 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!3691 = !{!3692, !3694, !3696, !3698, !3700, !3702, !3704, !3705, !3706, !3707, !3709, !3711, !3712, !3713, !3714}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3689, file: !3690, line: 31, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !253, line: 145, baseType: !127)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3689, file: !3690, line: 36, baseType: !3695, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !253, line: 148, baseType: !127)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3689, file: !3690, line: 44, baseType: !3697, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !253, line: 151, baseType: !127)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3689, file: !3690, line: 45, baseType: !3699, size: 32, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !253, line: 150, baseType: !97)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3689, file: !3690, line: 47, baseType: !3701, size: 32, offset: 224)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !253, line: 146, baseType: !97)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3689, file: !3690, line: 48, baseType: !3703, size: 32, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !253, line: 147, baseType: !97)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3689, file: !3690, line: 50, baseType: !102, size: 32, offset: 288)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3689, file: !3690, line: 52, baseType: !3693, size: 64, offset: 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3689, file: !3690, line: 57, baseType: !252, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3689, file: !3690, line: 61, baseType: !3708, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !253, line: 175, baseType: !254)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3689, file: !3690, line: 63, baseType: !3710, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !253, line: 180, baseType: !254)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3689, file: !3690, line: 74, baseType: !3583, size: 128, offset: 576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3689, file: !3690, line: 75, baseType: !3583, size: 128, offset: 704)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3689, file: !3690, line: 76, baseType: !3583, size: 128, offset: 832)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3689, file: !3690, line: 89, baseType: !3715, size: 192, offset: 960)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3589, size: 192, elements: !307)
!3716 = distinct !DIAssignID()
!3717 = !DILocation(line: 0, scope: !3684)
!3718 = !DILocation(line: 143, column: 3, scope: !3684)
!3719 = !DILocation(line: 145, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3684, file: !641, line: 145, column: 7)
!3721 = !DILocation(line: 145, column: 36, scope: !3720)
!3722 = !DILocation(line: 0, scope: !3720)
!3723 = !DILocation(line: 145, column: 41, scope: !3720)
!3724 = !DILocation(line: 145, column: 44, scope: !3720)
!3725 = !DILocation(line: 145, column: 50, scope: !3720)
!3726 = !DILocation(line: 145, column: 7, scope: !3684)
!3727 = !DILocation(line: 146, column: 5, scope: !3720)
!3728 = !DILocation(line: 147, column: 10, scope: !3684)
!3729 = !DILocation(line: 147, column: 16, scope: !3684)
!3730 = !DILocation(line: 148, column: 1, scope: !3684)
!3731 = !DILocation(line: 147, column: 3, scope: !3684)
!3732 = !DISubprogram(name: "lstat", scope: !3733, file: !3733, line: 313, type: !3734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3733 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!102, !928, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3737)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3738 = !DISubprogram(name: "mkdir", scope: !3733, file: !3733, line: 389, type: !3739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!102, !128, !3699}
!3741 = !DISubprogram(name: "open", scope: !1721, file: !1721, line: 181, type: !3742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!102, !128, !102, null}
!3744 = distinct !DISubprogram(name: "gen_tempname", scope: !641, file: !641, line: 270, type: !3745, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!102, !122, !102, !102, !102}
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3744, file: !641, line: 270, type: !122)
!3749 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3744, file: !641, line: 270, type: !102)
!3750 = !DILocalVariable(name: "flags", arg: 3, scope: !3744, file: !641, line: 270, type: !102)
!3751 = !DILocalVariable(name: "kind", arg: 4, scope: !3744, file: !641, line: 270, type: !102)
!3752 = distinct !DIAssignID()
!3753 = !DILocation(line: 0, scope: !3744)
!3754 = !DILocation(line: 0, scope: !640, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 272, column: 10, scope: !3744)
!3756 = distinct !DIAssignID()
!3757 = !DILocation(line: 181, column: 53, scope: !640, inlinedAt: !3755)
!3758 = !DILocation(line: 181, column: 10, scope: !640, inlinedAt: !3755)
!3759 = !DILocation(line: 181, column: 3, scope: !640, inlinedAt: !3755)
!3760 = !DILocation(line: 272, column: 3, scope: !3744)
!3761 = distinct !DISubprogram(name: "try_tempname", scope: !641, file: !641, line: 277, type: !3762, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!102, !122, !102, !123, !661}
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3761, file: !641, line: 277, type: !122)
!3766 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3761, file: !641, line: 277, type: !102)
!3767 = !DILocalVariable(name: "args", arg: 3, scope: !3761, file: !641, line: 277, type: !123)
!3768 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3761, file: !641, line: 278, type: !661)
!3769 = !DILocation(line: 0, scope: !3761)
!3770 = !DILocation(line: 280, column: 10, scope: !3761)
!3771 = !DILocation(line: 280, column: 3, scope: !3761)
!3772 = distinct !DISubprogram(name: "version_etc_arn", scope: !666, file: !666, line: 61, type: !3773, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3810)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{null, !3775, !128, !128, !128, !3809, !125}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !230, line: 51, baseType: !102, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !230, line: 54, baseType: !122, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !230, line: 55, baseType: !122, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !230, line: 56, baseType: !122, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !230, line: 57, baseType: !122, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !230, line: 58, baseType: !122, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !230, line: 59, baseType: !122, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !230, line: 60, baseType: !122, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !230, line: 61, baseType: !122, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !230, line: 64, baseType: !122, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !230, line: 65, baseType: !122, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !230, line: 66, baseType: !122, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !230, line: 70, baseType: !3793, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !230, line: 72, baseType: !102, size: 32, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !230, line: 73, baseType: !102, size: 32, offset: 928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !230, line: 77, baseType: !124, size: 16, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !230, line: 78, baseType: !257, size: 8, offset: 1040)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !230, line: 81, baseType: !260, size: 64, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !230, line: 89, baseType: !263, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3777, file: !230, line: 91, baseType: !265, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3777, file: !230, line: 92, baseType: !268, size: 64, offset: 1280)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3777, file: !230, line: 93, baseType: !3793, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3777, file: !230, line: 94, baseType: !123, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !230, line: 95, baseType: !125, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !230, line: 96, baseType: !102, size: 32, offset: 1536)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !230, line: 98, baseType: !275, size: 160, offset: 1568)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816}
!3811 = !DILocalVariable(name: "stream", arg: 1, scope: !3772, file: !666, line: 61, type: !3775)
!3812 = !DILocalVariable(name: "command_name", arg: 2, scope: !3772, file: !666, line: 62, type: !128)
!3813 = !DILocalVariable(name: "package", arg: 3, scope: !3772, file: !666, line: 62, type: !128)
!3814 = !DILocalVariable(name: "version", arg: 4, scope: !3772, file: !666, line: 63, type: !128)
!3815 = !DILocalVariable(name: "authors", arg: 5, scope: !3772, file: !666, line: 64, type: !3809)
!3816 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3772, file: !666, line: 64, type: !125)
!3817 = !DILocation(line: 0, scope: !3772)
!3818 = !DILocation(line: 66, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3772, file: !666, line: 66, column: 7)
!3820 = !DILocation(line: 66, column: 7, scope: !3772)
!3821 = !DILocation(line: 67, column: 5, scope: !3819)
!3822 = !DILocation(line: 69, column: 5, scope: !3819)
!3823 = !DILocation(line: 83, column: 3, scope: !3772)
!3824 = !DILocation(line: 85, column: 3, scope: !3772)
!3825 = !DILocation(line: 88, column: 3, scope: !3772)
!3826 = !DILocation(line: 95, column: 3, scope: !3772)
!3827 = !DILocation(line: 97, column: 3, scope: !3772)
!3828 = !DILocation(line: 105, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3772, file: !666, line: 98, column: 5)
!3830 = !DILocation(line: 106, column: 7, scope: !3829)
!3831 = !DILocation(line: 109, column: 7, scope: !3829)
!3832 = !DILocation(line: 110, column: 7, scope: !3829)
!3833 = !DILocation(line: 113, column: 7, scope: !3829)
!3834 = !DILocation(line: 115, column: 7, scope: !3829)
!3835 = !DILocation(line: 120, column: 7, scope: !3829)
!3836 = !DILocation(line: 122, column: 7, scope: !3829)
!3837 = !DILocation(line: 127, column: 7, scope: !3829)
!3838 = !DILocation(line: 129, column: 7, scope: !3829)
!3839 = !DILocation(line: 134, column: 7, scope: !3829)
!3840 = !DILocation(line: 137, column: 7, scope: !3829)
!3841 = !DILocation(line: 142, column: 7, scope: !3829)
!3842 = !DILocation(line: 145, column: 7, scope: !3829)
!3843 = !DILocation(line: 150, column: 7, scope: !3829)
!3844 = !DILocation(line: 154, column: 7, scope: !3829)
!3845 = !DILocation(line: 159, column: 7, scope: !3829)
!3846 = !DILocation(line: 163, column: 7, scope: !3829)
!3847 = !DILocation(line: 170, column: 7, scope: !3829)
!3848 = !DILocation(line: 174, column: 7, scope: !3829)
!3849 = !DILocation(line: 176, column: 1, scope: !3772)
!3850 = distinct !DISubprogram(name: "version_etc_ar", scope: !666, file: !666, line: 183, type: !3851, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3775, !128, !128, !128, !3809}
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859}
!3854 = !DILocalVariable(name: "stream", arg: 1, scope: !3850, file: !666, line: 183, type: !3775)
!3855 = !DILocalVariable(name: "command_name", arg: 2, scope: !3850, file: !666, line: 184, type: !128)
!3856 = !DILocalVariable(name: "package", arg: 3, scope: !3850, file: !666, line: 184, type: !128)
!3857 = !DILocalVariable(name: "version", arg: 4, scope: !3850, file: !666, line: 185, type: !128)
!3858 = !DILocalVariable(name: "authors", arg: 5, scope: !3850, file: !666, line: 185, type: !3809)
!3859 = !DILocalVariable(name: "n_authors", scope: !3850, file: !666, line: 187, type: !125)
!3860 = !DILocation(line: 0, scope: !3850)
!3861 = !DILocation(line: 189, column: 8, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3850, file: !666, line: 189, column: 3)
!3863 = !DILocation(line: 189, scope: !3862)
!3864 = !DILocation(line: 189, column: 23, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3862, file: !666, line: 189, column: 3)
!3866 = !DILocation(line: 189, column: 3, scope: !3862)
!3867 = !DILocation(line: 189, column: 52, scope: !3865)
!3868 = distinct !{!3868, !3866, !3869, !985}
!3869 = !DILocation(line: 190, column: 5, scope: !3862)
!3870 = !DILocation(line: 191, column: 3, scope: !3850)
!3871 = !DILocation(line: 192, column: 1, scope: !3850)
!3872 = distinct !DISubprogram(name: "version_etc_va", scope: !666, file: !666, line: 199, type: !3873, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3882)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3775, !128, !128, !128, !3875}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3876, file: !666, line: 192, baseType: !97, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3876, file: !666, line: 192, baseType: !97, size: 32, offset: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3876, file: !666, line: 192, baseType: !123, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3876, file: !666, line: 192, baseType: !123, size: 64, offset: 128)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889}
!3883 = !DILocalVariable(name: "stream", arg: 1, scope: !3872, file: !666, line: 199, type: !3775)
!3884 = !DILocalVariable(name: "command_name", arg: 2, scope: !3872, file: !666, line: 200, type: !128)
!3885 = !DILocalVariable(name: "package", arg: 3, scope: !3872, file: !666, line: 200, type: !128)
!3886 = !DILocalVariable(name: "version", arg: 4, scope: !3872, file: !666, line: 201, type: !128)
!3887 = !DILocalVariable(name: "authors", arg: 5, scope: !3872, file: !666, line: 201, type: !3875)
!3888 = !DILocalVariable(name: "n_authors", scope: !3872, file: !666, line: 203, type: !125)
!3889 = !DILocalVariable(name: "authtab", scope: !3872, file: !666, line: 204, type: !3890)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !80)
!3891 = distinct !DIAssignID()
!3892 = !DILocation(line: 0, scope: !3872)
!3893 = !DILocation(line: 204, column: 3, scope: !3872)
!3894 = !DILocation(line: 208, column: 35, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !666, line: 206, column: 3)
!3896 = distinct !DILexicalBlock(scope: !3872, file: !666, line: 206, column: 3)
!3897 = !DILocation(line: 208, column: 33, scope: !3895)
!3898 = !DILocation(line: 208, column: 67, scope: !3895)
!3899 = !DILocation(line: 206, column: 3, scope: !3896)
!3900 = !DILocation(line: 208, column: 14, scope: !3895)
!3901 = !DILocation(line: 0, scope: !3896)
!3902 = !DILocation(line: 211, column: 3, scope: !3872)
!3903 = !DILocation(line: 213, column: 1, scope: !3872)
!3904 = distinct !DISubprogram(name: "version_etc", scope: !666, file: !666, line: 230, type: !3905, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3775, !128, !128, !128, null}
!3907 = !{!3908, !3909, !3910, !3911, !3912}
!3908 = !DILocalVariable(name: "stream", arg: 1, scope: !3904, file: !666, line: 230, type: !3775)
!3909 = !DILocalVariable(name: "command_name", arg: 2, scope: !3904, file: !666, line: 231, type: !128)
!3910 = !DILocalVariable(name: "package", arg: 3, scope: !3904, file: !666, line: 231, type: !128)
!3911 = !DILocalVariable(name: "version", arg: 4, scope: !3904, file: !666, line: 232, type: !128)
!3912 = !DILocalVariable(name: "authors", scope: !3904, file: !666, line: 234, type: !3913)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !933, line: 52, baseType: !3914)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1734, line: 12, baseType: !3915)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !666, baseType: !3916)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3876, size: 192, elements: !75)
!3917 = distinct !DIAssignID()
!3918 = !DILocation(line: 0, scope: !3904)
!3919 = !DILocation(line: 234, column: 3, scope: !3904)
!3920 = !DILocation(line: 235, column: 3, scope: !3904)
!3921 = !DILocation(line: 236, column: 3, scope: !3904)
!3922 = !DILocation(line: 237, column: 3, scope: !3904)
!3923 = !DILocation(line: 238, column: 1, scope: !3904)
!3924 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !666, file: !666, line: 241, type: !484, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797)
!3925 = !DILocation(line: 243, column: 3, scope: !3924)
!3926 = !DILocation(line: 248, column: 3, scope: !3924)
!3927 = !DILocation(line: 254, column: 3, scope: !3924)
!3928 = !DILocation(line: 259, column: 3, scope: !3924)
!3929 = !DILocation(line: 261, column: 1, scope: !3924)
!3930 = distinct !DISubprogram(name: "xnrealloc", scope: !3931, file: !3931, line: 147, type: !3932, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3934)
!3931 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!123, !123, !125, !125}
!3934 = !{!3935, !3936, !3937}
!3935 = !DILocalVariable(name: "p", arg: 1, scope: !3930, file: !3931, line: 147, type: !123)
!3936 = !DILocalVariable(name: "n", arg: 2, scope: !3930, file: !3931, line: 147, type: !125)
!3937 = !DILocalVariable(name: "s", arg: 3, scope: !3930, file: !3931, line: 147, type: !125)
!3938 = !DILocation(line: 0, scope: !3930)
!3939 = !DILocalVariable(name: "p", arg: 1, scope: !3940, file: !804, line: 83, type: !123)
!3940 = distinct !DISubprogram(name: "xreallocarray", scope: !804, file: !804, line: 83, type: !3932, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3941)
!3941 = !{!3939, !3942, !3943}
!3942 = !DILocalVariable(name: "n", arg: 2, scope: !3940, file: !804, line: 83, type: !125)
!3943 = !DILocalVariable(name: "s", arg: 3, scope: !3940, file: !804, line: 83, type: !125)
!3944 = !DILocation(line: 0, scope: !3940, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 149, column: 10, scope: !3930)
!3946 = !DILocation(line: 85, column: 25, scope: !3940, inlinedAt: !3945)
!3947 = !DILocalVariable(name: "p", arg: 1, scope: !3948, file: !804, line: 37, type: !123)
!3948 = distinct !DISubprogram(name: "check_nonnull", scope: !804, file: !804, line: 37, type: !3949, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!123, !123}
!3951 = !{!3947}
!3952 = !DILocation(line: 0, scope: !3948, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 85, column: 10, scope: !3940, inlinedAt: !3945)
!3954 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !3953)
!3955 = distinct !DILexicalBlock(scope: !3948, file: !804, line: 39, column: 7)
!3956 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !3953)
!3957 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !3953)
!3958 = !DILocation(line: 149, column: 3, scope: !3930)
!3959 = !DILocation(line: 0, scope: !3940)
!3960 = !DILocation(line: 85, column: 25, scope: !3940)
!3961 = !DILocation(line: 0, scope: !3948, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 85, column: 10, scope: !3940)
!3963 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !3962)
!3964 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !3962)
!3965 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !3962)
!3966 = !DILocation(line: 85, column: 3, scope: !3940)
!3967 = distinct !DISubprogram(name: "xmalloc", scope: !804, file: !804, line: 47, type: !2003, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3968)
!3968 = !{!3969}
!3969 = !DILocalVariable(name: "s", arg: 1, scope: !3967, file: !804, line: 47, type: !125)
!3970 = !DILocation(line: 0, scope: !3967)
!3971 = !DILocation(line: 49, column: 25, scope: !3967)
!3972 = !DILocation(line: 0, scope: !3948, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 49, column: 10, scope: !3967)
!3974 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !3973)
!3975 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !3973)
!3976 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !3973)
!3977 = !DILocation(line: 49, column: 3, scope: !3967)
!3978 = distinct !DISubprogram(name: "ximalloc", scope: !804, file: !804, line: 53, type: !3979, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!123, !823}
!3981 = !{!3982}
!3982 = !DILocalVariable(name: "s", arg: 1, scope: !3978, file: !804, line: 53, type: !823)
!3983 = !DILocation(line: 0, scope: !3978)
!3984 = !DILocalVariable(name: "s", arg: 1, scope: !3985, file: !3986, line: 55, type: !823)
!3985 = distinct !DISubprogram(name: "imalloc", scope: !3986, file: !3986, line: 55, type: !3979, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3987)
!3986 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3987 = !{!3984}
!3988 = !DILocation(line: 0, scope: !3985, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 55, column: 25, scope: !3978)
!3990 = !DILocation(line: 57, column: 26, scope: !3985, inlinedAt: !3989)
!3991 = !DILocation(line: 0, scope: !3948, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 55, column: 10, scope: !3978)
!3993 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !3992)
!3994 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !3992)
!3995 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !3992)
!3996 = !DILocation(line: 55, column: 3, scope: !3978)
!3997 = distinct !DISubprogram(name: "xcharalloc", scope: !804, file: !804, line: 59, type: !3998, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!122, !125}
!4000 = !{!4001}
!4001 = !DILocalVariable(name: "n", arg: 1, scope: !3997, file: !804, line: 59, type: !125)
!4002 = !DILocation(line: 0, scope: !3997)
!4003 = !DILocation(line: 0, scope: !3967, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 61, column: 10, scope: !3997)
!4005 = !DILocation(line: 49, column: 25, scope: !3967, inlinedAt: !4004)
!4006 = !DILocation(line: 0, scope: !3948, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 49, column: 10, scope: !3967, inlinedAt: !4004)
!4008 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4007)
!4009 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4007)
!4010 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4007)
!4011 = !DILocation(line: 61, column: 3, scope: !3997)
!4012 = distinct !DISubprogram(name: "xrealloc", scope: !804, file: !804, line: 68, type: !4013, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4015)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!123, !123, !125}
!4015 = !{!4016, !4017}
!4016 = !DILocalVariable(name: "p", arg: 1, scope: !4012, file: !804, line: 68, type: !123)
!4017 = !DILocalVariable(name: "s", arg: 2, scope: !4012, file: !804, line: 68, type: !125)
!4018 = !DILocation(line: 0, scope: !4012)
!4019 = !DILocalVariable(name: "ptr", arg: 1, scope: !4020, file: !4021, line: 2057, type: !123)
!4020 = distinct !DISubprogram(name: "rpl_realloc", scope: !4021, file: !4021, line: 2057, type: !4013, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4022)
!4021 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4022 = !{!4019, !4023}
!4023 = !DILocalVariable(name: "size", arg: 2, scope: !4020, file: !4021, line: 2057, type: !125)
!4024 = !DILocation(line: 0, scope: !4020, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 70, column: 25, scope: !4012)
!4026 = !DILocation(line: 2059, column: 24, scope: !4020, inlinedAt: !4025)
!4027 = !DILocation(line: 2059, column: 10, scope: !4020, inlinedAt: !4025)
!4028 = !DILocation(line: 0, scope: !3948, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 70, column: 10, scope: !4012)
!4030 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4029)
!4031 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4029)
!4032 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4029)
!4033 = !DILocation(line: 70, column: 3, scope: !4012)
!4034 = !DISubprogram(name: "realloc", scope: !1062, file: !1062, line: 551, type: !4013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4035 = distinct !DISubprogram(name: "xirealloc", scope: !804, file: !804, line: 74, type: !4036, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!123, !123, !823}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "p", arg: 1, scope: !4035, file: !804, line: 74, type: !123)
!4040 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !804, line: 74, type: !823)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocalVariable(name: "p", arg: 1, scope: !4043, file: !3986, line: 66, type: !123)
!4043 = distinct !DISubprogram(name: "irealloc", scope: !3986, file: !3986, line: 66, type: !4036, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4044)
!4044 = !{!4042, !4045}
!4045 = !DILocalVariable(name: "s", arg: 2, scope: !4043, file: !3986, line: 66, type: !823)
!4046 = !DILocation(line: 0, scope: !4043, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 76, column: 25, scope: !4035)
!4048 = !DILocation(line: 0, scope: !4020, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 68, column: 26, scope: !4043, inlinedAt: !4047)
!4050 = !DILocation(line: 2059, column: 24, scope: !4020, inlinedAt: !4049)
!4051 = !DILocation(line: 2059, column: 10, scope: !4020, inlinedAt: !4049)
!4052 = !DILocation(line: 0, scope: !3948, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 76, column: 10, scope: !4035)
!4054 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4053)
!4055 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4053)
!4056 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4053)
!4057 = !DILocation(line: 76, column: 3, scope: !4035)
!4058 = distinct !DISubprogram(name: "xireallocarray", scope: !804, file: !804, line: 89, type: !4059, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!123, !123, !823, !823}
!4061 = !{!4062, !4063, !4064}
!4062 = !DILocalVariable(name: "p", arg: 1, scope: !4058, file: !804, line: 89, type: !123)
!4063 = !DILocalVariable(name: "n", arg: 2, scope: !4058, file: !804, line: 89, type: !823)
!4064 = !DILocalVariable(name: "s", arg: 3, scope: !4058, file: !804, line: 89, type: !823)
!4065 = !DILocation(line: 0, scope: !4058)
!4066 = !DILocalVariable(name: "p", arg: 1, scope: !4067, file: !3986, line: 98, type: !123)
!4067 = distinct !DISubprogram(name: "ireallocarray", scope: !3986, file: !3986, line: 98, type: !4059, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4068)
!4068 = !{!4066, !4069, !4070}
!4069 = !DILocalVariable(name: "n", arg: 2, scope: !4067, file: !3986, line: 98, type: !823)
!4070 = !DILocalVariable(name: "s", arg: 3, scope: !4067, file: !3986, line: 98, type: !823)
!4071 = !DILocation(line: 0, scope: !4067, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 91, column: 25, scope: !4058)
!4073 = !DILocation(line: 101, column: 13, scope: !4067, inlinedAt: !4072)
!4074 = !DILocation(line: 0, scope: !3948, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 91, column: 10, scope: !4058)
!4076 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4075)
!4077 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4075)
!4078 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4075)
!4079 = !DILocation(line: 91, column: 3, scope: !4058)
!4080 = distinct !DISubprogram(name: "xnmalloc", scope: !804, file: !804, line: 98, type: !4081, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!123, !125, !125}
!4083 = !{!4084, !4085}
!4084 = !DILocalVariable(name: "n", arg: 1, scope: !4080, file: !804, line: 98, type: !125)
!4085 = !DILocalVariable(name: "s", arg: 2, scope: !4080, file: !804, line: 98, type: !125)
!4086 = !DILocation(line: 0, scope: !4080)
!4087 = !DILocation(line: 0, scope: !3940, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 100, column: 10, scope: !4080)
!4089 = !DILocation(line: 85, column: 25, scope: !3940, inlinedAt: !4088)
!4090 = !DILocation(line: 0, scope: !3948, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 85, column: 10, scope: !3940, inlinedAt: !4088)
!4092 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4091)
!4093 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4091)
!4094 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4091)
!4095 = !DILocation(line: 100, column: 3, scope: !4080)
!4096 = distinct !DISubprogram(name: "xinmalloc", scope: !804, file: !804, line: 104, type: !4097, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4099)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!123, !823, !823}
!4099 = !{!4100, !4101}
!4100 = !DILocalVariable(name: "n", arg: 1, scope: !4096, file: !804, line: 104, type: !823)
!4101 = !DILocalVariable(name: "s", arg: 2, scope: !4096, file: !804, line: 104, type: !823)
!4102 = !DILocation(line: 0, scope: !4096)
!4103 = !DILocation(line: 0, scope: !4058, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 106, column: 10, scope: !4096)
!4105 = !DILocation(line: 0, scope: !4067, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 91, column: 25, scope: !4058, inlinedAt: !4104)
!4107 = !DILocation(line: 101, column: 13, scope: !4067, inlinedAt: !4106)
!4108 = !DILocation(line: 0, scope: !3948, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 91, column: 10, scope: !4058, inlinedAt: !4104)
!4110 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4109)
!4111 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4109)
!4112 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4109)
!4113 = !DILocation(line: 106, column: 3, scope: !4096)
!4114 = distinct !DISubprogram(name: "x2realloc", scope: !804, file: !804, line: 116, type: !4115, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!123, !123, !810}
!4117 = !{!4118, !4119}
!4118 = !DILocalVariable(name: "p", arg: 1, scope: !4114, file: !804, line: 116, type: !123)
!4119 = !DILocalVariable(name: "ps", arg: 2, scope: !4114, file: !804, line: 116, type: !810)
!4120 = !DILocation(line: 0, scope: !4114)
!4121 = !DILocation(line: 0, scope: !807, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 118, column: 10, scope: !4114)
!4123 = !DILocation(line: 178, column: 14, scope: !807, inlinedAt: !4122)
!4124 = !DILocation(line: 180, column: 9, scope: !4125, inlinedAt: !4122)
!4125 = distinct !DILexicalBlock(scope: !807, file: !804, line: 180, column: 7)
!4126 = !DILocation(line: 180, column: 7, scope: !807, inlinedAt: !4122)
!4127 = !DILocation(line: 182, column: 13, scope: !4128, inlinedAt: !4122)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !804, line: 182, column: 11)
!4129 = distinct !DILexicalBlock(scope: !4125, file: !804, line: 181, column: 5)
!4130 = !DILocation(line: 182, column: 11, scope: !4129, inlinedAt: !4122)
!4131 = !DILocation(line: 197, column: 11, scope: !4132, inlinedAt: !4122)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !804, line: 197, column: 11)
!4133 = distinct !DILexicalBlock(scope: !4125, file: !804, line: 195, column: 5)
!4134 = !DILocation(line: 197, column: 11, scope: !4133, inlinedAt: !4122)
!4135 = !DILocation(line: 198, column: 9, scope: !4132, inlinedAt: !4122)
!4136 = !DILocation(line: 0, scope: !3940, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 201, column: 7, scope: !807, inlinedAt: !4122)
!4138 = !DILocation(line: 85, column: 25, scope: !3940, inlinedAt: !4137)
!4139 = !DILocation(line: 0, scope: !3948, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 85, column: 10, scope: !3940, inlinedAt: !4137)
!4141 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4140)
!4142 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4140)
!4143 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4140)
!4144 = !DILocation(line: 202, column: 7, scope: !807, inlinedAt: !4122)
!4145 = !DILocation(line: 118, column: 3, scope: !4114)
!4146 = !DILocation(line: 0, scope: !807)
!4147 = !DILocation(line: 178, column: 14, scope: !807)
!4148 = !DILocation(line: 180, column: 9, scope: !4125)
!4149 = !DILocation(line: 180, column: 7, scope: !807)
!4150 = !DILocation(line: 182, column: 13, scope: !4128)
!4151 = !DILocation(line: 182, column: 11, scope: !4129)
!4152 = !DILocation(line: 190, column: 30, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4128, file: !804, line: 183, column: 9)
!4154 = !DILocation(line: 191, column: 16, scope: !4153)
!4155 = !DILocation(line: 191, column: 13, scope: !4153)
!4156 = !DILocation(line: 192, column: 9, scope: !4153)
!4157 = !DILocation(line: 197, column: 11, scope: !4132)
!4158 = !DILocation(line: 197, column: 11, scope: !4133)
!4159 = !DILocation(line: 198, column: 9, scope: !4132)
!4160 = !DILocation(line: 0, scope: !3940, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 201, column: 7, scope: !807)
!4162 = !DILocation(line: 85, column: 25, scope: !3940, inlinedAt: !4161)
!4163 = !DILocation(line: 0, scope: !3948, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 85, column: 10, scope: !3940, inlinedAt: !4161)
!4165 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4164)
!4166 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4164)
!4167 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4164)
!4168 = !DILocation(line: 202, column: 7, scope: !807)
!4169 = !DILocation(line: 203, column: 3, scope: !807)
!4170 = !DILocation(line: 0, scope: !819)
!4171 = !DILocation(line: 230, column: 14, scope: !819)
!4172 = !DILocation(line: 238, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !819, file: !804, line: 238, column: 7)
!4174 = !DILocation(line: 238, column: 7, scope: !819)
!4175 = !DILocation(line: 240, column: 9, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !819, file: !804, line: 240, column: 7)
!4177 = !DILocation(line: 240, column: 18, scope: !4176)
!4178 = !DILocation(line: 253, column: 8, scope: !819)
!4179 = !DILocation(line: 256, column: 7, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !819, file: !804, line: 256, column: 7)
!4181 = !DILocation(line: 256, column: 7, scope: !819)
!4182 = !DILocation(line: 258, column: 27, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !804, line: 257, column: 5)
!4184 = !DILocation(line: 259, column: 50, scope: !4183)
!4185 = !DILocation(line: 259, column: 32, scope: !4183)
!4186 = !DILocation(line: 260, column: 5, scope: !4183)
!4187 = !DILocation(line: 262, column: 9, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !819, file: !804, line: 262, column: 7)
!4189 = !DILocation(line: 262, column: 7, scope: !819)
!4190 = !DILocation(line: 263, column: 9, scope: !4188)
!4191 = !DILocation(line: 263, column: 5, scope: !4188)
!4192 = !DILocation(line: 264, column: 9, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !819, file: !804, line: 264, column: 7)
!4194 = !DILocation(line: 264, column: 14, scope: !4193)
!4195 = !DILocation(line: 265, column: 7, scope: !4193)
!4196 = !DILocation(line: 265, column: 11, scope: !4193)
!4197 = !DILocation(line: 266, column: 11, scope: !4193)
!4198 = !DILocation(line: 267, column: 14, scope: !4193)
!4199 = !DILocation(line: 264, column: 7, scope: !819)
!4200 = !DILocation(line: 268, column: 5, scope: !4193)
!4201 = !DILocation(line: 0, scope: !4012, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 269, column: 8, scope: !819)
!4203 = !DILocation(line: 0, scope: !4020, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 70, column: 25, scope: !4012, inlinedAt: !4202)
!4205 = !DILocation(line: 2059, column: 24, scope: !4020, inlinedAt: !4204)
!4206 = !DILocation(line: 2059, column: 10, scope: !4020, inlinedAt: !4204)
!4207 = !DILocation(line: 0, scope: !3948, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 70, column: 10, scope: !4012, inlinedAt: !4202)
!4209 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4208)
!4210 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4208)
!4211 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4208)
!4212 = !DILocation(line: 270, column: 7, scope: !819)
!4213 = !DILocation(line: 271, column: 3, scope: !819)
!4214 = distinct !DISubprogram(name: "xzalloc", scope: !804, file: !804, line: 279, type: !2003, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4215)
!4215 = !{!4216}
!4216 = !DILocalVariable(name: "s", arg: 1, scope: !4214, file: !804, line: 279, type: !125)
!4217 = !DILocation(line: 0, scope: !4214)
!4218 = !DILocalVariable(name: "n", arg: 1, scope: !4219, file: !804, line: 294, type: !125)
!4219 = distinct !DISubprogram(name: "xcalloc", scope: !804, file: !804, line: 294, type: !4081, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4220)
!4220 = !{!4218, !4221}
!4221 = !DILocalVariable(name: "s", arg: 2, scope: !4219, file: !804, line: 294, type: !125)
!4222 = !DILocation(line: 0, scope: !4219, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 281, column: 10, scope: !4214)
!4224 = !DILocation(line: 296, column: 25, scope: !4219, inlinedAt: !4223)
!4225 = !DILocation(line: 0, scope: !3948, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 296, column: 10, scope: !4219, inlinedAt: !4223)
!4227 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4226)
!4228 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4226)
!4229 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4226)
!4230 = !DILocation(line: 281, column: 3, scope: !4214)
!4231 = !DISubprogram(name: "calloc", scope: !1062, file: !1062, line: 543, type: !4081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4232 = !DILocation(line: 0, scope: !4219)
!4233 = !DILocation(line: 296, column: 25, scope: !4219)
!4234 = !DILocation(line: 0, scope: !3948, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 296, column: 10, scope: !4219)
!4236 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4235)
!4239 = !DILocation(line: 296, column: 3, scope: !4219)
!4240 = distinct !DISubprogram(name: "xizalloc", scope: !804, file: !804, line: 285, type: !3979, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4241)
!4241 = !{!4242}
!4242 = !DILocalVariable(name: "s", arg: 1, scope: !4240, file: !804, line: 285, type: !823)
!4243 = !DILocation(line: 0, scope: !4240)
!4244 = !DILocalVariable(name: "n", arg: 1, scope: !4245, file: !804, line: 300, type: !823)
!4245 = distinct !DISubprogram(name: "xicalloc", scope: !804, file: !804, line: 300, type: !4097, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4246)
!4246 = !{!4244, !4247}
!4247 = !DILocalVariable(name: "s", arg: 2, scope: !4245, file: !804, line: 300, type: !823)
!4248 = !DILocation(line: 0, scope: !4245, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 287, column: 10, scope: !4240)
!4250 = !DILocalVariable(name: "n", arg: 1, scope: !4251, file: !3986, line: 77, type: !823)
!4251 = distinct !DISubprogram(name: "icalloc", scope: !3986, file: !3986, line: 77, type: !4097, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4252)
!4252 = !{!4250, !4253}
!4253 = !DILocalVariable(name: "s", arg: 2, scope: !4251, file: !3986, line: 77, type: !823)
!4254 = !DILocation(line: 0, scope: !4251, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 302, column: 25, scope: !4245, inlinedAt: !4249)
!4256 = !DILocation(line: 91, column: 10, scope: !4251, inlinedAt: !4255)
!4257 = !DILocation(line: 0, scope: !3948, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 302, column: 10, scope: !4245, inlinedAt: !4249)
!4259 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4258)
!4260 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4258)
!4261 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4258)
!4262 = !DILocation(line: 287, column: 3, scope: !4240)
!4263 = !DILocation(line: 0, scope: !4245)
!4264 = !DILocation(line: 0, scope: !4251, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 302, column: 25, scope: !4245)
!4266 = !DILocation(line: 91, column: 10, scope: !4251, inlinedAt: !4265)
!4267 = !DILocation(line: 0, scope: !3948, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 302, column: 10, scope: !4245)
!4269 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4268)
!4270 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4268)
!4271 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4268)
!4272 = !DILocation(line: 302, column: 3, scope: !4245)
!4273 = distinct !DISubprogram(name: "xmemdup", scope: !804, file: !804, line: 310, type: !4274, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!123, !1086, !125}
!4276 = !{!4277, !4278}
!4277 = !DILocalVariable(name: "p", arg: 1, scope: !4273, file: !804, line: 310, type: !1086)
!4278 = !DILocalVariable(name: "s", arg: 2, scope: !4273, file: !804, line: 310, type: !125)
!4279 = !DILocation(line: 0, scope: !4273)
!4280 = !DILocation(line: 0, scope: !3967, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 312, column: 18, scope: !4273)
!4282 = !DILocation(line: 49, column: 25, scope: !3967, inlinedAt: !4281)
!4283 = !DILocation(line: 0, scope: !3948, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 49, column: 10, scope: !3967, inlinedAt: !4281)
!4285 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4284)
!4286 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4284)
!4287 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4284)
!4288 = !DILocalVariable(name: "__dest", arg: 1, scope: !4289, file: !1190, line: 26, type: !1193)
!4289 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4290)
!4290 = !{!4288, !4291, !4292}
!4291 = !DILocalVariable(name: "__src", arg: 2, scope: !4289, file: !1190, line: 26, type: !1085)
!4292 = !DILocalVariable(name: "__len", arg: 3, scope: !4289, file: !1190, line: 26, type: !125)
!4293 = !DILocation(line: 0, scope: !4289, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 312, column: 10, scope: !4273)
!4295 = !DILocation(line: 29, column: 10, scope: !4289, inlinedAt: !4294)
!4296 = !DILocation(line: 312, column: 3, scope: !4273)
!4297 = distinct !DISubprogram(name: "ximemdup", scope: !804, file: !804, line: 316, type: !4298, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!123, !1086, !823}
!4300 = !{!4301, !4302}
!4301 = !DILocalVariable(name: "p", arg: 1, scope: !4297, file: !804, line: 316, type: !1086)
!4302 = !DILocalVariable(name: "s", arg: 2, scope: !4297, file: !804, line: 316, type: !823)
!4303 = !DILocation(line: 0, scope: !4297)
!4304 = !DILocation(line: 0, scope: !3978, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 318, column: 18, scope: !4297)
!4306 = !DILocation(line: 0, scope: !3985, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 55, column: 25, scope: !3978, inlinedAt: !4305)
!4308 = !DILocation(line: 57, column: 26, scope: !3985, inlinedAt: !4307)
!4309 = !DILocation(line: 0, scope: !3948, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 55, column: 10, scope: !3978, inlinedAt: !4305)
!4311 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4310)
!4312 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4310)
!4313 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4310)
!4314 = !DILocation(line: 0, scope: !4289, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 318, column: 10, scope: !4297)
!4316 = !DILocation(line: 29, column: 10, scope: !4289, inlinedAt: !4315)
!4317 = !DILocation(line: 318, column: 3, scope: !4297)
!4318 = distinct !DISubprogram(name: "ximemdup0", scope: !804, file: !804, line: 325, type: !4319, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!122, !1086, !823}
!4321 = !{!4322, !4323, !4324}
!4322 = !DILocalVariable(name: "p", arg: 1, scope: !4318, file: !804, line: 325, type: !1086)
!4323 = !DILocalVariable(name: "s", arg: 2, scope: !4318, file: !804, line: 325, type: !823)
!4324 = !DILocalVariable(name: "result", scope: !4318, file: !804, line: 327, type: !122)
!4325 = !DILocation(line: 0, scope: !4318)
!4326 = !DILocation(line: 327, column: 30, scope: !4318)
!4327 = !DILocation(line: 0, scope: !3978, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 327, column: 18, scope: !4318)
!4329 = !DILocation(line: 0, scope: !3985, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 55, column: 25, scope: !3978, inlinedAt: !4328)
!4331 = !DILocation(line: 57, column: 26, scope: !3985, inlinedAt: !4330)
!4332 = !DILocation(line: 0, scope: !3948, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 55, column: 10, scope: !3978, inlinedAt: !4328)
!4334 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4333)
!4335 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4333)
!4336 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4333)
!4337 = !DILocation(line: 328, column: 3, scope: !4318)
!4338 = !DILocation(line: 328, column: 13, scope: !4318)
!4339 = !DILocation(line: 0, scope: !4289, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 329, column: 10, scope: !4318)
!4341 = !DILocation(line: 29, column: 10, scope: !4289, inlinedAt: !4340)
!4342 = !DILocation(line: 329, column: 3, scope: !4318)
!4343 = distinct !DISubprogram(name: "xstrdup", scope: !804, file: !804, line: 335, type: !1064, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4344)
!4344 = !{!4345}
!4345 = !DILocalVariable(name: "string", arg: 1, scope: !4343, file: !804, line: 335, type: !128)
!4346 = !DILocation(line: 0, scope: !4343)
!4347 = !DILocation(line: 337, column: 27, scope: !4343)
!4348 = !DILocation(line: 337, column: 43, scope: !4343)
!4349 = !DILocation(line: 0, scope: !4273, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 337, column: 10, scope: !4343)
!4351 = !DILocation(line: 0, scope: !3967, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 312, column: 18, scope: !4273, inlinedAt: !4350)
!4353 = !DILocation(line: 49, column: 25, scope: !3967, inlinedAt: !4352)
!4354 = !DILocation(line: 0, scope: !3948, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 49, column: 10, scope: !3967, inlinedAt: !4352)
!4356 = !DILocation(line: 39, column: 8, scope: !3955, inlinedAt: !4355)
!4357 = !DILocation(line: 39, column: 7, scope: !3948, inlinedAt: !4355)
!4358 = !DILocation(line: 40, column: 5, scope: !3955, inlinedAt: !4355)
!4359 = !DILocation(line: 0, scope: !4289, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 312, column: 10, scope: !4273, inlinedAt: !4350)
!4361 = !DILocation(line: 29, column: 10, scope: !4289, inlinedAt: !4360)
!4362 = !DILocation(line: 337, column: 3, scope: !4343)
!4363 = distinct !DISubprogram(name: "xalloc_die", scope: !753, file: !753, line: 32, type: !484, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !4364)
!4364 = !{!4365}
!4365 = !DILocalVariable(name: "__errstatus", scope: !4366, file: !753, line: 34, type: !4367)
!4366 = distinct !DILexicalBlock(scope: !4363, file: !753, line: 34, column: 3)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4368 = !DILocation(line: 34, column: 3, scope: !4366)
!4369 = !DILocation(line: 0, scope: !4366)
!4370 = !DILocation(line: 40, column: 3, scope: !4363)
!4371 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !760, file: !760, line: 100, type: !4372, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4375)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!125, !2159, !128, !125, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!4375 = !{!4376, !4377, !4378, !4379, !4380}
!4376 = !DILocalVariable(name: "pwc", arg: 1, scope: !4371, file: !760, line: 100, type: !2159)
!4377 = !DILocalVariable(name: "s", arg: 2, scope: !4371, file: !760, line: 100, type: !128)
!4378 = !DILocalVariable(name: "n", arg: 3, scope: !4371, file: !760, line: 100, type: !125)
!4379 = !DILocalVariable(name: "ps", arg: 4, scope: !4371, file: !760, line: 100, type: !4374)
!4380 = !DILocalVariable(name: "ret", scope: !4371, file: !760, line: 130, type: !125)
!4381 = !DILocation(line: 0, scope: !4371)
!4382 = !DILocation(line: 105, column: 9, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4371, file: !760, line: 105, column: 7)
!4384 = !DILocation(line: 105, column: 7, scope: !4371)
!4385 = !DILocation(line: 117, column: 10, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4371, file: !760, line: 117, column: 7)
!4387 = !DILocation(line: 117, column: 7, scope: !4371)
!4388 = !DILocation(line: 130, column: 16, scope: !4371)
!4389 = !DILocation(line: 135, column: 11, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4371, file: !760, line: 135, column: 7)
!4391 = !DILocation(line: 135, column: 25, scope: !4390)
!4392 = !DILocation(line: 135, column: 30, scope: !4390)
!4393 = !DILocation(line: 135, column: 7, scope: !4371)
!4394 = !DILocalVariable(name: "ps", arg: 1, scope: !4395, file: !2133, line: 1135, type: !4374)
!4395 = distinct !DISubprogram(name: "mbszero", scope: !2133, file: !2133, line: 1135, type: !4396, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4374}
!4398 = !{!4394}
!4399 = !DILocation(line: 0, scope: !4395, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 137, column: 5, scope: !4390)
!4401 = !DILocalVariable(name: "__dest", arg: 1, scope: !4402, file: !1190, line: 57, type: !123)
!4402 = distinct !DISubprogram(name: "memset", scope: !1190, file: !1190, line: 57, type: !2142, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4403)
!4403 = !{!4401, !4404, !4405}
!4404 = !DILocalVariable(name: "__ch", arg: 2, scope: !4402, file: !1190, line: 57, type: !102)
!4405 = !DILocalVariable(name: "__len", arg: 3, scope: !4402, file: !1190, line: 57, type: !125)
!4406 = !DILocation(line: 0, scope: !4402, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 1137, column: 3, scope: !4395, inlinedAt: !4400)
!4408 = !DILocation(line: 59, column: 10, scope: !4402, inlinedAt: !4407)
!4409 = !DILocation(line: 137, column: 5, scope: !4390)
!4410 = !DILocation(line: 138, column: 11, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4371, file: !760, line: 138, column: 7)
!4412 = !DILocation(line: 138, column: 7, scope: !4371)
!4413 = !DILocation(line: 139, column: 5, scope: !4411)
!4414 = !DILocation(line: 143, column: 26, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4371, file: !760, line: 143, column: 7)
!4416 = !DILocation(line: 143, column: 41, scope: !4415)
!4417 = !DILocation(line: 143, column: 7, scope: !4371)
!4418 = !DILocation(line: 145, column: 15, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !760, line: 145, column: 11)
!4420 = distinct !DILexicalBlock(scope: !4415, file: !760, line: 144, column: 5)
!4421 = !DILocation(line: 145, column: 11, scope: !4420)
!4422 = !DILocation(line: 146, column: 32, scope: !4419)
!4423 = !DILocation(line: 146, column: 16, scope: !4419)
!4424 = !DILocation(line: 146, column: 14, scope: !4419)
!4425 = !DILocation(line: 146, column: 9, scope: !4419)
!4426 = !DILocation(line: 286, column: 1, scope: !4371)
!4427 = !DISubprogram(name: "mbsinit", scope: !4428, file: !4428, line: 293, type: !4429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4428 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!102, !4431}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!4433 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !841, file: !841, line: 27, type: !3932, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !4434)
!4434 = !{!4435, !4436, !4437, !4438}
!4435 = !DILocalVariable(name: "ptr", arg: 1, scope: !4433, file: !841, line: 27, type: !123)
!4436 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4433, file: !841, line: 27, type: !125)
!4437 = !DILocalVariable(name: "size", arg: 3, scope: !4433, file: !841, line: 27, type: !125)
!4438 = !DILocalVariable(name: "nbytes", scope: !4433, file: !841, line: 29, type: !125)
!4439 = !DILocation(line: 0, scope: !4433)
!4440 = !DILocation(line: 30, column: 7, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4433, file: !841, line: 30, column: 7)
!4442 = !DILocation(line: 30, column: 7, scope: !4433)
!4443 = !DILocation(line: 32, column: 7, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4441, file: !841, line: 31, column: 5)
!4445 = !DILocation(line: 32, column: 13, scope: !4444)
!4446 = !DILocation(line: 33, column: 7, scope: !4444)
!4447 = !DILocalVariable(name: "ptr", arg: 1, scope: !4448, file: !4021, line: 2057, type: !123)
!4448 = distinct !DISubprogram(name: "rpl_realloc", scope: !4021, file: !4021, line: 2057, type: !4013, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !4449)
!4449 = !{!4447, !4450}
!4450 = !DILocalVariable(name: "size", arg: 2, scope: !4448, file: !4021, line: 2057, type: !125)
!4451 = !DILocation(line: 0, scope: !4448, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 37, column: 10, scope: !4433)
!4453 = !DILocation(line: 2059, column: 24, scope: !4448, inlinedAt: !4452)
!4454 = !DILocation(line: 2059, column: 10, scope: !4448, inlinedAt: !4452)
!4455 = !DILocation(line: 37, column: 3, scope: !4433)
!4456 = !DILocation(line: 38, column: 1, scope: !4433)
!4457 = distinct !DISubprogram(name: "hard_locale", scope: !778, file: !778, line: 28, type: !4458, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !4460)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!201, !102}
!4460 = !{!4461, !4462}
!4461 = !DILocalVariable(name: "category", arg: 1, scope: !4457, file: !778, line: 28, type: !102)
!4462 = !DILocalVariable(name: "locale", scope: !4457, file: !778, line: 30, type: !4463)
!4463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4464)
!4464 = !{!4465}
!4465 = !DISubrange(count: 257)
!4466 = distinct !DIAssignID()
!4467 = !DILocation(line: 0, scope: !4457)
!4468 = !DILocation(line: 30, column: 3, scope: !4457)
!4469 = !DILocation(line: 32, column: 7, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4457, file: !778, line: 32, column: 7)
!4471 = !DILocation(line: 32, column: 7, scope: !4457)
!4472 = !DILocalVariable(name: "__s1", arg: 1, scope: !4473, file: !951, line: 1359, type: !128)
!4473 = distinct !DISubprogram(name: "streq", scope: !951, file: !951, line: 1359, type: !952, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !4474)
!4474 = !{!4472, !4475}
!4475 = !DILocalVariable(name: "__s2", arg: 2, scope: !4473, file: !951, line: 1359, type: !128)
!4476 = !DILocation(line: 0, scope: !4473, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 35, column: 9, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4457, file: !778, line: 35, column: 7)
!4479 = !DILocation(line: 1361, column: 11, scope: !4473, inlinedAt: !4477)
!4480 = !DILocation(line: 35, column: 29, scope: !4478)
!4481 = !DILocation(line: 0, scope: !4473, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 35, column: 32, scope: !4478)
!4483 = !DILocation(line: 1361, column: 11, scope: !4473, inlinedAt: !4482)
!4484 = !DILocation(line: 1361, column: 10, scope: !4473, inlinedAt: !4482)
!4485 = !DILocation(line: 35, column: 7, scope: !4457)
!4486 = !DILocation(line: 46, column: 3, scope: !4457)
!4487 = !DILocation(line: 47, column: 1, scope: !4457)
!4488 = distinct !DISubprogram(name: "setlocale_null_r", scope: !847, file: !847, line: 154, type: !4489, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!102, !102, !122, !125}
!4491 = !{!4492, !4493, !4494}
!4492 = !DILocalVariable(name: "category", arg: 1, scope: !4488, file: !847, line: 154, type: !102)
!4493 = !DILocalVariable(name: "buf", arg: 2, scope: !4488, file: !847, line: 154, type: !122)
!4494 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4488, file: !847, line: 154, type: !125)
!4495 = !DILocation(line: 0, scope: !4488)
!4496 = !DILocation(line: 159, column: 10, scope: !4488)
!4497 = !DILocation(line: 159, column: 3, scope: !4488)
!4498 = distinct !DISubprogram(name: "setlocale_null", scope: !847, file: !847, line: 186, type: !4499, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !4501)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!128, !102}
!4501 = !{!4502}
!4502 = !DILocalVariable(name: "category", arg: 1, scope: !4498, file: !847, line: 186, type: !102)
!4503 = !DILocation(line: 0, scope: !4498)
!4504 = !DILocation(line: 189, column: 10, scope: !4498)
!4505 = !DILocation(line: 189, column: 3, scope: !4498)
!4506 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !849, file: !849, line: 35, type: !4499, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !4507)
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "category", arg: 1, scope: !4506, file: !849, line: 35, type: !102)
!4509 = !DILocalVariable(name: "result", scope: !4506, file: !849, line: 37, type: !128)
!4510 = !DILocation(line: 0, scope: !4506)
!4511 = !DILocation(line: 37, column: 24, scope: !4506)
!4512 = !DILocation(line: 62, column: 3, scope: !4506)
!4513 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !849, file: !849, line: 66, type: !4489, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !4514)
!4514 = !{!4515, !4516, !4517, !4518, !4519}
!4515 = !DILocalVariable(name: "category", arg: 1, scope: !4513, file: !849, line: 66, type: !102)
!4516 = !DILocalVariable(name: "buf", arg: 2, scope: !4513, file: !849, line: 66, type: !122)
!4517 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4513, file: !849, line: 66, type: !125)
!4518 = !DILocalVariable(name: "result", scope: !4513, file: !849, line: 111, type: !128)
!4519 = !DILocalVariable(name: "length", scope: !4520, file: !849, line: 125, type: !125)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !849, line: 124, column: 5)
!4521 = distinct !DILexicalBlock(scope: !4513, file: !849, line: 113, column: 7)
!4522 = !DILocation(line: 0, scope: !4513)
!4523 = !DILocation(line: 0, scope: !4506, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 111, column: 24, scope: !4513)
!4525 = !DILocation(line: 37, column: 24, scope: !4506, inlinedAt: !4524)
!4526 = !DILocation(line: 113, column: 14, scope: !4521)
!4527 = !DILocation(line: 113, column: 7, scope: !4513)
!4528 = !DILocation(line: 116, column: 19, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !849, line: 116, column: 11)
!4530 = distinct !DILexicalBlock(scope: !4521, file: !849, line: 114, column: 5)
!4531 = !DILocation(line: 116, column: 11, scope: !4530)
!4532 = !DILocation(line: 120, column: 16, scope: !4529)
!4533 = !DILocation(line: 120, column: 9, scope: !4529)
!4534 = !DILocation(line: 125, column: 23, scope: !4520)
!4535 = !DILocation(line: 0, scope: !4520)
!4536 = !DILocation(line: 126, column: 18, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4520, file: !849, line: 126, column: 11)
!4538 = !DILocation(line: 126, column: 11, scope: !4520)
!4539 = !DILocation(line: 128, column: 39, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4537, file: !849, line: 127, column: 9)
!4541 = !DILocalVariable(name: "__dest", arg: 1, scope: !4542, file: !1190, line: 26, type: !1193)
!4542 = distinct !DISubprogram(name: "memcpy", scope: !1190, file: !1190, line: 26, type: !1191, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !4543)
!4543 = !{!4541, !4544, !4545}
!4544 = !DILocalVariable(name: "__src", arg: 2, scope: !4542, file: !1190, line: 26, type: !1085)
!4545 = !DILocalVariable(name: "__len", arg: 3, scope: !4542, file: !1190, line: 26, type: !125)
!4546 = !DILocation(line: 0, scope: !4542, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 128, column: 11, scope: !4540)
!4548 = !DILocation(line: 29, column: 10, scope: !4542, inlinedAt: !4547)
!4549 = !DILocation(line: 129, column: 11, scope: !4540)
!4550 = !DILocation(line: 133, column: 23, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !849, line: 133, column: 15)
!4552 = distinct !DILexicalBlock(scope: !4537, file: !849, line: 132, column: 9)
!4553 = !DILocation(line: 133, column: 15, scope: !4552)
!4554 = !DILocation(line: 138, column: 44, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4551, file: !849, line: 134, column: 13)
!4556 = !DILocation(line: 0, scope: !4542, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 138, column: 15, scope: !4555)
!4558 = !DILocation(line: 29, column: 10, scope: !4542, inlinedAt: !4557)
!4559 = !DILocation(line: 139, column: 15, scope: !4555)
!4560 = !DILocation(line: 139, column: 32, scope: !4555)
!4561 = !DILocation(line: 140, column: 13, scope: !4555)
!4562 = !DILocation(line: 0, scope: !4521)
!4563 = !DILocation(line: 145, column: 1, scope: !4513)
